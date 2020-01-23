Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F28A146E15
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 17:14:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DUaZQiK3q40jleuBjNBF9OZwzZH1wILKH+myLDs03kE=; b=QunTMQmtBMlBC1
	uPJKzxtxMQH0cvC6EPMVs+HJkvWpdOnek7vHccgPeok0YYZQ9viEXTnI3Kzak9qCrtun2iaZISlyP
	PkV5ZH0WxtdTbnLw8A3BFnyv0qZ5NxJM1HVCNgH6p2rKCztKYnBQK92vqS54E6B6EEg1NaDC4H1zN
	wBOGvgXDzIGqKo19xCbGauNivGI+Hu28xrFMxhGFIvF+u+JiSQzqO/lZjtK1qN0AggJNq23kSB/8G
	PAV3GlgQ9cckNobU3WnZW9BaIvvpjLVIGHWv0BMkJOVcDOBfd5JZSLZ1Gx262Hkyas06F0tnCWQat
	LAuv3jVIhypy6K4pbw4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuf80-00020S-UT; Thu, 23 Jan 2020 16:14:44 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuf6l-00012v-R6
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 16:13:30 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 00NGCWjH000791; Thu, 23 Jan 2020 17:13:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=2pLASYC7DKu+Ek/d/bAfcVV4JHnQ0bcSh78Nb7SNuXc=;
 b=aWuqCrF2rwbiQUbWUIc2yll44u/449dGj/giWC3bNHTZ9fNyWdFBKNZVMxcqst5iot6A
 /aKNp2QpgUPHKkp/SeoA5h4etLSTajWPra4v2sM7uesxRIFPTmhE8VtVBMw+DsbxqOaI
 CJrCd5I6mXnp/vE1fb5F6+6fOfuBe+D/3CKre2SK9SpCgaJuiI7xKsi9IwuhSlHfbbN8
 BM1mLLZc5L+B1DN1MS03FRd/ryrsSbD1XrPcidFh4G8jXY60O+x6HMAqZJU/KXxp3lal
 6Fa6srnEW/rGPf3+MPcxlZz5Z3R/TjF5U2eUBLk1o7hZACMKtj4gv05iYxvHL2k+yR/E vA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xkr1ebaye-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Jan 2020 17:13:21 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2533110003A;
 Thu, 23 Jan 2020 17:13:18 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0FCD92BC7D5;
 Thu, 23 Jan 2020 17:13:18 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Jan 2020 17:13:17
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 4/5] ARM: dts: stm32: use st,
 stm32mp15-i2c compatible for stm32mp151
Date: Thu, 23 Jan 2020 17:12:49 +0100
Message-ID: <1579795970-22319-5-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG7NODE2.st.com (10.75.127.20) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.572
 definitions=2020-01-23_08:2020-01-23,
 2020-01-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_081328_168097_F3E11EFE 
X-CRM114-Status: GOOD (  12.63  )
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com, alain.volmat@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Replace previous st,stm32f7-i2c compatible with st,stm32mp15-i2c
for the platform stm32mp151.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 02918dd6cf25..2dbf32ca9b36 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -474,7 +474,7 @@
 		};
 
 		i2c1: i2c@40012000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x40012000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>,
@@ -488,7 +488,7 @@
 		};
 
 		i2c2: i2c@40013000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x40013000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 33 IRQ_TYPE_LEVEL_HIGH>,
@@ -502,7 +502,7 @@
 		};
 
 		i2c3: i2c@40014000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x40014000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>,
@@ -516,7 +516,7 @@
 		};
 
 		i2c5: i2c@40015000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x40015000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 107 IRQ_TYPE_LEVEL_HIGH>,
@@ -1468,7 +1468,7 @@
 		};
 
 		i2c4: i2c@5c002000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x5c002000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 95 IRQ_TYPE_LEVEL_HIGH>,
@@ -1504,7 +1504,7 @@
 		};
 
 		i2c6: i2c@5c009000 {
-			compatible = "st,stm32f7-i2c";
+			compatible = "st,stm32mp15-i2c";
 			reg = <0x5c009000 0x400>;
 			interrupt-names = "event", "error";
 			interrupts = <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
