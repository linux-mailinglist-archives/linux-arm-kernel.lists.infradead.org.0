Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E583011504
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:11:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qUrDF2tjpGAiwdGZ33oQiU14fEV55ogXeiE1+WQIQ34=; b=gL/3+/bdTxbtYt
	lfDs3z+IkdjDHDgmezmEDi7+Afgajy0cO20tP5hWhyux2ddKaLJS1KurZBrMN69ovq0cEfbV5m4L9
	e97vDQ70MyjkkzbdBNg4c7HIr2wx/sqDodHgSFrA/6Fdkj8HKvG1NdyNxhp8k10+5i0pqa5uDR/s/
	5vq3HVUtyUUef45gC5oollp2qaqUpjT4o46Ce2EQ1kA5EiV753Die2htbegd85P40z4VXinf68VCR
	6rRrLKziwx/FD9s0hUDi+E1jw9eLIiGjdeHw3OYwIq5kQ4Yf1Cp1oxf/ql6oNxxKcmUuRIT18vET5
	hPPteQILyJYnYdwL8A0A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6o0-0002qm-6E; Thu, 02 May 2019 08:11:00 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6nS-0002RN-E8
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:10:35 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42860sX006127; Thu, 2 May 2019 10:10:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=qsRqvviEBACZshMNCC3W3q/ZdBJX0rfci2XIVx7jSmI=;
 b=gtqhfvIFelmsDDXXiKo+qWnGfPERQFXm5QUB+bxBUrKSZlqNZAJBbJaeivuxIDYFo/hG
 gmMFFBsI4fvBeanBlap4vbwGi/OU5xjvV3WYRf2v0c79YzdShdQgOH6Lr48RWKNcIVKP
 Ja/lE4wan/zEDCkeMglLfZCxd6EZJwbOSJj1NQqO6PJZVlsG87CbEFvJp8sdCBs4RijF
 pLiioChEh1TST6BKJ2BzRUoYcI2CEoopfieKB6Phy6YybWp/joJM3bT8XInc5hNyqmWh
 arPegyuncEohWfkCDILU1pwXpKO273nVIvnM608O/cTF4H/bxUmjabNBzS5x29OVqAS4 Uw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xgcq494-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 10:10:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 046A831;
 Thu,  2 May 2019 08:10:17 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id D060BEDE;
 Thu,  2 May 2019 08:10:17 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.361.1; Thu, 2 May 2019
 10:10:17 +0200
Received: from localhost (10.129.4.86) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.361.1;
 Thu, 2 May 2019 10:10:17 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v3 1/8] dt-bindings: stm32: add bindings for ML-AHB
 interconnect
Date: Thu, 2 May 2019 10:09:59 +0200
Message-ID: <1556784606-3016-2-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
References: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.4.86]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_011026_780952_D1F95CD4 
X-CRM114-Status: GOOD (  14.84  )
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

Document the ML-AHB interconnect for stm32 SoCs.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 .../devicetree/bindings/arm/stm32/mlahb.txt        | 37 ++++++++++++++++++++++
 1 file changed, 37 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/arm/stm32/mlahb.txt

diff --git a/Documentation/devicetree/bindings/arm/stm32/mlahb.txt b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
new file mode 100644
index 0000000..3f5b779
--- /dev/null
+++ b/Documentation/devicetree/bindings/arm/stm32/mlahb.txt
@@ -0,0 +1,37 @@
+ML-AHB interconnect bindings
+
+These bindings describe the STM32 SoCs ML-AHB interconnect bus which connects
+a Cortex-M subsystem with dedicated memories.
+The MCU SRAM and RETRAM memory parts can be accessed through different addresses
+(see "RAM aliases" in [1]) using different buses (see [2]) : balancing the
+Cortex-M firmware accesses among those ports allows to tune the system
+performance.
+
+[1]: https://www.st.com/resource/en/reference_manual/dm00327659.pdf
+[2]: https://wiki.st.com/stm32mpu/wiki/STM32MP15_RAM_mapping
+
+Required properties:
+- compatible: should be "simple-bus"
+- dma-ranges: describes memory addresses translation between the local CPU and
+	   the remote Cortex-M processor. Each memory region, is declared with
+	   3 parameters:
+		 - param 1: device base address (Cortex-M processor address)
+		 - param 2: physical base address (local CPU address)
+		 - param 3: size of the memory region.
+
+The Cortex-M remote processor accessed via the mlahb interconnect is described
+by a child node.
+
+Example:
+mlahb {
+	compatible = "simple-bus";
+	#address-cells = <1>;
+	#size-cells = <1>;
+	dma-ranges = <0x00000000 0x38000000 0x10000>,
+		     <0x10000000 0x10000000 0x60000>,
+		     <0x30000000 0x30000000 0x60000>;
+
+	m4_rproc: m4@38000000 {
+		...
+	};
+};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
