Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB8B1205ED
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:38:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=d0Y8/Hn0CwQN6k5Z9K8GF7Q6hpNrbmg2enI1BL/XtEk=; b=OBqhrZJtfKauWB
	W3yFMA50L0RiWXUgxSTkdqUTEaDHKdx1RhDeNtp/F4etE95UXd5VtaSWn9MEOmRyyE7AYgYi8VoTa
	ZiEHq+46u7+r24YsHfmICkVo+dwlN5/8v8qlBlpVVAb0SxkDTIeS/fiVF6Wj7Wov2eT03rd4Q8ZNk
	wmdug8eEKcxSrQtAgJI5oPpH74Jo4tXqD5v/mmZE3fJGpal7b/W55YxpiMvGJKb4mJ7f4Ss6NvgUy
	AOpRTxREVXpdx7ZzIrWJo5KogAt5dy7yQ1z+GcqvWot3iMgM6gb4d7nKLgE42VOclC6npVWT61hLD
	FJGRw5rEuVUDiA7dEdUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpe0-00053X-JP; Mon, 16 Dec 2019 12:38:36 +0000
Received: from mail-sz.amlogic.com ([211.162.65.117])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpcS-0003t0-Mw; Mon, 16 Dec 2019 12:37:02 +0000
Received: from localhost.localdomain (10.28.8.19) by mail-sz.amlogic.com
 (10.28.11.5) with Microsoft SMTP Server id 15.1.1591.10; Mon, 16 Dec 2019
 20:37:25 +0800
From: Qianggui Song <qianggui.song@amlogic.com>
To: Thomas Gleixner <tglx@linutronix.de>, Jason Cooper <jason@lakedaemon.net>, 
 Marc Zyngier <maz@kernel.org>
Subject: [PATCH v2 4/4] arm64: dts: meson: a1: add gpio interrupt controller
 support
Date: Mon, 16 Dec 2019 20:36:45 +0800
Message-ID: <20191216123645.10099-5-qianggui.song@amlogic.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191216123645.10099-1-qianggui.song@amlogic.com>
References: <20191216123645.10099-1-qianggui.song@amlogic.com>
MIME-Version: 1.0
X-Originating-IP: [10.28.8.19]
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_043700_776628_E43D09A5 
X-CRM114-Status: UNSURE (   6.61  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Qianggui Song <qianggui.song@amlogic.com>, devicetree@vger.kernel.org,
 Hanjie Lin <hanjie.lin@amlogic.com>, Jianxin Pan <jianxin.pan@amlogic.com>,
 Neil Armstrong <narmstrong@baylibre.com>, Kevin Hilman <khilman@baylibre.com>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-amlogic@lists.infradead.org,
 Mark Rutland <mark.rutland@arm.com>, Xingyu Chen <xingyu.chen@amlogic.com>,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

add gpio interrupt controller node to a1 SoC

Signed-off-by: Qianggui Song <qianggui.song@amlogic.com>
---
 arch/arm64/boot/dts/amlogic/meson-a1.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
index 4dec518c4dde..e580d3e96c67 100644
--- a/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-a1.dtsi
@@ -99,6 +99,15 @@ gpio: bank@0400 {
 
 			};
 
+			gpio_intc: interrupt-controller@0440 {
+				compatible = "amlogic,meson-gpio-intc",
+					     "amlogic,meson-a1-gpio-intc";
+				reg = <0x0 0x0440 0x0 0x14>;
+				interrupt-controller;
+				#interrupt-cells = <2>;
+				amlogic,channel-interrupts = <49 50 51 52 53 54 55 56>;
+			};
+
 			uart_AO: serial@1c00 {
 				compatible = "amlogic,meson-gx-uart",
 					     "amlogic,meson-ao-uart";
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
