Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7C71E5927
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 May 2020 09:43:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OEMvNgRGucrYlNuiHRW1I/D7eHyYMhzmnfuD02jVTpw=; b=VqyeTWhmHrKpak
	5RkwYDCqoK/cmag3OxupnVBETco6mi0bwG/UGPZX8X8VgLn2RTQ6i1MGxeTrVCsDEX7B5mLpaSU5O
	FDtOcdxg2lgKtiBF8538xWny8EW0dbFdVtBPd3nl9wO8dE5vUWCa74EfmC8WDbcpysezC392IMD7k
	Dxw/Nq2Bv1RybIZomBdwq6MkaVpjnaC6SGNNYpe/m1pbfGNpWTgX4zTbiQ6FRKj4P0t1/4Qwb5ufI
	vRvCgyYpk1m1rDD/lOW0A9FVXt3cFIkHmygpAcwJhWOWx5eo6Zc+m+4pTK3F1SHhTySJrsLTanndk
	Nqk9GD9OjgXfWuojQ4/A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeDBu-000134-MH; Thu, 28 May 2020 07:43:02 +0000
Received: from mx07-00178001.pphosted.com ([62.209.51.94])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeD8M-0003qb-8R
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 07:39:26 +0000
Received: from pps.filterd (m0046668.ppops.net [127.0.0.1])
 by mx07-00178001.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 04S7cADv017154; Thu, 28 May 2020 09:38:59 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=FyALCO26XOK/eTghSitDe78wV/WFP/smeKrrxGId2ww=;
 b=NmJ2qJkn17QCml/rYDd4AFiblCGOHQE0qWl+vPK6MjS8E4XGLvOaVNMO99/ya7hNDMg3
 Cc58IHsouAkarRzVO5hc1/4txwJ4t/dMHLJgaryR4tPh4xRyTpwK2iMDB2U/DEPhcDXz
 uKH4WduGbT7zDHyJT2EADtBEoGim43jfEo2NYhnZG8J/yFMLh8uwRGMvA0yrd3tOy/bB
 B+mP1SqCRuD61bAf0WAi/YAu+hu4IOx1PJw2Dem7Gdb0p/uOrV0b0n0lzwlso6TmibrL
 Eui0REwZoAbZrc4ECz5wwjC5TfE6YkuFE+/hlxvCJRjrsfcK6BYnkqlpn4ZTI1ldFK5K VA== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx07-00178001.pphosted.com with ESMTP id 316sa29wn3-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
 Thu, 28 May 2020 09:38:59 +0200
Received: from euls16034.sgp.st.com (euls16034.sgp.st.com [10.75.44.20])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 549A3100034;
 Thu, 28 May 2020 09:38:58 +0200 (CEST)
Received: from Webmail-eu.st.com (sfhdag3node1.st.com [10.75.127.7])
 by euls16034.sgp.st.com (STMicroelectronics) with ESMTP id 42BE32B187F;
 Thu, 28 May 2020 09:38:58 +0200 (CEST)
Received: from localhost (10.75.127.44) by SFHDAG3NODE1.st.com (10.75.127.7)
 with Microsoft SMTP Server (TLS) id 15.0.1473.3; Thu, 28 May 2020 09:38:57
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Maxime Coquelin <mcoquelin.stm32@gmail.com>, Alexandre Torgue
 <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, Mark Rutland
 <mark.rutland@arm.com>
Subject: [PATCH 1/3] ARM: dts: stm32: update uart4 pin configuration for low
 power on stm32mp157
Date: Thu, 28 May 2020 09:38:51 +0200
Message-ID: <20200528073853.24759-2-erwan.leray@st.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200528073853.24759-1-erwan.leray@st.com>
References: <20200528073853.24759-1-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.75.127.44]
X-ClientProxiedBy: SFHDAG4NODE2.st.com (10.75.127.11) To SFHDAG3NODE1.st.com
 (10.75.127.7)
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.216, 18.0.687
 definitions=2020-05-28_02:2020-05-28,
 2020-05-27 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_003922_608046_F56F8325 
X-CRM114-Status: GOOD (  11.07  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Bich Hemon <bich.hemon@st.com>,
 Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, Erwan Le Ray <erwan.leray@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sleep pin configuration is refined for low power modes:
- "sleep" (no wakeup & console suspend enabled): put pins in analog state
  to optimize power
- "idle" (wakeup capability): keep Rx pin in alternate function

Signed-off-by: Bich Hemon <bich.hemon@st.com>
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
index 7eb858732d6d..7cf535dc05f5 100644
--- a/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp15-pinctrl.dtsi
@@ -1648,6 +1648,23 @@
 		};
 	};
 
+	uart4_idle_pins_a: uart4-idle-0 {
+		   pins1 {
+			 pinmux = <STM32_PINMUX('G', 11, ANALOG)>; /* UART4_TX */
+		   };
+		   pins2 {
+			 pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+			 bias-disable;
+		   };
+	};
+
+	uart4_sleep_pins_a: uart4-sleep-0 {
+		   pins {
+			pinmux = <STM32_PINMUX('G', 11, ANALOG)>, /* UART4_TX */
+				 <STM32_PINMUX('B', 2, ANALOG)>; /* UART4_RX */
+		    };
+	};
+
 	uart4_pins_b: uart4-1 {
 		pins1 {
 			pinmux = <STM32_PINMUX('D', 1, AF8)>; /* UART4_TX */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
