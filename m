Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4D8A13E0BD
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:45:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=krMs+FUAl95EuNZ+Jt3rlNW+uvEo18wgdCgj+TsuOQQ=; b=T7/evoDzTn6Vah
	p4Xl/tfutKxuZqJCZNexbz8zaADSTZ+Iy0Da2KqVr6BY2X66Xk81pKMq7UIojJY56xnmajdvt2YTm
	u2SPzoea5ZREwLhSkk85ErqAMWH/myNCyr/d/ywtvrStBu0wCIehsCJjIR34X5RvcnN8Z2+xXkqnD
	b8Halfa0w1E2r194NoJBBE8C0jE+Sv0X7w2FViz2zGpaX/cr0iB3/KRPZWIBQ0A+J7mVJSG0o+Vn2
	NS99RPlUVnTlliUx0ZS6s6nHeIInZcZQ+AI+LCYC7oPKQFnq69zepKD0B0hOb/4xs3PeQTfGPCmOu
	5evtxTWiCfuH7UFyLqaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8Gy-0007Pa-U0; Thu, 16 Jan 2020 16:45:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8GD-0007AQ-Gk; Thu, 16 Jan 2020 16:44:46 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 06B39207FF;
 Thu, 16 Jan 2020 16:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193085;
 bh=ATnt4RrCVTVumt37ZTlIcy17h2FQk88wKOYRK100tSI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=zZvcMy5IPWowg1RgBrPUpCQX42tDMydz8YW/AJdR0tlWj5yYXn6u4oqDyG9/NVrIi
 9ilRMYjKG1QKc1lzwOq7Rl9MBoW6xzXG4F72YoNqQ/BehUTo4gkc7Lg8Us1fTHgQiy
 /kMIfC6lFBq3re7HpwNr9egTh+s1+HNN+4oz2Fb4=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 021/205] arm64: dts: meson: g12: fix audio fifo
 reg size
Date: Thu, 16 Jan 2020 11:39:56 -0500
Message-Id: <20200116164300.6705-21-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084445_594026_85B56D47 
X-CRM114-Status: UNSURE (   7.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Sasha Levin <sashal@kernel.org>, devicetree@vger.kernel.org,
 Kevin Hilman <khilman@baylibre.com>, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Jerome Brunet <jbrunet@baylibre.com>

[ Upstream commit 22c4b148a0a1085e57a470e6f7dc515cf08f5a5c ]

The register region size initially is too small to access all
the fifo registers.

Fixes: c59b7fe5aafd ("arm64: dts: meson: g12a: add audio fifos")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index 3f39e020f74e..0ee8a369c547 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -1509,7 +1509,7 @@
 				toddr_a: audio-controller@100 {
 					compatible = "amlogic,g12a-toddr",
 						     "amlogic,axg-toddr";
-					reg = <0x0 0x100 0x0 0x1c>;
+					reg = <0x0 0x100 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "TODDR_A";
 					interrupts = <GIC_SPI 148 IRQ_TYPE_EDGE_RISING>;
@@ -1521,7 +1521,7 @@
 				toddr_b: audio-controller@140 {
 					compatible = "amlogic,g12a-toddr",
 						     "amlogic,axg-toddr";
-					reg = <0x0 0x140 0x0 0x1c>;
+					reg = <0x0 0x140 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "TODDR_B";
 					interrupts = <GIC_SPI 149 IRQ_TYPE_EDGE_RISING>;
@@ -1533,7 +1533,7 @@
 				toddr_c: audio-controller@180 {
 					compatible = "amlogic,g12a-toddr",
 						     "amlogic,axg-toddr";
-					reg = <0x0 0x180 0x0 0x1c>;
+					reg = <0x0 0x180 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "TODDR_C";
 					interrupts = <GIC_SPI 150 IRQ_TYPE_EDGE_RISING>;
@@ -1545,7 +1545,7 @@
 				frddr_a: audio-controller@1c0 {
 					compatible = "amlogic,g12a-frddr",
 						     "amlogic,axg-frddr";
-					reg = <0x0 0x1c0 0x0 0x1c>;
+					reg = <0x0 0x1c0 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "FRDDR_A";
 					interrupts = <GIC_SPI 152 IRQ_TYPE_EDGE_RISING>;
@@ -1557,7 +1557,7 @@
 				frddr_b: audio-controller@200 {
 					compatible = "amlogic,g12a-frddr",
 						     "amlogic,axg-frddr";
-					reg = <0x0 0x200 0x0 0x1c>;
+					reg = <0x0 0x200 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "FRDDR_B";
 					interrupts = <GIC_SPI 153 IRQ_TYPE_EDGE_RISING>;
@@ -1569,7 +1569,7 @@
 				frddr_c: audio-controller@240 {
 					compatible = "amlogic,g12a-frddr",
 						     "amlogic,axg-frddr";
-					reg = <0x0 0x240 0x0 0x1c>;
+					reg = <0x0 0x240 0x0 0x2c>;
 					#sound-dai-cells = <0>;
 					sound-name-prefix = "FRDDR_C";
 					interrupts = <GIC_SPI 154 IRQ_TYPE_EDGE_RISING>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
