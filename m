Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D33329E943
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 15:25:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b1fBlajNQcSH1f2vFvlCRbbnx2cJhzvvgaqt9sgBETI=; b=dlObpOos3pFYQb
	VVI+rWt8Kk3G0VurzSl8fRd9AqBmwqaIBO7HEYsIN2E3qUbJlk3+dUaOBNCu/hcz3vVGz0ri6iaFM
	0QOE/MJc8zyZYDQQygh4RkNxMhwXKAq3OK8LsrqqIJcIeVgObat73PPvz4HQvwDxulWVhUW20T8wN
	DL69/DhVBEgpR/koTwOI5mtI1wWRjZy8wtb6Dd7lAQYwLloSfj5y50+t8iXHXJzwLKHB79QKKXtzi
	XnNZNVxxuKA/h7fTPzqp5O9LUIjIZ+OzTOz76TCAHJoqMw8lI76o79f3rNmrXgnygP61JAh13Cwth
	Byftj4Thsb6Lb6JP+FVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2bTX-0002FF-UH; Tue, 27 Aug 2019 13:25:32 +0000
Received: from shell.v3.sk ([90.176.6.54])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2bSO-0000D2-8c
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 13:24:24 +0000
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C31EAD80FE;
 Tue, 27 Aug 2019 15:24:11 +0200 (CEST)
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id fX9pmDjAEMa4; Tue, 27 Aug 2019 15:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
 by zimbra.v3.sk (Postfix) with ESMTP id C4E0CD80FF;
 Tue, 27 Aug 2019 15:24:02 +0200 (CEST)
X-Virus-Scanned: amavisd-new at zimbra.v3.sk
Received: from shell.v3.sk ([127.0.0.1])
 by localhost (zimbra.v3.sk [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id ASGlmL8EOUht; Tue, 27 Aug 2019 15:24:01 +0200 (CEST)
Received: from belphegor (nat-pool-brq-t.redhat.com [213.175.37.10])
 by zimbra.v3.sk (Postfix) with ESMTPSA id 6DE9DD80FE;
 Tue, 27 Aug 2019 15:24:00 +0200 (CEST)
Message-ID: <136a57cf3d293e3233f31d5ee660a6418726333a.camel@v3.sk>
Subject: Re: [PATCH v2 02/20] dt-bindings: arm: Convert Marvell MMP
 board/soc bindings to json-schema
From: Lubomir Rintel <lkundrak@v3.sk>
To: Rob Herring <robh+dt@kernel.org>
Date: Tue, 27 Aug 2019 15:23:58 +0200
In-Reply-To: <CAL_JsqJ4_h+M=6L-nzK2N+A9TAy-N8SoiFv1SSTk_kCcKt0eXw@mail.gmail.com>
References: <20190822092643.593488-1-lkundrak@v3.sk>
 <20190822092643.593488-3-lkundrak@v3.sk>
 <CAL_JsqJ4_h+M=6L-nzK2N+A9TAy-N8SoiFv1SSTk_kCcKt0eXw@mail.gmail.com>
User-Agent: Evolution 3.32.4 (3.32.4-1.fc30) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_062420_761745_DA053AE8 
X-CRM114-Status: GOOD (  20.51  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Jason Cooper <jason@lakedaemon.net>, Stephen Boyd <sboyd@kernel.org>,
 Marc Zyngier <maz@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Russell King <linux@armlinux.org.uk>, Kishon Vijay Abraham I <kishon@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM
 ARCHITECTURE" <linux-arm-kernel@lists.infradead.org>,
 Olof Johansson <olof@lixom.net>, Thomas Gleixner <tglx@linutronix.de>,
 linux-clk <linux-clk@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 2019-08-27 at 06:59 -0500, Rob Herring wrote:
> On Thu, Aug 22, 2019 at 4:27 AM Lubomir Rintel <lkundrak@v3.sk> wrote:
> > Convert Marvell MMP SoC bindings to DT schema format using json-schema.
> > 
> > Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> > 
> > ---
> > Changes since v1:
> > - Added this patch
> > 
> >  .../devicetree/bindings/arm/mrvl/mrvl.txt     | 14 ---------
> >  .../devicetree/bindings/arm/mrvl/mrvl.yaml    | 31 +++++++++++++++++++
> >  2 files changed, 31 insertions(+), 14 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> >  create mode 100644 Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > 
> > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt b/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > deleted file mode 100644
> > index 951687528efb0..0000000000000
> > --- a/Documentation/devicetree/bindings/arm/mrvl/mrvl.txt
> > +++ /dev/null
> > @@ -1,14 +0,0 @@
> > -Marvell Platforms Device Tree Bindings
> > -----------------------------------------------------
> > -
> > -PXA168 Aspenite Board
> > -Required root node properties:
> > -       - compatible = "mrvl,pxa168-aspenite", "mrvl,pxa168";
> > -
> > -PXA910 DKB Board
> > -Required root node properties:
> > -       - compatible = "mrvl,pxa910-dkb";
> > -
> > -MMP2 Brownstone Board
> > -Required root node properties:
> > -       - compatible = "mrvl,mmp2-brownstone", "mrvl,mmp2";
> > diff --git a/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > new file mode 100644
> > index 0000000000000..dc9de506ac6e3
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/mrvl/mrvl.yaml
> > @@ -0,0 +1,31 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/mrvl/mrvl.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Marvell Platforms Device Tree Bindings
> > +
> > +maintainers:
> > +  - Lubomir Rintel <lkundrak@v3.sk>
> > +
> > +properties:
> > +  $nodename:
> > +    const: '/'
> > +  compatible:
> > +    oneOf:
> > +      - description: PXA168 Aspenite Board
> > +        items:
> > +          - enum:
> > +              - mrvl,pxa168-aspenite
> > +          - const: mrvl,pxa168
> > +      - description: PXA910 DKB Board
> > +        items:
> > +          - enum:
> > +              - mrvl,pxa910-dkb
> 
> Doesn't match what's in dts file:
> 
> arch/arm/boot/dts/pxa910-dkb.dts:       compatible =
> "mrvl,pxa910-dkb", "mrvl,pxa910";

It corresponds to the .txt bindings specification this commit is
converting. I thought it wouldn't be a good idea to do any changes to
the contents at the time the conversion is done.

I also don't understand why does the dts file specify the board-
specific compatible string. Surely "mrvl,pxa910" alone would be
sufficient?

> > +      - description: MMP2 Brownstone Board
> 
> If this entry is only for this board...
> 
> > +        items:
> > +          - enum:
> > +              - mrvl,mmp2-brownstone
> 
> ...then this can be a 'const' instead. Same for the others.

Sure, but is it preferable? I've actually done a "git grep -A3 enum
Documentation/devicetree/bindings/" to see if the single-element is
typically used and it seems like it is. Perhaps it's a good idea to
indicate to a human reader that this is a list that's expected to
eventually be extended with new elements.

In any case, there are more boards with MMP2 currently supported,
notably the XO-1.75 laptop. I've actually sent out the dts file for
review some time ago. I haven't added a separate compatible string for
it because I thought it is not necessary (see above).

> > +          - const: mrvl,mmp2
> > +...
> > --
> > 2.21.0

Thank you
Lubo


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
