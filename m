Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EFE6DF0DCF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 05:31:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bax4MzHGvBW6wSxmsMBzH35IKXpdRM0yd96rLEK6SjM=; b=GhIsLUwzyD54EB
	TgHZhFHQMxUujtbic1FFhgxDw6j7g+cjv1G15RTDIlGWTTXmMBFdqTTa3v6y70CNtToAddxV9uprU
	L3iI3Au4gHKEWVpGShtKEIE9OyVD8TBn4irz1x9lHLZL/3Rq9LLlBXvot4p2MD4SXcUn2v1JMn9W2
	alCM79KG6An7Z2oF5KpjYOkSGh5Y9n9Hw3AAp64yt2Kg0S2/bggwHbEnyCPvvE3n2YQS83p4ZKwpv
	/l5Si7F5jZdzb0lM8wKyKFnTvT5Ctc8WeHLQ/I+mz8Su2QLuuksYMcl3gAJFe7/9aqER81I/u+Ld0
	F3+rNJ0gk7DuqCEWyX7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSCyF-0005Kg-Qu; Wed, 06 Nov 2019 04:31:03 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSCy7-0005KI-ST
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 04:30:57 +0000
Received: by mail-ot1-f66.google.com with SMTP id t4so8245445otr.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 05 Nov 2019 20:30:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=IZpEXdwdaNXunZmMZg1mJeDzHjybMvKHLguiY5zHphY=;
 b=G788URp0RtX/bNKi1D9+NdBxU/EXzTrEuA+x2dDkMslDRFJpXiF8RH6lkmFuyW3YzX
 F3ejc0MbR1VtdIcIGwluBQpnpCssl8WUnazpD8L6f+XUu/GwoWf5thQEJwDH0HKbgQyT
 QbbldIgQ35zLFEYunI+n9uvdC9+PvX9BC/8Nt3M8LCCTrnFKmoVsznz993nL2zbYNQmQ
 BUNEevIQ8xieMI2E61nEqPi+vMMWNyrTabz3Ig3UldAK/UIc6oPzniLOihNoL3NeB0bA
 gJKh3mlERH3RPf2NYlXZbpJZKoa5qsdhOFMvCpUz7kiiR6D8QedI6jjnuY4/SOcRGeRM
 1bvw==
X-Gm-Message-State: APjAAAVRqOGZtciTe+638kWJDuXzbaZ7+Ju8XLXi7Ojw36VGhytpVuXM
 GibZ8mdC1no70QoXFcxiuA==
X-Google-Smtp-Source: APXvYqz0LKbpxceSSWrq1eAtliF3cXGEefZSEtNRleSZ7J9c1XinVM64QqEjgPSlAP7xbkYUyyMo8A==
X-Received: by 2002:a05:6830:103:: with SMTP id i3mr277810otp.57.1573014654815; 
 Tue, 05 Nov 2019 20:30:54 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i195sm6091963oib.55.2019.11.05.20.30.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 05 Nov 2019 20:30:54 -0800 (PST)
