Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A0AF165463
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 02:39:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=M/LUHWcSnFAZYkbMe1MDSTjgHmJLutf6nq4XdKxDfB4=; b=iV10dXq3HJA1d1
	P4kIsdOo+btT+cCfyrzDnYQASjlOs+RH8Khtp9LRMMIKjdWCViCs9NJfRBrO/x6M0ZfAuLlttFovL
	wJm6CeQN6UlV+qXKM0xBGLeM5fYp3WBXqYucHD4OMiSxWAxVygSq+bImEnsTkjxotZRGpidqnXSYl
	4nEkYWyLTDXw4trdnNKPEqxYndpCCscWmOPKgOMt17+tAnBHnysnCHRtwoX1L+ay/RIMNBRv+BAA6
	MKf94/R69f5I85ywUOm8DC3fMEoznIV0EsKmyWe1DU6IikoPpx7hWJ1t2NmYLqIj+Y+vPqjFV8P4K
	J/Ni5ZeuqKt3AAn5PynQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4aoB-0007KT-60; Thu, 20 Feb 2020 01:39:19 +0000
Received: from kernel.crashing.org ([76.164.61.194])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4ao0-0007K4-1T
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 01:39:09 +0000
Received: from localhost (gate.crashing.org [63.228.1.57])
 (authenticated bits=0)
 by kernel.crashing.org (8.14.7/8.14.7) with ESMTP id 01K1cC0b028187
 (version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO);
 Wed, 19 Feb 2020 19:38:15 -0600
Message-ID: <86ab18e4ed01c6856ff47c859a3dda598dd94978.camel@kernel.crashing.org>
Subject: Re: [PATCH 1/2] usb: gadget: aspeed: allow to customize vhub device
 IDs/strings
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
Date: Thu, 20 Feb 2020 12:38:10 +1100
In-Reply-To: <20200218235600.6763-2-rentao.bupt@gmail.com>
References: <20200218235600.6763-1-rentao.bupt@gmail.com>
 <20200218235600.6763-2-rentao.bupt@gmail.com>
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_173908_283705_6B0F468B 
X-CRM114-Status: GOOD (  25.50  )
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

On Tue, 2020-02-18 at 15:55 -0800, rentao.bupt@gmail.com wrote:
> From: Tao Ren <rentao.bupt@gmail.com>
> 
> This patch allows people to customize vendor/product/device IDs and
> manufacture/product/serial strings in vhub's device descriptor through
> device tree properties.

