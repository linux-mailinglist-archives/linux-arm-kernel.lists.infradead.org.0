Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 23DFF1D1D11
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 20:11:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AtEZqTUCV35p+pf0VrNp0NzMuVK2ssMOLVl2jqaNjuc=; b=IuLPkCKrryPxgJ
	/VdASI/GNJ5Eez3jW7uWAbkZtb9gDRMdjLJU6I684/InW3ioW/sj08ta69tsTj2Mo+Iaj+sZcQgFA
	442paBxHHdcpI/4JjhMOIgLGghxioCyp/3JlO5CTHSj9nF9GBtaQKorRALehr50R9Jd4/6IetEQhV
	NtgMYdct4kSj7ylQNyso5J56rwsPa1/c6uoRAB6FUaZqa/ZGwlNygkGnsh1pSSGRRhx7lHzxLPSKu
	kkmsY1DRD5FTWHMMKiydwPfYyNYp6RYMy8lZH1ZkVtwBzerDE/9ANpbClJW4IpzamJyvjln04t4Rq
	4nBjaozYnvrjGlH/7KgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYvqP-0001br-JS; Wed, 13 May 2020 18:11:01 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYvpt-0001P3-DF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 18:10:31 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 49MjQC4hWCz1qs04;
 Wed, 13 May 2020 20:10:27 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 49MjQC4Wksz1r6F3;
 Wed, 13 May 2020 20:10:27 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id mdFdJTsB8q0r; Wed, 13 May 2020 20:10:26 +0200 (CEST)
X-Auth-Info: vMZX3dKa93xwGIAIgzbu4er/7nTFuSvQkV8i7oJETVQ=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed, 13 May 2020 20:10:26 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V3 2/4] ARM: dts: stm32: Add GPIO LEDs for STM32MP1 DHCOM PDK2
Date: Wed, 13 May 2020 20:10:18 +0200
Message-Id: <20200513181020.8225-2-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200513181020.8225-1-marex@denx.de>
References: <20200513181020.8225-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_111029_593335_902811EE 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: Marek Vasut <marex@denx.de>, Alexandre Torgue <alexandre.torgue@st.com>,
 Patrice Chotard <patrice.chotard@st.com>,
 Patrick Delaunay <patrick.delaunay@st.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add bindings for the four GPIO LEDs on DH PDK2 board. Note that LED5
GPIO-E may conflict with touchscreen interrupt, hence LED5 must be
disabled when using the DH 560-200 display unit with touchscreen.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
V3: No change
---
 arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts | 28 ++++++++++++++++++++
 1 file changed, 28 insertions(+)

diff --git a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
index e5036c9b9e92..b380268750f3 100644
--- a/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
+++ b/arch/arm/boot/dts/stm32mp157c-dhcom-pdk2.dts
@@ -89,6 +89,34 @@ button-3 {
 		};
 	};
 
+	led {
+		compatible = "gpio-leds";
+
+		led-0 {
+			label = "green:led5";
+			gpios = <&gpiog 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-1 {
+			label = "green:led6";
+			gpios = <&gpiod 11 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-2 {
+			label = "green:led7";
+			gpios = <&gpioi 2 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+
+		led-3 {
+			label = "green:led8";
+			gpios = <&gpioi 3 GPIO_ACTIVE_HIGH>;
+			default-state = "off";
+		};
+	};
+
 	panel {
 		compatible = "edt,etm0700g0edh6";
 		backlight = <&display_bl>;
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
