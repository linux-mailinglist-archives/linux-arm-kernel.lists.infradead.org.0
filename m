Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1ACC3F29B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 09:49:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rPzhMbDOGLaLcZ5dHTPRZBgmTkdBXDyTHeYGzWWPJP8=; b=Ebywlcu+A2MRDq
	K7SOaN7hCBNi6VJA0+fHnwgN5hvjQOeECcRcXgeEWblLWEA98mm1K0orxKeOaLaFUFLofeM4JNjw4
	nSOY3L0ReSed+WeXN1dsd/840o3mABD3ZhUgE1jdnhkM08X0upWiSTdUm/QbRrvX7YBiW8qiiAhaS
	euUVG1c6h5pgw7ufKyI7R07ID9y/mXbs71UsBssgeVEv8D6Kr22Zc2hVu2ZsO3gv36nstexGFSCPJ
	bwHz84+lzhV6AKgcH4+pN0ItPgYU6mqu0tWA29zJZ9MFnLKQXKxrikMav6thyqVIpBYxUkx9GECgB
	5ORUabizKdSsUL+/T52g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSdTc-0002rW-3y; Thu, 07 Nov 2019 08:49:12 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSdT0-0002R8-FM
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 08:48:37 +0000
Received: from pps.filterd (m0046037.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xA78l9gw010906; Thu, 7 Nov 2019 09:48:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=CODhr+HDgZkmDdBSbE1YP8Qun5G0drMcjRcuyYv9BoA=;
 b=HW6haL2DjvwGLzh+6TRhOZw61ym0ZlUNPF/via4tp82qC9cFiuELRcgqdr7Atk0pVrQJ
 E875ZmB385QIQPU6qpfQuvXqNpPpwoUqdV92NPYcD1vAmUk5edhgWQZvhgkozO8V+urR
 EluMPGfED5+jInPSdLkiVZ0SaD+1dw3iJ2x8B4/eWkBH2rQ2fkWKl39WPVknFgJak08G
 cX4zr0BTQIgzit3znQulvp0TWgaBoPWPW1WovL3C7Q0GuTnOVTaYZ+GdWaiWsMY8ZGRC
 vMYwdprMYbMtJGwjAoZ20C0eQW0SWClTkbPW1nKFEF5y/tVAbBodLdQygZUECyPWT+Nq Qg== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 2w41vduy82-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 07 Nov 2019 09:48:23 +0100
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 4589610006F;
 Thu,  7 Nov 2019 09:48:06 +0100 (CET)
Received: from Webmail-eu.st.com (Safex1hubcas22.st.com [10.75.90.92])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 3701A2AA977;
 Thu,  7 Nov 2019 09:48:06 +0100 (CET)
Received: from SAFEX1HUBCAS21.st.com (10.75.90.45) by Safex1hubcas22.st.com
 (10.75.90.92) with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 7 Nov 2019
 09:48:06 +0100
Received: from localhost (10.201.22.222) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Thu, 7 Nov 2019 09:48:05
 +0100
From: Christophe Roullier <christophe.roullier@st.com>
To: <robh@kernel.org>, <davem@davemloft.net>, <joabreu@synopsys.com>,
 <mark.rutland@arm.com>, <mcoquelin.stm32@gmail.com>,
 <alexandre.torgue@st.com>, <peppe.cavallaro@st.com>
Subject: [PATCH V4 net-next 3/4] ARM: dts: stm32: adjust slew rate for Ethernet
Date: Thu, 7 Nov 2019 09:47:56 +0100
Message-ID: <20191107084757.17910-4-christophe.roullier@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191107084757.17910-1-christophe.roullier@st.com>
References: <20191107084757.17910-1-christophe.roullier@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.22.222]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-11-07_02:2019-11-07,2019-11-07 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_004834_814067_C4357F14 
X-CRM114-Status: GOOD (  13.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [62.209.51.94 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, andrew@lunn.ch, netdev@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-stm32@st-md-mailman.stormreply.com,
 christophe.roullier@st.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

ETH_MDIO slew-rate should be set to "0" instead of "2"

Signed-off-by: Christophe Roullier <christophe.roullier@st.com>
---
 arch/arm/boot/dts/stm32mp157-pinctrl.dtsi | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 0a3a7d66737b..9a8f0d4c9ea3 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -217,13 +217,18 @@
 						 <STM32_PINMUX('C', 2, AF11)>, /* ETH_RGMII_TXD2 */
 						 <STM32_PINMUX('E', 2, AF11)>, /* ETH_RGMII_TXD3 */
 						 <STM32_PINMUX('B', 11, AF11)>, /* ETH_RGMII_TX_CTL */
-						 <STM32_PINMUX('A', 2, AF11)>, /* ETH_MDIO */
 						 <STM32_PINMUX('C', 1, AF11)>; /* ETH_MDC */
 					bias-disable;
 					drive-push-pull;
-					slew-rate = <3>;
+					slew-rate = <2>;
 				};
 				pins2 {
+					pinmux = <STM32_PINMUX('A', 2, AF11)>; /* ETH_MDIO */
+					bias-disable;
+					drive-push-pull;
+					slew-rate = <0>;
+				};
+				pins3 {
 					pinmux = <STM32_PINMUX('C', 4, AF11)>, /* ETH_RGMII_RXD0 */
 						 <STM32_PINMUX('C', 5, AF11)>, /* ETH_RGMII_RXD1 */
 						 <STM32_PINMUX('B', 0, AF11)>, /* ETH_RGMII_RXD2 */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
