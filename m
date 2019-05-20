Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBE3D23C1F
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 17:28:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n4sfSF4U2FCs+FdbfK8CsJD/tNvrfvqUWVsik4eft9c=; b=qAvpn0L6XdMwnE
	1IckNCE3AspkgnRyjlW2lgf7k3dI2+k7tUVJTcGBLjQP/kNgAtbDMjD/YRoqqIbwFC6flZlk+LcVf
	iUZTaPxd6PD0o5qiZcCa+TbVfRcibxoTcpX1j9RZfA8jetHMs9uNgRFUEsHNpxaNLtje9TeRt9/fV
	U5KxLWVP9g4kAbYrEzcYYHdekULKvX9M5SOG85GpgOw6C/iP8FXu/FXvQ15P4eYhNUKA3XuYYZC/y
	likeSeG6Jb19ikqduMM87Pq1nCbckIvJvgTj1wMwHuxcTU3EgzB4cjs/ZS1uCP6OXH2qaHkAZbS7G
	sHWXKAaT/nu+4sCIjs1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSkDJ-0000Iw-O7; Mon, 20 May 2019 15:28:33 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSkCS-0007rd-Ib
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 15:27:42 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x4KFLfDZ012618; Mon, 20 May 2019 17:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=Wcu5oEUF6XRVV7E1tKSPLsOlMzvEqIXsC6he8uYfnbE=;
 b=m+eyy6w4Mbf9I9nvYPMkZncCtVYKi4Q2vWUovXFOesGoLrtByXHN/nAi4KaJL3QzB1zC
 h87cRd3iPYuBS5oTZ+fzoKumjOivkw/5jMIwSNl1OpxXnpHTfiwcpJeqYk2KhD0reYPr
 EEeP/lG7PTJS6NSlmUM2E3Koe+qTuFYhJPLFd4pNo/5B4n6o1SkEte2RjKrtzogb8ZZw
 UQzzDvXMdx3z3s+6ZOGP2fxPWpYntd9OYZ3T9QU3p2QkHwcnla9HkW+c2vlTVZifvm1/
 fia4DeIkgaOcw9Zcde2iJGUMZzHJg5OGGU/1CGEEhlq3680osi5YFsMjmuMpHDgok7HW 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2sj7ttv8tq-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 20 May 2019 17:27:19 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2EFB23F;
 Mon, 20 May 2019 15:27:19 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0A4C12BAC;
 Mon, 20 May 2019 15:27:19 +0000 (GMT)
Received: from SFHDAG5NODE1.st.com (10.75.127.13) by SFHDAG3NODE1.st.com
 (10.75.127.7) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 20 May
 2019 17:27:18 +0200
Received: from SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6]) by
 SFHDAG5NODE1.st.com ([fe80::cc53:528c:36c8:95f6%20]) with mapi id
 15.00.1347.000; Mon, 20 May 2019 17:27:18 +0200
From: Gerald BAEZA <gerald.baeza@st.com>
To: "will.deacon@arm.com" <will.deacon@arm.com>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>, Alexandre TORGUE
 <alexandre.torgue@st.com>, "corbet@lwn.net" <corbet@lwn.net>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>, "olof@lixom.net"
 <olof@lixom.net>,
 "horms+renesas@verge.net.au" <horms+renesas@verge.net.au>,
 "arnd@arndb.de" <arnd@arndb.de>
Subject: [PATCH v2 5/5] ARM: dts: stm32: add ddrperfm on stm32mp157c
Thread-Topic: [PATCH v2 5/5] ARM: dts: stm32: add ddrperfm on stm32mp157c
Thread-Index: AQHVDyCCaooiUmBaFEePA6987tY5VA==
Date: Mon, 20 May 2019 15:27:18 +0000
Message-ID: <1558366019-24214-6-git-send-email-gerald.baeza@st.com>
References: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
In-Reply-To: <1558366019-24214-1-git-send-email-gerald.baeza@st.com>
Accept-Language: fr-FR, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.45]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-20_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_082740_911519_6DE444B4 
X-CRM114-Status: GOOD (  13.34  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Gerald BAEZA <gerald.baeza@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The DDRPERFM is the DDR Performance Monitor embedded
in STM32MP1 SOC.

Signed-off-by: Gerald Baeza <gerald.baeza@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 2afeee6..7dad246 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1198,6 +1198,15 @@
 			};
 		};
 
+		ddrperfm: perf@5a007000 {
+			compatible = "st,stm32-ddr-pmu";
+			reg = <0x5a007000 0x400>;
+			clocks = <&rcc DDRPERFM>, <&rcc PLL2_R>;
+			clock-names = "bus", "ddr";
+			resets = <&rcc DDRPERFM_R>;
+			status = "okay";
+		};
+
 		usart1: serial@5c000000 {
 			compatible = "st,stm32h7-uart";
 			reg = <0x5c000000 0x400>;
-- 
2.7.4

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
