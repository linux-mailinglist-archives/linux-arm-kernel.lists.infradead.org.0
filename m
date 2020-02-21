Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A3D6166B6E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 01:19:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TNmq6WTkUrtyNM/7T+ejWZAx7IS6zNIVmVeUg4X/9Fk=; b=QB2WOp+U2pz0bY
	xjNoMPUw+VmLx92465XtEdgBWPA2z90G/dgkxPrvPGelkbcL/HqnDDHp+OSPUygp/wrA+IWGZyMYU
	+BodRI5fq4qgYULN2Ln4pKw1Da6F773jTDWuu87tVUPReCb4a9qhOCw1BrrNjd5aGrkYIR6LYd4zq
	MV+PSvbDDCoYKO45Bp7kfiQC+sMUtNLhLiHx8oLJOK9YttalS8OqO2uWlk+yOo3mq9+jW0uZpp4uK
	uoGZOCNs6dVw/NxO38+nuh9gITC63MzceX84c8+5tgHt9xDfKcWGBx5UWem1I77MWsrEC4gvAj1Kf
	Sx4N/pykyIdq2GnRdMDQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4w2C-0001RE-Jw; Fri, 21 Feb 2020 00:19:12 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4w23-0001Qm-1X
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 00:19:04 +0000
Received: by mail-pl1-x642.google.com with SMTP id g6so101982plp.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 16:19:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=O8eAGz/pqZqFUKTP2bb1ydmrb6R3JRzc7hCsXNdSvFE=;
 b=TBe4MgrvRwfcCIFOsb4htsXOSxVcnusqrAp17ZTJA173b0arMS87znuql6TLiLPBBs
 PUI3JNY1QM7e6eVYQK/vYJOS0acsigUqNnhX3AgH6+Wa5BTODyQLPukZVHgBXPmcc0GD
 haF2UjOXFpcKHDe6xCbZi2TfFPwvrkmwMDlOE1hVjuhCfeWM3XuLh32Kk/JwhsCDrHnN
 jdVBKWjt8fel7CLaF4sBq3VwDgaDbrjdkParEcYLojLvI1jfB9+r7Rtytk4PStJ48UnM
 7YO6HNVkBXDnmU4Jf+rosLXooazseivSUcFWJ2+MzelyGvo3JKWGNBWZYyidtEMYaWRY
 SRUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=O8eAGz/pqZqFUKTP2bb1ydmrb6R3JRzc7hCsXNdSvFE=;
 b=ThN8cUhTF2jdMp22/ykFer2xaoK5okXWOU+ajEBboJ8JKf8PX+IoNtxNpjav6ybtb+
 1PihHbxJZZvWkqMEXIL7ADlgx8kxJyiYJQMi0fo88s0splN7zs9RXJ79x0cHVvbao/wd
 ezWbOTFkBqOxIY+y1t7uvQinW2NqGPrqvhB4vJXmbP410ukkbs2PmMfLIWLLhjMZf1Zx
 7l6n1iIpPR45b9W/5ea3/QZ7aq6ZcYE+FkwrLLeK6Nlgn9/766DG4BZSbsYlA8MS1wyt
 MJMuKrxvVMzwEY/NGZsOKLHpHlR9njhuM7ZlkvH7JcsoIk14AdYwGspfpw/GWL65Qb9Y
 yKKw==
X-Gm-Message-State: APjAAAVvxMjOsnoGx4n8C0mlc2xFOtqQHWUaWjLH7aJhO++StlY+PO40
 fHcXuAaIV+jCUMzrsimM/o8=
X-Google-Smtp-Source: APXvYqxdsEuhmZdInMso9eiW6bEOqmFq+cTvdyjVdA/nX5v1Zwxgg1ArC+STWWuiDuN1sQuyoE/14w==
X-Received: by 2002:a17:902:7449:: with SMTP id
 e9mr32417669plt.139.1582244341895; 
 Thu, 20 Feb 2020 16:19:01 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::6:8f30])
 by smtp.gmail.com with ESMTPSA id d2sm544486pjv.18.2020.02.20.16.19.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 20 Feb 2020 16:19:01 -0800 (PST)
Date: Thu, 20 Feb 2020 16:18:54 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
Subject: Re: [PATCH 1/2] usb: gadget: aspeed: allow to customize vhub device
 IDs/strings
