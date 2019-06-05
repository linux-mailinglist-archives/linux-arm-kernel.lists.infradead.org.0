Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42FC735992
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 11:20:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oa0px8B1q1NCsr07OZcDulmxYAsr/CaSp9nMnWAfAuA=; b=u4YFDGmAPF1xGF
	Squ4HPN3yMe4/56hEzpFjJOvTD/HLMQWCiQeX1+8atQcHSLGmSafb4Gi6p9rUwrEqHOI1hUd/nlEy
	y9ZKqqZMWC9aIGSGztoAOStm64bsb9s3dSbZzrGmF5FzHR0rXlx2W+dl5+YmWGUeLEns7e/rS7I0J
	7n1W0PLg2etvHiSWESySel56khhjkqoJdxkguVn3AqjVcSPCaeRrWBgrrFj9yI4uK+Xtl8pvMovti
	hQwYS2/EoPcCrnZAoeDTMcHvinjlEo4x4g9CBy7feutFQYtR4avPqVxGpPAbFzWlyFxW4i4LYPCaB
	tOtGOhSjo77jxAMWZLeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYS5a-00064e-5u; Wed, 05 Jun 2019 09:20:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYS5P-0005rY-W3
 for linux-arm-kernel@lists.infradead.org; Wed, 05 Jun 2019 09:20:01 +0000
Received: from dragon (li1264-180.members.linode.com [45.79.165.180])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 59A5E2075B;
 Wed,  5 Jun 2019 09:19:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559726399;
 bh=FZid3iZIC4Rv5X+erq0U81RMe3PNMwfiFD1mq2Y047A=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jJBnlb9OnMtwF7KEkX4mRIJ3lu/ZzZitk7k4ZxZ6UqCOtaRX5psjR9ihBFO/iySqW
 xBwm1h9fTD4Sb2DmeQfavdYll0DKEsyD6RU5N7KkvAackLWQwWExUyhYEjbqC3voWx
 /34xIx6OjmaoIj/vBpFoMl0YSf8pqK40nLY6jk38=
Date: Wed, 5 Jun 2019 17:19:44 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Andrey Smirnov <andrew.smirnov@gmail.com>
Subject: Re: [PATCH] usb: phy: mxs: Disable external charger detect in
 mxs_phy_hw_init()
Message-ID: <20190605091943.GN29853@dragon>
References: <20190529065948.5492-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190529065948.5492-1-andrew.smirnov@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190605_022000_047648_C16A0BC6 
X-CRM114-Status: GOOD (  19.58  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, NXP Linux Team <linux-imx@nxp.com>,
 Chris Healy <cphealy@gmail.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 28, 2019 at 11:59:48PM -0700, Andrey Smirnov wrote:
> Since this driver already handles changer detction state, copy the
> workaround code currently residing in arch/arm/mach-imx/anatop.c into
> this drier to consolidate the places modifying it.
> 
> Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
> Cc: Chris Healy <cphealy@gmail.com>
> Cc: Felipe Balbi <balbi@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: linux-usb@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org

Acked-by: Shawn Guo <shawnguo@kernel.org>

> ---
> 
> The intent of this patch is to consolidate all of the code maipulating
> charge detection state to a signle place and if this patch is agreed
> upon I plan to follow it up with this change:
> 
> https://github.com/ndreys/linux/commit/7248f2b85b4706760fd33d2ff970e2ea12d3bea7
> 
> Thanks,
> Andrey Smirnov
> 
>  drivers/usb/phy/phy-mxs-usb.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/usb/phy/phy-mxs-usb.c b/drivers/usb/phy/phy-mxs-usb.c
> index 1b1bb0ad40c3..6fa16ab31e2e 100644
> --- a/drivers/usb/phy/phy-mxs-usb.c
> +++ b/drivers/usb/phy/phy-mxs-usb.c
> @@ -63,6 +63,7 @@
>  
>  #define ANADIG_USB1_CHRG_DETECT_SET		0x1b4
>  #define ANADIG_USB1_CHRG_DETECT_CLR		0x1b8
> +#define ANADIG_USB2_CHRG_DETECT_SET		0x214
>  #define ANADIG_USB1_CHRG_DETECT_EN_B		BIT(20)
>  #define ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B	BIT(19)
>  #define ANADIG_USB1_CHRG_DETECT_CHK_CONTACT	BIT(18)
> @@ -250,6 +251,19 @@ static int mxs_phy_hw_init(struct mxs_phy *mxs_phy)
>  	if (mxs_phy->data->flags & MXS_PHY_NEED_IP_FIX)
>  		writel(BM_USBPHY_IP_FIX, base + HW_USBPHY_IP_SET);
>  
> +	if (mxs_phy->regmap_anatop) {
> +		unsigned int reg = mxs_phy->port_id ?
> +			ANADIG_USB1_CHRG_DETECT_SET :
> +			ANADIG_USB2_CHRG_DETECT_SET;
> +		/*
> +		 * The external charger detector needs to be disabled,
> +		 * or the signal at DP will be poor
> +		 */
> +		regmap_write(mxs_phy->regmap_anatop, reg,
> +			     ANADIG_USB1_CHRG_DETECT_EN_B |
> +			     ANADIG_USB1_CHRG_DETECT_CHK_CHRG_B);
> +	}
> +
>  	mxs_phy_tx_init(mxs_phy);
>  
>  	return 0;
> -- 
> 2.21.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
