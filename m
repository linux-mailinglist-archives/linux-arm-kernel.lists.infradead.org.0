Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 345987C67D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 17:26:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=idNOfOxi8m/nFlymDzAKgatd59yiZV+YOEET4DqdPu0=; b=V9BJYjk0l80XHx
	lwuL38xTo/V9iVpQHJz1B6jkHdz1290xyZU8mGFl8AiHbcTlS22jtavlhJzPoyDE6o67UoVw23sgT
	/vRRU3fmQrZ7oNSfaaLbA8oIHOkzfLy4f77I3Tr0WLQPj+LLZbfXZV756eh+ASm+tKDIUrqtOXNj7
	mmhL6EetLfBHQxFIbxKHkGpqXrOLz5FmRY/by69gK+51Ry8ItMPjtDH1b7RqsWLf36pNYf7Zh8lFC
	KiFEaUQXXe5i1AZ/2b9AMMWPTm9se/eAFzpUtTIRgcsGszTWw9LuSj76vTbnqTVedDJ0gxTkhh1Aw
	v4oaAFIa6Awx7k7RWiXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsqUk-0000p5-1B; Wed, 31 Jul 2019 15:26:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsqUc-0000oj-Cv
 for linux-arm-kernel@lists.infradead.org; Wed, 31 Jul 2019 15:26:20 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x6VFGFBw001928; Wed, 31 Jul 2019 17:26:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=hqY6QAzzaGShhRhu9sPzoFPBiimrui7oz2W66kOYNWQ=;
 b=jxZlB5bc3GxXWhEvCWZ/i5UcigqrTllppWki5MxLWKZLUsOoapFRNqRU+WzSf6ofL+KY
 dQeWqjBEOgtrMdR1Y+Zfp1IeChNWAsB1/kCp0jJ8wnoJh07UjBfEcdxEdsR/zTTof4ki
 aoQtcskK07fC+V4YEcLtmAK2BZZ743ZGrfdHS+XQqnmF2yUQG1zNTaoOXnfc3nsc/NPu
 mXVpU3Su4EqYQWYOLWEMb9cb4D4snwTIDZFLQYbUhR7W2BPr1A+cp7+5ELBq6CG7gY8U
 F2/Jwp2KTZUHCYETI5VdDxy36QjD9URmJVVCdGsNFdI+LIYNuZMG1L3thyFnkiyYjNoz rQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2u2jp4g33g-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Wed, 31 Jul 2019 17:26:10 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0573731;
 Wed, 31 Jul 2019 15:26:09 +0000 (GMT)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id E212FF9AA8;
 Wed, 31 Jul 2019 17:26:09 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 31 Jul 2019 17:26:09
 +0200
From: Alexandre Torgue <alexandre.torgue@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, <arnd@arndb.de>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: remove useless pinctrl entries in
 stm32mp157-pinctrl
Date: Wed, 31 Jul 2019 17:26:09 +0200
Message-ID: <20190731152609.32197-1-alexandre.torgue@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG8NODE3.st.com (10.75.127.24) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-31_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_082618_902915_C7C901F7 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Alexandre Torgue <alexandre.torgue@st.com>,
 linux-arm-kernel@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch removes "ngpios" and "gpio-ranges" information from
stm32mp157-pinctrl.dtsi file as it is now filled in stm32mp157 pinctrl
package files.

Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index df6470133574..3f6008aa28a4 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -24,8 +24,6 @@
 				reg = <0x0 0x400>;
 				clocks = <&rcc GPIOA>;
 				st,bank-name = "GPIOA";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 0 16>;
 				status = "disabled";
 			};
 
@@ -37,8 +35,6 @@
 				reg = <0x1000 0x400>;
 				clocks = <&rcc GPIOB>;
 				st,bank-name = "GPIOB";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 16 16>;
 				status = "disabled";
 			};
 
@@ -50,8 +46,6 @@
 				reg = <0x2000 0x400>;
 				clocks = <&rcc GPIOC>;
 				st,bank-name = "GPIOC";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 32 16>;
 				status = "disabled";
 			};
 
@@ -63,8 +57,6 @@
 				reg = <0x3000 0x400>;
 				clocks = <&rcc GPIOD>;
 				st,bank-name = "GPIOD";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 48 16>;
 				status = "disabled";
 			};
 
@@ -76,8 +68,6 @@
 				reg = <0x4000 0x400>;
 				clocks = <&rcc GPIOE>;
 				st,bank-name = "GPIOE";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 64 16>;
 				status = "disabled";
 			};
 
@@ -89,8 +79,6 @@
 				reg = <0x5000 0x400>;
 				clocks = <&rcc GPIOF>;
 				st,bank-name = "GPIOF";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 80 16>;
 				status = "disabled";
 			};
 
@@ -102,8 +90,6 @@
 				reg = <0x6000 0x400>;
 				clocks = <&rcc GPIOG>;
 				st,bank-name = "GPIOG";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 96 16>;
 				status = "disabled";
 			};
 
@@ -115,8 +101,6 @@
 				reg = <0x7000 0x400>;
 				clocks = <&rcc GPIOH>;
 				st,bank-name = "GPIOH";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 112 16>;
 				status = "disabled";
 			};
 
@@ -128,8 +112,6 @@
 				reg = <0x8000 0x400>;
 				clocks = <&rcc GPIOI>;
 				st,bank-name = "GPIOI";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 128 16>;
 				status = "disabled";
 			};
 
@@ -141,8 +123,6 @@
 				reg = <0x9000 0x400>;
 				clocks = <&rcc GPIOJ>;
 				st,bank-name = "GPIOJ";
-				ngpios = <16>;
-				gpio-ranges = <&pinctrl 0 144 16>;
 				status = "disabled";
 			};
 
@@ -154,8 +134,6 @@
 				reg = <0xa000 0x400>;
 				clocks = <&rcc GPIOK>;
 				st,bank-name = "GPIOK";
-				ngpios = <8>;
-				gpio-ranges = <&pinctrl 0 160 8>;
 				status = "disabled";
 			};
 
@@ -849,8 +827,6 @@
 				clocks = <&rcc GPIOZ>;
 				st,bank-name = "GPIOZ";
 				st,bank-ioport = <11>;
-				ngpios = <8>;
-				gpio-ranges = <&pinctrl_z 0 400 8>;
 				status = "disabled";
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
