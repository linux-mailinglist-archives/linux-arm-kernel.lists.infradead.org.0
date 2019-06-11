Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 683323CA4D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 13:46:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8DjDADEZQnu5dhI7nfTMyJeVs7Vrw1CtG/RBDoqYiwE=; b=M8vzalS7GdCRkq
	GBGyMBhyOxx4kOhSbWvFKErrDUzZklmx08qsxDdtfkVZqWlVYJGQV6BfRok79Dv2oglHIuq/rZBVH
	LYPkJFPSr6oHaQYzbJ1HSKHcHaZSo8DGsX2yQQ42jNfEYItGIUAeN0btqBdiuMaRbgIz25+R+FH6u
	emU2m2ZORrwVjKESM7/9FGO3seP2KDjQrhp8D4Tcp3OYE5ZpXF2E0QmWXTkFXQ6tzq2XkWQNZkkz4
	JSMwIILyE25/PhVXVRuxffhtIn01mSHxivqH7hwfz69EISXf5vdz84lEo0qdFM9z58q0Dxuxk2pu8
	bJ9fFYOEVFdzfkwf+kMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hafEN-0000og-CH; Tue, 11 Jun 2019 11:46:23 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hafE7-0000o2-EH
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 11:46:08 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5BBf8g4027845; Tue, 11 Jun 2019 13:45:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : subject :
 date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=UHkKYvr07JUPpR6+O+OHG40CIbSuZZB5RoqilIve/M8=;
 b=fklX/5a88/vDeXzr6ZnFcOeRM38ODI41A3SchpcjzGGWGWjrx9SZwOOaPv7ZUnLH6sd3
 /AyO6eVM1Rvwq/hR4v2rSNs+9Ceo+jbDttaobt6PKt+hO2Om1iXhJgt6jYLughQu5WjS
 udiKEopvmQIIulcLGPotoQtVUD22VWjhCmw27ULfl2w9NNW54GlZVjAvH67h4pXKZ7Gr
 pQSm/dkuNvBsLW4RoqHjibBSoI01SyRFtPrUbNkuI35W80jmydXqfT2VDeuRNwJqsvIr
 hBpV1U5NJJmwx2xrpUFPxGrIQeXbqRgv0sgfIs9jgF8JZoilS5dwPvjz5iFfdUMpJdsG 0A== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2t26rjspev-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 11 Jun 2019 13:45:59 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id A2CC434;
 Tue, 11 Jun 2019 11:45:58 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7F0782953;
 Tue, 11 Jun 2019 11:45:58 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun
 2019 13:45:58 +0200
Received: from localhost (10.201.23.16) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 11 Jun 2019 13:45:58
 +0200
From: Olivier Moysan <olivier.moysan@st.com>
To: <linux-stm32@st-md-mailman.stormreply.com>, <alexandre.torgue@st.com>,
 <robh@kernel.org>, <mark.rutland@arm.com>,
 <devicetree@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>, <olivier.moysan@st.com>
Subject: [PATCH] ARM: dts: stm32: add sai id registers to stm32mp157c
Date: Tue, 11 Jun 2019 13:45:56 +0200
Message-ID: <1560253556-18399-1-git-send-email-olivier.moysan@st.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-Originating-IP: [10.201.23.16]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-11_05:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_044607_811393_23B33833 
X-CRM114-Status: GOOD (  12.16  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add identification registers to address range
of SAI DT parent node, for stm32mp157c.

Change-Id: I696363794fab59ba8d7869b3ffbc041dacdf28de
Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index e98aad37ff9e..0c4e6ebc3529 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -746,7 +746,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x4400a000 0x400>;
-			reg = <0x4400a000 0x4>;
+			reg = <0x4400a000 0x4>, <0x4400a3f0 0x10>;
 			interrupts = <GIC_SPI 87 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rcc SAI1_R>;
 			status = "disabled";
@@ -778,7 +778,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x4400b000 0x400>;
-			reg = <0x4400b000 0x4>;
+			reg = <0x4400b000 0x4>, <0x4400b3f0 0x10>;
 			interrupts = <GIC_SPI 91 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rcc SAI2_R>;
 			status = "disabled";
@@ -809,7 +809,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x4400c000 0x400>;
-			reg = <0x4400c000 0x4>;
+			reg = <0x4400c000 0x4>, <0x4400c3f0 0x10>;
 			interrupts = <GIC_SPI 114 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rcc SAI3_R>;
 			status = "disabled";
@@ -1164,7 +1164,7 @@
 			#address-cells = <1>;
 			#size-cells = <1>;
 			ranges = <0 0x50027000 0x400>;
-			reg = <0x50027000 0x4>;
+			reg = <0x50027000 0x4>, <0x500273f0 0x10>;
 			interrupts = <GIC_SPI 146 IRQ_TYPE_LEVEL_HIGH>;
 			resets = <&rcc SAI4_R>;
 			status = "disabled";
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
