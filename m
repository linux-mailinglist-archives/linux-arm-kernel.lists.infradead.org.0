Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52AF217294A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Feb 2020 21:11:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VZOG1Xg9AOygjcCe8DfwhlV+Bi3Xd/FxAh9CBqYcXoI=; b=k87by4qHY0XMFg
	34dMcEWsq26N3I+k/jpvmsMUoH46XlgXYlxMt0lizBrd4h44kq1mWeZrh4y/EZTqpyXqC3eDwl+dV
	/0jH/YSRs3KoKU6r1aoWTgixxI+V+0qwUCT4Z1LRfWdtVHSFoqwRr/IgjdD7Vqpi92D0VtkjJTFv+
	Vni6I6xGJPj+MpJRM3tSTqCGLcqO3qbiZvTfoEGx9gxtXNqNowcw8Xb6uOS6Uew+0gD03ZLoQc9x4
	cSfXt0f+GwVMWHZrOXR0yuA9Acv3SmmZkRU1WciulqOoY6XNovQ49l22yANTfPupr9mhKnfjhdPGs
	72Vr+pOomyuhGsCPpvWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7PVE-0001KN-TY; Thu, 27 Feb 2020 20:11:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7PV5-0001JR-L8
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 20:11:16 +0000
Received: from mail-qv1-f46.google.com (mail-qv1-f46.google.com
 [209.85.219.46])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E00CC24699
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 20:11:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1582834275;
 bh=/V4ZNPA2xQ5WZrglexcKZ3ryVlngSvod+ozNFnSABns=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=Ry73YYDUU6a+qu0m24PnHNQMMyTm/Oqisoy1gIbMyQ4S/gXRFk/lX32mG+o0GoGLy
 U/LUPngfIivXkoI3MJgTXxPYwCExt03l0fj7L4mmrLrsGDNIc/p2hWpP0ciio6yRxs
 grtF67saFYGzJ8sJg8k7EsMktmwhX9nWAFAdzIwI=
Received: by mail-qv1-f46.google.com with SMTP id ea1so218089qvb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 12:11:14 -0800 (PST)
X-Gm-Message-State: APjAAAXbh491IO4/OJcnyOVi0YfBIWszbAvOyz4llEB+dvFdKo+IgTx0
 me+4hXKZBrndR2DVzCXifdcHNitIOwktx1JoRw==
X-Google-Smtp-Source: APXvYqw10L9aPY3JHOtOEWA+l413/PApGVC/bA/DbQT+3DNmSeNQPxk/mNpXUrWF2+Y6tEQzIey+4KphOmczloyeAYU=
X-Received: by 2002:a05:6214:11ac:: with SMTP id
 u12mr659969qvv.85.1582834274034; 
 Thu, 27 Feb 2020 12:11:14 -0800 (PST)
MIME-Version: 1.0
References: <20200227095159.GJ25745@shell.armlinux.org.uk>
 <E1j7FqO-0003sv-Ho@rmk-PC.armlinux.org.uk>
 <CAL_JsqK9SLJKZfGjWu3RCk9Wiof+YdUaMziwOrCw5ZxjMZAq_Q@mail.gmail.com>
 <20200227172608.GO25745@shell.armlinux.org.uk> <20200227173636.GE5245@lunn.ch>
In-Reply-To: <20200227173636.GE5245@lunn.ch>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 27 Feb 2020 14:11:02 -0600
X-Gmail-Original-Message-ID: <CAL_JsqKPR7XpTZ=Sc=0OdD=b64xssE3F=QvpZs_NvQdBkuJLBQ@mail.gmail.com>
Message-ID: <CAL_JsqKPR7XpTZ=Sc=0OdD=b64xssE3F=QvpZs_NvQdBkuJLBQ@mail.gmail.com>
Subject: Re: [PATCH net-next 1/3] dt-bindings: net: add dt bindings for
 marvell10g driver
To: Andrew Lunn <andrew@lunn.ch>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_121115_738916_7196AB1A 
X-CRM114-Status: GOOD (  21.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, Jason Cooper <jason@lakedaemon.net>,
 netdev <netdev@vger.kernel.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 "David S. Miller" <davem@davemloft.net>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 27, 2020 at 11:36 AM Andrew Lunn <andrew@lunn.ch> wrote:
>
> > > > +    allOf:
> > > > +      - $ref: /schemas/types.yaml#/definitions/uint16-array
> > > > +      - minItems: 1
> > > > +        maxItems: 4
> > > > +
> > > > +examples:
> > > > +  - |
> > > > +    ethernet-phy@0 {
> > > > +        reg = <0>;
> > >
> > > This needs to be under an 'mdio' node with #address-cells and
> > > #size-cells set correctly.
> >
> > I wish these things were documented somewhere... I'm pretty sure this
> > passed validation when I wrote it.
>
> Documentation/devicetree/bindings/net/mdio.yaml
>
> Rob, is there a way to express the hierarchy between yaml files and
> properties? Can we say that a phy, as defined by ethernet-phy.yaml
> should always be inside an MDIO bus as defined in mdio.yaml?

We can link a child schema into a parent schema, but not the other way
around. So you can do something like this in mdio.yaml:

  "^ethernet-phy@[0-9a-f]+$":
    type: object
    allOf:
      - $ref: ethernet-phy.yaml#

That happens to work in this case since there's a common compatible
string for ethernet phys, but doesn't scale in the general case. Note
that ethernet-phy.yaml would need a couple of changes too. Also, this
should also be expanded to other possible node names like 'switch'.

I've had some thoughts of defining a pseudo property '$parent' or
something to be able to express constraints such as to what bus a
device has to be on. Currently, we rely on the overlap of the bus
schemas checking the bus specific aspects of the bus child nodes. I'm
also not really convinced that putting say an I2C device under a SPI
bus node is a problem we need to check for.


I'm not sure how any of this would help on examples compiling and
validating correctly. In example-schema.yaml, it mentions all the
problems I see: dtc fails, validation fails, bus node requirements,
and include file requirements:

  # Examples are now compiled with dtc and validated against the schemas
  #
  # Examples have a default #address-cells and #size-cells value of 1. This can
  # be overridden or an appropriate parent bus node should be shown (such as on
  # i2c buses).
  #
  # Any includes used have to be explicitly included.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
