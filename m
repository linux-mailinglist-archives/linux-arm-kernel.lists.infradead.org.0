Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4195ECBDAF
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=0f5pzwsIi9gMWUN7qbDoB+wNO94HYXFnnnheFWy0gGc=; b=hxdbjGqr/puPaF
	xLoo/zrU+RBwnhQbdv3F/cAkwtofmvfwsKNIW7iYmhHQCmiQ1UJHyPnJIagLzOjP5Hua4S4z1kJxA
	HyDXE1bjh6lOuLPEgN2QE67JoE2j13FsmE2781c1bA37PdcEya6HQIeFXeuPV8R6QIQiA6Uziw3QS
	hwMQ8HC8Y1J9OawDpDDqC/Oop3tkhJuc2sJsti/qc6OIQKTNAWc/BYtlMd/OGGZlwi8VR5OrtiISY
	cV1IEoAu0Bu1iP4b3auvXuplQ4xiv49KVvNFOyzK7qO0zuL/dY/uvHY9yiziTQuW1/nEsB8terdkJ
	MB17ckSbrxKfF6EsNcWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOpb-0001kT-2d; Fri, 04 Oct 2019 14:45:19 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOpO-00018x-Cj
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:45:08 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 x94EQRSD026290; Fri, 4 Oct 2019 16:44:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=HxhsqEtkW1PE2z4wk42+db/HcFNDBDuEG576vdtW3hQ=;
 b=lz3bQE9FMHBJXTy5bdUQVmIumhJB17Ko0EuiGplii7OiPoGukqDMKJTud5FPeT4YSq1K
 DK2Eoob4x790WcB5cRq0XuBcWtE+g7pNPdtXN6spExZQligbvWskxkdZZirloHOdjoR6
 PhB1FQRb/jHmWAt9aXyv330fAyNFlkA93AObx+S4Wh/iPrqWNmrgWLfqtaIGMQcOKgOq
 HEQ4EOx7mN70pDaPcmUuZ5gANZjO7qyTHcTTZJmMB4uSU8Z07dHcsICvpst2nz0f/AUs
 2jkHCaZKboflDJrkl30G3HQJloLd4sg0RI6RtwdqE90zyVs2DAaJFFGVSWGtwxvG4NC+ 5Q== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2v9vnaundv-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Fri, 04 Oct 2019 16:44:54 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4351110002A;
 Fri,  4 Oct 2019 16:44:54 +0200 (CEST)
Received: from Webmail-eu.st.com (Safex1hubcas21.st.com [10.75.90.44])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 2A2702B8FFA;
 Fri,  4 Oct 2019 16:44:54 +0200 (CEST)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.46) by SAFEX1HUBCAS21.st.com
 (10.75.90.44) with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019
 16:44:54 +0200
Received: from localhost (10.201.23.73) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Fri, 4 Oct 2019 16:44:53
 +0200
From: <patrice.chotard@st.com>
To: <robh+dt@kernel.org>, <mark.rutland@arm.com>, <alexandre.torgue@st.com>
Subject: ARM: dts: stm32: relax qspi pins slew-rate for stm32mp157
Date: Fri, 4 Oct 2019 16:44:21 +0200
Message-ID: <20191004144421.21069-1-patrice.chotard@st.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.73]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,1.0.8
 definitions=2019-10-04_07:2019-10-03,2019-10-04 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_074506_822078_ED871FB8 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux@armlinux.org.uk, Patrice Chotard <patrice.chotard@st.com>,
 mcoquelin.stm32@gmail.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Patrice Chotard <patrice.chotard@st.com>

Relax qspi pins slew-rate to minimize peak currents.

Fixes: 844030057339 ("ARM: dts: stm32: add flash nor support on stm32mp157c eval board")

Signed-off-by: Patrice Chotard <patrice.chotard@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index e4a0d51ec3a8..0a3a7d66737b 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -609,13 +609,13 @@
 						 <STM32_PINMUX('F', 6, AF9)>; /* QSPI_BK1_IO3 */
 					bias-disable;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 				pins2 {
 					pinmux = <STM32_PINMUX('B', 6, AF10)>; /* QSPI_BK1_NCS */
 					bias-pull-up;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 			};
 
@@ -637,13 +637,13 @@
 						 <STM32_PINMUX('G', 7, AF11)>; /* QSPI_BK2_IO3 */
 					bias-disable;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 				pins2 {
 					pinmux = <STM32_PINMUX('C', 0, AF10)>; /* QSPI_BK2_NCS */
 					bias-pull-up;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <1>;
 				};
 			};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
