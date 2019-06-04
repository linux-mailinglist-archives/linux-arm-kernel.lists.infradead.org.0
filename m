Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9679D346F8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:36:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/UNJtcXLaUydIX2wxPqoP3GcWizABDun0rjKQ0yFyxo=; b=gzR1BlythOmQGb
	pPwOXG9l78ylFF+Qunhgd3/T9tX9BELr3zltexvNj/4QGhZ2xuzpsWQCTQc/FjwcCRZK2F3H488g3
	KHrvIfPt7WjzULhjm9wov27fQjlZucxddb8RNIxJIosPrKoLyDcwr783l7Sr9jUuOl0gfVFIJUUJS
	jSkU/CH9aNJIX0N3J99YtOeIwDRhIcvNx77McMEa0kTcJpX/U9m7mYq0xT/aB/7dgxVds4AZekLge
	HNGFqrg8R0VAAdVbtyB7LfoZgWpnvR7N2I5rHo6wO0tpokMkfCMP6TXponkIBuT1mWr4oHxsQuaQB
	wHnsMf8zgIl1Zsju6tWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8gI-0002U6-JZ; Tue, 04 Jun 2019 12:36:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8gB-0002T0-Vw
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:36:41 +0000
Received: from localhost (unknown [117.99.94.117])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D25C52231F;
 Tue,  4 Jun 2019 12:36:38 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559651799;
 bh=6OleqzP9quO2zeSwzsj8bZMeC8Hf2G1MKsJM7hbM2y8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=sL71fl8ksf2Ja1HmqStkjNNeRgC7UL/xPDVK/wp7YJZkONHwjxdusA5XmNr9iQnHA
 CPnGDlVR4TZRrq9zl16yEt13Z0/3Kl035kY7Ipn6UGuSrr5bTvLzkbrE9x2QIXqbiL
 YxbXRHqG6DcMl7mNpHZRpPIhA1VPbU0b0bh/0aTI=
Date: Tue, 4 Jun 2019 18:03:31 +0530
From: Vinod Koul <vkoul@kernel.org>
To: yibin.gong@nxp.com
Subject: Re: [PATCH v3 5/8] dmaengine: fsl-edma: add drvdata for vf610
Message-ID: <20190604123331.GE15118@vkoul-mobl>
References: <20190529090848.34350-1-yibin.gong@nxp.com>
 <20190529090848.34350-6-yibin.gong@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529090848.34350-6-yibin.gong@nxp.com>
User-Agent: Mutt/1.11.3 (2019-02-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_053640_045776_BA3A5248 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: mark.rutland@arm.com, robh@kernel.org, devicetree@vger.kernel.org,
 festevam@gmail.com, s.hauer@pengutronix.de, linux-kernel@vger.kernel.org,
 linux-imx@nxp.com, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-05-19, 17:08, yibin.gong@nxp.com wrote:

> @@ -205,8 +228,9 @@ static int fsl_edma_probe(struct platform_device *pdev)
>  	if (!fsl_edma)
>  		return -ENOMEM;
>  
> -	fsl_edma->version = v1;
> -	fsl_edma->dmamux_nr = DMAMUX_NR;
> +	fsl_edma->drvdata = drvdata;
> +	fsl_edma->version = drvdata->version;
> +	fsl_edma->dmamux_nr = drvdata->dmamuxs;

And can we avoid the duplication here, you have version and dmamuxs
represented in two places. But right now it looks logical so the removal
should be done after this series

-- 
~Vinod

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
