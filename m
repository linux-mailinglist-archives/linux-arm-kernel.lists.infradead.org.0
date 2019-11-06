Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E3773F11D8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 10:12:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=uZ5ut9G+zpZQR2Jf777sxuiYeO4IWbRGKc6Bo2nOcBQ=; b=uHTqtXBo2DiAmc
	gTfoSVbyALwgP/INPIn6M1HE4t0380uNVYUiQfrgxIsgdIXA6Lb4rtX4N4Jpz574yUE5UdXopymPC
	gaME8GInxAUJkuOifrYLL8iX6dCoMUCxkAuLR1yKKEA77R/1Bh0rISrHFbHw9xjkt2l+WU47pIJJC
	Yvw8H3sVQqkLu1MvmNgr64+NedTvM/T8F4DBFbuGAWoLbPAXWXM7KtqH2ykUZO/jmLzl/30F7LKuT
	obIw3HU0Jc5baFyMXWF28OSSsTXOh8ZjOc1OhPHm51k45hO8FmmeWcUNaxXatSRuD1/3VM4lRewHy
	KuEdJFlF1DN2nXEdzIug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSHM5-00079d-KM; Wed, 06 Nov 2019 09:11:57 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSHLv-00077U-N6
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 09:11:50 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA697TEA001166; Wed, 6 Nov 2019 10:11:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=6dLCtaMBamBNYfBTbNBOvLe+o/LoagmMWJ8a+g2XQw4=;
 b=FzlOCB2NYCcVU+LUdHmYruc8DzkiME7mRQdw6zTBwgBS+EvQV9GWETXAtQJNnRsKUQdB
 D5YAoyCis3E8NJ5063mK+myP3PGJFqy88Pd4MxfcnWiffIZ8I/whnKU6x4ymyB9chnpT
 VNJk6M+LA+FEWCjZCtCRZXdy+/PduNaXWaY1OCSB4LuGXzHTG6G/YQXDIhOyeFE/XOzv
 uoKfknBRwoWF/JXXEah/L0gvWMOy2UeSepCvFLvyCSgESYMgBumOJ6ytlAI3lGBPtptb
 SUCuHOT1MGa+c/gI/l8t7DQ48wvdERQgvwG0IQc7fQiYKe5roPEoAuPR6uxuEl7be+c5 AQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w1054vf0m-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 06 Nov 2019 10:11:37 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 251C8100039;
 Wed,  6 Nov 2019 10:11:33 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 0CAFE2AB0E3;
 Wed,  6 Nov 2019 10:11:33 +0100 (CET)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Wed, 6 Nov 2019
 10:11:32 +0100
Received: from localhost (10.48.0.192) by webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.439.0;
 Wed, 6 Nov 2019 10:11:31 +0100
From: Fabrice Gasnier <fabrice.gasnier@st.com>
To: <alexandre.torgue@st.com>
Subject: [PATCH] ARM: dts: stm32: add timers counter support on stm32mp157c
Date: Wed, 6 Nov 2019 10:11:24 +0100
Message-ID: <1573031484-18701-1-git-send-email-fabrice.gasnier@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.48.0.192]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-06_02:2019-11-05,2019-11-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_011148_203294_3C6731AD 
X-CRM114-Status: GOOD (  12.06  )
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, mcoquelin.stm32@gmail.com,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add counter support on stm32mp157c that provides quadrature encoder on
timers 1, 2, 3, 4, 5 and 8.

Signed-off-by: Fabrice Gasnier <fabrice.gasnier@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 30 ++++++++++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index e0f3d4c6..a4ca23c 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -148,6 +148,11 @@
 				reg = <1>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		timers3: timer@40001000 {
@@ -177,6 +182,11 @@
 				reg = <2>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		timers4: timer@40002000 {
@@ -204,6 +214,11 @@
 				reg = <3>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		timers5: timer@40003000 {
@@ -233,6 +248,11 @@
 				reg = <4>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		timers6: timer@40004000 {
@@ -589,6 +609,11 @@
 				reg = <0>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		timers8: timer@44001000 {
@@ -620,6 +645,11 @@
 				reg = <7>;
 				status = "disabled";
 			};
+
+			counter {
+				compatible = "st,stm32-timer-counter";
+				status = "disabled";
+			};
 		};
 
 		usart6: serial@44003000 {
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
