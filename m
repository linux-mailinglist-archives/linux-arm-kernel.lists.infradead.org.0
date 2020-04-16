Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A729F1ABBA1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 10:48:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E3oXVt6V+H2JQUMvJZEsvOwm115LDR8LPNH9aObXt8s=; b=TN7nlRHYDLZjZX
	8Po8jddMZWUsgmpzA3pjxiaG+xassqrgRid5xM6S3RUb2WfhNgxRCMlwVpQ0cGBi5qeTDtRA9HVJ6
	VWcvX9z27FRL3Wl4cKmWswUDV/v+9/fSLh1HOhVMsXyjZV7Kaxnl17WHc/gafzJhaQxQhibszFHuP
	oDd49cOQHGsZG1xBhhSH9QNGvRIS1P4Sy9gpp5ivBazTfcblYpa5BB3vuCQtEcDRkZTHU+Z7NECIh
	wsv/yehQvEHDzxOWU6B5iPq/caBTdUPJyeZNX19IyJr7XYs4HSK+tuaX4XFFXfuPqsyIEgcLB6idG
	W0Ay6kc/M64vWLXE1jfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP0Bj-0007Dw-5F; Thu, 16 Apr 2020 08:47:59 +0000
Received: from rtits2.realtek.com ([211.75.126.72] helo=rtits2.realtek.com.tw)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1jP0BT-0007C2-01; Thu, 16 Apr 2020 08:47:45 +0000
Authenticated-By: 
X-SpamFilter-By: ArmorX SpamTrap 5.69 with qID 03G8l95w9006197,
 This message is accepted by code: ctloc85258
Received: from mail.realtek.com (rtexmb06.realtek.com.tw[172.21.6.99])
 by rtits2.realtek.com.tw (8.15.2/2.66/5.86) with ESMTPS id 03G8l95w9006197
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT);
 Thu, 16 Apr 2020 16:47:09 +0800
Received: from RTEXDAG02.realtek.com.tw (172.21.6.101) by
 RTEXMB06.realtek.com.tw (172.21.6.99) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 16 Apr 2020 16:47:09 +0800
Received: from RTEXMB03.realtek.com.tw (172.21.6.96) by
 RTEXDAG02.realtek.com.tw (172.21.6.101) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1779.2; Thu, 16 Apr 2020 16:47:08 +0800
Received: from RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d]) by
 RTEXMB03.realtek.com.tw ([fe80::71dc:5fb1:bef0:757d%8]) with mapi id
 15.01.1779.005; Thu, 16 Apr 2020 16:47:08 +0800
