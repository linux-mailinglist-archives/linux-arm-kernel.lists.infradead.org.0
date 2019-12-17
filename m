Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BC10B1234C7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:25:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bDa4QMaJGJmSwiulM/gvo5+2vQ9z1ANbcH0mfARN21Q=; b=Dj9v8hhbCDCs43
	aMracXWJKT3xCW6T0y/0g5LDDT103kq6yZBM2ER3DNDxav6HrPmVSx59AD8ZL02ExguXUaCLD2YwO
	UMBWiqlnDsfvomFn5UlaSOxdQvHGrMyE8ieq68phT8tlamkshhKN5jAQN39WP5dr/CzErJZ7y/rRf
	wzt9gRvt0z6KIf9ZMJ+jO9BGk9NNdm1SDZm8bYxr0XvdEEELxjo29Gae4GjSX1NH9+cxFd0Q7pDfu
	FXDjifjzdLV2NzyaLMExrtpaTbpdlx19DYQrFicY/0edVQwvtn/O6xtqRMcuiuDpmmiwFUzqOPmYj
	jRX3p8mE0t459HNxSwcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHXa-0004AN-TL; Tue, 17 Dec 2019 18:25:50 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHXN-00048v-JE
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:25:39 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id BF2D38116;
 Tue, 17 Dec 2019 18:26:16 +0000 (UTC)
Date: Tue, 17 Dec 2019 10:25:34 -0800
From: Tony Lindgren <tony@atomide.com>
To: Dave Gerlach <d-gerlach@ti.com>
Subject: Re: [PATCH] soc: ti: wkup_m3_ipc: Fix race condition with rproc_boot
Message-ID: <20191217182534.GD35479@atomide.com>
References: <20191212040314.14753-1-d-gerlach@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191212040314.14753-1-d-gerlach@ti.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_102537_713195_0CFA354B 
X-CRM114-Status: GOOD (  15.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Suman Anna <s-anna@ti.com>, linux-omap@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Santosh Shilimkar <ssantosh@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* Dave Gerlach <d-gerlach@ti.com> [191211 20:02]:
> Any user of wkup_m3_ipc calls wkup_m3_ipc_get to get a handle and this
> checks the value of the static variable m3_ipc_state to see if the
> wkup_m3 is ready. Currently this is populated during probe before
> rproc_boot has been called, meaning there is a window of time that
> wkup_m3_ipc_get can return a valid handle but the wkup_m3 itself is not
> ready, leading to invalid IPC calls to the wkup_m3 and system
> instability.
> 
> To avoid this, move the population of the m3_ipc_state variable until
> after rproc_boot has succeeded to guarantee a valid and usable handle
> is always returned.

Santosh, do you want me to pick this one into my fixes branch?

Regards,

Tony


> Reported-by: Suman Anna <s-anna@ti.com>
> Signed-off-by: Dave Gerlach <d-gerlach@ti.com>
> ---
>  drivers/soc/ti/wkup_m3_ipc.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/soc/ti/wkup_m3_ipc.c b/drivers/soc/ti/wkup_m3_ipc.c
> index 378369d9364a..e9ece45d7a33 100644
> --- a/drivers/soc/ti/wkup_m3_ipc.c
> +++ b/drivers/soc/ti/wkup_m3_ipc.c
> @@ -419,6 +419,8 @@ static void wkup_m3_rproc_boot_thread(struct wkup_m3_ipc *m3_ipc)
>  	ret = rproc_boot(m3_ipc->rproc);
>  	if (ret)
>  		dev_err(dev, "rproc_boot failed\n");
> +	else
> +		m3_ipc_state = m3_ipc;
>  
>  	do_exit(0);
>  }
> @@ -505,8 +507,6 @@ static int wkup_m3_ipc_probe(struct platform_device *pdev)
>  		goto err_put_rproc;
>  	}
>  
> -	m3_ipc_state = m3_ipc;
> -
>  	return 0;
>  
>  err_put_rproc:
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
