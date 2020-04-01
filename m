Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 75AAF19A313
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 02:48:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PyarKi/TcDMvWnF2oZctlMANvFzunXOyKgr4cS1q6fA=; b=sneYZmuZKd2eM6
	vXtOA2PxYJW7GKEizO5Eq0sIJ3d2Wh1f2pUnAgjOXoScduO3hDJOPwFDTD8hhIC6IBzgasXNjvoDM
	+H7gBCRQHYe3CFe+d3Y/6MF1vh1umQhVjOJUG/1UYiP6m0Wpj+ptHFZq8F+C+ABo/kcPB7Wkk/Vbb
	U9BMhkDUrViwh3hgAEsUn74Dwb/wYPiKgR5fREtnF4tjMpn8yFe12L1Lx6i1cJHa4kiEduV7pjCJo
	y79KTL0D6Kne9oFrvHa6YPo5KpkDjKQRRrmuIITXnT/KIGuynpmxlu1WvS1L3A8TlAfSOBR/6AyJZ
	FCRWzo+Sxv26QqtYEEXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJRY3-0006ZK-I4; Wed, 01 Apr 2020 00:48:03 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJRXs-0006YU-7e
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 00:47:53 +0000
Received: by mail-pl1-x644.google.com with SMTP id a23so8860006plm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 17:47:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Grz3j5qN3bekOkWLBc9tIOx+lzkuYvmCGEjHfUkVS6w=;
 b=pbw9SN2uZr6z7NS/82qUlJyAHKLLx0o8fecHkIroHnXMV5ctnPROphGfQlBBot1HCJ
 9OcK1ZODxSAfZkdboOKfCd5C/IeOTtoX6AWP9AGnjMnwMF/7ZnG6SxBatPQjXWM31rFD
 bj4DxdivZodaaqf4CWmsWFHmRKfVgv3Wig1D7R1wuEuoEhm07ugJ67hxbTZa73y0n32b
 2GIVLDRCaIvrlBYTQprdx+bvgZ6PQXyND3bjQz/iajIWAl4AkY+9Na7JIKzDTW6ICix1
 /Y3bZijNDGJd8T9XyAvaZzhhNbsG4Bdlrpm5TThQ7kHe/ac11lz2rXrGlfUtBVo4nHVo
 8VnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Grz3j5qN3bekOkWLBc9tIOx+lzkuYvmCGEjHfUkVS6w=;
 b=GcByIgJM8TUztgUhtYL/ITYXit3ouiOW0nzUMJGdOlHiDTVkHrLoBaXBdUygG6/5Uc
 JtbdCrzE/htibsZx3kfB/FWdhQNRCLw1C3/rxt3OzYTHCSZiHb+DVYKs4dIv/ndTxeqg
 96/aytLNryxfJieIieAJ/i8gH/AWibAPdjtTMZHUDCMjAGB1O6YV0SFfHDfIDKSr2s/A
 edR1+Bbf2C6ib4czSZTiMM/vZ8evCxuqV2VODKOAIcrnSHP/tT+cWgK8jKzYbzfzO29v
 n52vciLd4vEiLOKwfgziiNfxPRNb/+xIO2d/M6t+WHYgGNmju7Uwu8IqJ64RgGpI279d
 xm8w==
X-Gm-Message-State: AGi0PuYgo1BomjSGG1LCi269aGJyL5nsgDfAxICJ5KbZuUljOovCLBpQ
 EE8LXAG+pwiLF2fR1msbPLQ=
X-Google-Smtp-Source: APiQypIwqp4XKFr4P8Yaluep4OmNAhSpUlnlig+OHmK65ulBwuoPP+K+mnxUF/3q8q4/i/5EaGbmXA==
X-Received: by 2002:a17:90a:da06:: with SMTP id
 e6mr1793956pjv.14.1585702070887; 
 Tue, 31 Mar 2020 17:47:50 -0700 (PDT)
Received: from taoren-ubuntu-R90MNF91 (c-24-4-25-55.hsd1.ca.comcast.net.
 [24.4.25.55])
 by smtp.gmail.com with ESMTPSA id x188sm261705pfx.198.2020.03.31.17.47.49
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 31 Mar 2020 17:47:50 -0700 (PDT)
Date: Tue, 31 Mar 2020 17:47:43 -0700
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v2 6/6] dt-bindings: usb: document aspeed vhub device
 ID/string properties
Message-ID: <20200401004741.GA6923@taoren-ubuntu-R90MNF91>
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
 <20200315191632.12536-7-rentao.bupt@gmail.com>
 <20200330192347.GA6388@bogus>
 <4dc3ac910c79dcca398eb5161dde44e1cc50baca.camel@kernel.crashing.org>
 <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_174752_274941_C07CCF09 
