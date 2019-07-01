Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CEB75B7EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:20:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4TuS5H+GOo6AIYGFInY+QXhvkly90ZuhLflD4HIlsaA=; b=BACrU2406vu6Dg
	y2O1MscN+UN263tZzN0fuCUxM5oysffnYsUvBhxezyVZytWCMh7vlUVClG+3q0tfw0Xhs1n7vYFXS
	QF2nfBnwcyZWeIYFUXTIAhSIT79fqFfRnzy9O3GC01jlAlYLqLrZzYzdsn6InY0l6KsSSFoNQBkIo
	NvglMPitEKcgVUKDfbx8pUGidHaE/s+1aiJi6Rnh1da6L/8YD09RkK5iqwkZgyMSiYqRYydv8r7n9
	4Fv1iZt2xUvEDV06pxId7esdOEY9a+hjhU28X4YZ6eeso3RXuw2VPHMEXLoyIwSawf9Tgkp3D3pA3
	jRHC011yLdEkYKH5KK+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsU0-00016c-W9; Mon, 01 Jul 2019 09:20:21 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsSW-00008D-8N
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:18:51 +0000
Received: from pps.filterd (m0046661.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x619BYrY020146; Mon, 1 Jul 2019 11:18:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : mime-version : content-type; s=STMicroelectronics;
 bh=KIy5BakllxdZ3xXg+Q83R/MpzH9X3aj4n2maKUHUR+w=;
 b=tX1mNaJkfexbL9sT+Gk8U/rMpCocwcqwlpNbazhIYaMZcoM7+yUdfDOKZKsubVrj/4ht
 3NSgReFCRAF50ozCrjv8J5yBFSlAk3u4UgAgGemGCYd4Bdeo6eESFzD6h+PWI/DTp1dO
 E4Gsud7dhy8Vt3N/kOWftwAZIZaC1dpLf/WCfzkdJDUP8NtVdn82jGyREDh578Q7lBx/
 1FTHz5bKWCQlZghhHBYzbFPDgwaXMlXQ5jp/tTV5HQsefnQ10yllsLs3CtVmIbs/Dlvl
 sGb4FNaQoMNkUrhCtiT91vGgFZUqQjNhUAHvTharYk/v1UppsnPGh0lrouDkVdpgB2ZW gA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2tdxvhktqf-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Mon, 01 Jul 2019 11:18:38 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 5405F34;
 Mon,  1 Jul 2019 09:18:37 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 2B88E24EC;
 Mon,  1 Jul 2019 09:18:37 +0000 (GMT)
Received: from SAFEX1HUBCAS23.st.com (10.75.90.47) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 1 Jul 2019
 11:18:37 +0200
Received: from localhost (10.201.23.31) by webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Mon, 1 Jul 2019 11:18:36
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH] ARM: dts: stm32: fix -Wall W=1 compilation warnings for
 can1_sleep pinctrl
Date: Mon, 1 Jul 2019 11:18:06 +0200
Message-ID: <1561972686-23281-1-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-07-01_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021848_812476_393D903D 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 linux-arm-kernel@lists.infradead.org, bich.hemon@st.com,
 linux-stm32@st-md-mailman.stormreply.com, erwan.leray@st.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix compilations warnings detected by -Wall W=1 compilation option:
- node has a unit name, but no reg property

Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 140a983..ce98fd8 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -427,7 +427,7 @@
 				};
 			};
 
-			m_can1_sleep_pins_a: m_can1-sleep@0 {
+			m_can1_sleep_pins_a: m_can1-sleep-0 {
 				pins {
 					pinmux = <STM32_PINMUX('H', 13, ANALOG)>, /* CAN1_TX */
 						 <STM32_PINMUX('I', 9, ANALOG)>; /* CAN1_RX */
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
