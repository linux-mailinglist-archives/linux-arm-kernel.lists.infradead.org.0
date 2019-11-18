Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47C1100A42
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 18:30:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XWZP3F0A7aQ2hr1CbiKXalgEavXQna+dQ8hoHnIfEBk=; b=IunDldeDZ7gweb
	BalQ58qMU5dv2G2mmWd0nf84Q+cZ06QVLd8i1yLsAM9DhZ1dt7F9Zu61OXe1PDxaZyJVL+XEXUI1p
	6j8a2NybzWMAsV5JY4iP1eqzmQP9AXbu9MJlqXvLoqM8kfus8mJE9Tqa3y8Q/e59oeRxUO12STotJ
	S4zEw2Bf209ayFmco21mSuk9Kq6JkgUM0kcW/zodXYv5k7X+/KCj48gUGkNHr0JmPumFaRMoQ5ZgX
	NhmMgRYKwS3HCy711uC8E94VgL5Oz4pbmADU6g7KQ/jqWPIN+IeBlcyBs8YnW78aldpJ6iwZB+fjk
	mQqGDFREMwcd4EVOg9Yg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWkr1-00040l-BO; Mon, 18 Nov 2019 17:30:23 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWkqs-0003qM-7l
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 17:30:15 +0000
Received: by mail-ot1-f66.google.com with SMTP id r24so15210649otk.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 09:30:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Sc1XalYtAcW8vcap9ciRIDbP58GTDwM0RBx4a9ILBAk=;
 b=uJiA3hpk57HzrR++GjNfSPIzE3FMyTpuz+Rm+4gCbd4ZoXyjbxOL2WMjmBp4jhWb3r
 G/bPEsrZE/vLXB4Q0yw4wl7kFoNWu0Ko4c6MBY7ekcGgU35alv+ZoZMsngcpRg1n/Wti
 XNG70aZmlvcYRdu4TYlOGdsdFk8ktBc9Y1duGcjUDcBjPv1ZdbGx29Kgz0GzviLkgzJf
 Qo18SoHOSU3lPbNxB76nkZirZnWFRymXBvZItWyB9T7G+PgMNN1Atjg1ezsxfiwTppZ7
 9IXLYAZ7ZjN96+rUspGlqXFxsq/m1jyGcb/ZWOui64p9mCUAs+a96rDqf7SnPpnYcskQ
 dLJw==
X-Gm-Message-State: APjAAAWKeMyBiDPY/burhPGdjQ2zyzU6SXVgfM7yEOrxNb+LMseu7+HT
 mtAzRXZJOtO6poCnmDYEpIW4Jzc=
X-Google-Smtp-Source: APXvYqw1OlPnWi/HP4m9zDdcj7/ZWCmt8YCrZHzLncVfpzpiqABUT2k1SS9sfJz3gBNd0ZixL3aXsw==
X-Received: by 2002:a05:6830:1649:: with SMTP id
 h9mr288452otr.281.1574098210777; 
 Mon, 18 Nov 2019 09:30:10 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id y23sm6139512oih.17.2019.11.18.09.30.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 09:30:10 -0800 (PST)
Date: Mon, 18 Nov 2019 11:30:09 -0600
From: Rob Herring <robh@kernel.org>
To: Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 1/7] dt-bindings: clock: Add bindings for versal clock
 driver
Message-ID: <20191118173009.GA1865@bogus>
References: <1573564580-9006-1-git-send-email-rajan.vaja@xilinx.com>
 <1573564580-9006-2-git-send-email-rajan.vaja@xilinx.com>
 <20191112225147.7E59D21783@mail.kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191112225147.7E59D21783@mail.kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_093014_292864_36FF7637 
X-CRM114-Status: GOOD (  21.50  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, ravi.patel@xilinx.com, linux-kernel@vger.kernel.org,
 Rajan Vaja <rajan.vaja@xilinx.com>, gustavo@embeddedor.com,
 nava.manne@xilinx.com, mturquette@baylibre.com, tejas.patel@xilinx.com,
 m.tretter@pengutronix.de, michal.simek@xilinx.com, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, jolly.shah@xilinx.com,
 linux-clk@vger.kernel.org, dan.carpenter@oracle.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Nov 12, 2019 at 02:51:46PM -0800, Stephen Boyd wrote:
> Quoting Rajan Vaja (2019-11-12 05:16:14)
> > diff --git a/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> > new file mode 100644
> > index 0000000..da82f6a
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/clock/xlnx,versal-clk.yaml
> > @@ -0,0 +1,67 @@
> > +# SPDX-License-Identifier: GPL-2.0
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/bindings/clock/xlnx,versal-clk.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Xilinx Versal clock controller
> > +
> > +maintainers:
> > +  - Michal Simek <michal.simek@xilinx.com>
> > +  - Jolly Shah <jolly.shah@xilinx.com>
> > +  - Rajan Vaja <rajan.vaja@xilinx.com>
> > +
> > +description: |
> > +  The clock controller is a h/w block of Xilinx versal clock tree. It reads
> 
> hardware instead of h/w
> 
> > +  required input clock frequencies from the devicetree and acts as clock
> > +  provider for all clock consumers of PS clocks. See clock_bindings.txt
> > +  for more information on the generic clock bindings.
> 
> Please drop this last sentence about clock_bindings.txt
> 
> > +
> > +properties:
> > +  compatible:
> > +    const: xlnx,versal-clk
> > +
> > +  "#clock-cells":
> > +    const: 1
> > +
> > +  clocks:
> > +    description: List of clock specifiers which are external input
> > +      clocks to the given clock controller.
> > +    minItems: 3
> > +    maxItems: 3

Can drop these. Implied by by 'items' list.

> > +    items:
> > +      - description: ref clk
> > +      - description: alternate ref clk
> > +      - description: pl alternate ref clk
> 
> What is "pl"? Can you clarify?
> 
> > +
> > +  clock-names:
> > +    minItems: 3
> > +    maxItems: 3

Same here.

> > +    items:
> > +      - const: ref_clk
> > +      - const: alt_ref_clk
> > +      - const: pl_alt_ref_clk

'_clk' is redundant.

> > +
> > +required:
> > +  - compatible
> > +  - "#clock-cells"
> > +  - clocks
> > +  - clock-names
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    firmware {
> > +      zynqmp_firmware: zynqmp-firmware {
> > +        compatible = "xlnx,zynqmp-firmware";
> > +        method = "smc";
> 
> Is there a way to say in the binding that this must be a child of a
> xlnx,zynqmp-firmware node? That would be ideal so we can constrain this
> to that location somehow.

Yes. Add the node name as a property to the f/w schema and reference 
($ref) this file and add 'select: false' to this one. The problem is the 
firmware binding is probably not yet a schema. Once it is a schema, this 
example will start failing because it's incomplete. For that reason, I 
prefer the examples in these cases (inc MFDs) in the base schema and not 
in the child node schemas.

> > +        versal_clk: clock-controller {
> > +          #clock-cells = <1>;
> > +          compatible = "xlnx,versal-clk";
> > +          clocks = <&ref_clk>, <&alt_ref_clk>, <&pl_alt_ref_clk>;
> > +          clock-names = "ref_clk", "alt_ref_clk", "pl_alt_ref_clk";
> > +        };
> > +      };
> > +    };
> > +...
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
