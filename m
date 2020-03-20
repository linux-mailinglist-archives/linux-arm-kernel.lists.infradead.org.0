Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA16918CE56
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 13:59:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=5jap7ApIdx2hL4DOxBNHfPjw3j6OXa/Q4cS5y5DnmJw=; b=sqocwXFMiUr4Mp
	5dKkh35fuR2zeQ3nvBzmhoHUNbaUUOrWM1vxWaJmnD2+lX7Lb6LmgA0L3TXOEOaf/2Ztc4pBtDuEz
	cfgpiJITE74RyUOqkgGwW3su3XYg0KtyNzXJuS0A8Z8WDYcDorGvoSzQ75M6nxfcwqhgqoDi96u9B
	ArUlWi8hb7XNUwn+BqlKBp1HeDLleNtroLBTSZai15BubI0PGsfNIQ+IK3Tf+G3EHg2hNWfsPs48S
	0UHMUkwexkp9rYADy9Wjn/K+h8YKysUXIfdaUSzl45NVbAzC0NQFqjI4qx/MSwwk6TzTJDbxaeIne
	rlWi7SYuVAx1gR/ypQOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFHFE-00005y-Fg; Fri, 20 Mar 2020 12:59:24 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFHF4-0008Ve-UL
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 12:59:17 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 02KCcOWJ003548; Fri, 20 Mar 2020 13:59:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=o41DLb60dwo0XgM7XyP9TCm5BF2bWxbtelGzKn5ttsg=;
 b=qcHeB6XbZYRgiaXbFm1srtc3QoUBsAu1yHFSKI+okPPT0K/lFR34o73UZj/hFnHwiNUu
 h0Dx2PfLYKlb/nAzhE0N5p7UcPXqlnEAKQeROJL1xfvPhqB9NeoP7ZqFi3v7Lszin0+D
 LALKHcG+EqeIUaMaEA8MZ5+Wh8PEGY8oD5Z8lxR8CPUh4g/EVAH6RZYPATpJe8wfCR5w
 2C5WJqIkfZ04qJDBU2Mwm+VkXAYo2sqkm/uVIDd3JICfNdwQ+gDV5Z5w9bLmOqr3BMwo
 3iu+Na2a2wgqDBU9255CyKVKE28k3Ko/oluwY+Rh99qYKXauTH8l7XiyMjY4Vi+SidZl OA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2yu8etqtk4-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 20 Mar 2020 13:59:04 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id C0E3B100034;
 Fri, 20 Mar 2020 13:58:59 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id B48982AE6AF;
 Fri, 20 Mar 2020 13:58:59 +0100 (CET)
Received: from localhost (10.75.127.47) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Fri, 20 Mar 2020 13:58:57
 +0100
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH] ARM: dts: stm32: add cortex-M4 pdds management in Cortex-M4
 node
Date: Fri, 20 Mar 2020 13:58:41 +0100
Message-ID: <20200320125841.11059-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.47]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.645
 definitions=2020-03-20_03:2020-03-20,
 2020-03-20 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_055915_276605_8D6CB9F0 
X-CRM114-Status: GOOD (  12.24  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 linux-kernel@vger.kernel.org, Fabien Dessenne <fabien.dessenne@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add declarations related to the syscon pdds for deep sleep management.

Signed-off-by: Arnaud Pouliquen <arnaud.pouliquen@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 7b93eb4b8f49..46ea1024340e 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1115,6 +1115,11 @@
 			};
 		};
 
+		pwr_mcu: pwr_mcu@50001014 {
+			compatible = "syscon";
+			reg = <0x50001014 0x4>;
+		};
+
 		exti: interrupt-controller@5000d000 {
 			compatible = "st,stm32mp1-exti", "syscon";
 			interrupt-controller;
@@ -1693,6 +1698,7 @@
 			st,syscfg-tz = <&rcc 0x000 0x1>;
 			st,syscfg-rsc-tbl = <&tamp 0x144 0xFFFFFFFF>;
 			st,syscfg-copro-state = <&tamp 0x148 0xFFFFFFFF>;
+			st,syscfg-pdds = <&pwr_mcu 0x0 0x1>;
 			status = "disabled";
 		};
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
