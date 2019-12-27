Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 125D812B24E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Dec 2019 08:18:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gXNOgNOybBkBY6qQqUiddd51Yf40WHoWwMoBTGzcT4A=; b=cR7HUvGT7qzCLI
	SpAvItuAHWs07pCcP7+/YkFrqSzugTaEQxwxHLLdULgM4mKyXmlO5fD06xd0jvVSaUQ9LY8voyqZL
	xeGsCte6z2FgqZRuPjFfB/EKs+cIx1SZl2THSWmdVx7nzrmjEL5FuEvQJLAPwVnSrJUdPfhTIao8r
	LWONKyHe3xuwGrlKbcryu2JmkjddIUwScoElSiAfwXS+AxHn/fxuhWM+l/XWzn0gINriMEKOdew85
	WCmF7xqfZvvhGpwg+IvZuXXQnomyhYePHABY6PBljPM1b0SEw60xQGTQhJnc5qnTP6HtfcQOxfVQC
	rSvpZZEKwoC4BIyfXSHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ikjsk-0005Ik-R3; Fri, 27 Dec 2019 07:17:58 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1ikjsV-0005He-MT; Fri, 27 Dec 2019 07:17:46 +0000
Authenticated-By: 
X-SpamFilter-By: BOX Solutions SpamTrap 5.62 with qID xBR7HPUC005151,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (RTITCAS12.realtek.com.tw[172.21.6.16])
 by rtits2.realtek.com.tw (8.15.2/2.57/5.78) with ESMTPS id xBR7HPUC005151
 (version=TLSv1.2 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 27 Dec 2019 15:17:26 +0800
Received: from RTEXDAG01.realtek.com.tw (172.21.6.100) by
 RTITCAS12.realtek.com.tw (172.21.6.16) with Microsoft SMTP Server (TLS) id
 14.3.468.0; Fri, 27 Dec 2019 15:17:25 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG01.realtek.com.tw (172.21.6.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Fri, 27 Dec 2019 15:17:25 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Fri, 27 Dec 2019 15:17:25 +0800
From: James Tai <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
Thread-Topic: [PATCH 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
Thread-Index: AQHVq0XEDCHB5XuVy0GM835RkHVd06eq2S4AgCLPVoA=
Date: Fri, 27 Dec 2019 07:17:25 +0000
Message-ID: <a673b4e4bb454bad99ad483e1cccbbb1@realtek.com>
References: <20191205082555.22633-1-james.tai@realtek.com>
 <20191205082555.22633-3-james.tai@realtek.com>
 <4040ffcf-5c54-fb44-b0a8-ce0c8c21b93f@suse.de>
In-Reply-To: <4040ffcf-5c54-fb44-b0a8-ce0c8c21b93f@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.187]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191226_231743_999088_B5519A0E 
X-CRM114-Status: GOOD (  25.59  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


Hi Andreas,

> This hunk is lacking rtd1395, so is not based on the latest patches I posted. I
> expect you to be developing against linux-next.git tree, and when there's
> relevant in-flight patches, you'll need to either apply my patches via git-am to
> your tree, or for convenience you can use the beginning of my (but better not
> the full experimental) rtd1295-next branch (git-rebase -i, or (careful!) git-reset
> --hard). Yes, neither is super-easy.
> 

I will use your rtd1295-next branch for development.

> Same as with the binding, it would seem better to not add this at the end, even
> if it's your newest family. Consider this: Someone finds an
> RTD1036 in their household and wants to contribute a patch - where would
> they add it? I don't want all newly added stuff to go into the bottom of the file
> (then it'll be hard to find and potentially causes conflicts), so we need a stable
> sort order where I don't need to do historical research of whether 1036 is
> newer or older than 1195/1296 to determine where to insert it in a file.
> Alphanumerical sort order seems simplest to understand and is proven
> elsewhere to reduce merge conflicts.

Thanks for your kind reminder.

> > diff --git a/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > new file mode 100644
> > index 000000000000..d8bfe2304b71
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > @@ -0,0 +1,43 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> > +/*
> > + * Copyright (c) 2019 Realtek Semiconductor Corp.
> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "rtd1319.dtsi"
> > +
> > +/ {
> > +	compatible = "realtek,pymparticle", "realtek,rtd1319";
> 
> Thanks, correct order now.
> 
> > +	model = "Realtek PymParticle EVB";
> > +
> > +	memory@0 {
> > +		device_type = "memory";
> > +		reg = <0x0 0x80000000>;
> > +	};
> 
> No! I understood RTD1319 has the same boot ROM size 184 KiB as RTD1619,
> so please look at the patches I posted, including fix for RTD1619 [1], and fix
> this yourself here. A comment for humans would also be nice.
> 
> In the public BPI-M4-bsp code I see one -pymparticle-1GB.CMAx2.dts file.
> If this board is available with less than 2 GiB RAM then please use the lower
> value to be safe - you can run a 2 GiB board with 1 GiB RAM used, but using
> more RAM than available will break.
> 
> [1] https://patchwork.kernel.org/patch/11268969/
> 

I will fix it in next version patch.

> > +++ b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> > @@ -0,0 +1,12 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> > +/*
> > + * Realtek RTD1319 SoC
> > + *
> > + * Copyright (c) 2019 Realtek Semiconductor Corp.
> > + */
> > +
> > +#include "rtd13xx.dtsi"
> > +
> > +/ {
> > +	compatible = "realtek,rtd1319";
> > +};
> 
> What other contents are you expecting to add in this file?

I expect add USB, SATA, PCIE and so on.

> > +	cpus {
> > +		#address-cells = <1>;
> > +		#size-cells = <0>;
> > +
> > +		cpu0: cpu@0 {
> > +			device_type = "cpu";
> > +			compatible = "arm,cortex-a55";
> > +			reg = <0x0>;
> > +			enable-method = "psci";
> > +			next-level-cache = <&l2>;
> > +		};
> > +
> > +		cpu1: cpu@100 {
> > +			device_type = "cpu";
> > +			compatible = "arm,cortex-a55";
> > +			reg = <0x100>;
> > +			enable-method = "psci";
> > +			next-level-cache = <&l2>;
> > +		};
> > +
> > +		cpu2: cpu@200 {
> > +			device_type = "cpu";
> > +			compatible = "arm,cortex-a55";
> > +			reg = <0x200>;
> > +			enable-method = "psci";
> > +			next-level-cache = <&l2>;
> > +		};
> > +
> > +		cpu3: cpu@300 {
> > +			device_type = "cpu";
> > +			compatible = "arm,cortex-a55";
> > +			reg = <0x300>;
> > +			enable-method = "psci";
> > +			next-level-cache = <&l2>;
> > +		};
> > +
> > +		l2: l2-cache {
> > +			compatible = "cache";
> > +		};
> 
> I note this seems a different cache topology than RTD1619?
> 
Yes, It is different cache topology than RTD1619.
The RTD1319 don't have an L3 cache.

> > +	osc27M: osc {
> > +		compatible = "fixed-clock";
> > +		clock-frequency = <27000000>;
> > +		clock-output-names = "osc27M";
> 
> BTW I recall seeing "osc27m" in your clk patchset. We should decide on one
> name and stick with it consistently, and I think it's best to have this as a node
> here in .dtsi (or in .dts), in case OEMs ever choose to have it generated by
> some other non-trivial IC.

I understand.

> > +		#clock-cells = <0>;
> > +	};
> > +
> > +	soc {
> > +		compatible = "simple-bus";
> > +		#address-cells = <1>;
> > +		#size-cells = <1>;
> > +		ranges = <0x98000000 0x98000000 0x68000000>;
> 
> No! Lacking a range for boot ROM. And your range is probably too large due to
> high RAM. Please see [1] and fix for both. r-bus ranges below would indicate
> that above soc range should be 0x00200000 long only, plus extra ranges for
> whatever besides r-bus is shadowing RAM (e.g., GIC).
> 

I will fix it in next version patch.

> > +
> > +			uart0: serial0@7800 {
> > +				compatible = "snps,dw-apb-uart";
> > +				reg = <0x7800 0x400>;
> > +				reg-shift = <2>;
> > +				reg-io-width = <4>;
> > +				interrupts = <GIC_SPI 68 IRQ_TYPE_LEVEL_HIGH>;
> > +				clock-frequency = <432000000>;
> > +				status = "disabled";
> > +			};
> > +
> > +			uart1: serial1@1b200 {
> > +				compatible = "snps,dw-apb-uart";
> > +				reg = <0x1b200 0x400>;
> > +				reg-shift = <2>;
> > +				reg-io-width = <4>;
> > +				interrupts = <GIC_SPI 89 IRQ_TYPE_LEVEL_HIGH>;
> > +				clock-frequency = <432000000>;
> > +				status = "disabled";
> > +			};
> > +
> > +			uart2: serial2@1b400 {
> > +				compatible = "snps,dw-apb-uart";
> > +				reg = <0x1b400 0x400>;
> > +				reg-shift = <2>;
> > +				reg-io-width = <4>;
> > +				interrupts = <GIC_SPI 90 IRQ_TYPE_LEVEL_HIGH>;
> > +				clock-frequency = <432000000>;
> > +				status = "disabled";
> > +			};
> 
> Here you appear to ignore my patches introducing syscon for ISO & MISC!
> 
> See https://patchwork.kernel.org/cover/11269453/

I will apply the syscon for ISO & MISC in next version patch.

> > +		};
> > +
> > +		gic: interrupt-controller@ff100000 {
> > +			compatible = "arm,gic-v3";
> > +			reg = <0xff100000 0x10000>,
> > +			      <0xff140000 0xc0000>;
> > +			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
> > +			interrupt-controller;
> > +			#interrupt-cells = <3>;
> > +		};
> > +	};
> > +};
> 

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
