Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B854011505
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:11:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RrEXibBJIiY2wgZaHAA7NP4QAIunhtBaEgzauGUbme4=; b=UIkjxymownva60
	0ue5Vp9S06OQERVMQc1YAMt1rkmX+k4gMbCmT7uwEbg+rPqTZOZsSCYGPfvUaxHnxpe02yIQGHr2R
	5tzY5c0JWB1XQNGZ3hZtP5gF9KBj6a+0eXvY1qXXxLvgrdN68ibKG1UIm3PmGL83kbkE4R4uHKlcf
	iDnRDe1LcTjfBGI8bf6DfXB8GyaCmOtX8FswgrvroQ9RfTIWt3/ozDa2d77DtrGqLJZ7WO2zVGICU
	9WYey0EnhiDhfSNTUSP6j5NI1CfZpDiGYj0qrip2bbqTb+qLluFhrU8MKsH0W6AaKkzfOkFo1TLO2
	AM0PV3qqTGKfq77io/yA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6oA-00033H-59; Thu, 02 May 2019 08:11:10 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6nT-0002Ru-Qn
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:10:38 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42828ov023662; Thu, 2 May 2019 10:10:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=h21dwqOXVMhoA8LO1eNpVhDbxE/SLRFLO7Ap3IdDFeI=;
 b=F0bY/5bEgMKwbETyNiz52ySJG6Msq9Vx2TPPaizePgPtl4tpTPLAFp9sqtu5f9lyyTFD
 nny2PEcAorwP0206961BnQzqBjMkV/ShE+Qn0yCsbOfN5FhtnaMG1sYxW9YBr58Naarh
 iK1HrQ9zDo9eNj2+t4UPAyM1n1mesUF1XQWPiuI4QxuWIHtFdTLzk029cDzvYIRprAcJ
 t8+d0SIHIyKCM5vhEe8stqtrYkKZw51qe4Sm72bPwFVfJ/klJL0USepFC8hq/dFtbpJk
 alHpnpjJ6xQMqbwGBZodX5mac1dU2eQnj9lFsIrDmiIjhMDKr4dPGTUJRSt7FeiOhBZs rA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xhbf3r3-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 10:10:22 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id F3A2E38;
 Thu,  2 May 2019 08:10:21 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id CB9E1EDE;
 Thu,  2 May 2019 08:10:21 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 10:10:21 +0200
Received: from localhost (10.129.4.86) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.361.1;
 Thu, 2 May 2019 10:10:21 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v3 4/8] ARM: dts: stm32: add m4 remoteproc support on
 STM32MP157c
Date: Thu, 2 May 2019 10:10:02 +0200
Message-ID: <1556784606-3016-5-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
References: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.4.86]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_011028_270353_659FF81F 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Ludovic
 Barre <ludovic.barre@st.com>, Arnaud Pouliquen <arnaud.pouliquen@st.com>,
 Loic Pallardy <loic.pallardy@st.com>, Fabien Dessenne <fabien.dessenne@st.com>,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Declare the M4 remote processor in a sub-node of the mlahb simple bus.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 arch/arm/boot/dts/stm32mp157c.dtsi | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c.dtsi b/arch/arm/boot/dts/stm32mp157c.dtsi
index c664b55..e8d3b00 100644
--- a/arch/arm/boot/dts/stm32mp157c.dtsi
+++ b/arch/arm/boot/dts/stm32mp157c.dtsi
@@ -1242,4 +1242,24 @@
 			status = "disabled";
 		};
 	};
+
+	mlahb {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		dma-ranges = <0x00000000 0x38000000 0x10000>,
+			     <0x10000000 0x10000000 0x60000>,
+			     <0x30000000 0x30000000 0x60000>;
+
+		m4_rproc: m4@38000000 {
+			compatible = "st,stm32mp1-m4";
+			reg = <0x00000000 0x10000>,
+			      <0x10000000 0x40000>,
+			      <0x30000000 0x40000>;
+			resets = <&rcc MCU_R>;
+			st,syscfg-holdboot = <&rcc 0x10C 0x1>;
+			st,syscfg-tz = <&rcc 0x000 0x1>;
+			status = "disabled";
+		};
+	};
 };
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
