Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600FD114FE
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 May 2019 10:10:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LusmM8bInYqoznTaWibMbARVnoq4HEa7WGrSJ6D1iv8=; b=IiuhjB4BuqHi4Q
	4JL3d04tCaxFNWpGqbpZRCpctBCO4yBeFbzKoIA2mYtFWlPtXYmmt6GIzC+6zRWHWVtx1JB3aDneC
	HxenpPzR5Cfo8P1HHppaPZr+uKNwb9UIXmxZJzvxuYQgsRzA//cQbDhFir3JDb+zIyGU9o0dNzNX0
	9riZniGAb8OWpRktv3hTcHNJyclNLERYPIh8E5Zv76kgwIA0Zrv1JEjGkKYiLpqi7BNuGyfWhuX5v
	M2xHZL9mKbv+n4bKPWm11znh2NWMkMu/etZFmVAXr1+ulh2/xmiyEfZWsL+kwE6lLpAG5cGrZSXNz
	PQGGbhuu+PR0es2iL6UQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hM6nh-0002VK-1n; Thu, 02 May 2019 08:10:41 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hM6nR-0002RQ-DR
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 08:10:33 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x42828JO023659; Thu, 2 May 2019 10:10:20 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=znP6MuezR8h50yNvDKE3YfX4j0A9PVjb37XPJEMCwbU=;
 b=OJHuatp2xrdeg8+qugcJrJ67kI+rH6UoWzukJgyz7kVOnFXLq2v/AYNHU1H6YFAeV6pR
 Q1j0QRnAuhFy5hLFZnKdJuhT+ue6DfmoBOS00aSARGCb47HJBiD4HUJ/0/v91wpqkKuw
 bVPGB1r/ZE9ZTwb4HXmV7U/DknaquIjx33ckC6yWzyKr9/O8ZZIqy0/AGayqhXDY+u2P
 MUHY///UWAM+8kI7cRnsAPD5Gw0gtDOul6U/pQICssUSBFKDYsA3wQzfhjxn1ZODIgP+
 2LN7CZZMZGGuoAJh1W2HX7wGw4AH95WZl13UoANBD24JlKxnqB2ZrNi31bhHcbUo8iny zw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2s6xhbf3q9-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Thu, 02 May 2019 10:10:20 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2152B3F;
 Thu,  2 May 2019 08:10:19 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id E2EB3FD8;
 Thu,  2 May 2019 08:10:18 +0000 (GMT)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 2 May 2019
 10:10:18 +0200
Received: from localhost (10.129.4.86) by Webmail-ga.st.com (10.75.90.48) with
 Microsoft SMTP Server (TLS) id 14.3.361.1;
 Thu, 2 May 2019 10:10:18 +0200
From: Fabien Dessenne <fabien.dessenne@st.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, <devicetree@vger.kernel.org>,
 <linux-stm32@st-md-mailman.stormreply.com>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <linux-remoteproc@vger.kernel.org>
Subject: [PATCH v3 2/8] dt-bindings: remoteproc: add bindings for stm32 remote
 processor driver
Date: Thu, 2 May 2019 10:10:00 +0200
Message-ID: <1556784606-3016-3-git-send-email-fabien.dessenne@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
References: <1556784606-3016-1-git-send-email-fabien.dessenne@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.129.4.86]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-05-02_03:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_011025_947961_03FFB11F 
X-CRM114-Status: GOOD (  19.08  )
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

Add the device tree bindings document for the stm32 remoteproc devices.

Signed-off-by: Fabien Dessenne <fabien.dessenne@st.com>
---
 .../devicetree/bindings/remoteproc/stm32-rproc.txt | 63 ++++++++++++++++++++++
 1 file changed, 63 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt

diff --git a/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
new file mode 100644
index 0000000..a495757
--- /dev/null
+++ b/Documentation/devicetree/bindings/remoteproc/stm32-rproc.txt
@@ -0,0 +1,63 @@
+STMicroelectronics STM32 Remoteproc
+-----------------------------------
+This document defines the binding for the remoteproc component that loads and
+boots firmwares on the ST32MP family chipset.
+
+Required properties:
+- compatible:	Must be "st,stm32mp1-m4"
+- reg:		Address ranges of the RETRAM and MCU SRAM memories used by the
+		remote processor.
+- resets:	Reference to a reset controller asserting the remote processor.
+- st,syscfg-holdboot: Reference to the system configuration which holds the
+		remote processor reset hold boot
+	1st cell: phandle of syscon block
+	2nd cell: register offset containing the hold boot setting
+	3rd cell: register bitmask for the hold boot field
+- st,syscfg-tz: Reference to the system configuration which holds the RCC trust
+		zone mode
+	1st cell: phandle to syscon block
+	2nd cell: register offset containing the RCC trust zone mode setting
+	3rd cell: register bitmask for the RCC trust zone mode bit
+
+Optional properties:
+- interrupts:	Should contain the watchdog interrupt
+- mboxes:	This property is required only if the rpmsg/virtio functionality
+		is used. List of phandle and mailbox channel specifiers:
+		- a channel (a) used to communicate through virtqueues with the
+		  remote proc.
+		  Bi-directional channel:
+		      - from local to remote = send message
+		      - from remote to local = send message ack
+		- a channel (b) working the opposite direction of channel (a)
+		- a channel (c) used by the local proc to notify the remote proc
+		  that it is about to be shut down.
+		  Unidirectional channel:
+		      - from local to remote, where ACK from the remote means
+		        that it is ready for shutdown
+- mbox-names:	This property is required if the mboxes property is used.
+		- must be "vq0" for channel (a)
+		- must be "vq1" for channel (b)
+		- must be "shutdown" for channel (c)
+- memory-region: List of phandles to the reserved memory regions associated with
+		the remoteproc device. This is variable and describes the
+		memories shared with the remote processor (eg: remoteproc
+		firmware and carveouts, rpmsg vrings, ...).
+		(see ../reserved-memory/reserved-memory.txt)
+- st,syscfg-pdds: Reference to the system configuration which holds the remote
+		processor deep sleep setting
+	1st cell: phandle to syscon block
+	2nd cell: register offset containing the deep sleep setting
+	3rd cell: register bitmask for the deep sleep bit
+- st,auto_boot:	If defined, when remoteproc is probed, it loads the default
+		firmware and starts the remote processor.
+
+Example:
+	m4_rproc: m4@38000000 {
+		compatible = "st,stm32mp1-m4";
+		reg = <0x00000000 0x10000>,
+		      <0x10000000 0x40000>,
+		      <0x30000000 0x40000>;
+		resets = <&rcc MCU_R>;
+		st,syscfg-holdboot = <&rcc 0x10C 0x1>;
+		st,syscfg-tz = <&rcc 0x000 0x1>;
+	};
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
