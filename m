Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D94CB19AE74
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 17:04:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ObFgZRvcgulNKMdwA5GukS6hyp56TrQRfoGhgAeyg0M=; b=G0hdIHQBlRCbL5
	c3HDcPGRWGqgsQg0xsEWBmWatUE4+zX8GaFqcg1wzVcFd109kzGrH622OAtnHofn1WRATjp8iWWid
	6RpZdc0vVYU5YzYp2lBr1SNMtlCLUWVdU7pK9Sc20PhSBkWRHzmc/pLGFIS4AXhr4+5jxb0BrAgNG
	r/d7YjxLJJnmFYaRz8FZGxKLJsROdztuBzFGkK/8sE+lwD7tLaC5PVAQbiDiVgZKJUQLnqaBGnEQ2
	+JGQ7ZjuKR7KaUyshGjDdMA3cshEc3UxNuOKU5S9I0SipdKywvboFOp7ucH4t624YM9nbl8P6UV0K
	8BXU8xRGrNlQawCDVJqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJeuY-0008AJ-Gh; Wed, 01 Apr 2020 15:04:10 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJeuP-00089l-Gr
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 15:04:03 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 031EqsJa011860; Wed, 1 Apr 2020 17:03:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=ia/w/Dr7BasELP+Rh61NrAVeUw12Ky4ZCp/8xxycRqk=;
 b=JoZlrTrSP5foMhcxBSj+XDsO/Way7ED7GXPtjVK7Np3kufuxQAgb7/DZ3BWZZePZK3HI
 SMYe6oFoZViQhNFXcDLqrZ0be6N3HOXdDbqTP8I6jLbtwN9smYR8xaNB/yGZmsO0XoM6
 yEVQJ7ErGYLBBgQus4qHBPJgqJWM7jr499hYCAVL2hFI1Yz6GNZD8Eq60Lm+d6n3Docw
 i0E5o5/qDrNPikpBP218jGQ91iiT7hwpvf3OIpkzNguksFrlVfHOZw3kZqEtILwxn0hp
 fXCu09/lOTJSGLb4cuuu6As03Ff9FYgEaRZVuCDrXG584Yt7vuG7KRi8XyFvYVzAWkBX vQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 302y5402um-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 01 Apr 2020 17:03:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id AE7E9100034;
 Wed,  1 Apr 2020 17:03:49 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 7486A2B3A4B;
 Wed,  1 Apr 2020 17:03:49 +0200 (CEST)
Received: from localhost (10.75.127.46) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 1 Apr 2020 17:03:49
 +0200
From: Arnaud Pouliquen <arnaud.pouliquen@st.com>
To: Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Alexandre Torgue <alexandre.torgue@st.com>
Subject: [PATCH v2] ARM: dts: stm32: add cortex-M4 pdds management in
 Cortex-M4 node
Date: Wed, 1 Apr 2020 17:03:39 +0200
Message-ID: <20200401150339.7933-1-arnaud.pouliquen@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG1NODE1.st.com (10.75.127.1) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.138, 18.0.676
 definitions=2020-04-01_01:2020-03-31,
 2020-03-31 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_080401_857958_EE3C9A5F 
X-CRM114-Status: GOOD (  12.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
v2: patch rebasing

 arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 5260818543e5..a40772eac487 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -1124,6 +1124,11 @@
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
@@ -1700,6 +1705,7 @@
 			resets = <&rcc MCU_R>;
 			st,syscfg-holdboot = <&rcc 0x10C 0x1>;
 			st,syscfg-tz = <&rcc 0x000 0x1>;
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
