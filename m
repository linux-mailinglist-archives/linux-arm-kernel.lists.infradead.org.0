Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 150371C4F2F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 09:34:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sbVDwj5AtkRSp4HKom3Tdl/iqoZCXNaxmboSanOhO78=; b=FT+Q/ejdpkOiLI
	uTin5btmo9SAIrIrHJ4V6pucfxtWqE00xYNiYnQTbwmznejkUCcllAGpyIZKUxUwNYWe2HzuXl5jO
	E259aM+UpIm5Ada1UZkbNWAaCz6rHqw92KnYtEWbGN0uepTCjBIUU5Baz3EpUTZanlplJWqVYuP1c
	+LYtnqIWBpOKaJnkSNg4wjLdVoj4iZh0mUKLob2z1EZ7GHWYs5GJr7D6n5gSPaNnu4ZSvxNixAEFB
	QNQezKYuJA7Xm4bP2tzjukn7ZELQ4SHzT8ryjR1b3CjVv5aeekEykxsb4FJe7gS15oVYktk5bFYSj
	7LTyH6LqXieEphpXaeZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVs5p-0004DV-Hx; Tue, 05 May 2020 07:34:17 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVs5A-0003gG-Rb
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 07:33:38 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 0457XE8i019011; Tue, 5 May 2020 09:33:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=iGCDghN3T5Y00zNouGbtPQSvGhwl/OIHxAZ2MQmEADQ=;
 b=EmajLjxqcwUHcoKFOnS/MbPJFNI09jkypCeIsZf9g1TVhc5Zb+ixhiVdNqoy96bu/ktQ
 KAkOLbJAlMdGRbwVrlDws8jkZ8ZA72Edw6KZWfpF82PcD69caXHNDQNkBLJzU1sDLhn4
 GSqG35pnXN5cLuuePB9yMDOjv2rMEZURG7cpXAGtoxYwdc8WP+Je1ipKG7xDYqFVHq/T
 ynRYajyApOLE5vL1hvIAEFz1xvP+c5UCDBHSJMIiLkjpYH00v23AQIQZtL3dNRVPlrck
 FTA8/mMTMjZA9ES3Qq/Ig9h4ZrJozqcZk2dggRXb6og0RyLwHOdzYo2Fu9JlV7rQSis4 6Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30rxmveesn-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 05 May 2020 09:33:31 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id B2785100034;
 Tue,  5 May 2020 09:33:30 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id A62F62A4927;
 Tue,  5 May 2020 09:33:30 +0200 (CEST)
Received: from localhost (10.75.127.51) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 5 May 2020 09:33:29
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH v3 5/5] ARM: dts: stm32: Use ETZPC firewall bus
Date: Tue, 5 May 2020 09:33:08 +0200
Message-ID: <20200505073308.22914-6-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200505073308.22914-1-benjamin.gaignard@st.com>
References: <20200505073308.22914-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-05-05_04:2020-05-04,
 2020-05-05 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_003337_211014_EB2D9B1E 
X-CRM114-Status: GOOD (  13.95  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Allow STM32 ETZPC to check firewall configuration before populating
the platform bus.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3ea05ba48215..0290eb6f3c35 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -4,6 +4,7 @@
  * Author: Ludovic Barre <ludovic.barre@st.com> for STMicroelectronics.
  */
 #include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/bus/stm32/stm32-etzpc.h>
 #include <dt-bindings/clock/stm32mp1-clks.h>
 #include <dt-bindings/reset/stm32mp1-resets.h>
 
@@ -110,8 +111,10 @@
 		status = "disabled";
 	};
 
-	soc {
-		compatible = "simple-bus";
+	etzpc_bus: soc@5c007000 {
+		compatible = "st,stm32-etzpc-bus", "simple-bus";
+		reg = <0x5c007000 0x400>;
+		#firewall-cells = <2>;
 		#address-cells = <1>;
 		#size-cells = <1>;
 		interrupt-parent = <&intc>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
