Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8B7E981D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 19:55:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fKAaL0hfER9VpzFcNb+Y6SDXPdCtbOfi0TNyRyP0nCs=; b=ryorV/GzJASxns
	9dqQ3dAMJkREFgiLFpQ3XDXB75pxI16sBPjiR9A6d3ox5brhrARMtHkDqv8z8ZVcg/YFkVlwdya0y
	TaACstp3JuQRPjf7TKzmqeNZe7Cdjrpn/TekpZYFYyLUix14CSu2quyZgcaAH+g6OoUxw/QPvWd0b
	w66KF7cOVdjasljsuzxqkJqJq857UDyxnLRcu5L76Sn3gBl2kGH7LnftscNDTyFyPJ8dQCWHTNrlt
	ufKceM0hoWoY2Wa4OO5IBM8o4MZaw/cGfLzwU5Y7g0+WY6hdFxl+wo/f8JxkMSFYT2YeVYBuor+2B
	qDyUsoo4IA6/+V35nY5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0UpK-00053R-HJ; Wed, 21 Aug 2019 17:55:18 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0Up5-0004Sl-C8
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 17:55:04 +0000
Received: by mail-wr1-f65.google.com with SMTP id t16so2881577wra.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 21 Aug 2019 10:55:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=dcXFfpfF7Y1vSw3aVBKIoINByXS6ksD7OwWYj454PWY=;
 b=EMSIWFv8QFgp5u3sE/GTOKQVwp3jp7yrG/Sk+blLVpcKdJZaZbRwf7b19bxWZspyPf
 l4m00eP8YrY/IZm8zhZCwmOAM1IpHmV9hSzOQz+m3zQ6IoI6siFkvwxfJ/PnAT8MwnO9
 xdjjqEJQxV7oBBJW7CYvYY8UKSd+2er5RyygTVHUJS7T4BjAoMVe9+LRAsUuJ4CSvl07
 K30Ddyk71QXRqDP8UdLaO4ifvK9IYL344xC+V98lKCW0eGAy8xR0VotNOsxcpU2W4kn4
 azg1igULYI0UWUVJW0mpFKqEwSt/nkhGZfqwgyHyfg0x7fXMy/7VT4Y3e5f4aTLosyYN
 uzoA==
X-Gm-Message-State: APjAAAWm8Ojbbj3Vb7Tx2xYnJgkQ3MXbtLTZmIIUAjY7KnrESGwFDPUs
 RDZZL2jd41aLrhhmq8HdOE4=
X-Google-Smtp-Source: APXvYqzXpe8lKkcvUAGrZ3oVo70oJ142K2QzLV1sGyFExlTS0Degv28KaJGOvQor2VcwLb4RuY3/2g==
X-Received: by 2002:a5d:5183:: with SMTP id k3mr37435361wrv.270.1566410101601; 
 Wed, 21 Aug 2019 10:55:01 -0700 (PDT)
Received: from kozik-lap ([194.230.147.11])
 by smtp.googlemail.com with ESMTPSA id 39sm72535478wrc.45.2019.08.21.10.55.00
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 21 Aug 2019 10:55:00 -0700 (PDT)
Date: Wed, 21 Aug 2019 19:54:58 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v6 3/4] dt-bindings: arm: fsl: Add Kontron i.MX6UL N6310
 compatibles
Message-ID: <20190821175458.GA25168@kozik-lap>
References: <1566315318-30320-1-git-send-email-krzk@kernel.org>
 <1566315318-30320-3-git-send-email-krzk@kernel.org>
 <CAL_JsqJLSZ50tdFcdPFc2ifcDoFZFuw=SoKsunzjtAhZ-11fBg@mail.gmail.com>
 <CAJKOXPfkNcWw9sunwXGRz42jOL0cdRC-iiHLtWCYvo5oxCMwFQ@mail.gmail.com>
 <CAL_JsqKAH6n1sMoWOhfiHKxgREr-EN1tw0QtC1H8Fm=a7PNzOA@mail.gmail.com>
 <20190820202142.GA15866@kozik-lap>
 <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAL_JsqKBWB2FiVjYo9O7DPw1JYJvan7uRgbR0VBG=FfHDVYdZQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_105503_415241_D84B95D8 
X-CRM114-Status: GOOD (  15.31  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Schrempf Frieder <frieder.schrempf@kontron.de>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Aug 20, 2019 at 03:27:39PM -0500, Rob Herring wrote:
> > I see. If I understand the schema correctly, this should look like:
> 
> Looks correct, but a couple of comments.
> 
> > diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
> > index 7294ac36f4c0..eb263d1ccf13 100644
> > --- a/Documentation/devicetree/bindings/arm/fsl.yaml
> > +++ b/Documentation/devicetree/bindings/arm/fsl.yaml
> > @@ -161,6 +161,22 @@ properties:
> >          items:
> >            - enum:
> >                - fsl,imx6ul-14x14-evk      # i.MX6 UltraLite 14x14 EVK Board
> > +              - kontron,imx6ul-n6310-som  # Kontron N6310 SOM
> 
> Is the SOM ever used alone? If not, then no point in listing this here.

SoM alone: no, because it requires some type of base board. However it
will be used by some customer designs with some amount of
changes/addons.

Looking at other aproaches, usually SoMs have their own compatible.  In
such case - I should document it somewhere.

> 
> > +          - const: fsl,imx6ul
> > +
> > +      - description: Kontron N6310 S Board
> > +        items:
> > +          - enum:
> > +              - kontron,imx6ul-n6310-s
> 
> This could be a 'const' instead. It depends if you think there will
> ever be more than one entry.

Indeed, I'll make this and entry below for S 43 board const.


Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