You should probably add a binding file to Documentation/devicetree/bindings/usb/*

We got away without one bcs there was no funky properties there but
now that we are adding some, we need to document them.

Also...

> Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> ---
>  drivers/usb/gadget/udc/aspeed-vhub/hub.c | 73 +++++++++++++++++++-----
>  1 file changed, 59 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> index 9c7e57fbd8ef..4e3ef83283a6 100644
> --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> @@ -43,19 +43,23 @@
>   *    - We may need to indicate TT support
>   *    - We may need a device qualifier descriptor
>   *	as devices can pretend to be usb1 or 2
> - *    - Make vid/did overridable
>   *    - make it look like usb1 if usb1 mode forced
>   */
>  #define KERNEL_REL	bin2bcd(((LINUX_VERSION_CODE >> 16) & 0x0ff))
>  #define KERNEL_VER	bin2bcd(((LINUX_VERSION_CODE >> 8) & 0x0ff))
>  
>  enum {
> +	AST_VHUB_STR_INDEX_MAX = 4,
>  	AST_VHUB_STR_MANUF = 3,
>  	AST_VHUB_STR_PRODUCT = 2,
>  	AST_VHUB_STR_SERIAL = 1,
>  };
>  
> -static const struct usb_device_descriptor ast_vhub_dev_desc = {
> +/*
> + * Below is the default Device Descriptor of the vhub device. Some fields
> + * may be updated in "ast_vhub_fixup_dev_desc" function.
> + */
> +static struct usb_device_descriptor ast_vhub_dev_desc = {
>  	.bLength		= USB_DT_DEVICE_SIZE,
>  	.bDescriptorType	= USB_DT_DEVICE,
>  	.bcdUSB			= cpu_to_le16(0x0200),
> @@ -148,10 +152,14 @@ static struct usb_hub_descriptor ast_vhub_hub_desc = {
>  };
>  
>  /*
> - * These strings converted to UTF-16 must be smaller than
> - * our EP0 buffer.
> + * Below tables define the default Language ID and String Descriptors of
> + * the vhub. Language ID and strings may be overridden if according device
> + * tree properties are defined. Refer to "ast_vhub_fixup_dev_desc" function
> + * for details.
> + * Note: these strings converted to UTF-16 must be smaller than vhub EP0
> + * buffer size.
>   */
> -static const struct usb_string ast_vhub_str_array[] = {
> +static struct usb_string ast_vhub_str_array[] = {
>  	{
>  		.id = AST_VHUB_STR_SERIAL,
>  		.s = "00000000"
> @@ -167,7 +175,7 @@ static const struct usb_string ast_vhub_str_array[] = {
>  	{ }
>  };

I dislike this. The array should remain static and contain the
defaults. The properties shouldn't modify the global array, there could
be a future chip with multiple vhubs and that would make them stomp on
each other.

Instead, duplicate the properties into the per-vhub instance data and
update the content there.

You could also skip using usb_gadget_get_string() and expose the low
level conversion function directly though that's trickier.

Also have you thought about supporting a list of strings along with an
array of language IDs ? Vendors might want to provide multiple
languages...

> -static const struct usb_gadget_strings ast_vhub_strings = {
> +static struct usb_gadget_strings ast_vhub_strings = {
>  	.language = 0x0409,
>  	.strings = (struct usb_string *)ast_vhub_str_array
>  };
> @@ -320,18 +328,15 @@ static int ast_vhub_rep_string(struct ast_vhub_ep *ep,
>  			       u8 string_id, u16 lang_id,
>  			       u16 len)
>  {
> -	int rc = usb_gadget_get_string (&ast_vhub_strings, string_id, ep->buf);
> -
> -	/*
> -	 * This should never happen unless we put too big strings in
> -	 * the array above
> -	 */
> -	BUG_ON(rc >= AST_VHUB_EP0_MAX_PACKET);
> +	int rc;
> +	u8 buf[256]; /* buffer size required by usb_gadget_get_string */
>  
> -	if (rc < 0)
> +	rc = usb_gadget_get_string(&ast_vhub_strings, string_id, buf);
> +	if (rc < 0 || rc >= AST_VHUB_EP0_MAX_PACKET)
>  		return std_req_stall;
>  
>  	/* Shoot it from the EP buffer */
> +	memcpy(ep->buf, buf, rc);
>  	return ast_vhub_reply(ep, NULL, min_t(u16, rc, len));
>  }
>  
> @@ -837,11 +842,51 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
>  	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
>  }
>  
> +static void ast_vhub_fixup_dev_desc(struct ast_vhub *vhub)
> +{
> +	int i;
> +	u8 id;
> +	u16 of_id;
> +	const char *of_str[AST_VHUB_STR_INDEX_MAX] = {NULL};
> +	struct device_node *np = vhub->pdev->dev.of_node;
> +
> +	/*
> +	 * Update IDs in device descriptor if according properties are
> +	 * defined in device tree.
> +	 */
> +	if (!of_property_read_u16(np, "vendor-id", &of_id))
> +		ast_vhub_dev_desc.idVendor = cpu_to_le16(of_id);
> +	if (!of_property_read_u16(np, "product-id", &of_id))
> +		ast_vhub_dev_desc.idProduct = cpu_to_le16(of_id);
> +	if (!of_property_read_u16(np, "device-id", &of_id))
> +		ast_vhub_dev_desc.bcdDevice = cpu_to_le16(of_id);
> +
> +	/*
> +	 * Update string descriptors if according properties are defined
> +	 * in device tree.
> +	 */
> +	if (!of_property_read_u16(np, "language-id", &of_id))
> +		ast_vhub_strings.language = of_id;
> +
> +	of_str[AST_VHUB_STR_MANUF] = of_get_property(np, "manufacturer", NULL);
> +	of_str[AST_VHUB_STR_PRODUCT] = of_get_property(np, "product", NULL);
> +	of_str[AST_VHUB_STR_SERIAL] = of_get_property(np, "serial-number",
> +						      NULL);
> +
> +	for (i = 0; ast_vhub_str_array[i].s != NULL; i++) {
> +		id = ast_vhub_str_array[i].id;
> +		if (of_str[id])
> +			ast_vhub_str_array[i].s = of_str[id];
> +	}
> +}
> +
>  void ast_vhub_init_hub(struct ast_vhub *vhub)
>  {
>  	vhub->speed = USB_SPEED_UNKNOWN;
>  	INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
>  
> +	ast_vhub_fixup_dev_desc(vhub);
> +
>  	/*
>  	 * Fixup number of ports in hub descriptor.
>  	 */


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
