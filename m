Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4749C1B5C5F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 15:20:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Kx09YWZqOx5kq6L4NvA1YhkXGjOgi+8NoVC1kbC0ex4=; b=GDleW0c2deW1DG
	QzIKMyeuR36G2p5yoiX+HtuhUcAizFiSn8/KTVezMHDkaMuTQRLAnQlaVAIpJ06WfN3a2v9oUwj1K
	KfVGsLtyXiIiX8ksRUXnb7/Vl9MkWY3CZvs0IpeqsAxKmT8rRt3Y1oOdUmNWlBu4F/Fcs2PhkXBOv
	8W8U8xBsUNFAxrqQNcgaKbfJDBAJXUpQdp8bw9pidGHQnGKmxwVZwZ0Z8npZtrMmNVcLQI9CNZMnS
	Ug6TTvDNub7K89ChG2c7eJs/1qOhBLg5URtjNFK8WGL0Z6CHQ37Fwk3tVoT9b3r1Avusqju6BKG85
	fEDsdgd8eCoeje5gOdwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRbmY-0001jn-Qw; Thu, 23 Apr 2020 13:20:46 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRblO-0000XQ-33
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 13:19:35 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 03NDDJS7010131; Thu, 23 Apr 2020 15:19:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=0iFYsQyTUgOk84NaKLSbcNPEPJCYxqyXlBWbTghS5Vs=;
 b=ARJ/Ze+lhSBdkjhrtjMbG9AwPUER0k+I0n044Kbq7nlCH5CH5uEjxAfVLQ+nUK6C0Zi3
 EnuXkKmX7Yg6XAGbw8ckt6Ph/UBhWW8C8/pmE+S/rF+Hk6PeH2M9Kwx5UmGM8WDS6Ecf
 yph6SqD61MwPZ0WXpTvbqKAD92UYZMAKUkfanhP54xZWz6au2jV7hAGSy4j2zGD00Vc+
 aMgf8yXdmsyh4uetu6PCAtGm1A2Bc6epn1m1qv72ft1YPh0N8bTQPkXYe5Fka3H/d+l4
 In2Slfhq7Cn6mB0Kv7sXOoq8ZWThxDY+d31vHXN8g/5p7UNCfxkD97Uf2FfTQ5s9LiTp vw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 30fqawmx8b-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 23 Apr 2020 15:19:23 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A316510002A;
 Thu, 23 Apr 2020 15:19:22 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 9844C20758D;
 Thu, 23 Apr 2020 15:19:22 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Thu, 23 Apr 2020 15:19:21
 +0200
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <robh+dt@kernel.org>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <gregkh@linuxfoundation.org>,
 <loic.pallardy@st.com>, <linus.walleij@linaro.org>
Subject: [PATCH v2 5/5] ARM: dts: stm32: Use ETZPC firewall bus
Date: Thu, 23 Apr 2020 15:19:13 +0200
Message-ID: <20200423131913.30786-6-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20200423131913.30786-1-benjamin.gaignard@st.com>
References: <20200423131913.30786-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG1NODE3.st.com (10.75.127.3) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-23_10:2020-04-23,
 2020-04-23 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_061934_458064_FB767539 
X-CRM114-Status: GOOD (  14.55  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
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
version 2:
- fix unit name in soc node

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