From: =?utf-8?B?SmFtZXMgVGFpIFvmiLTlv5fls7Bd?= <james.tai@realtek.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>
Subject: RE: [PATCH v3 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
Thread-Topic: [PATCH v3 2/2] arm64: dts: realtek: Add RTD1319 SoC and Realtek
 PymParticle EVB
Thread-Index: AQHV22rI+NjHXMOCKE2GotJYQnIOL6h5+JiAgAFvOzA=
Date: Thu, 16 Apr 2020 08:47:08 +0000
Message-ID: <9c2e6c94400b469eaff6a370135328a1@realtek.com>
References: <20200204145207.28622-1-james.tai@realtek.com>
 <20200204145207.28622-3-james.tai@realtek.com>
 <842e8a9d-cdd6-cb85-ce85-17f20ff7b626@suse.de>
In-Reply-To: <842e8a9d-cdd6-cb85-ce85-17f20ff7b626@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [172.21.190.154]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_014743_314169_BC90A235 
X-CRM114-Status: GOOD (  22.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [211.75.126.72 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-realtek-soc@lists.infradead.org"
 <linux-realtek-soc@lists.infradead.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andreas,

> Am 04.02.20 um 15:52 schrieb James Tai:
> > diff --git a/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > new file mode 100644
> > index 000000000000..2a36d220fef6
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/realtek/rtd1319-pymparticle.dts
> > @@ -0,0 +1,43 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> > +/*
> > + * Copyright (c) 2019 Realtek Semiconductor Corp.
> 
> 2019-2020? (also elsewhere)
> 
Yes. It should be changed to "2019-2020".

> > + */
> > +
> > +/dts-v1/;
> > +
> > +#include "rtd1319.dtsi"
> > +
> > +/ {
> > +	compatible = "realtek,pymparticle", "realtek,rtd1319";
> > +	model = "Realtek PymParticle EVB";
> > +
> > +	memory@2e000 {
> > +		device_type = "memory";
> > +		reg = <0x2e000 0x3ffd2000>; /* boot ROM to 1 GiB or 2 GiB */
> > +	};
> > +
> > +	chosen {
> > +		stdout-path = "serial0:460800n8";
> > +	};
> > +
> > +	aliases {
> > +		serial0 = &uart0;
> > +		serial1 = &uart1;
> > +		serial2 = &uart2;
> > +	};
> > +};
> > +
> > +/* debug console (J1) */
> > +&uart0 {
> > +	status = "okay";
> > +};
> > +
> > +/* M.2 slot (CON8) */
> 
> Also J14 and CON2 (unless the board is mislabeled?).
> 
> /* J14 and M.2 slots (CON2, CON8) */ ?
> 
Yes. It should be changed to "M.2 slots (CON2, CON8)".

> > +&uart1 {
> > +	status = "disabled";
> > +};
> > +
> > +/* GPIO connector (T1) */
> > +&uart2 {
> > +	status = "disabled";
> > +};
> > diff --git a/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> > b/arch/arm64/boot/dts/realtek/rtd1319.dtsi
> > new file mode 100644
> > index 000000000000..1dcee00009cd
> > --- /dev/null
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
> > diff --git a/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> > b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> > new file mode 100644
> > index 000000000000..f6d73f18345d
> > --- /dev/null
> > +++ b/arch/arm64/boot/dts/realtek/rtd13xx.dtsi
> > @@ -0,0 +1,213 @@
> > +// SPDX-License-Identifier: (GPL-2.0-or-later OR BSD-2-Clause)
> > +/*
> > + * Realtek RTD13xx SoC family
> > + *
> > + * Copyright (c) 2019 Realtek Semiconductor Corp.
> > + */
> > +
> > +/memreserve/	0x0000000000000000 0x000000000002e000; /* Boot ROM
> */
> 
> Can you check whether your U-Boot and LK respectively need this memreserve
> entry, here and for previous SoCs? Because for RTD16xx we don't seem to have
> any memreserve entries at all. We do have it in rtd139x.dtsi, rtd129x.dtsi and
> rtd1195.dtsi.
>
I've checked that the boot code doesn't need this memreserve entry.
Therefore, I will remove it.

> Unrelated: Since we're carving out the 2e000 or so from /memory node and
> mapping ranges for /soc, I've been wondering whether we should represent
> the Boot ROM as node somehow. But since it's a ROM with (I assume) binary
> code only, I didn't see any need to have it accessible as mtd-rom device, so it's
> way down my to-do list to research how other mainline platforms might model
> their boot ROMs... (maybe your team has time, or someone reading happens
> to know?)
> 
I'll add it to my to-do list.

> https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/tree/Docum
> entation/devicetree/bindings/mtd/mtd-physmap.txt
> 
> > +/memreserve/	0x000000000002e000 0x0000000000100000; /* Boot
> loader */
> 
> Is this a) correctly sized (not 0xd2000?) and b) still needed? I thought the
> documented sub-0x100000 memory corruption were fixed in newer BSPs?
> 
We're in the process of re-planning the memory layout,
so that address will move to new address.

> > +/memreserve/	0x000000000f400000 0x0000000000500000; /* Video FW
> */
> > +/memreserve/	0x000000000f900000 0x0000000000500000; /* Audio FW
> */
> > +/memreserve/	0x0000000010000000 0x0000000000014000; /* Audio FW
> RAM */
> [snip]
> 
> Are these needed for the bootloader not to overwrite preloaded firmware, or
> could these become /mem-reserve sub-nodes instead?
> 
Yes. These could become /mem-reserve sub-nodes instead.

> Long-term I'm assuming we would move the responsibility for loading these to
> the new kernel drivers (so that the bootloader doesn't need to take care
> anymore) and ship the needed blobs in linux-firmware.git?
> 
> Or is the video FW needed by the bootloader itself for HDMI/DP output?
>
I agree with you. The video FW can be loaded into memory through this mechanism.
But the audio FW needed by the bootloader itself for HDMI/DP output. 
Therefore, the audio FW can't be loaded into memory through it.

Thank you.

Regards,
James


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
