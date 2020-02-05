Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC7E1530FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Feb 2020 13:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=vH2RIN2RGCUr+JxoK3ZagIqKPUuc9bqy+Vq42xqA6YQ=; b=jbTGCrr6zK4KExKq9dCJKgs4L
	ZCp7JpLgLmo8tdUyteT7fEY1xLpsrUMOKNpjxCQm+H3nsyAOzjP7IEnhwkMpVY22YIynkdvs8j1Hv
	tEMTFHL//AlK8s/LokDZqOQFFZwYn/Ykv1DZQmeFN1FHYiM1sLkOUdLqDPtSfJ87X09VDXllPI7hY
	QTZu03OmTvh/8nnPiDefIXlfIsrQRkO30mef537u012dE0x+Ju+hHfO0DMKi6lxiFKyG4jwfCPRH+
	XiK6BDurZ6q84CUaRBMcrxuLY9ENHX9UDcfqxg7zofnJq1tXY0YsQJHqQg/BV8xRtQRlvauLRkI5+
	Nm+s0tDSA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izK2F-00005F-LY; Wed, 05 Feb 2020 12:44:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izK25-0008U2-JE
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Feb 2020 12:43:54 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE8D720674;
 Wed,  5 Feb 2020 12:43:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1580906632;
 bh=0nhgLoKBd1xmo2Khpi4Cvrfth35BI8Ya1ztqYzurtSM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ICzBZX/JpwWLiHlmX/jL53ordUZGAjB3KgThNSGl7YnfS+Km/wWA9MXDeaLBS9Xta
 gGo1PV4ZFrDtjw6ClU4/t2BIFlGX7Wfm6ErX7tcYlvNUnnFNf5xj3BJOcCBAInbLY+
 tAG0Jvn/abpxb0agK7YlmJQOt1cMwzaNZI+xBo8E=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1izK23-00386f-1b; Wed, 05 Feb 2020 12:43:51 +0000
MIME-Version: 1.0
Date: Wed, 05 Feb 2020 12:43:51 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH 1/5] irqchip/gic-v4.1: Fix programming of
 GICR_VPROPBASER_4_1_SIZE
In-Reply-To: <20200204090940.1225-2-yuzenghui@huawei.com>
References: <20200204090940.1225-1-yuzenghui@huawei.com>
 <20200204090940.1225-2-yuzenghui@huawei.com>
Message-ID: <29e6c483b71dcf28e9b140f4edfe566d@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.8
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 tglx@linutronix.de, jason@lakedaemon.net, wanghaibin.wang@huawei.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200205_044353_662173_3899B425 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: jason@lakedaemon.net, linux-kernel@vger.kernel.org,
 wanghaibin.wang@huawei.com, tglx@linutronix.de, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-02-04 09:09, Zenghui Yu wrote:
> The Size field of GICv4.1 VPROPBASER register indicates number of
> pages minus one and together Page_Size and Size control the vPEID
> width. Let's respect this requirement of the architecture.
> 
> Signed-off-by: Zenghui Yu <yuzenghui@huawei.com>
> ---
>  drivers/irqchip/irq-gic-v3-its.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/irqchip/irq-gic-v3-its.c 
> b/drivers/irqchip/irq-gic-v3-its.c
> index e5a25d97f8db..992bc72cab6f 100644
> --- a/drivers/irqchip/irq-gic-v3-its.c
> +++ b/drivers/irqchip/irq-gic-v3-its.c
> @@ -2531,7 +2531,7 @@ static int allocate_vpe_l1_table(void)
>  		npg = 1;
>  	}
> 
> -	val |= FIELD_PREP(GICR_VPROPBASER_4_1_SIZE, npg);
> +	val |= FIELD_PREP(GICR_VPROPBASER_4_1_SIZE, npg - 1);
> 
>  	/* Right, that's the number of CPU pages we need for L1 */
>  	np = DIV_ROUND_UP(npg * psz, PAGE_SIZE);

Indeed, nice catch.

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
