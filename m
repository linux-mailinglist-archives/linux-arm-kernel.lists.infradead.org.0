Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E847B19ACDF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 15:29:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I4Vo0AReW6meBw4uEiDn4UgwBQmTBSYOYNAUK4MXQkY=; b=EsEQiTlzBvFyMJ
	kfR7IEwAMPBqKn+2MGLuRq0IY5piopdhpLqv189QgZ4iaWvxh7gzhZrES+HWlU9iYPZigtTwAIkCj
	khxahhqzyo55c+3QZH6PcqaSmI1Jg5zefos/NJl/8AekOIFAaVpccwiSuciQMMQyKI+IKYxN4IEYS
	XvX8owlzxwmt7K9xzsYUZUjGJ7xwJE9hrSPaxmOxzJmuJ0TJZVusrqZIfRWQnaldYkDTWeya/EwHx
	24inLbyzOlD+/XYBjlYiDtPFj1PZnGXa2V4rOvaxZ98JHplbafHGDRG/sIGq3v8YvliWWiAyAOel7
	QZyAWAi4fZZmNqAXEVNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJdQO-0004Qq-0M; Wed, 01 Apr 2020 13:28:56 +0000
Received: from mail-out.m-online.net ([212.18.0.9])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJdL9-0005L5-8d
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 13:23:32 +0000
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
 by mail-out.m-online.net (Postfix) with ESMTP id 48sn2T2WZDz1qs13;
 Wed,  1 Apr 2020 15:23:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
 by mail.m-online.net (Postfix) with ESMTP id 48sn2T2GKlz1r0cS;
 Wed,  1 Apr 2020 15:23:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
 by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
 port 10024)
 with ESMTP id dOIOf7GAIh03; Wed,  1 Apr 2020 15:23:28 +0200 (CEST)
X-Auth-Info: nrXnPWiGks1a0DaCBZoTFkletW+TWKRhCUq7Rp+F8ok=
Received: from desktop.lan (ip-86-49-35-8.net.upcbroadband.cz [86.49.35.8])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.mnet-online.de (Postfix) with ESMTPSA;
 Wed,  1 Apr 2020 15:23:28 +0200 (CEST)
From: Marek Vasut <marex@denx.de>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH V4 22/22] ARM: dts: stm32: Rename LEDs to match silkscreen on
 AV96
Date: Wed,  1 Apr 2020 15:22:37 +0200
Message-Id: <20200401132237.60880-23-marex@denx.de>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200401132237.60880-1-marex@denx.de>
References: <20200401132237.60880-1-marex@denx.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_062331_461605_954BD45E 
X-CRM114-Status: GOOD (  11.88  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [212.18.0.9 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.18.0.9 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The LED labels do not match the silkscreen on the board, fix it.

Signed-off-by: Marek Vasut <marex@denx.de>
Cc: Alexandre Torgue <alexandre.torgue@st.com>
Cc: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Patrice Chotard <patrice.chotard@st.com>
Cc: Patrick Delaunay <patrick.delaunay@st.com>
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
V2: No change
V3: No change
---
 arch/arm/boot/dts/stm32mp157a-avenger96.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/stm32mp157a-avenger96.dts b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
index 31f23e60629f..9fcc15b6e76d 100644
--- a/arch/arm/boot/dts/stm32mp157a-avenger96.dts
+++ b/arch/arm/boot/dts/stm32mp157a-avenger96.dts
@@ -55,21 +55,21 @@ memory@c0000000 {
 	led {
 		compatible = "gpio-leds";
 		led1 {
-			label = "green:user1";
+			label = "green:user0";
 			gpios = <&gpioz 7 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "heartbeat";
 			default-state = "off";
 		};
 
 		led2 {
-			label = "green:user2";
+			label = "green:user1";
 			gpios = <&gpiof 3 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc0";
 			default-state = "off";
 		};
 
 		led3 {
-			label = "green:user3";
+			label = "green:user2";
 			gpios = <&gpiog 0 GPIO_ACTIVE_HIGH>;
 			linux,default-trigger = "mmc1";
 			default-state = "off";
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
