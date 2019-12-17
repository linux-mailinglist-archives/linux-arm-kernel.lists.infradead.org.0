Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A733122789
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 10:24:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JHpfgkKamEyMEaAq+ujBmjcg4o2Mu8R0MNiJ+2jJHY8=; b=UxH3RmFgai2q1n
	zPMef3Szfpv1uKRfYePNMEnnzndjrKy78ZPWmgeepz8ZGuft14rxTtm/dAOiPjKSf+pa75mxWSqGf
	riPJiBGr13/jsAf8Vd8U5FZa6g1YNoWngFYJvFmoibmSqZzibu1E222+4pvGfcaWcqBki5ESy8oSP
	XeiR4uieLAG6j/McDGQFKlNhEmezvV1gLGZl9auUB/Bgsx+dkX7BcJVwMlG0QwSS1Gw2p19VLhdOG
	VmLRBytCUFYpO2QoMXQkX/Jf8EyvqCO/JsrQzN+OUowf4hHGj/Y2SYXqeYKQWyXCKb1xn9dQCGJGN
	j21vz5vdPImpaLb3TXkQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih95U-0001b1-Pp; Tue, 17 Dec 2019 09:24:16 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih94I-0000Ym-BY
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 09:23:04 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBH9I2xu021244; Tue, 17 Dec 2019 10:22:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=li5jTmOrL8ac5KRD157xhCy6Bk2QBacNcgnf1zwb4C0=;
 b=00CE2ysvBnlhcCa4k5rQyxQJMwt53Lk9i5wb0h8lRtHl1TduUomGXTZw5GFcSVC5UCHA
 jx8DcGsso7Vp0JT9K7Cz7hYHiqFlom+VobOGuxBoQSWElEymqtNYTdTVWJlW3oIySFt0
 8c+8rDNjJ7/Oo/Cx27ksWKpuZVMSbmP54m08Dg5FdMnjWAzgiF/w5kvRoq5mGspkvCOg
 6Jmg60QlS7TUV+CPTAZK9HC/nSTHRPeahn6hgMOAILYmy2v20D1koRWkvE0/BouqinA8
 r4l3vNIKufxDOKStwIHzuGXPTj8ELdGQ+xrAM1vaHPazxuBKye7naMUZtCGkJFEuYMH7 kg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp36x09y-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 17 Dec 2019 10:22:57 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 233AD100034;
 Tue, 17 Dec 2019 10:22:57 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 16CB72A64E4;
 Tue, 17 Dec 2019 10:22:57 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Tue, 17 Dec 2019 10:22:56
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <vkoul@kernel.org>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>
Subject: [PATCH 6/6] ARM: dts: stm32: fix dma controller node name on
 stm32mp157c
Date: Tue, 17 Dec 2019 10:22:01 +0100
Message-ID: <20191217092201.20022-7-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191217092201.20022-1-benjamin.gaignard@st.com>
References: <20191217092201.20022-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG3NODE2.st.com (10.75.127.8) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-17_01:2019-12-16,2019-12-16 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_012302_718106_27E75300 
X-CRM114-Status: GOOD (  13.33  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Modify dma controller nodes name to fit with the standard naming.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index 9b11654a0a39..8fac522b1bc9 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -949,7 +949,7 @@
 			status = "disabled";
 		};
 
-		dma1: dma@48000000 {
+		dma1: dma-controller@48000000 {
 			compatible = "st,stm32-dma";
 			reg = <0x48000000 0x400>;
 			interrupts = <GIC_SPI 11 IRQ_TYPE_LEVEL_HIGH>,
@@ -966,7 +966,7 @@
 			dma-requests = <8>;
 		};
 
-		dma2: dma@48001000 {
+		dma2: dma-controller@48001000 {
 			compatible = "st,stm32-dma";
 			reg = <0x48001000 0x400>;
 			interrupts = <GIC_SPI 56 IRQ_TYPE_LEVEL_HIGH>,
@@ -1248,7 +1248,7 @@
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