Date: Tue, 5 Nov 2019 22:30:53 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH] dt-bindings: Add syscon YAML description
Message-ID: <20191106043053.GA4568@bogus>
References: <20191101141034.259906-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191101141034.259906-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_203055_922526_47934101 
X-CRM114-Status: GOOD (  26.31  )
X-Spam-Score: 0.6 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.1 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 Frank Rowand <frowand.list@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, lee.jones@linaro.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 01, 2019 at 03:10:34PM +0100, Maxime Ripard wrote:
> The syscon binding is a pretty loose one, with everyone having a bunch of
> vendor specific compatibles.
> 
> In order to start the effort to describe them using YAML, let's create a
> binding that tolerates additional, not listed, compatibles.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/mfd/syscon.txt        | 32 --------
>  .../bindings/misc/allwinner,syscon.txt        | 20 -----
>  .../devicetree/bindings/misc/syscon.yaml      | 74 +++++++++++++++++++
>  3 files changed, 74 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/syscon.txt
>  delete mode 100644 Documentation/devicetree/bindings/misc/allwinner,syscon.txt
>  create mode 100644 Documentation/devicetree/bindings/misc/syscon.yaml
> 
> diff --git a/Documentation/devicetree/bindings/mfd/syscon.txt b/Documentation/devicetree/bindings/mfd/syscon.txt
> deleted file mode 100644
> index 25d9e9c2fd53..000000000000
> --- a/Documentation/devicetree/bindings/mfd/syscon.txt
> +++ /dev/null
> @@ -1,32 +0,0 @@
> -* System Controller Registers R/W driver
> -
> -System controller node represents a register region containing a set
> -of miscellaneous registers. The registers are not cohesive enough to
> -represent as any specific type of device. The typical use-case is for
> -some other node's driver, or platform-specific code, to acquire a
> -reference to the syscon node (e.g. by phandle, node path, or search
> -using a specific compatible value), interrogate the node (or associated
> -OS driver) to determine the location of the registers, and access the
> -registers directly.
> -
> -Required properties:
> -- compatible: Should contain "syscon".
> -- reg: the register region can be accessed from syscon
> -
> -Optional property:
> -- reg-io-width: the size (in bytes) of the IO accesses that should be
> -  performed on the device.
> -- hwlocks: reference to a phandle of a hardware spinlock provider node.
> -
> -Examples:
> -gpr: iomuxc-gpr@20e0000 {
> -	compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
> -	reg = <0x020e0000 0x38>;
> -	hwlocks = <&hwlock1 1>;
> -};
> -
> -hwlock1: hwspinlock@40500000 {
> -	...
> -	reg = <0x40500000 0x1000>;
> -	#hwlock-cells = <1>;
> -};
> diff --git a/Documentation/devicetree/bindings/misc/allwinner,syscon.txt b/Documentation/devicetree/bindings/misc/allwinner,syscon.txt
> deleted file mode 100644
> index 31494a24fe69..000000000000
> --- a/Documentation/devicetree/bindings/misc/allwinner,syscon.txt
> +++ /dev/null
> @@ -1,20 +0,0 @@
> -* Allwinner sun8i system controller
> -
> -This file describes the bindings for the system controller present in
> -Allwinner SoC H3, A83T and A64.
> -The principal function of this syscon is to control EMAC PHY choice and
> -config.
> -
> -Required properties for the system controller:
> -- reg: address and length of the register for the device.
> -- compatible: should be "syscon" and one of the following string:
> -		"allwinner,sun8i-h3-system-controller"
> -		"allwinner,sun8i-v3s-system-controller"
> -		"allwinner,sun50i-a64-system-controller"
> -		"allwinner,sun8i-a83t-system-controller"
> -
> -Example:
> -syscon: syscon@1c00000 {
> -	compatible = "allwinner,sun8i-h3-system-controller", "syscon";
> -	reg = <0x01c00000 0x1000>;
> -};
> diff --git a/Documentation/devicetree/bindings/misc/syscon.yaml b/Documentation/devicetree/bindings/misc/syscon.yaml
> new file mode 100644
> index 000000000000..f2d81bed612f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/misc/syscon.yaml
> @@ -0,0 +1,74 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/misc/syscon.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: System Controller Registers R/W Device Tree Bindings
> +
> +description: |
> +  System controller node represents a register region containing a set
> +  of miscellaneous registers. The registers are not cohesive enough to
> +  represent as any specific type of device. The typical use-case is
> +  for some other node's driver, or platform-specific code, to acquire
> +  a reference to the syscon node (e.g. by phandle, node path, or
> +  search using a specific compatible value), interrogate the node (or
> +  associated OS driver) to determine the location of the registers,
> +  and access the registers directly.
> +
> +maintainers:
> +  - Lee Jones <lee.jones@linaro.org>
> +
> +properties:
> +  compatible:
> +    anyOf:
> +      - items:
> +        - enum:
> +          - allwinner,sun8i-a83t-system-controller
> +          - allwinner,sun8i-h3-system-controller
> +          - allwinner,sun8i-v3s-system-controller
> +          - allwinner,sun50i-a64-system-controller
> +
> +        - const: syscon
> +
> +      - contains:
> +          const: syscon
> +        additionalItems: true

If you want to match on all syscon nodes, you'll need a 'select' because 
'syscon' is now filtered out of the generated select.

> +
> +  reg:
> +    maxItems: 1
> +
> +  reg-io-width:
> +    description: |
> +      The size (in bytes) of the IO accesses that should be performed
> +      on the device.
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32
> +      - enum: [ 1, 2, 4, 8 ]
> +
> +  hwlocks:
> +    maxItems: 1
> +    description:
> +      Reference to a phandle of a hardware spinlock provider node.
> +
> +required:
> +  - compatible
> +  - reg
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    syscon: syscon@1c00000 {
> +        compatible = "allwinner,sun8i-h3-system-controller", "syscon";
> +        reg = <0x01c00000 0x1000>;
> +    };
> +
> +  - |
> +    gpr: iomuxc-gpr@20e0000 {
> +        compatible = "fsl,imx6q-iomuxc-gpr", "syscon";
> +        reg = <0x020e0000 0x38>;
> +        hwlocks = <&hwlock1 1>;
> +    };
> +
> +...
> -- 
> 2.23.0
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
