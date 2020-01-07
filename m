Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 77554132663
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 13:39:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9QHn6sfSNEr9tTuxvt7UEoBQYTvE1IIR0W5RQFxaZnE=; b=CQ7PZzDeE0UV4h
	ytAWnNqe7fdMiVQU4UzsfD8fBsko4Ro+ilpAwA6S6XIwciKPhtR3VRBnj1IO79JzRCN2MF8bt6YmX
	VZp/71ends2QkTP+I9IMLrLvdyN+qbI1ynFBBbwdNeRg9QdxC6XeU9M5m8cXbK38uiw19c/ClLXs7
	mNYl3R1rbZbZNDk8wrWc42UpQGVIQas9Cv/f3qcQAFdgUyxjO/zJx+4ANfWFisrnB3irKBd6zTwIq
	oCzZLpbBy1Y57RasIOs/cGWSmmvRiAV2mF15SrFj03RPqT4jKXDnFLsw5kMVyznEuzFv24iaUvkHh
	bdcAl6ViybPq5ZsXxreg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioo8h-0000Mi-CC; Tue, 07 Jan 2020 12:39:15 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioo8J-0000DF-6t
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 12:38:52 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 007CXWXU009241; Tue, 7 Jan 2020 13:38:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=Gl5KmXNG2w7uS8tnORu0C/Hg/4r5BCu7bXX9xOiA5PQ=;
 b=K6aijNLSuUamGm+rbmZIVhI+sLCRdGwReuoVUtWif9/jgsJrEoMBP6NRd/uwH6ao0lTa
 uuu1PpD1jwHerN/zSyz5G4libFhIOvnsfobszLUfP1jFKqpkkxqdOx6ls9K+VJ3oh1aN
 5LQ8fUyz256Kutw73vDx1apmII+yMOdjSRF/jfit4NTI7yzXDXfeykRfz2k9W1PAGnfQ
 ek8szGEdy66ECAhQdmNBhLg0WLGEAsjxIsJUn7SbY+XjV8kkB8dSSObhKIossdMo9SBw
 CBf8momSvxIsYTy8S1o0SQi7yC0/v66M7GHqNSD7C+BnvD/c3PesgjRXi0Uh1s0uyzrO hw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm5e5mc-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Tue, 07 Jan 2020 13:38:35 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 23D3110002A;
 Tue,  7 Jan 2020 13:38:32 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag6node3.st.com [10.75.127.18])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 13A0C2AFAB4;
 Tue,  7 Jan 2020 13:38:32 +0100 (CET)
Received: from localhost (10.75.127.46) by SFHDAG6NODE3.st.com (10.75.127.18)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3;
 Tue, 7 Jan 2020 13:38:31 +0100
From: <patrice.chotard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <linux@armlinux.org.uk>,
 <linux-arm-kernel@lists.infradead.org>, <linux-kernel@vger.kernel.org>,
 <devicetree@vger.kernel.org>
Subject: [PATCH 1/2] ARM: dts: stih410-b2260: Fix ethernet phy DT node
Date: Tue, 7 Jan 2020 13:38:27 +0100
Message-ID: <20200107123828.6586-2-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200107123828.6586-1-patrice.chotard@st.com>
References: <20200107123828.6586-1-patrice.chotard@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.46]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG6NODE3.st.com
 (10.75.127.18)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-07_03:2020-01-06,2020-01-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_043851_604333_DDFC7D56 
X-CRM114-Status: GOOD (  16.95  )
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
Cc: patrice.chotard@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

Since 'd3e014ec7d5e ("net: stmmac: platform: Fix MDIO init for platforms without PHY")'
we got the following kernel Oops :

Unable to handle kernel NULL pointer dereference at virtual address 00000260
pgd = (ptrval)
[00000260] *pgd=79a79831
Internal error: Oops: 17 [#1] SMP ARM
Modules linked in:
CPU: 0 PID: 201 Comm: ip Not tainted 5.5.0-rc5 #13
Hardware name: STi SoC with Flattened Device Tree
PC is at mdiobus_get_phy+0x4/0x20
LR is at stmmac_open+0x278/0xaa8
pc : [<c0a7e41c>]    lr : [<c0b1755c>]    psr: a0070013
sp : ed663930  ip : 00000000  fp : c110079c
r10: ed663d4c  r9 : ed663d4c  r8 : ee774028
r7 : ee22ad00  r6 : ee776000  r5 : 00000000  r4 : ee774000
r3 : ee775000  r2 : ca451a07  r1 : 00000098  r0 : 00000000
Flags: NzCv  IRQs on  FIQs on  Mode SVC_32  ISA ARM  Segment none
Control: 10c5387d  Table: 6d75404a  DAC: 00000051
Process ip (pid: 201, stack limit = 0x(ptrval))

This is due to lack of mdio DT subnode, so add it.

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/boot/dts/stih410-b2260.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/boot/dts/stih410-b2260.dts b/arch/arm/boot/dts/stih410-b2260.dts
index 4fbd8e9eb5b7..1df2c37eb3a7 100644
--- a/arch/arm/boot/dts/stih410-b2260.dts
+++ b/arch/arm/boot/dts/stih410-b2260.dts
@@ -176,6 +176,7 @@
 
 		ethernet0: dwmac@9630000 {
 			phy-mode = "rgmii";
+			phy-handle = <&phy0>;
 			pinctrl-0 = <&pinctrl_rgmii1 &pinctrl_rgmii1_mdio_1>;
 
 			snps,phy-bus-name = "stmmac";
@@ -186,6 +187,15 @@
 			snps,reset-delays-us = <0 10000 1000000>;
 
 			status = "okay";
+
+			mdio0 {
+				#address-cells = <1>;
+				#size-cells = <0>;
+				compatible = "snps,dwmac-mdio";
+				phy0: ethernet-phy@0 {
+					reg = <0>;
+				};
+			};
 		};
 
 		sti_uni_player0: sti-uni-player@8d80000 {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
