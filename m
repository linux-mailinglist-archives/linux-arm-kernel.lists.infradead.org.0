Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3C1DB276
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 18:35:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xu2UCue987pdiled9OgqWkmIH5gVkl/v/2ui3zXdRVs=; b=Ak0IM+HfxPFNWq
	Z0K+rM48drd/47bHk0yz2sAVoTypi/CtyEWagU3F5cJi/Qr1MGf2nGkqnYrtGBiBe9ZlwomwPvbnC
	JwSwvDJ3w7hdZrzPcPwJyxugGQsRrg7CZTVJc1b+O/IUEO1E5BPi29+A4untn/btBHgmyG99D5SCB
	HkFQhCUrSwdxYAsPJcwllNEGM5HHIkZ/j/K6mz3WzYwsvalrgd6HGHrwveguto/FgQQulQQu9xlcM
	XOa/srZgisHFjh4oxJC4+4Aq41Q2FqtEhOTRK31C8F7eZNSnLgNFZ5KzzcWiB4oNMjBlqZNT3EIS9
	tnHs5F8jGIBShKMkOEyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL8jp-0000hJ-Ms; Thu, 17 Oct 2019 16:34:57 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL8jZ-0000XB-RK; Thu, 17 Oct 2019 16:34:44 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id C458C804F;
 Thu, 17 Oct 2019 16:35:10 +0000 (UTC)
Date: Thu, 17 Oct 2019 09:34:33 -0700
From: Tony Lindgren <tony@atomide.com>
To: min.guo@mediatek.com
Subject: Re: [PATCH v8 6/6] usb: musb: Add support for MediaTek musb controller
Message-ID: <20191017163433.GN5610@atomide.com>
References: <20191017094126.29045-1-min.guo@mediatek.com>
 <20191017094126.29045-7-min.guo@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191017094126.29045-7-min.guo@mediatek.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_093441_976095_846456D3 
X-CRM114-Status: GOOD (  12.30  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Yonglong Wu <yonglong.wu@mediatek.com>, hdegoede@redhat.com,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 linux-kernel@vger.kernel.org, chunfeng.yun@mediatek.com,
 Rob Herring <robh+dt@kernel.org>, Alan Stern <stern@rowland.harvard.edu>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 Bin Liu <b-liu@ti.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

Just few comments for future changes that might help below.

* min.guo@mediatek.com <min.guo@mediatek.com> [191017 09:42]:
> --- /dev/null
> +++ b/drivers/usb/musb/mediatek.c
> +static int musb_usb_role_sx_set(struct device *dev, enum usb_role role)
> +{
> +	struct mtk_glue *glue = dev_get_drvdata(dev);
> +	struct musb *musb = glue->musb;
> +	u8 devctl = readb(musb->mregs + MUSB_DEVCTL);
> +	enum usb_role new_role;
> +
> +	if (role == glue->role)
> +		return 0;
> +
> +	switch (role) {
> +	case USB_ROLE_HOST:
> +		musb->xceiv->otg->state = OTG_STATE_A_WAIT_VRISE;
> +		glue->phy_mode = PHY_MODE_USB_HOST;
> +		new_role = USB_ROLE_HOST;
> +		if (glue->role == USB_ROLE_NONE)
> +			phy_power_on(glue->phy);
> +
> +		devctl |= MUSB_DEVCTL_SESSION;
> +		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
> +		MUSB_HST_MODE(musb);
> +		break;
> +	case USB_ROLE_DEVICE:
> +		musb->xceiv->otg->state = OTG_STATE_B_IDLE;
> +		glue->phy_mode = PHY_MODE_USB_DEVICE;
> +		new_role = USB_ROLE_DEVICE;
> +		devctl &= ~MUSB_DEVCTL_SESSION;
> +		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
> +		if (glue->role == USB_ROLE_NONE)
> +			phy_power_on(glue->phy);
> +
> +		MUSB_DEV_MODE(musb);
> +		break;
> +	case USB_ROLE_NONE:
> +		glue->phy_mode = PHY_MODE_USB_OTG;
> +		new_role = USB_ROLE_NONE;
> +		devctl &= ~MUSB_DEVCTL_SESSION;
> +		musb_writeb(musb->mregs, MUSB_DEVCTL, devctl);
> +		if (glue->role != USB_ROLE_NONE)
> +			phy_power_off(glue->phy);
> +
> +		break;
> +	default:
> +		dev_err(glue->dev, "Invalid State\n");
> +		return -EINVAL;
> +	}
> +
> +	glue->role = new_role;
> +	phy_set_mode(glue->phy, glue->phy_mode);
> +
> +	return 0;
> +}

For the role change, I recently posted a patch "[PATCH 4/7] usb: musb:
Add musb_set_host and peripheral and use them for omap2430". That
should work for you looking at the code above, so later on you might
want to change to use that. Probably best done as a follow-up patch
to avoid adding extra dependencies to your series.

Please also note that musb core attempts to do things automagically
on it's own. So trying to force mode in general does not work reliably.
This is because VBUS may not yet have risen for example.

The role change is best done based on the USB PHY as then usually
musb has already switched to the right mode automatically :)

> +static const struct musb_platform_ops mtk_musb_ops = {
> +	.quirks = MUSB_DMA_INVENTRA,
> +	.init = mtk_musb_init,
> +	.get_toggle = mtk_musb_get_toggle,
> +	.set_toggle = mtk_musb_set_toggle,
> +	.exit = mtk_musb_exit,
> +#ifdef CONFIG_USB_INVENTRA_DMA
> +	.dma_init = musbhs_dma_controller_create_noirq,
> +	.dma_exit = musbhs_dma_controller_destroy,
> +#endif
> +	.clearb = mtk_musb_clearb,
> +	.clearw = mtk_musb_clearw,
> +	.busctl_offset = mtk_musb_busctl_offset,
> +	.set_mode = mtk_musb_set_mode,
> +};

So you may want to consider getting rid of .set_mode completely
and rely on USB PHY calls instead.

In some cases you need to use struct phy_companion for set_vbus
depending how things are wired.

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