Message-ID: <20200221001853.GA7815@taoren-ubuntu-R90MNF91>
References: <20200218235600.6763-1-rentao.bupt@gmail.com>
 <20200218235600.6763-2-rentao.bupt@gmail.com>
 <86ab18e4ed01c6856ff47c859a3dda598dd94978.camel@kernel.crashing.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <86ab18e4ed01c6856ff47c859a3dda598dd94978.camel@kernel.crashing.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_161903_110984_BCE9030E 
X-CRM114-Status: GOOD (  32.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 Joel Stanley <joel@jms.id.au>, taoren@fb.com,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Ben,

On Thu, Feb 20, 2020 at 12:38:10PM +1100, Benjamin Herrenschmidt wrote:
> On Tue, 2020-02-18 at 15:55 -0800, rentao.bupt@gmail.com wrote:
> > From: Tao Ren <rentao.bupt@gmail.com>
> > 
> > This patch allows people to customize vendor/product/device IDs and
> > manufacture/product/serial strings in vhub's device descriptor through
> > device tree properties.
> 
> You should probably add a binding file to Documentation/devicetree/bindings/usb/*
> 
> We got away without one bcs there was no funky properties there but
> now that we are adding some, we need to document them.

Sure. Andrew also reminded me about the binding document. Will include
the document in patch v2.

> 
> Also...
> 
> > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > ---
> >  drivers/usb/gadget/udc/aspeed-vhub/hub.c | 73 +++++++++++++++++++-----
> >  1 file changed, 59 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/usb/gadget/udc/aspeed-vhub/hub.c b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > index 9c7e57fbd8ef..4e3ef83283a6 100644
> > --- a/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > +++ b/drivers/usb/gadget/udc/aspeed-vhub/hub.c
> > @@ -43,19 +43,23 @@
> >   *    - We may need to indicate TT support
> >   *    - We may need a device qualifier descriptor
> >   *	as devices can pretend to be usb1 or 2
> > - *    - Make vid/did overridable
> >   *    - make it look like usb1 if usb1 mode forced
> >   */
> >  #define KERNEL_REL	bin2bcd(((LINUX_VERSION_CODE >> 16) & 0x0ff))
> >  #define KERNEL_VER	bin2bcd(((LINUX_VERSION_CODE >> 8) & 0x0ff))
> >  
> >  enum {
> > +	AST_VHUB_STR_INDEX_MAX = 4,
> >  	AST_VHUB_STR_MANUF = 3,
> >  	AST_VHUB_STR_PRODUCT = 2,
> >  	AST_VHUB_STR_SERIAL = 1,
> >  };
> >  
> > -static const struct usb_device_descriptor ast_vhub_dev_desc = {
> > +/*
> > + * Below is the default Device Descriptor of the vhub device. Some fields
> > + * may be updated in "ast_vhub_fixup_dev_desc" function.
> > + */
> > +static struct usb_device_descriptor ast_vhub_dev_desc = {
> >  	.bLength		= USB_DT_DEVICE_SIZE,
> >  	.bDescriptorType	= USB_DT_DEVICE,
> >  	.bcdUSB			= cpu_to_le16(0x0200),
> > @@ -148,10 +152,14 @@ static struct usb_hub_descriptor ast_vhub_hub_desc = {
> >  };
> >  
> >  /*
> > - * These strings converted to UTF-16 must be smaller than
> > - * our EP0 buffer.
> > + * Below tables define the default Language ID and String Descriptors of
> > + * the vhub. Language ID and strings may be overridden if according device
> > + * tree properties are defined. Refer to "ast_vhub_fixup_dev_desc" function
> > + * for details.
> > + * Note: these strings converted to UTF-16 must be smaller than vhub EP0
> > + * buffer size.
> >   */
> > -static const struct usb_string ast_vhub_str_array[] = {
> > +static struct usb_string ast_vhub_str_array[] = {
> >  	{
> >  		.id = AST_VHUB_STR_SERIAL,
> >  		.s = "00000000"
> > @@ -167,7 +175,7 @@ static const struct usb_string ast_vhub_str_array[] = {
> >  	{ }
> >  };
> 
> I dislike this. The array should remain static and contain the
> defaults. The properties shouldn't modify the global array, there could
> be a future chip with multiple vhubs and that would make them stomp on
> each other.
> 
> Instead, duplicate the properties into the per-vhub instance data and
> update the content there.

Okay. I will include a copy of the descriptors in struct ast_vhub and
override per-hub instances if needed.

> 
> You could also skip using usb_gadget_get_string() and expose the low
> level conversion function directly though that's trickier.
> 
> Also have you thought about supporting a list of strings along with an
> array of language IDs ? Vendors might want to provide multiple
> languages...

I thought people (aspeed bmc users) won't care much about multi-language
usb strings in the near future. Maybe I'm wrong, but if this is what we
want for now, I will try to add the support, but will need more guidance
from you (such as device tree structure, dt property value to utf-16
conversion, and etc.).


Cheers,

Tao

> 
> > -static const struct usb_gadget_strings ast_vhub_strings = {
> > +static struct usb_gadget_strings ast_vhub_strings = {
> >  	.language = 0x0409,
> >  	.strings = (struct usb_string *)ast_vhub_str_array
> >  };
> > @@ -320,18 +328,15 @@ static int ast_vhub_rep_string(struct ast_vhub_ep *ep,
> >  			       u8 string_id, u16 lang_id,
> >  			       u16 len)
> >  {
> > -	int rc = usb_gadget_get_string (&ast_vhub_strings, string_id, ep->buf);
> > -
> > -	/*
> > -	 * This should never happen unless we put too big strings in
> > -	 * the array above
> > -	 */
> > -	BUG_ON(rc >= AST_VHUB_EP0_MAX_PACKET);
> > +	int rc;
> > +	u8 buf[256]; /* buffer size required by usb_gadget_get_string */
> >  
> > -	if (rc < 0)
> > +	rc = usb_gadget_get_string(&ast_vhub_strings, string_id, buf);
> > +	if (rc < 0 || rc >= AST_VHUB_EP0_MAX_PACKET)
> >  		return std_req_stall;
> >  
> >  	/* Shoot it from the EP buffer */
> > +	memcpy(ep->buf, buf, rc);
> >  	return ast_vhub_reply(ep, NULL, min_t(u16, rc, len));
> >  }
> >  
> > @@ -837,11 +842,51 @@ void ast_vhub_hub_reset(struct ast_vhub *vhub)
> >  	writel(0, vhub->regs + AST_VHUB_EP1_STS_CHG);
> >  }
> >  
> > +static void ast_vhub_fixup_dev_desc(struct ast_vhub *vhub)
> > +{
> > +	int i;
> > +	u8 id;
> > +	u16 of_id;
> > +	const char *of_str[AST_VHUB_STR_INDEX_MAX] = {NULL};
> > +	struct device_node *np = vhub->pdev->dev.of_node;
> > +
> > +	/*
> > +	 * Update IDs in device descriptor if according properties are
> > +	 * defined in device tree.
> > +	 */
> > +	if (!of_property_read_u16(np, "vendor-id", &of_id))
> > +		ast_vhub_dev_desc.idVendor = cpu_to_le16(of_id);
> > +	if (!of_property_read_u16(np, "product-id", &of_id))
> > +		ast_vhub_dev_desc.idProduct = cpu_to_le16(of_id);
> > +	if (!of_property_read_u16(np, "device-id", &of_id))
> > +		ast_vhub_dev_desc.bcdDevice = cpu_to_le16(of_id);
> > +
> > +	/*
> > +	 * Update string descriptors if according properties are defined
> > +	 * in device tree.
> > +	 */
> > +	if (!of_property_read_u16(np, "language-id", &of_id))
> > +		ast_vhub_strings.language = of_id;
> > +
> > +	of_str[AST_VHUB_STR_MANUF] = of_get_property(np, "manufacturer", NULL);
> > +	of_str[AST_VHUB_STR_PRODUCT] = of_get_property(np, "product", NULL);
> > +	of_str[AST_VHUB_STR_SERIAL] = of_get_property(np, "serial-number",
> > +						      NULL);
> > +
> > +	for (i = 0; ast_vhub_str_array[i].s != NULL; i++) {
> > +		id = ast_vhub_str_array[i].id;
> > +		if (of_str[id])
> > +			ast_vhub_str_array[i].s = of_str[id];
> > +	}
> > +}
> > +
> >  void ast_vhub_init_hub(struct ast_vhub *vhub)
> >  {
> >  	vhub->speed = USB_SPEED_UNKNOWN;
> >  	INIT_WORK(&vhub->wake_work, ast_vhub_wake_work);
> >  
> > +	ast_vhub_fixup_dev_desc(vhub);
> > +
> >  	/*
> >  	 * Fixup number of ports in hub descriptor.
> >  	 */
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
