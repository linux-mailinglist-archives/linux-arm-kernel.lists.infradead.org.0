Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BEFC124A24
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 15:49:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aHei6uZDcvGlbNqIDPvm9zAPjfagAmYPhxHvDM+d4AQ=; b=kLIHtFxGeHhPsE
	HdPr2N3wvnLpQ0YprfQdE9b+VhzLLd5FLGxFSiAJHRHhUagK+1qlW0+7x08gDt+r5KWqCHMpt6RJe
	T5J6eyv8GFsLva+kqGdcPBfJutc2XM1XEJbVa9hJELitAUpgXhG7dIR1VdfMEE8D6+K/ATMcBVN1l
	26ovtPgwS/6ZazgZf+4cnFbVj8hjjN/sl8Wx1+MJtz+RNXRD7lQL8ZmEYF6UXGQtSs4CHgRg+Kbbz
	37HqKFG+K/b9BxpP7lJMc/nWdNZKLamYvC1WOiJxm5qVeeoRtxi4z3MyYhFak4KJAkZ56TZ4ZhCrz
	Ev+ySUx83bU0EvsY3DeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihadR-0006VG-Je; Wed, 18 Dec 2019 14:49:09 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihadE-0006UA-D4
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 14:48:58 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xBIEmHeF006122; Wed, 18 Dec 2019 15:48:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=lsqv5dK6nW9u1qgptNcBYClyryMRb7cAgkte/t+l4zw=;
 b=lyv5PTbFFHTw2F6wBjcgfnhImKbBYAZCf7e0Qos/UEKDHlCC0IeBvGpo9dGuSOwdXadM
 VRp084QPykfWDmJPtJFBkO2IBcCxPiNlZGbDHqwNrD+fuC2VmiZoFqF+rft2xVMDww9K
 POr5kvHNCCEmPz2TwBPYSEAatXz0EA//NTrmrKma7zbqIIucHSoaTebomTihrtyzxPK1
 BxIxZiAZd7Kp5jxyIKxPfzkD3yWDpGTzfwGw3bgaM1b0xik7Zosph0tO7fbO76IuptL0
 NqBh+DPYha3zdpfSb53++mkWu0V8RtNw44qKVS8Xlrnw8s7et+rbz7otWgCILUIBJ3Mj ow== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2wvp374y8r-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Wed, 18 Dec 2019 15:48:51 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0A9A1100034;
 Wed, 18 Dec 2019 15:48:47 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id EF0A3207547;
 Wed, 18 Dec 2019 15:48:46 +0100 (CET)
Received: from localhost (10.75.127.50) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Wed, 18 Dec 2019 15:48:46
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <mcoquelin.stm32@gmail.com>, <alexandre.torgue@st.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>
Subject: [PATCH v2 1/3] ARM: dts: stm32: fix dma controller node name on
 stm32f746
Date: Wed, 18 Dec 2019 15:48:42 +0100
Message-ID: <20191218144844.7481-2-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
In-Reply-To: <20191218144844.7481-1-benjamin.gaignard@st.com>
References: <20191218144844.7481-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.50]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-18_04:2019-12-17,2019-12-18 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191218_064856_826685_ADF8EE77 
X-CRM114-Status: GOOD (  13.35  )
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
 arch/arm/boot/dts/stm32f746.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32f746.dtsi b/arch/arm/boot/dts/stm32f746.dtsi
index 3a8e2dc1978c..93c063796780 100644
--- a/arch/arm/boot/dts/stm32f746.dtsi
+++ b/arch/arm/boot/dts/stm32f746.dtsi
@@ -586,7 +586,7 @@
 			assigned-clock-rates = <1000000>;
 		};
 
-		dma1: dma@40026000 {
+		dma1: dma-controller@40026000 {
 			compatible = "st,stm32-dma";
 			reg = <0x40026000 0x400>;
 			interrupts = <11>,
@@ -602,7 +602,7 @@
 			status = "disabled";
 		};
 
-		dma2: dma@40026400 {
+		dma2: dma-controller@40026400 {
 			compatible = "st,stm32-dma";
 			reg = <0x40026400 0x400>;
 			interrupts = <56>,
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
