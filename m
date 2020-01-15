Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BCDC913B737
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 02:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Lh18IBNtEYuKJIfDkIdUxI/8PG8bh+11zG54KeFfOEU=; b=h/3QojU70iIp3z
	fvFUk/CQO1JQR1DQi96A0CsIkHx/CkGX0Ojgv8LVTjQiR/ZjUBrE+XbFpL/i3wEAeVp+KvebfXg6l
	iLTeNJqK+tDOLiZROkJDympgRGFp2FvUL5tliXm/svvpxqbvpQkb80anPMdcH8aesiY9eOJWJQWnm
	ILoZ6jUDVPLBevGMFoiQAzb6luLvqEYfdJjdLBBx3TSPCdSVVI5qX0XPDqgPO+hUx9NZTRcwF5JF4
	MeU9Gp06jPp5lCX2CIxuBMeNCC5YC08fPN2v81Ads+x0flA2ull+Ml1KNFPmlQc2o65hANLdtSTcq
	gtA564MGUYCbKjfWFMEQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irXmS-0005xn-9L; Wed, 15 Jan 2020 01:47:36 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irXmJ-0005wv-Nf
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 01:47:29 +0000
Received: by mail-ot1-f66.google.com with SMTP id k14so14707579otn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Jan 2020 17:47:27 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7FffW/u9qscr/IEd74r9dwRvj0Rhj0vpQG4l3CJdN28=;
 b=NlIoLTc2fozrRKEBbTyfMVGMhbrEtC/LdNsnwJ9p0WGdqwBg07BsUuANBo9Y15h84m
 GWZRYvoBKkMZgkR0UmpWjuGnYcm6FTeydFQ2bMN56lpIq57QM6VqnFYhy33DjfXV5CFC
 BrJPfVCdLQHPhfVtvFlrVY9Y+TaFNrpjK1BCjY0f38yw8VRlyaS3K4IGIf9BwUY2rkaO
 /PxuK73CKE2QRNIhYR8Q7BQcAOOvxK8GlRVL+lQ2drcx2V53wSLpP9iQP7rnw5ZvGyjo
 1WJhnFPbkPMwItlCWuSS2GwEjNEEVJPNukG9CccyQSHanWKlRUwR4eZRTgOBQxk1OBYJ
 lcTA==
X-Gm-Message-State: APjAAAX0X6fUuTo42TKI+IWblyF9WSEf3lwJVAwqUDaQhmiTaTPVpxfo
 oECZdzEDcdUpIPsrWis30AR7raw=
X-Google-Smtp-Source: APXvYqyzE3m7Wq7BeBaA1+2V9KAYLYPkIued4LuejzwM5xqJrGV5wH5yC3eO6XdvJPWMtmy+qxUluQ==
X-Received: by 2002:a9d:53c4:: with SMTP id i4mr1119155oth.48.1579052846016;
 Tue, 14 Jan 2020 17:47:26 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x19sm6021122otk.42.2020.01.14.17.47.25
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 14 Jan 2020 17:47:25 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 2209ae
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Tue, 14 Jan 2020 19:47:24 -0600
Date: Tue, 14 Jan 2020 19:47:24 -0600
From: Rob Herring <robh@kernel.org>
To: Roger Quadros <rogerq@ti.com>
Subject: Re: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl
 node to select SERDES lane mux
Message-ID: <20200115014724.GA20772@bogus>
References: <20200108111830.8482-1-rogerq@ti.com>
 <20200108111830.8482-3-rogerq@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200108111830.8482-3-rogerq@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_174727_772892_129655FC 
