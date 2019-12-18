Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2228124A2A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:49:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vatqQ9CH49tdOn6Cf/c7dUa6n+gknxFOyCencB21ffI=; b=pxoLUs8LgMZMBi
	QhS3HpEITL6a8frfPO26rU50SML1EnzDUlkaUqm3sx/dUQGJoxozz3HuFNuViCFOZ0D4wvJBna1Uf
	/uPzIGdEshVDszAz1kumpMJYM1dEQtq+iuEz+3zF/W4ISQn/DgrWOgI3joJHXgAs0od99zaeOZSDa
	RhJCyJ9Q9JhgHoG6eqCCeDPmBH/nUrvyybQqnsVL+KWsSbgb2LvvmQeIEiQPDWmdUMLfn+TzZPlKf
	toSQBH/IOOCcS8NYe0aMhB5DE+V0eMHGz2z6i2g2fvVI/K+s1C86nyVMRBEof/EOM4jimU/EUL8Vk
	6d0JJwiC22o5UgmaC2GA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihadx-0006x8-E0; Wed, 18 Dec 2019 14:49:41 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihadF-0006UD-1P
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:48:59 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIEmKDJ016029; Wed, 18 Dec 2019 15:48:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=sYclvs3hTaLkH1aPSdNgdAO6bhgIGop8dGr694cnD4I=;
 b=pTC9JZ6Cyw+S37W3ygLPbq+RoMpDWmjqDCHeHelBPnPd3aTIMFoiGyZk6Z6+yjJiKF35
 F+aa5sUao/YmRhzWaCeeWqgAWKVQr/3BrguNkBx3vYzXjEwNaL8xslxTXPCCBVBlZzn5
 QIkTQvmXMKSXFNp10Gge/jZ1PWksN50dAWqQqaqVLDHxOzclr7iFi3Kc6Weg8McLe1mn
 aLMGNz0KJf3J/7SyHBoBgM5xb0767/JuJuoM9xLcT1pBK6ITs6wMCd87OHdvpwzqKWQv
 O0BUN5fvYJg7U2XW+aJyYFF6lGGAX8VDxlMFsj2cOvmxPogA6y6unkozrUWf2Cwj2QX8 dw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvpd1mv2a-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 15:48:52 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3EF70100039;
 Wed, 18 Dec 2019 15:48:48 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 33E11207547;
 Wed, 18 Dec 2019 15:48:48 +0100 (CET)
Received: from localhost (10.75.127.48) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 18 Dec 2019 15:48:47
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2 3/3] ARM: dts: stm32: fix dma controller node name on
 stm32mp157c
Date: Wed, 18 Dec 2019 15:48:44 +0100
Message-ID: <20191218144844.7481-4-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191218144844.7481-1-benjamin.gaignard@st.com>
References: <20191218144844.7481-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.48]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_04:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064857_371460_34A1A1FA 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

Modify dma controller nodes name to fit with the standard naming.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
version 2:
- rebased on top of stm32-next after DT diversity patches
  
 arch/arm/boot/dts/stm32mp151.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index b0f3fa564967..3dd570b10181 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -947,7 +947,7 @@
 			};
 		};
 
-		dma1: dma@48000000 {
+		dma1: dma-controller@48000000 {
 			compatible = "st,stm32-dma";
 			reg = <0x48000000 0x400>;
 			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
@@ -964,7 +964,7 @@
 			dma-requests = <8>;
 		};
 
-		dma2: dma@48001000 {
+		dma2: dma-controller@48001000 {
 			compatible = "st,stm32-dma";
 			reg = <0x48001000 0x400>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
@@ -1275,7 +1275,7 @@
 			status = "disabled";
 		};
 
-		mdma1: dma@58000000 {
+		mdma1: dma-controller@58000000 {
 			compatible = "st,stm32h7-mdma";
 			reg = <0x58000000 0x1000>;
 			interrupts = <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>;
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
