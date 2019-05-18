Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB30E22344
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 12:35:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=o5nRZpEaV6thMUbNcJLObQFuNoP+Q6FDbIpOI1KSETg=; b=l+4mOXfaeZHm/e
	2OIrNHUICPFu/O7YVesSVpPSPvdtrVPU/gv8RTeE6W69fsA6+VnBkwEcXIeDRqxMAaM26/B9GrbIQ
	O5tJdAdIyungfesJgih4EUTP/pVvmgptPNZRhUBN/O+VZxWSWcf/0N3F/hkKsNZeASMEOP0QV44U4
	+CntwEOLAty1N9YDMW0u0UCOPA/weKDUgx+xUKkbYKkUCkvspqDg+lAn5HgXbmkD44y/498gFP07d
	yeMKhcCwPD7PbAyO8qhqC+OpIKjqJGPbF1dFqhdtCMKRLbck24+c/Avi8OPMJMdKtbxISRKI3Gv2D
	mbklmP1WLxoOYdTeVrbQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRwgm-00021W-NH; Sat, 18 May 2019 10:35:40 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRwgf-000218-I3; Sat, 18 May 2019 10:35:34 +0000
Received: from archlinux (cpc91196-cmbg18-2-0-cust659.5-4.cable.virginm.net
 [81.96.234.148])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5A4782087E;
 Sat, 18 May 2019 10:35:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1558175733;
 bh=rguySsEOq+x1PGhSAfvkomBO3m+7PPVtFbTny4CxQvk=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=cOVT/saTJsx+a5tobw3SyYPMSJhf//2/uGEpTPTOKcllnYJ6Yf5yMDiz7P38DgrXa
 Bm/lQx8yBCEvwrau2ItFfNCPKUsy1Mzc2qyOmjzBeIOEgvUXYi9stJX2Mxb5FPd4ob
 XgeKGurk1c+phpe1Ph98kgE8CNRTJaaERC3L6CFE=
Date: Sat, 18 May 2019 11:35:27 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: Chun-Hung Wu <chun-hung.wu@mediatek.com>
Subject: Re: [PATCH 3/4] iio: adc: mediatek: SET_LATE_SYSTEM_SLEEP_PM_OPS
 support
Message-ID: <20190518113527.5210b0bf@archlinux>
In-Reply-To: <1557994247-16739-4-git-send-email-chun-hung.wu@mediatek.com>
References: <1557994247-16739-1-git-send-email-chun-hung.wu@mediatek.com>
 <1557994247-16739-4-git-send-email-chun-hung.wu@mediatek.com>
X-Mailer: Claws Mail 3.17.3 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190518_033533_613434_95194D00 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Lars-Peter Clausen <lars@metafoo.de>, wsd_upstream@mediatek.com,
 linux-iio@vger.kernel.org, kuohong.wang@mediatek.com,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-mediatek@lists.infradead.org, peter.wang@mediatek.com,
 Peter Meerwald-Stadler <pmeerw@pmeerw.net>, Hartmut Knaack <knaack.h@gmx.de>,
 Matthias Brugger <matthias.bgg@gmail.com>, jg_poxu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 16 May 2019 16:10:46 +0800
Chun-Hung Wu <chun-hung.wu@mediatek.com> wrote:

>   Move suspend/resume to late_suspend and
> early_resume to gurantee users can use auxadc
guarantee

> driver at suspend/resume stage.
No problem with the patch content, but we need a reason why they may
want to do so?

Thanks,

Jonathan
> 
> Signed-off-by: Chun-Hung Wu <chun-hung.wu@mediatek.com>
> ---
>  drivers/iio/adc/mt6577_auxadc.c | 7 ++++---
>  1 file changed, 4 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/iio/adc/mt6577_auxadc.c b/drivers/iio/adc/mt6577_auxadc.c
> index e1bdcc0..58d7cb2 100644
> --- a/drivers/iio/adc/mt6577_auxadc.c
> +++ b/drivers/iio/adc/mt6577_auxadc.c
> @@ -326,9 +326,10 @@ static int mt6577_auxadc_remove(struct platform_device *pdev)
>  	return 0;
>  }
>  
> -static SIMPLE_DEV_PM_OPS(mt6577_auxadc_pm_ops,
> -			 mt6577_auxadc_suspend,
> -			 mt6577_auxadc_resume);
> +static const struct dev_pm_ops mt6577_auxadc_pm_ops = {
> +	SET_LATE_SYSTEM_SLEEP_PM_OPS(mt6577_auxadc_suspend,
> +				     mt6577_auxadc_resume)
> +};
>  
>  static const struct of_device_id mt6577_auxadc_of_match[] = {
>  	{ .compatible = "mediatek,mt2701-auxadc", .data = &mt8173_compat},


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
