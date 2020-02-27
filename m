Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA4C6170F4A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 05:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UCCWE3AXBV1mE50Kp+VF3cNjnil3wd7fvbYdkqaeMmQ=; b=HUizADyN+XKlIE
	mh65BzNsO5gyqcSxcGSUOFw+eNVjr7mHMNQeVk57fUuXanvpNSHMIR9lD28qHzP84Hgl2PgF6iKd8
	NUbHTd2qOl9Jq/vNHO5CWHxXn4iLY0pVZaFzbIoXMDPMRG0cauE2GlH6sTabLBC9PKM8Op5e+W1B/
	tZUtpJ1aQA5D4QZTDq0ReX15HG8rVKS54BZFMZygyrcISe8xqfSKmM7at4eSI+Y9MqLVriBaPkKGz
	HfmcfajWDTkaAJQodeStj0vV0Z1LNq102NH42Ohy24St4kp85pB0WM6UncVVlsIsfzzia65rdaw0x
	yqTWycI9kf9HyHEg88vA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7ANq-00011J-J2; Thu, 27 Feb 2020 04:02:46 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7ANf-00010v-4d
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 04:02:36 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01R41lA3022351
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 26 Feb 2020 22:01:51 -0600
Message-ID: <e76edda178cd83c4aa5d0282c481425c34653f5e.camel@kernel.crashing.org>
Subject: Re: [PATCH v4 1/7] usb: gadget: aspeed: support per-vhub usb
 descriptors
From: Benjamin Herrenschmidt <benh@kernel.crashing.org>
To: rentao.bupt@gmail.com, Felipe Balbi <balbi@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>, Stephen Boyd
 <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>, linux-usb@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 openbmc@lists.ozlabs.org, taoren@fb.com
