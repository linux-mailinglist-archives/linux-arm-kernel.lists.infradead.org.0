Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF58E1312F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 14:31:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nFbNaEEbLelpEdJqGn2IkBKOE9T0jXVOZVsXv34+lSY=; b=O4K7TdTu8+sjZW
	kstJvgO5jvM0IEockfr28lyxwsjRlNMchASOlxSLepV+UuMJ1yJ/2PnI7fxdEi7KfE910ssic8rW2
	5shf/a0u0RWF6fe7xI9EWSGVezvaMZwowLQctpg9JKpRQ6W7CN4caByVpMAGDr9TB/tuUpRPsI4na
	XIldFBRdxMzFXFBoVpwL5XZTijnhGDmNv6Sq7qXKFuEtbHZw2AbWRBwyTievDPvRlcNEJf/9rL6iQ
	EQtBIHtRf+mjLi4HQk8nq/K848XhHkPN/5xx0WdvME2+l+UKQrUcY376I7yRMKtOlwLUISKdIbgA9
	4mhK5ea9EBsgQgLDLwgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioSTA-0002LE-S7; Mon, 06 Jan 2020 13:30:56 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioSS7-0000CX-Lx
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 13:29:53 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 006DRPGq006070; Mon, 6 Jan 2020 14:29:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=wjQdFwE1hTJLf/l3Bfadi5K3scAmh1frqnNxBbfuOeY=;
 b=tdrHsJCTNJm6YvCLcAKl1AQg8qfwhkFOuqsriNFaVw70kmJuOK1/PBmIFVnQElWVhWWN
 M4WkILKO4rwkowxqAW6DzXpvYxl25V0/m+efnEeIeqO3AyjXaQKF6g6YyHQVzyiRN9j3
 P+/+iUhqbuV1kvSleSJIMbLmv1hbspyN7e4SZatecuDXFYTgcr+zMiTl9VBUxkl6+B2l
 6bnlIFWbs4+RJQ/4O1BG0dXysAJqaYxuxUGegoOLfoE2yRHxfe1KZd2rjbPMXO4RQ50Z
 c/dIdScvNdkySyPd8cZyRq3t66h5ZclGU77xYC2+n89j8fi33PeibfqK0VBCGnI+J/gZ Lw== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2xakm584up-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Mon, 06 Jan 2020 14:29:44 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 3D64710002A;
 Mon,  6 Jan 2020 14:29:44 +0100 (CET)
Received: from Webmail-eu.st.com (sfhdag3node2.st.com [10.75.127.8])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3037F2D378B;
 Mon,  6 Jan 2020 14:29:44 +0100 (CET)
Received: from localhost (10.75.127.51) by SFHDAG3NODE2.st.com (10.75.127.8)
 with Microsoft SMTP Server (TLS) id 15.0.1347.2; Mon, 6 Jan 2020 14:29:43
 +0100
From: Alain Volmat <alain.volmat@st.com>
To: <wsa@the-dreams.de>, <robh+dt@kernel.org>
Subject: [PATCH 6/6] ARM: dts: stm32: add wakeup-source in all I2C nodes of
 stm32mp157c
Date: Mon, 6 Jan 2020 14:28:34 +0100
Message-ID: <1578317314-17197-7-git-send-email-alain.volmat@st.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
References: <1578317314-17197-1-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.51]
X-ClientProxiedBy: SFHDAG4NODE1.st.com (10.75.127.10) To SFHDAG3NODE2.st.com
 (10.75.127.8)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2020-01-06_04:2020-01-06,2020-01-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_052952_049862_1C7B7D91 
X-CRM114-Status: GOOD (  11.81  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 linux-i2c@vger.kernel.org, mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the wakeup-source property in all i2c nodes of
the SoC stm32mp157c so that those I2C controllers can become
wakeup-source.

Signed-off-by: Alain Volmat <alain.volmat@st.com>
---
 arch/arm/boot/dts/stm32mp151.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp151.dtsi b/arch/arm/boot/dts/stm32mp151.dtsi
index 3dd570b10181..5706c4f41b0b 100644
--- a/arch/arm/boot/dts/stm32mp151.dtsi
+++ b/arch/arm/boot/dts/stm32mp151.dtsi
@@ -483,6 +483,7 @@
 			resets = <&rcc I2C1_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -496,6 +497,7 @@
 			resets = <&rcc I2C2_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -509,6 +511,7 @@
 			resets = <&rcc I2C3_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -522,6 +525,7 @@
 			resets = <&rcc I2C5_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -1473,6 +1477,7 @@
 			resets = <&rcc I2C4_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
@@ -1508,6 +1513,7 @@
 			resets = <&rcc I2C6_R>;
 			#address-cells = <1>;
 			#size-cells = <0>;
+			wakeup-source;
 			status = "disabled";
 		};
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