X-CRM114-Status: GOOD (  18.18  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: nm@ti.com, devicetree@vger.kernel.org, vigneshr@ti.com, nsekhar@ti.com,
 linux-kernel@vger.kernel.org, kishon@ti.com, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 08, 2020 at 01:18:27PM +0200, Roger Quadros wrote:
> From: Kishon Vijay Abraham I <kishon@ti.com>
> 
> Add serdes_ln_ctrl node used for selecting SERDES lane mux.
> 
> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
> Signed-off-by: Roger Quadros <rogerq@ti.com>
> ---
>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
>  include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
>  2 files changed, 79 insertions(+)
>  create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h
> 
> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> index 24cb78db28e4..6741c1e67f50 100644
> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
> @@ -5,6 +5,8 @@
>   * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
>   */
>  #include <dt-bindings/phy/phy.h>
> +#include <dt-bindings/mux/mux.h>
> +#include <dt-bindings/mux/mux-j721e-wiz.h>
>  
>  &cbass_main {
>  	msmc_ram: sram@70000000 {
> @@ -19,6 +21,30 @@
>  		};
>  	};
>  
> +	scm_conf: scm_conf@100000 {

Don't use '_' in node names.

> +		compatible = "syscon", "simple-mfd";

Needs a specific compatible especially since the child node doesn't have 
one.

> +		reg = <0 0x00100000 0 0x1c000>;
> +		#address-cells = <1>;
> +		#size-cells = <1>;
> +		ranges = <0x0 0x0 0x00100000 0x1c000>;
> +
> +		serdes_ln_ctrl: serdes_ln_ctrl@4080 {

'reg' is needed if there's a unit-address. If there's a register range 
with only the mux controls, then add 'reg'.

> +			compatible = "mmio-mux";
> +			#mux-control-cells = <1>;
> +			mux-reg-masks = <0x4080 0x3>, <0x4084 0x3>, /* SERDES0 lane0/1 select */
> +					<0x4090 0x3>, <0x4094 0x3>, /* SERDES1 lane0/1 select */
> +					<0x40a0 0x3>, <0x40a4 0x3>, /* SERDES2 lane0/1 select */
> +					<0x40b0 0x3>, <0x40b4 0x3>, /* SERDES3 lane0/1 select */
> +					<0x40c0 0x3>, <0x40c4 0x3>, <0x40c8 0x3>, <0x40cc 0x3>;
> +					/* SERDES4 lane0/1/2/3 select */
> +			idle-states = <SERDES0_LANE0_PCIE0_LANE0>, <SERDES0_LANE1_PCIE0_LANE1>,
> +				      <SERDES1_LANE0_PCIE1_LANE0>, <SERDES1_LANE1_PCIE1_LANE1>,
> +				      <SERDES2_LANE0_PCIE2_LANE0>, <SERDES2_LANE1_PCIE2_LANE1>,
> +				      <MUX_IDLE_AS_IS>, <SERDES3_LANE1_USB3_0>,
> +				      <SERDES4_LANE0_EDP_LANE0>, <SERDES4_LANE1_EDP_LANE1>, <SERDES4_LANE2_EDP_LANE2>, <SERDES4_LANE3_EDP_LANE3>;
> +		};
> +	};
> +
>  	gic500: interrupt-controller@1800000 {
>  		compatible = "arm,gic-v3";
>  		#address-cells = <2>;
> diff --git a/include/dt-bindings/mux/mux-j721e-wiz.h b/include/dt-bindings/mux/mux-j721e-wiz.h
> new file mode 100644
> index 000000000000..fd1c4ea9fc7f
> --- /dev/null
> +++ b/include/dt-bindings/mux/mux-j721e-wiz.h
> @@ -0,0 +1,53 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for J721E WIZ.
> + */
> +
> +#ifndef _DT_BINDINGS_J721E_WIZ
> +#define _DT_BINDINGS_J721E_WIZ
> +
> +#define SERDES0_LANE0_QSGMII_LANE1	0x0
> +#define SERDES0_LANE0_PCIE0_LANE0	0x1
> +#define SERDES0_LANE0_USB3_0_SWAP	0x2
> +
> +#define SERDES0_LANE1_QSGMII_LANE2	0x0
> +#define SERDES0_LANE1_PCIE0_LANE1	0x1
> +#define SERDES0_LANE1_USB3_0		0x2
> +
> +#define SERDES1_LANE0_QSGMII_LANE3	0x0
> +#define SERDES1_LANE0_PCIE1_LANE0	0x1
> +#define SERDES1_LANE0_USB3_1_SWAP	0x2
> +#define SERDES1_LANE0_SGMII_LANE0	0x3
> +
> +#define SERDES1_LANE1_QSGMII_LANE4	0x0
> +#define SERDES1_LANE1_PCIE1_LANE1	0x1
> +#define SERDES1_LANE1_USB3_1		0x2
> +#define SERDES1_LANE1_SGMII_LANE1	0x3
> +
> +#define SERDES2_LANE0_PCIE2_LANE0	0x1
> +#define SERDES2_LANE0_SGMII_LANE0	0x3
> +#define SERDES2_LANE0_USB3_1_SWAP	0x2
> +
> +#define SERDES2_LANE1_PCIE2_LANE1	0x1
> +#define SERDES2_LANE1_USB3_1		0x2
> +#define SERDES2_LANE1_SGMII_LANE1	0x3
> +
> +#define SERDES3_LANE0_PCIE3_LANE0	0x1
> +#define SERDES3_LANE0_USB3_0_SWAP	0x2
> +
> +#define SERDES3_LANE1_PCIE3_LANE1	0x1
> +#define SERDES3_LANE1_USB3_0		0x2
> +
> +#define SERDES4_LANE0_EDP_LANE0		0x0
> +#define SERDES4_LANE0_QSGMII_LANE5	0x2
> +
> +#define SERDES4_LANE1_EDP_LANE1		0x0
> +#define SERDES4_LANE1_QSGMII_LANE6	0x2
> +
> +#define SERDES4_LANE2_EDP_LANE2		0x0
> +#define SERDES4_LANE2_QSGMII_LANE7	0x2
> +
> +#define SERDES4_LANE3_EDP_LANE3		0x0
> +#define SERDES4_LANE3_QSGMII_LANE8	0x2
> +
> +#endif /* _DT_BINDINGS_J721E_WIZ */
> -- 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
