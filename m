Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7E7F1377
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 11:10:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y0zTjwTj/ACYQzJG5j/PCB10UYichfzuVHn1N9tHQ6U=; b=mtpqRfJOxEpqdf
	V7CrRMs+4I9vQBhSw76u5O0v5AE/h54pnOzJPRnftHN4LUohVzKqz+XcVQdAenzDlBdie1+AF8Vf8
	9mTFpaOLmYMagpBpfbJoIf8r4GFPJcENCIH3hqoqszH/QDiyF6DF7H8F2VUplGzsShlelmx1CsjXp
	SgNdgGzP8u+dQrRyKFIaUDBhfTkR0isCHORXRE+tt3nM0bENtsUBuAfdySd99ogwoBY2EuRso5D99
	LvCL+DbvHMkI1TzrSEVKbHLQzIIKcoBzGDHcd/nXGJdWFxKfVijQq7yYuqEPhdwmimuCMa+bQAblj
	nCSFBfCjkbZS2X4z3mKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSIGm-0001cz-9S; Wed, 06 Nov 2019 10:10:32 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSIG7-0000N8-5y
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 10:09:54 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA6A7Bc5003302; Wed, 6 Nov 2019 11:09:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Eu/qqzaS1pp8TvmfaYHxuA1TJTYBQ4y6Pgq5d0GE35Y=;
 b=ruFqG6l380JE4X24zCDqGhmxLBLWJN6jvQycNwE4r/5QY8g8YNhx2IwNeaYefI3CQ8oq
 vQzBA6FsyQxNRWLg3gA1Lv6p4p1mIGXDUIw09U+1TxphjOO9gbIYbZRhytjhghTaXgFP
 TzjJmhPxf+f9ZzbyERi1y9l6wq6QrsjeWia9j1aZa/18Vd+z/TfKqrhfRm621H0h4r8L
 UbKCpKuZPLndASO92vNV3WJxhgNeEM/O+jH5YPjXfdWeITJPxIXNtUN/8qwo6E0qJGBK
 FqCnReeJN4ZHTRPiDzX1iv4eLXrdSigF2WwFwnSOj3VenZ1yJGayo7l99em3HxnFugh3 2g== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w10f1mpur-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 11:09:42 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 6D45C10002A;
 Wed,  6 Nov 2019 11:09:42 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas23.st.com [10.75.90.46])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 60F392AD337;
 Wed,  6 Nov 2019 11:09:42 +0100 (CET)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.92) by SAFEX1HUBCAS23.st.com
 (10.75.90.46) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 11:09:42 +0100
Received: from localhost (10.48.1.131) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 11:09:41 +0100
From: Yann Gautier <yann.gautier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 1/4] ARM: dts: stm32: update slew-rate properties for sdmmc1
 on stm32mp157
Date: Wed, 6 Nov 2019 11:09:35 +0100
Message-ID: <20191106100938.11368-2-yann.gautier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191106100938.11368-1-yann.gautier@st.com>
References: <20191106100938.11368-1-yann.gautier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.1.131]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-06,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_020951_568080_D0A0CC08 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Yann Gautier <yann.gautier@st.com>, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, Ludovic
 Barre <ludovic.barre@st.com>, mcoquelin.stm32@gmail.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Relax sdmmc1 pins slew-rate to minimize peak currents.

Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
Signed-off-by: Yann Gautier <yann.gautier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 28 +++++++++++++++--------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 0a3a7d66737b..2904bc8c6a41 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -731,14 +731,19 @@
 			};
 
 			sdmmc1_b4_pins_a: sdmmc1-b4-0 {
-				pins {
+				pins1 {
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
 						 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
 						 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
-						 <STM32_PINMUX('C', 12, AF12)>, /* SDMMC1_CK */
 						 <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
-					slew-rate = <3>;
+					slew-rate = <1>;
+					drive-push-pull;
+					bias-disable;
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
+					slew-rate = <2>;
 					drive-push-pull;
 					bias-disable;
 				};
@@ -749,15 +754,20 @@
 					pinmux = <STM32_PINMUX('C', 8, AF12)>, /* SDMMC1_D0 */
 						 <STM32_PINMUX('C', 9, AF12)>, /* SDMMC1_D1 */
 						 <STM32_PINMUX('C', 10, AF12)>, /* SDMMC1_D2 */
-						 <STM32_PINMUX('C', 11, AF12)>, /* SDMMC1_D3 */
-						 <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
-					slew-rate = <3>;
+						 <STM32_PINMUX('C', 11, AF12)>; /* SDMMC1_D3 */
+					slew-rate = <1>;
 					drive-push-pull;
 					bias-disable;
 				};
-				pins2{
+				pins2 {
+					pinmux = <STM32_PINMUX('C', 12, AF12)>; /* SDMMC1_CK */
+					slew-rate = <2>;
+					drive-push-pull;
+					bias-disable;
+				};
+				pins3 {
 					pinmux = <STM32_PINMUX('D', 2, AF12)>; /* SDMMC1_CMD */
-					slew-rate = <3>;
+					slew-rate = <1>;
 					drive-open-drain;
 					bias-disable;
 				};
@@ -779,7 +789,7 @@
 					pinmux = <STM32_PINMUX('F', 2, AF11)>, /* SDMMC1_D0DIR */
 						 <STM32_PINMUX('C', 7, AF8)>, /* SDMMC1_D123DIR */
 						 <STM32_PINMUX('B', 9, AF11)>; /* SDMMC1_CDIR */
-					slew-rate = <3>;
+					slew-rate = <1>;
 					drive-push-pull;
 					bias-pull-up;
 				};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
