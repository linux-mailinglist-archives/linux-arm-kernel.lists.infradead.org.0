Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA8FF1985C2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 22:45:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Z1HmX4kSVestfU452RePq9ZT3U/z096ZyfNn53Eg5U0=; b=Ub3KpGuzdbKPAt
	vP5Eg9feYW8gRfMs3zA8VfguR4T+oc2G701QCaHagpoiatvJZuwuKbZYUciU21SEDU9GIl8Tof467
	kqjIRDi2OXP/+2v2UdUsJif8s1HOQA2eTWDkQcu/Z5Mb4u8Yd0gLq3OLLAtmUwPuAxO53SnzBRbJK
	AZ142kfoFuCroK+6Xq27/fpChR3FmrXdSY6PaDzSTC9F2uIRD2jdXblKdLTrsDsBS+lIrcF2LPAw9
	dWir1UPn7ytq32qNh7xwC1JO+zZdLiFcO3CBbL3s03rlz851ZVyqYef3/VBMSnprZNkepCVa01Y3q
	uG766PaUAZHby8Ksp50A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ1Hb-0000Dm-1D; Mon, 30 Mar 2020 20:45:19 +0000
Received: from mail-il1-f193.google.com ([209.85.166.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ1HI-0008IY-U9
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 20:45:02 +0000
Received: by mail-il1-f193.google.com with SMTP id t6so13660524ilj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 13:44:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=l36hbTviCJO4CHJIHk/epKBvj80epxT6yi/PCZehM4s=;
 b=J43PGBMKhM6b79/z6koRfXYl6udoJhltKHdrVY5GAw5mgcX2VcP5vBnpd5u4+YGC3g
 hkSnhqnqRoMkn6abrYAfYfxU/Xp6XtSN8P003/rAabpHT+V82doKiL7fHxHP0SVmrNts
 GWRT6wLTsTCiVukAAOmgAxeYmhQCLbfKTB1OvL5mXbaxkoaHOgZ9oiXEHdX4jz9DkIqE
 LXq1QHt5pJoeYpPibYh7CH7dgHiVFPETO5hPwL6bqNjJ6iGA5OPyd1Lu6YM6SOX4ZsAB
 +MuocSozUc+Eg/rpZRsBnpCFtUlhZEumM5jPSJEHsrtW8Mhpp5ajDKXq1C8fKdPuu1sl
 30dg==
X-Gm-Message-State: ANhLgQ0x4c7+vYbULrB37I4L63JvIkmyv86TrY2X1Ni0h0d6nuYvc8GA
 Xae513OuCreO7POJIpa/6w==
X-Google-Smtp-Source: ADFU+vueG9ZV7JYC4OiU5Ma/yDq1M0PnMDLnhzlbbEeN0NkJgyLXBc8je8EhJazkpvPGj5y0aOvazg==
X-Received: by 2002:a92:1b59:: with SMTP id b86mr13224264ilb.291.1585601097079; 
 Mon, 30 Mar 2020 13:44:57 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id d15sm4352040ioe.49.2020.03.30.13.44.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 13:44:56 -0700 (PDT)
Received: (nullmailer pid 11433 invoked by uid 1000);
 Mon, 30 Mar 2020 20:44:55 -0000
Date: Mon, 30 Mar 2020 14:44:55 -0600
From: Rob Herring <robh@kernel.org>
To: Michael Tretter <m.tretter@pengutronix.de>
Subject: Re: [PATCH 4/6] dt-bindings: soc: xlnx: extract xlnx, vcu-settings to
 separate binding
Message-ID: <20200330204455.GA6329@bogus>
References: <20200317094115.15896-1-m.tretter@pengutronix.de>
 <20200317094115.15896-5-m.tretter@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200317094115.15896-5-m.tretter@pengutronix.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_134500_972839_1EE8D55A 
X-CRM114-Status: GOOD (  24.16  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.193 listed in wl.mailspike.net]
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
Cc: kernel@pengutronix.de, devicetree@vger.kernel.org,
 Michal Simek <michal.simek@xilinx.com>, linux-arm-kernel@lists.infradead.org,
 Dhaval Shah <dshah@xilinx.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Mar 17, 2020 at 10:41:13AM +0100, Michael Tretter wrote:
> The xlnx,vcu binding comprises two adjacent register banks:
> 
> The first register bank ("vcu_slcr") contains registers for setting the
> clocks of the vcu and controlling the performance monitors. The second
> bank ("logicoreip") contains the configuration settings of the video codec
> unit, which are set before synthesizing the bitstream.
> 
> Drivers that drive the actual video codec unit need to to read the
> registers from the logicoreip register bank for configuring the vcu
> firmware.
> 
> As logicoreip is a too generic name for this register bank, use
> "vcu-settings" as a binding name, because the register bank basically
> provides the configuration settings of the VCU.
> 
> Therefore, add the vcu-settings binding to provide a syscon interface
> for other drivers to read these registers.
> 
> The alternative would have been to merge the two register banks of the
> xlnx,vcu binding into one register bank and make xlnx,vcu provide a
> syscon interface, but that would lead to more incompatibility than
> making second register bank of xlnx,vcu optional.
> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  .../soc/xilinx/xlnx,vcu-settings.yaml         | 45 +++++++++++++++++++
>  .../bindings/soc/xilinx/xlnx,vcu.txt          |  9 +---
>  2 files changed, 47 insertions(+), 7 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> 
> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> new file mode 100644
> index 000000000000..a38ab180854e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu-settings.yaml
> @@ -0,0 +1,45 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/xilinx/xlnx,vcu-settings.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Xilinx VCU Settings
> +
> +maintainers:
> +  - Michael Tretter <kernel@pengutronix.de>
> +
> +# Custom select to avoid matching all nodes with 'syscon'
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - xlnx,vcu-settings
> +  required:
> +    - compatible

You can drop this. The tooling now avoids this issue for 'syscon'.

> +
> +
> +description: |
> +  The Xilinx VCU Settings provides information about the configuration of the
> +  video codec unit.
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: xlnx,vcu-settings
> +      - const: syscon
> +
> +  reg:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +
> +examples:
> +  - |
> +    xlnx_vcu: vcu@a0041000 {
> +          compatible = "xlnx,vcu-settings", "syscon";
> +          reg = <0x0 0xa0041000 0x0 0x1000>;
> +    };
> diff --git a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
> index 6786d6715df0..2417b13ba468 100644
> --- a/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
> +++ b/Documentation/devicetree/bindings/soc/xilinx/xlnx,vcu.txt
> @@ -12,10 +12,7 @@ Required properties:
>  - compatible: shall be one of:
>  	"xlnx,vcu"
>  	"xlnx,vcu-logicoreip-1.0"
> -- reg, reg-names: There are two sets of registers need to provide.
> -	1. vcu slcr
> -	2. Logicore
> -	reg-names should contain name for the each register sequence.
> +- reg : The base offset and size of the VCU_PL_SLCR register space.
>  - clocks: phandle for aclk and pll_ref clocksource
>  - clock-names: The identification string, "aclk", is always required for
>     the axi clock. "pll_ref" is required for pll.
> @@ -23,9 +20,7 @@ Example:
>  
>  	xlnx_vcu: vcu@a0040000 {
>  		compatible = "xlnx,vcu-logicoreip-1.0";
> -		reg = <0x0 0xa0040000 0x0 0x1000>,
> -			 <0x0 0xa0041000 0x0 0x1000>;
> -		reg-names = "vcu_slcr", "logicore";
> +		reg = <0x0 0xa0040000 0x0 0x1000>;
>  		clocks = <&si570_1>, <&clkc 71>;
>  		clock-names = "pll_ref", "aclk";
>  	};
> -- 
> 2.20.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
