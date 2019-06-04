Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E730342CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 11:12:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qoDi6WKuzhEeXQQ/AWNNFSBPYWOwfIdr42hb83Xt18c=; b=jTvJN3UuTLWhwC
	mj+3mnEbv9iB0xx05jjsWpoSC3Nhf5Dp2wHxeMGg+AzmNU+Pf/h4gSl/t0h0FY8Ec2WIuKMQQ60Ht
	kcBzT6u/u8P0gzRM764oNpnALLAYHNoVqXYSybdJIc90zcPFcMP4iBQscl08oCQvMJBn6wcYOoFJd
	zwij3aR8F7YeLmYFuPfdcf/utJ3+3EbUSo7eKMqFKkHVJlvnlAj4dZ0SOT2s5lpVNBti5Sd8+SjUp
	DMz2A4K65TqAPX4ovMW2wVlW20hza8B/bKnFtzwxyvI3LBxc2UWp4AM/9xzRcXmy2PWOCJJB0S10t
	A+6rqmruUE0TAw4Q5ZMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY5UY-0005wr-Qi; Tue, 04 Jun 2019 09:12:26 +0000
Received: from mx08-00178001.pphosted.com ([91.207.212.93]
 helo=mx07-00178001.pphosted.com)
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY5UM-0005pY-Ka
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 09:12:16 +0000
Received: from pps.filterd (m0046660.ppops.net [127.0.0.1])
 by mx08-00178001.pphosted.com (8.16.0.27/8.16.0.27) with SMTP id
 x5498m8l019440; Tue, 4 Jun 2019 11:12:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=st.com;
 h=from : to : cc : subject
 : date : message-id : in-reply-to : references : mime-version :
 content-type; s=STMicroelectronics;
 bh=7dQ+9lqtmTtedvp/b3rgO/AqPLUdhqousiUICsfwmlU=;
 b=SpEMvvWcUnePXF+45Bix5UMA9ew3+AtsyZG9D1f4bqvRi04RA4ma6HaJp2oFc8jVi4Vu
 qnxjdWdnoK31qOFC1K9oPPJtmOcKtADkTIyX+h0LfN9zvTt865gX4nphqIXmO+nFJWYB
 ACVwhSUN3WTbi0o0UD6RvU0J+LLKYJYu2askkTg7JI9MYLIUhrFqhFzN8d6sgFSMWHrC
 Q6ABZAkkFhbeHzbEmWsuCfxWAfYnp8XOIO+M3MYGyEOqFbGzYepdQJdxi+GUiDRq9WwJ
 oSR02A3G4y0h8R6sVbUp/RkZiIckvq0V3VBTZ1UmRBt99+EOURN5JG3vDNfC0cBxyGK+ tQ== 
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
 by mx08-00178001.pphosted.com with ESMTP id 2sunmefknd-1
 (version=TLSv1 cipher=ECDHE-RSA-AES256-SHA bits=256 verify=NOT);
 Tue, 04 Jun 2019 11:12:09 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
 by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7BB731A0;
 Tue,  4 Jun 2019 08:55:43 +0000 (GMT)
Received: from Webmail-eu.st.com (Safex1hubcas24.st.com [10.75.90.94])
 by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 09829250B;
 Tue,  4 Jun 2019 08:55:42 +0000 (GMT)
Received: from SAFEX1HUBCAS22.st.com (10.75.90.93) by Safex1hubcas24.st.com
 (10.75.90.94) with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 4 Jun 2019
 10:55:42 +0200
Received: from localhost (10.201.23.31) by Webmail-ga.st.com (10.75.90.48)
 with Microsoft SMTP Server (TLS) id 14.3.439.0; Tue, 4 Jun 2019 10:55:41
 +0200
From: Erwan Le Ray <erwan.leray@st.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Jiri Slaby
 <jslaby@suse.com>, Maxime Coquelin <mcoquelin.stm32@gmail.com>, "Alexandre
 Torgue" <alexandre.torgue@st.com>, Rob Herring <robh+dt@kernel.org>, "Mark
 Rutland" <mark.rutland@arm.com>
Subject: [PATCH 07/10] ARM: dts: stm32: update uart4 pin configurations for
 low power
Date: Tue, 4 Jun 2019 10:55:16 +0200
Message-ID: <1559638519-6128-8-git-send-email-erwan.leray@st.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
References: <1559638519-6128-1-git-send-email-erwan.leray@st.com>
MIME-Version: 1.0
X-Originating-IP: [10.201.23.31]
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:, ,
 definitions=2019-06-04_07:, , signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_021215_037386_F7D6CF2D 
X-CRM114-Status: GOOD (  11.72  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.93 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Erwan Le Ray <erwan.leray@st.com>, linux-serial@vger.kernel.org,
 Bich Hemon <bich.hemon@st.com>, Fabrice
 Gasnier <fabrice.gasnier@st.com>, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, pinctrl states defines only one "sleep" configuration for pins,
no matter the possible uart low power modes (Rx pin always kept active).

Sleep pin configuration is refined for low power modes:
- "sleep" (no wakeup & console suspend enabled): put pins in analog state
  to optimize power
- "idle" (wakeup capability): keep Rx pin in alternate function
- "default" state remains untouched, to be used while the UART is active
  or in case the no_console_suspend mode is enabled

Signed-off-by: Bich Hemon <bich.hemon@st.com>
Signed-off-by: Erwan Le Ray <erwan.leray@st.com>

diff --git a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
index 85c417d..2e1ab1b 100644
--- a/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
+++ b/arch/arm/boot/dts/stm32mp157-pinctrl.dtsi
@@ -599,6 +599,23 @@
 					bias-disable;
 				};
 			};
+
+			uart4_idle_pins_a: uart4-idle-0 {
+				pins1 {
+					pinmux = <STM32_PINMUX('G', 11, ANALOG)>; /* UART4_TX */
+				};
+				pins2 {
+					pinmux = <STM32_PINMUX('B', 2, AF8)>; /* UART4_RX */
+					bias-disable;
+				};
+			};
+
+			uart4_sleep_pins_a: uart4-sleep-0 {
+				pins {
+					pinmux = <STM32_PINMUX('G', 11, ANALOG)>, /* UART4_TX */
+						 <STM32_PINMUX('B', 2, ANALOG)>; /* UART4_RX */
+				};
+			};
 		};
 
 		pinctrl_z: pin-controller-z@54004000 {
-- 
1.9.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
