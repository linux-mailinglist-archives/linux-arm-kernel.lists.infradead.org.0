Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2C1F1479D8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 09:57:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gCnA6ma3sH0V6HFCTGfzdV7fTH6yDfLxp8aSURiq5u4=; b=UwetMSTKN9Px4c
	gzn9KB3gqrQLF2/A8Kn9aejss665jcW/I7pjQKYZl8/dP4T5VfPiiTPbSHigUllZW3maEAOv5ADE9
	UkmmoZkojF89odFNFBvdFxo7KxUfZVAtbZgbgH24Yi/wnlDDxI0zTvgfp6zPV4rfse8Csod+ELrfr
	zPXpNigKoWiamDe15EauNa0StQPiEpfalTSa97t6v+UqtQ85RsGj4FDl9onx6tGYo1e1nVL/l29Ar
	eBF3Nfo/kVJjHUNq/mYMbaZtZDHCSenGh32+onIFMANBZpMRhDi5SpxO10gvI+FE+2XrRfPCb0uqk
	9ZTVWLKs87AMYMG9pBLQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuumd-00045R-EK; Fri, 24 Jan 2020 08:57:43 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuumR-00044h-Gw
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 08:57:33 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00O8qWRa022445; Fri, 24 Jan 2020 09:57:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : references : in-reply-to : content-type :
 content-transfer-encoding : mime-version; s=STMicroelectronics;
 bh=pTHPVX7/gaXr9zuXZ4ds+Q85JK3nKgeefdELPART7X0=;
 b=HNjl9N/J7l2hCuZlbTNtRTBHqnJ5tgJ7ZvWukjVm73s4MqeWaIxEw8qwQcrv9rxaGhZv
 1baVcM1PSf0fE9P1YBvaRQWlJMyiDRVGoXevVK/INT18medgTHZYVKz/i6jBoakY/gZQ
 /q2HoMszTvxrbbHB03am52hu1XKy4OHzm82pz8aruYujQoyGtpHi7pDMXSsq8lC3mMVo
 u9FWfZGf+St9dfqOn9AcwEIvB08f85iMKwwWOlTjuYpwVvSGd8NxjMbRVIe+11wkQB/5
 7wMS/a0C8yFQlp0uzwHuSbZwZup3JDWcpUSv3K57DFcQ9Hj1eMHphwMmxrliVZ5mXIsy zQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkr1eey68-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 24 Jan 2020 09:57:22 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id EE4E110002A;
 Fri, 24 Jan 2020 09:57:21 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id BE96D210F99;
 Fri, 24 Jan 2020 09:57:21 +0100 (CET)
Received: from SFHDAG5NODE2.st.com (10.75.127.14) by SFHDAG3NODE2.st.com
 (10.75.127.8) with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 24 Jan
 2020 09:57:21 +0100
Received: from SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0]) by
 SFHDAG5NODE2.st.com ([fe80::1cb5:6767:370b:9af0%20]) with mapi id
 15.00.1473.003; Fri, 24 Jan 2020 09:57:21 +0100
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: Alain VOLMAT <alain.volmat@st.com>, "wsa@the-dreams.de"
 <wsa@the-dreams.de>, "robh+dt@kernel.org" <robh+dt@kernel.org>
Subject: RE: [PATCH 5/5] ARM: dts: stm32: add Fast Mode Plus info in I2C nodes
 of stm32mp151
Thread-Topic: [PATCH 5/5] ARM: dts: stm32: add Fast Mode Plus info in I2C
 nodes of stm32mp151
Thread-Index: AQHV0ggGJuzCPj0St021atB5ZULrDaf5hHuA
Date: Fri, 24 Jan 2020 08:57:21 +0000
Message-ID: <c7e1ed1294894d5697c649a26f82f498@SFHDAG5NODE2.st.com>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
 <1579795970-22319-6-git-send-email-alain.volmat@st.com>
In-Reply-To: <1579795970-22319-6-git-send-email-alain.volmat@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.75.127.50]
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-24_02:2020-01-24,
 2020-01-24 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_005732_036426_DB667E56 
X-CRM114-Status: GOOD (  13.21  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Ok pour la serie

-----Original Message-----
From: Alain VOLMAT <alain.volmat@st.com> 
Sent: jeudi 23 janvier 2020 17:13
To: wsa@the-dreams.de; robh+dt@kernel.org
Cc: mark.rutland@arm.com; Pierre Yves MORDRET <pierre-yves.mordret@st.com>; mcoquelin.stm32@gmail.com; Alexandre TORGUE <alexandre.torgue@st.com>; linux-i2c@vger.kernel.org; devicetree@vger.kernel.org; linux-stm32@st-md-mailman.stormreply.com; linux-arm-kernel@lists.infradead.org; linux-kernel@vger.kernel.org; Fabrice GASNIER <fabrice.gasnier@st.com>; Alain VOLMAT <alain.volmat@st.com>
Subject: [PATCH 5/5] ARM: dts: stm32: add Fast Mode Plus info in I2C nodes of stm32mp151

Add the syscfg-fmp property in each i2c node in order to allow Fast Mode Plus speed if clock-frequency >= 1MHz is indicated.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 2dbf32ca9b36..ecd0a932aa78 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -483,6 +483,7 @@
 			resets = <&rcc I2C1_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x1>;
 			wakeup-source;
 			status = "disabled";
 		};
@@ -497,6 +498,7 @@
 			resets = <&rcc I2C2_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x2>;
 			wakeup-source;
 			status = "disabled";
 		};
@@ -511,6 +513,7 @@
 			resets = <&rcc I2C3_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x4>;
 			wakeup-source;
 			status = "disabled";
 		};
@@ -525,6 +528,7 @@
 			resets = <&rcc I2C5_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x10>;
 			wakeup-source;
 			status = "disabled";
 		};
@@ -1477,6 +1481,7 @@
 			resets = <&rcc I2C4_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x8>;
 			wakeup-source;
 			status = "disabled";
 		};
@@ -1513,6 +1518,7 @@
 			resets = <&rcc I2C6_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			st,syscfg-fmp = <&syscfg 0x4 0x20>;
 			wakeup-source;
 			status = "disabled";
 		};
--
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
