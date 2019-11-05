Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 269F8EFDC2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 Nov 2019 13:54:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ea5fqTfPpiE+TTPmJnYqrO48Yx+P2nqyf6nhGeyoNqc=; b=eRlNAQhJ4l5UQG
	4rSAZSyTDO/xUlIaiAHYt3g9+Vzs9LBcg53KWjoCKyNAI/Hu9EXSAwihDYVjxZORL88kmKgIobaXU
	EUF40ldpNHUoJaNSUL07ucPDPWRkR+ZWgg1H7nLhsUXM8j+UwOZ+IIQDc/hXDYqB0flNPrlp//EvU
	2QRDrIRiH6x/IGJJtnG70Gcyr2X/BkBMf99Gv/Ez2+Vw41ktccHcYqoWE5eqaQnQhNL1NDdlpNQxG
	kT6skpcjMWT8s1aESqhH7scBMzI3lJYgnc9N5VIPfYvz8DMAVPKOKBR5oZLadU3HR1cSl8549ysd1
	o6lWgVT2fOsoI2cvFkHQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRyLQ-0008Cf-4i; Tue, 05 Nov 2019 12:54:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRyKB-0006uG-Kj
 for linux-arm-kernel@lists.infradead.org; Tue, 05 Nov 2019 12:52:45 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA5Cq28r024530; Tue, 5 Nov 2019 13:52:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=jJI/DkkYdOFDwfHxMZJXjpmLkJFu22QOe9fKOFedHns=;
 b=x+V94dO16nBLaZVKESj9twoAzIqkX2dmbi0tkxahtdqGDOAsdgW8/fD7TVzDuINq7WwO
 kFC1IWJ5IjwXjx9BIlXxRLn8TpEo9TDJsi5nWc2YndNZ5QPYjUrOktRP/SEiCCEVzOl3
 VYiu5L7B9iw98OxmsMxXEIUnkE5X0AL4MrLDqIXBAbIyRHQbicEi415GmoMZIiBLq2wP
 pHgjGcCrAMihURKUeUsVAISGD6XcQY1tPesd1C4Cle9xujkJpSD39KT0juQJjpFRu1vh
 35028gplQEUuIjm0O4g+w65gK47GGf8lOjMQ49Cp7LajTArwQIoi5Kz0y88KhJATcSXU WQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2w0ytcr0bq-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 Nov 2019 13:52:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0AF30100034;
 Tue,  5 Nov 2019 13:52:37 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id F38932BC5E5;
 Tue,  5 Nov 2019 13:52:36 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 5 Nov 2019
 13:52:36 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Tue, 5 Nov 2019 13:52:36 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH 3/4] ARM: dts: stm32: add pwm sleep pins to stm32mp157c-ev1
Date: Tue, 5 Nov 2019 13:52:20 +0100
Message-ID: <1572958341-12404-4-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
References: <1572958341-12404-1-git-send-email-fabrice.gasnier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-11-05_04:2019-11-05,2019-11-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191105_045243_980817_AD6A488C 
X-CRM114-Status: GOOD (  14.35  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add pinctrl sleep state for PWM on stm32mp157c-ev1 board.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157c-ev1.dts | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c-ev1.dts b/arch/arm/boot/dts/stm32mp157c-ev1.dts
index 2baae5f..7ab5dbd 100644
--- a/arch/arm/boot/dts/stm32mp157c-ev1.dts
+++ b/arch/arm/boot/dts/stm32mp157c-ev1.dts
@@ -305,7 +305,8 @@
 	status = "disabled";
 	pwm {
 		pinctrl-0 = <&pwm2_pins_a>;
-		pinctrl-names = "default";
+		pinctrl-1 = <&pwm2_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
 		status = "okay";
 	};
 	timer@1 {
@@ -319,7 +320,8 @@
 	status = "disabled";
 	pwm {
 		pinctrl-0 = <&pwm8_pins_a>;
-		pinctrl-names = "default";
+		pinctrl-1 = <&pwm8_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
 		status = "okay";
 	};
 	timer@7 {
@@ -333,7 +335,8 @@
 	status = "disabled";
 	pwm {
 		pinctrl-0 = <&pwm12_pins_a>;
-		pinctrl-names = "default";
+		pinctrl-1 = <&pwm12_sleep_pins_a>;
+		pinctrl-names = "default", "sleep";
 		status = "okay";
 	};
 	timer@11 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
