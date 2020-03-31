Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9E7A199B4E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 18:21:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IXoTbeSdg0t+fElG7kWPm1Y+jXvVergELEo5gb1SEVk=; b=ROTtxSaj2pOcrU
	1oesg/Ik+HviyEoI8VJx12qS60V0euVp/5VICxYBNBf3B9xjdDAJ7u5UuBGKDs4bbsgV7BL81QbmE
	0T9AkHzL3XKU772NKYxfB40jDZy6zzka7PzFx0WuiO/8v/V4J6UcBUiVpZrn2ELiayBe9/33H2TTW
	RQ1y6wfYN5EiznF0pDLP8g5qHW1aDJV+IGX2qDpILoa0BjkZQy0CK+6a+pQ9cM3c+PpxOJPiSJVT9
	tVYV9q3U0BW1wH+8u23VQQBCoDJTbIApZK5ajRxxafbc18wW6k0Cc0qpfLLLYckzh9PiE2cVctSG/
	dW+tionyqo62NfEgeocA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJJdw-00011F-3X; Tue, 31 Mar 2020 16:21:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJJdi-00010k-OH
 for linux-arm-kernel@lists.infradead.org; Tue, 31 Mar 2020 16:21:24 +0000
Received: from mail-qt1-f177.google.com (mail-qt1-f177.google.com
 [209.85.160.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DF619212CC
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 16:21:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585671682;
 bh=YHNMT5j8Euq0n+mseKfPA6cKBa4Jew7v+YKTKPRHb/4=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=gNLQBrPcq3oyN2Ogv+oTJyFfBNekyyJFE8OMY+ksIRuIUm4Epp9KM6Y1F/8vi0HEK
 10SfgtgPdKeKpsdZiqQ2ixSx9HcCCrFep4hoh/CePpyQATN8UU/WSDZC0IVmvAP2LT
 v14r3TcSkQKemqZJ9R1yludBCEJye3nWX1UaBApI=
Received: by mail-qt1-f177.google.com with SMTP id f20so18844003qtq.6
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 31 Mar 2020 09:21:21 -0700 (PDT)
X-Gm-Message-State: ANhLgQ3AvXF9v76mCFfms/Xqquunj3lLK+my1vYyoON/cHxGTkit5JCp
 MbKH5eZLQf2fveb9QRI89Y6VvbwJDBf+tMAlAw==
X-Google-Smtp-Source: ADFU+vtynyRBpHK1zGlgHy3HIyDVqOtqkMP9vtFANRwUVhPPv/eanwLrG9DiWcusvM2HxEgWHSF1cMX0wltfSbKtWIU=
X-Received: by 2002:ac8:1611:: with SMTP id p17mr5993804qtj.300.1585671680921; 
 Tue, 31 Mar 2020 09:21:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200315191632.12536-1-rentao.bupt@gmail.com>
 <20200315191632.12536-7-rentao.bupt@gmail.com>
 <20200330192347.GA6388@bogus>
 <4dc3ac910c79dcca398eb5161dde44e1cc50baca.camel@kernel.crashing.org>
In-Reply-To: <4dc3ac910c79dcca398eb5161dde44e1cc50baca.camel@kernel.crashing.org>
From: Rob Herring <robh@kernel.org>
Date: Tue, 31 Mar 2020 10:21:10 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
Message-ID: <CAL_JsqKZeCC352TKFGDNRRogSefF9vq+J=WqCEeg59PBsSOW1w@mail.gmail.com>
Subject: Re: [PATCH v2 6/6] dt-bindings: usb: document aspeed vhub device
 ID/string properties
To: Benjamin Herrenschmidt <benh@kernel.crashing.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_092122_826289_50764ED1 
X-CRM114-Status: GOOD (  30.73  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 OpenBMC Maillist <openbmc@lists.ozlabs.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stephen Boyd <swboyd@chromium.org>, Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Joel Stanley <joel@jms.id.au>, Tao Ren <taoren@fb.com>, rentao.bupt@gmail.com,
 Colin Ian King <colin.king@canonical.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 30, 2020 at 6:14 PM Benjamin Herrenschmidt
<benh@kernel.crashing.org> wrote:
>
> On Mon, 2020-03-30 at 13:23 -0600, Rob Herring wrote:
> > On Sun, Mar 15, 2020 at 12:16:32PM -0700, rentao.bupt@gmail.com wrote:
> > > From: Tao Ren <rentao.bupt@gmail.com>
> > >
> > > Update device tree binding document for aspeed vhub's device IDs and
> > > string properties.
> > >
> > > Signed-off-by: Tao Ren <rentao.bupt@gmail.com>
> > > ---
> > >  No change in v2:
> > >    - the patch is added into the series since v2.
> > >
> > >  .../bindings/usb/aspeed,usb-vhub.yaml         | 68 +++++++++++++++++++
> > >  1 file changed, 68 insertions(+)
> > >
> > > diff --git a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > index 06399ba0d9e4..5b2e8d867219 100644
> > > --- a/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > +++ b/Documentation/devicetree/bindings/usb/aspeed,usb-vhub.yaml
> > > @@ -52,6 +52,59 @@ properties:
> > >          minimum: 1
> > >          maximum: 21
> > >
> > > +  vhub-vendor-id:
> > > +    description: vhub Vendor ID
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - maximum: 65535
> > > +
> > > +  vhub-product-id:
> > > +    description: vhub Product ID
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - maximum: 65535
> >
> > There's already standard 'vendor-id' and 'device-id' properties. Use
> > those.
>
> So yes and no... I don't fundamentally object but keep in mind that
> traditionally, the properties are about matching with a physical
> hardware.
>
> In this case however, we are describing a virtual piece of HW and so
> those IDs are going to be picked up to be exposed as the USB
> vendor/device of the vhub on the USB bus.
>
> Not necessarily an issue but it's more "configuration" than "matching"
> and as such, it might make sense to expose that with a prefix, though I
> would prefer something like usb-vendor-id or usb,vendor-id...

For FDT uses, it's pretty much been configuration. It's mostly been
for PCI that I've seen these properties used.

> > > +
> > > +  vhub-device-revision:
> >
> > Specific to USB, not vhub.
>
> Same as the above.
>
> > > +    description: vhub Device Revision in binary-coded decimal
> > > +    allOf:
> > > +      - $ref: /schemas/types.yaml#/definitions/uint32
> > > +      - maximum: 65535
> > > +
> > > +  vhub-strings:
> > > +    type: object
> > > +
> > > +    properties:
> > > +      '#address-cells':
> > > +        const: 1
> > > +
> > > +      '#size-cells':
> > > +        const: 0
> > > +
> > > +    patternProperties:
> > > +      '^string@[0-9a-f]+$':
> > > +        type: object
> > > +        description: string descriptors of the specific language
> > > +
> > > +        properties:
> > > +          reg:
> > > +            maxItems: 1
> > > +            description: 16-bit Language Identifier defined by USB-IF
> > > +
> > > +          manufacturer:
> > > +            description: vhub manufacturer
> > > +            allOf:
> > > +              - $ref: /schemas/types.yaml#/definitions/string
> > > +
> > > +          product:
> > > +            description: vhub product name
> > > +            allOf:
> > > +              - $ref: /schemas/types.yaml#/definitions/string
> > > +
> > > +          serial-number:
> > > +            description: vhub device serial number
> > > +            allOf:
> > > +              - $ref: /schemas/types.yaml#/definitions/string
> >
> > For all of this, it's USB specific, not vhub specific. I'm not sure this
> > is the right approach. It might be better to just define properties
> > which are just raw USB descriptors rather than inventing some DT format
> > that then has to be converted into USB descriptors.
>
> Raw blob in the DT is rather annoying and leads to hard to parse stuff
> for both humans and scripts. The main strenght of the DT is it's easy
> to read and manipulate.

True, and I'd certainly agree when we're talking about some vendor
specific blob. but there's already code/tools to parse USB
descriptors.

> Also not the entire descriptor is configurable this way.
>
> That said, it could be that using  the DT for the above is overkill and
> instead, we should consider a configfs like the rest of USB gadget.
> Though it isn't obvious how to do that, the current gadget stuff
> doesn't really "fit" what we need here.

Surely the descriptor building code can be shared at a minimum.

Regardless of whether gadget configfs fits, usually it is pretty clear
whether something belongs in DT or userspace. That should be decided
first.

> Maybe we could expose the port as UDCs but not actually expose them on
> the bus until the hub is "activated" via a special configfs entry...

If control of the hub is done by userspace, I'd think configuration
should be there too.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