Date: Thu, 27 Feb 2020 15:01:47 +1100
In-Reply-To: <20200226230346.672-2-rentao.bupt@gmail.com>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-2-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_200235_379099_8D0579C6 
X-CRM114-Status: GOOD (  18.31  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 0.0 T_SPF_HELO_PERMERROR   SPF: test of HELO record failed (permerror)
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 2020-02-26 at 15:03 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> This patch store vhub's standard usb descriptors in struct "ast_vhub"
> so
> it's more convenient to customize descriptors and potentially support
> multiple vhub instances in the future.
> 
> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>

Acked-by: Benjamin Herrenschmidt <benh@kernel.crashing.org>
---
> ---
>  No change in v2/v3/v4:
>    - the patch is added to the patch series since v4.
> 
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c  | 43 ++++++++++++++++-----
> --
>  drivers/usb/gadget/udc/aspeed-vhub/vhub.h | 15 ++++++++
>  2 files changed, 46 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> index 19b3517e04c0..9c3027306b15 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> @@ -93,11 +93,7 @@ static void ast_vhub_patch_dev_desc_usb1(struct
> usb_device_descriptor *desc)
>  				 USB_DT_INTERFACE_SIZE + \
>  				 USB_DT_ENDPOINT_SIZE)
>  
> -static const struct ast_vhub_full_cdesc {
> -	struct usb_config_descriptor	cfg;
> -	struct usb_interface_descriptor intf;
> -	struct usb_endpoint_descriptor	ep;
> -} __attribute__ ((packed)) ast_vhub_conf_desc = {
> +static const struct ast_vhub_full_cdesc ast_vhub_conf_desc = {
>  	.cfg = {
>  		.bLength		= USB_DT_CONFIG_SIZE,
>  		.bDescriptorType	= USB_DT_CONFIG,
> @@ -266,6 +262,7 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep
> *ep,
>  			     u8 desc_type, u16 len)
>  {
>  	size_t dsize;
> +	struct ast_vhub *vhub = ep->vhub;
>  
>  	EPDBG(ep, "GET_DESCRIPTOR(type:%d)\n", desc_type);
>  
> @@ -281,20 +278,20 @@ static int ast_vhub_rep_desc(struct ast_vhub_ep
> *ep,
>  	switch(desc_type) {
>  	case USB_DT_DEVICE:
>  		dsize = USB_DT_DEVICE_SIZE;
> -		memcpy(ep->buf, &ast_vhub_dev_desc, dsize);
> -		BUILD_BUG_ON(dsize > sizeof(ast_vhub_dev_desc));
> +		memcpy(ep->buf, &vhub->vhub_dev_desc, dsize);
> +		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_dev_desc));
>  		BUILD_BUG_ON(USB_DT_DEVICE_SIZE >=
> AST_VHUB_EP0_MAX_PACKET);
>  		break;
>  	case USB_DT_CONFIG:
>  		dsize = AST_VHUB_CONF_DESC_SIZE;
> -		memcpy(ep->buf, &ast_vhub_conf_desc, dsize);
> -		BUILD_BUG_ON(dsize > sizeof(ast_vhub_conf_desc));
> +		memcpy(ep->buf, &vhub->vhub_conf_desc, dsize);
> +		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_conf_desc));
>  		BUILD_BUG_ON(AST_VHUB_CONF_DESC_SIZE >=
> AST_VHUB_EP0_MAX_PACKET);
>  		break;
>  	case USB_DT_HUB:
>  		dsize = AST_VHUB_HUB_DESC_SIZE;
> -		memcpy(ep->buf, &ast_vhub_hub_desc, dsize);
> -		BUILD_BUG_ON(dsize > sizeof(ast_vhub_hub_desc));
> +		memcpy(ep->buf, &vhub->vhub_hub_desc, dsize);
> +		BUILD_BUG_ON(dsize > sizeof(vhub->vhub_hub_desc));
>  		BUILD_BUG_ON(AST_VHUB_HUB_DESC_SIZE >=
> AST_VHUB_EP0_MAX_PACKET);
>  		break;
>  	default:
> @@ -317,7 +314,8 @@ static int ast_vhub_rep_string(struct ast_vhub_ep
> *ep,
>  			       u8 string_id, u16 lang_id,
>  			       u16 len)
>  {
> -	int rc = usb_gadget_get_string (&ast_vhub_strings, string_id,
> ep->buf);
> +	int rc = usb_gadget_get_string(&ep->vhub->vhub_str_desc,
> +					string_id, ep->buf);
>  
>  	/*
>  	 * This should never happen unless we put too big strings in
> @@ -834,9 +832,30 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
>  	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
>  }
>  
> +static void ast_vhub_init_desc(struct ast_vhub *vhub)
> +{
> +	/* Initialize vhub Device Descriptor. */
> +	memcpy(&vhub->vhub_dev_desc, &ast_vhub_dev_desc,
> +		sizeof(vhub->vhub_dev_desc));
> +
> +	/* Initialize vhub Configuration Descriptor. */
> +	memcpy(&vhub->vhub_conf_desc, &ast_vhub_conf_desc,
> +		sizeof(vhub->vhub_conf_desc));
> +
> +	/* Initialize vhub Hub Descriptor. */
> +	memcpy(&vhub->vhub_hub_desc, &ast_vhub_hub_desc,
> +		sizeof(vhub->vhub_hub_desc));
> +
> +	/* Initialize vhub String Descriptors. */
> +	memcpy(&vhub->vhub_str_desc, &ast_vhub_strings,
> +		sizeof(vhub->vhub_str_desc));
> +}
> +
>  void ast_vhub_init_hub(struct ast_vhub *vhub)
>  {
>  	vhub->speed = USB_SPEED_UNKNOWN;
>  	INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
> +
> +	ast_vhub_init_desc(vhub);
>  }
>  
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> index 761919e220d3..191f9fae7420 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/vhub.h
> @@ -2,6 +2,9 @@
>  #ifndef __ASPEED_VHUB_H
>  #define __ASPEED_VHUB_H
>  
> +#include <linux/usb.h>
> +#include <linux/usb/ch11.h>
> +
>  /*****************************
>   *                           *
>   * VHUB register definitions *
> @@ -373,6 +376,12 @@ struct ast_vhub_port {
>  	struct ast_vhub_dev	dev;
>  };
>  
> +struct ast_vhub_full_cdesc {
> +	struct usb_config_descriptor	cfg;
> +	struct usb_interface_descriptor intf;
> +	struct usb_endpoint_descriptor	ep;
> +} __packed;
> +
>  /* Global vhub structure */
>  struct ast_vhub {
>  	struct platform_device		*pdev;
> @@ -409,6 +418,12 @@ struct ast_vhub {
>  
>  	/* Upstream bus speed captured at bus reset */
>  	unsigned int			speed;
> +
> +	/* Standard USB Descriptors of the vhub. */
> +	struct usb_device_descriptor	vhub_dev_desc;
> +	struct ast_vhub_full_cdesc	vhub_conf_desc;
> +	struct usb_hub_descriptor	vhub_hub_desc;
> +	struct usb_gadget_strings	vhub_str_desc;
>  };
>  
>  /* Standard request handlers result codes */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