X-CRM114-Status: GOOD (  35.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux USB List <linux-usb@vger.kernel.org>, Tao Ren <taoren@fb.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 31, 2020 at 10:21:10AM -0600, Rob Herring wrote:
> On Mon, Mar 30, 2020 at 6:14 PM Benjamin Herrenschmidt
> <benh@kernel.crashing.org> wrote:
> >
> > On Mon, 2020-03-30 at 13:23 -0600, Rob Herring wrote:
> > > On Sun, Mar 15, 2020 at 12:16:32PM -0700, rentao.bupt@gmail.com wrote:
> > > > From: Tao Ren <rentao.bupt@gmail.com>
> > > >
> > > > Update device tree binding document for aspeed vhub's device IDs and
> > > > string properties.
> > > >
> > > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > > ---
> > > >  No change in v2:
> > > >    - the patch is added into the series since v2.
> > > >
> > > >  .../bindings/usb/aspeed,usb-vhub.yaml         | 68 +++++++++++++++++++
> > > >  1 file changed, 68 insertions(+)
> > > >
> > > > diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > > index 06399ba0d9e4..5b2e8d867219 100644
> > > > --- a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > > +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > > @@ -52,6 +52,59 @@ properties:
> > > >          minimum: 1
> > > >          maximum: 21
> > > >
> > > > +  vhub-vendor-id:
> > > > +    description: vhub Vendor ID
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +      - maximum: 65535
> > > > +
> > > > +  vhub-product-id:
> > > > +    description: vhub Product ID
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +      - maximum: 65535
> > >
> > > There's already standard 'vendor-id' and 'device-id' properties. Use
> > > those.
> >
> > So yes and no... I don't fundamentally object but keep in mind that
> > traditionally, the properties are about matching with a physical
> > hardware.
> >
> > In this case however, we are describing a virtual piece of HW and so
> > those IDs are going to be picked up to be exposed as the USB
> > vendor/device of the vhub on the USB bus.
> >
> > Not necessarily an issue but it's more "configuration" than "matching"
> > and as such, it might make sense to expose that with a prefix, though I
> > would prefer something like usb-vendor-id or usb,vendor-id...
> 
> For FDT uses, it's pretty much been configuration. It's mostly been
> for PCI that I've seen these properties used.

Thank you Rob and Ben for the comments. I thought about using "vendor-id"
or "idVendor" prefixed with "usb", "hub" or "vhub", and I chose "vhub"
just to distinguish from per-port usb devices' properties in the future.
Anyways I'm very happy to update the names per your suggestions.

> 
> > > > +
> > > > +  vhub-device-revision:
> > >
> > > Specific to USB, not vhub.
> >
> > Same as the above.
> >
> > > > +    description: vhub Device Revision in binary-coded decimal
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > > +      - maximum: 65535
> > > > +
> > > > +  vhub-strings:
> > > > +    type: object
> > > > +
> > > > +    properties:
> > > > +      '#address-cells':
> > > > +        const: 1
> > > > +
> > > > +      '#size-cells':
> > > > +        const: 0
> > > > +
> > > > +    patternProperties:
> > > > +      '^string@[0-9a-f]+$':
> > > > +        type: object
> > > > +        description: string descriptors of the specific language
> > > > +
> > > > +        properties:
> > > > +          reg:
> > > > +            maxItems: 1
> > > > +            description: 16-bit Language Identifier defined by USB-IF
> > > > +
> > > > +          manufacturer:
> > > > +            description: vhub manufacturer
> > > > +            allOf:
> > > > +              - $ref: /schemas/types.yaml#/definitions/string
> > > > +
> > > > +          product:
> > > > +            description: vhub product name
> > > > +            allOf:
> > > > +              - $ref: /schemas/types.yaml#/definitions/string
> > > > +
> > > > +          serial-number:
> > > > +            description: vhub device serial number
> > > > +            allOf:
> > > > +              - $ref: /schemas/types.yaml#/definitions/string
> > >
> > > For all of this, it's USB specific, not vhub specific. I'm not sure this
> > > is the right approach. It might be better to just define properties
> > > which are just raw USB descriptors rather than inventing some DT format
> > > that then has to be converted into USB descriptors.
> >
> > Raw blob in the DT is rather annoying and leads to hard to parse stuff
> > for both humans and scripts. The main strenght of the DT is it's easy
> > to read and manipulate.
> 
> True, and I'd certainly agree when we're talking about some vendor
> specific blob. but there's already code/tools to parse USB
> descriptors.
> 
> > Also not the entire descriptor is configurable this way.
> >
> > That said, it could be that using  the DT for the above is overkill and
> > instead, we should consider a configfs like the rest of USB gadget.
> > Though it isn't obvious how to do that, the current gadget stuff
> > doesn't really "fit" what we need here.
> 
> Surely the descriptor building code can be shared at a minimum.
> 
> Regardless of whether gadget configfs fits, usually it is pretty clear
> whether something belongs in DT or userspace. That should be decided
> first.
> 
> > Maybe we could expose the port as UDCs but not actually expose them on
> > the bus until the hub is "activated" via a special configfs entry...
> 
> If control of the hub is done by userspace, I'd think configuration
> should be there too.
> 
> Rob

Perhaps it's my lack of greater knowledge in gadget/dt areas, and I'm not
quite clear what would be the recommended/accepted approach for this
case. I'm looking forward for more suggestions.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
