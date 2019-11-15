Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 430BBFDAB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 11:07:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=PWQN0yYu/54KanYDI/uGjMrcGD/CtEwVJvFT0GMfzNU=; b=DCTXDlgVxQ/v4F
	vrUD+hvAn+7AUWs0+cUtckqylWsTN5JFTpaGtVBSurQZoPG2PRoAxVEOv/bsjtRm2ndPFEVSw/BoD
	hjxCK773xj+tDvN0smuFv51bv0/UzHK4ztTusqgYwVWdbYXnCdd80OeOBXlmhoAd4Tyk6sz5kac2j
	oqlfoHIvWJYZgZov507KGrZsLoiFvaj030PZNZ/IDtatTWCiDBvSDqrKKDT7i8zDxrdORNReapgtG
	SsxD0ostF1gX5JIevKtwGLw9zpn0dh0qsl0BouQ8x+3xZqUp0hBZuif0nD7fxJxWrZtjtnVttAgfn
	SIHmWAXMzH5a2bdFBEOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVYVW-0004yx-DR; Fri, 15 Nov 2019 10:07:14 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVYVK-0004yJ-Pf
 for linux-arm-kernel@lists.infradead.org; Fri, 15 Nov 2019 10:07:04 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xAFA35GI000658; Fri, 15 Nov 2019 11:06:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=OxkWESTDCuWJPuN/T1e/uwJDxCVtuMpIBWb6nhwzVuw=;
 b=RlX/2J9v8jnIWum7rEMg4s/TKA34ehxKUiQWb9aa4nIJkAKr0OR1pure9q6QL9K7iaAS
 VRrEo7CO980V6KMPvUOVZsJba96wOT2zRGXLeXlye2vkBzf+NfIa0sxHcuoazmW/GqU7
 R10P9iCBIa7keb7R0OLNmTxFzTJVTYdsO6m1ujmUc5gAhYaIIiMHfFKKq+3WmkhiRS0X
 hGtKqrvn47NiBgCCakALrISQc5PmxSiCA3Co0MGLItOipvAs7Eu0HghUfzFvYd2Q9Wnb
 KVzW8KD7JaZFKVMXqa02oUm5IXQ3O8+vxFA6vc2bmQ2LArDUoRdsg4MQ4/2b7VDuMWE5 IQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w7psbkasr-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 15 Nov 2019 11:06:55 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A3D5910003D;
 Fri, 15 Nov 2019 11:06:54 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node3.st.com [10.75.127.9])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 70FE02B189B;
 Fri, 15 Nov 2019 11:06:54 +0100 (CET)
Received: from localhost (10.75.127.49) by SFHDAG3NODE3.st.com (10.75.127.9)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Fri, 15 Nov 2019 11:06:54
 +0100
From: Benjamin Gaignard <benjamin.gaignard@st.com>
To: <alexandre.torgue@st.com>, <robh+dt@kernel.org>, <mark.rutland@arm.com>,
 <lionel.debieve@st.com>
Subject: [PATCH] ARM: dts: stm32: remove unused rng interrupt
Date: Fri, 15 Nov 2019 11:06:51 +0100
Message-ID: <20191115100651.17754-1-benjamin.gaignard@st.com>
X-Mailer: git-send-email 2.15.0
MIME-Version: 1.0
X-Originating-IP: [10.75.127.49]
X-ClientProxiedBy: SFHDAG5NODE2.st.com (10.75.127.14) To SFHDAG3NODE3.st.com
 (10.75.127.9)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-15_02:2019-11-15,2019-11-15 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191115_020703_136135_C66614DE 
X-CRM114-Status: GOOD (  11.83  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Benjamin Gaignard <benjamin.gaignard@st.com>, devicetree@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Interrupt has never be used in rng driver so remove it from DT.

Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
---
 arch/arm/boot/dts/stm32f429.dtsi | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/stm32f429.dtsi b/arch/arm/boot/dts/stm32f429.dtsi
index 5c8a826b3195..196817da0c1d 100644
--- a/arch/arm/boot/dts/stm32f429.dtsi
+++ b/arch/arm/boot/dts/stm32f429.dtsi
@@ -789,7 +789,6 @@
 		rng: rng@50060800 {
 			compatible = "st,stm32-rng";
 			reg = <0x50060800 0x400>;
-			interrupts = <80>;
 			clocks = <&rcc 0 STM32F4_AHB2_CLOCK(RNG)>;
 
 		};
-- 
2.15.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
