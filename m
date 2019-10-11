Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F4166D3A65
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 09:53:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QapCemVi4wqjv8UGeFNRhO9aQSM78miuJ2RuuO7igAU=; b=Kotkwd6sjDUOAa
	K/XhUz04kAwe1NPvAcbt5PB7cILg0+i5dMw0jMcSLRV7P9A761fVDN8n0vIGL6mzSb5LSDceCSKcK
	HjvlK4dyCIFSIXw8zzAMyEATwTwrjOdH4fItYwjXHMqR2YGfIcE86/1meMC/mHL7MwRWSwbdYiQoS
	YCBCci4KjIXWn3eEa+A0raCUeN7+Gaba+wh8JI7/6hmXjIm4T6bMxXY/jIbBEHheKQ6dcaca9aGKQ
	mtSGscq+Zxqqx0vOucKmGvqxcxHmB35rS4EAXVIfRWeBzus7toJviop3WRDazVj9RuC4hFUn0hg8j
	cgOBIhqPkRUl/ei8bF2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIpje-0000WZ-1R; Fri, 11 Oct 2019 07:53:14 +0000
Received: from mail-wr1-f65.google.com ([209.85.221.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIpjP-0000VK-Ew
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 07:53:02 +0000
Received: by mail-wr1-f65.google.com with SMTP id q9so10725190wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 00:52:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=EwPBmMRYQqmwwMpYc8okL9s1LKq8P2O4QBbeYixrVK4=;
 b=Zp/b7BC7HErigVgdzmBhaLFWtGIvMBVhrx9wd5/OOgWu1vKgYIXX6SqSt2BzilmQOC
 cNbpJERbS/Dv3FH/rOCIvEL0siA2oXHKCLUJFiZ6ecP9cqvofX5Talw4eRYWsBZBfjcy
 NWxtSpgQWu1Mh7oiVgajpQw57bEg4Yes0jyXqS8lauE3yeqFb1dnY3OaU4hFgXL2hoxm
 soKoKYneoRCrcjDBG1w1HqowfnU+zVbAsFb5R8r15cp23RwXPLhLVQiZ7OM8D9OABeic
 vc7BtgX1GyypKNrqlZhLX1tX79CYC7cqV49GyqW0lttO46kfVwG3P+Y40eI6e3q16uIN
 XRiA==
X-Gm-Message-State: APjAAAWEmToRCyVk5Xl6w/EhxNetwDCDeOd6RvjsOxPnOQm34ydaFBto
 zEAw86X+KYV17JJUlylifzI=
X-Google-Smtp-Source: APXvYqxUy16ah5vufdoPXO9FppUIVRbpWBWt1wAegLgSI9eN5KbSUDFilIoDI6Bb75H+vXTIy2Z4Rg==
X-Received: by 2002:a5d:6949:: with SMTP id r9mr8819898wrw.106.1570780376664; 
 Fri, 11 Oct 2019 00:52:56 -0700 (PDT)
Received: from pi3 ([194.230.155.145])
 by smtp.googlemail.com with ESMTPSA id b22sm7040031wmj.36.2019.10.11.00.52.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 11 Oct 2019 00:52:55 -0700 (PDT)
Date: Fri, 11 Oct 2019 09:52:53 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 02/10] dt-bindings: sram: Convert Samsung Exynos
 SYSRAM bindings to json-schema
Message-ID: <20191011075253.GA7998@pi3>
References: <20191002164316.14905-1-krzk@kernel.org>
 <20191002164316.14905-2-krzk@kernel.org>
 <20191010193356.GA9975@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191010193356.GA9975@bogus>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_005259_499927_95A2A74D 
X-CRM114-Status: GOOD (  21.71  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.65 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andrew Lunn <andrew@lunn.ch>,
 Tony Lindgren <tony@atomide.com>, Thierry Reding <thierry.reding@gmail.com>,
 Fabio Estevam <festevam@gmail.com>, linux-samsung-soc@vger.kernel.org,
 Gregory Clement <gregory.clement@bootlin.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Kukjin Kim <kgene@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
 devicetree@vger.kernel.org, Jason Cooper <jason@lakedaemon.net>,
 Sascha Hauer <s.hauer@pengutronix.de>, Santosh Shilimkar <ssantosh@kernel.org>,
 linux-tegra@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt?= Cousson <bcousson@baylibre.com>,
 linux-omap@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 10, 2019 at 02:33:56PM -0500, Rob Herring wrote:
> On Wed, Oct 02, 2019 at 06:43:08PM +0200, Krzysztof Kozlowski wrote:
> > Convert Samsung Exynos SYSRAM bindings to DT schema format using
> > json-schema.
> > 
> > Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> > 
> > ---
> > 
> > Changes since v2:
> > 1. Use sram as name of node in example.
> > 
> > Changes since v1:
> > 1. Indent example with four spaces (more readable).
> > ---
> >  .../devicetree/bindings/sram/samsung-sram.txt | 38 ------------
> >  .../bindings/sram/samsung-sram.yaml           | 58 +++++++++++++++++++
> >  MAINTAINERS                                   |  2 +-
> >  3 files changed, 59 insertions(+), 39 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/sram/samsung-sram.txt
> >  create mode 100644 Documentation/devicetree/bindings/sram/samsung-sram.yaml
> 
> 
> > diff --git a/Documentation/devicetree/bindings/sram/samsung-sram.yaml b/Documentation/devicetree/bindings/sram/samsung-sram.yaml
> > new file mode 100644
> > index 000000000000..3e77c434ecca
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/sram/samsung-sram.yaml
> > @@ -0,0 +1,58 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/sram/samsung-sram.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Samsung Exynos SoC SYSRAM for SMP bringup
> > +
> > +maintainers:
> > +  - Krzysztof Kozlowski <krzk@kernel.org>
> > +
> > +description: |+
> > +  Samsung SMP-capable Exynos SoCs use part of the SYSRAM for the bringup
> > +  of the secondary cores. Once the core gets powered up it executes the
> > +  code that is residing at some specific location of the SYSRAM.
> > +
> > +  Therefore reserved section sub-nodes have to be added to the mmio-sram
> > +  declaration. These nodes are of two types depending upon secure or
> > +  non-secure execution environment.
> > +
> > +allOf:
> > +  - $ref: "sram.yaml#"
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: "^sysram(@.*)?"
> 
> As you are renaming all the node names, this will no longer work. If you 
> change it to 'sram', that's going to match others, but would still work 
> as long as the child node names are unique to Samsung. If you change 
> them to '*-sram' then, you'd have to come up with something else. That 
> probably means using 'compatible' strings. At that point, it's kind of 
> silly to just be validating what your are using to select the schema. It 
> may be better to just add the compatible strings into sram.yaml if 
> that's the only difference.

You're right. I'll move them to sram.yaml and maybe add also example.


Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
