Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 099D613E09D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 17:45:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/KVZnXHPjqvfNESJrwTCVBqZif7OTk0fkLYS7AcVGK0=; b=JFrEecMfS/wuv5
	NmMA5ADcmM7/b/UBCNAAgyMBbkC3fUoJuLRlYV1edrrZq/kUMN8Vo3VpXt4Z8BAktn/MfXLogzcB5
	qN/XqYx4Hgeng+1QNaA53OPwaHzQS4en3QXXDYkwXPrAK5xYf/SCiyOZNbjkV2Ay+hNH5gFBBzxXW
	OQFM9CzBtCCJ+ICQoC6YG0LLQg7Vk/9ejJmux3dmQpHH7bDFvZZuL+Fd1ORVrn2122djK+28xLMs6
	1FPZuQoKfG/P+7zkAvVn4iEBsktlYfRtHflcbjNTzjxMmYzey1T8JST6jWHt/270hT97kuQLG3RwC
	dN2c/dlj0mOXzandk8lQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1is8GP-0007BS-EB; Thu, 16 Jan 2020 16:44:57 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1is8G9-0007AD-Gm; Thu, 16 Jan 2020 16:44:45 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DFB2D217F4;
 Thu, 16 Jan 2020 16:44:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579193081;
 bh=FpYL53Dj7ISOj370RYGF//iYufuzQ/MPLCM/sYKfHNI=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=2SMfKJvb7MCUwSJcYATMpfkOkrKfkjzygSB3wJY2VXpWOs33Nppkw1WyB6HItjj5Z
 8iqspO8qFx5TDbpOrcn8ku8Gz0X0ipPuEsr2HgKkrIWtpk+GpGzEOKLKaFNLz8sJwd
 JvLz/swmib8UcmCuDO9jNFGqauz83dAVQvnUeeSU=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.4 020/205] arm64: dts: meson: axg: fix audio fifo
 reg size
Date: Thu, 16 Jan 2020 11:39:55 -0500
Message-Id: <20200116164300.6705-20-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200116164300.6705-1-sashal@kernel.org>
References: <20200116164300.6705-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200116_084441_578226_1C46AA34 
X-CRM114-Status: UNSURE (   7.84  )
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

[ Upstream commit 301b94d434ac3a3cd576a4bc1053cc243d6bd841 ]

The register region size initially is too small to access all
the fifo registers.

Fixes: f2b8f6a93357 ("arm64: dts: meson-axg: add audio fifos")
Signed-off-by: Jerome Brunet <jbrunet@baylibre.com>
Signed-off-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 82919b106010..bb4a2acb9970 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1162,7 +1162,7 @@
 
 			toddr_a: audio-controller@100 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x100 0x0 0x1c>;
+				reg = <0x0 0x100 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_A";
 				interrupts = <GIC_SPI 84 IRQ_TYPE_EDGE_RISING>;
@@ -1173,7 +1173,7 @@
 
 			toddr_b: audio-controller@140 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x140 0x0 0x1c>;
+				reg = <0x0 0x140 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_B";
 				interrupts = <GIC_SPI 85 IRQ_TYPE_EDGE_RISING>;
@@ -1184,7 +1184,7 @@
 
 			toddr_c: audio-controller@180 {
 				compatible = "amlogic,axg-toddr";
-				reg = <0x0 0x180 0x0 0x1c>;
+				reg = <0x0 0x180 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "TODDR_C";
 				interrupts = <GIC_SPI 86 IRQ_TYPE_EDGE_RISING>;
@@ -1195,7 +1195,7 @@
 
 			frddr_a: audio-controller@1c0 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x1c0 0x0 0x1c>;
+				reg = <0x0 0x1c0 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_A";
 				interrupts = <GIC_SPI 88 IRQ_TYPE_EDGE_RISING>;
@@ -1206,7 +1206,7 @@
 
 			frddr_b: audio-controller@200 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x200 0x0 0x1c>;
+				reg = <0x0 0x200 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_B";
 				interrupts = <GIC_SPI 89 IRQ_TYPE_EDGE_RISING>;
@@ -1217,7 +1217,7 @@
 
 			frddr_c: audio-controller@240 {
 				compatible = "amlogic,axg-frddr";
-				reg = <0x0 0x240 0x0 0x1c>;
+				reg = <0x0 0x240 0x0 0x2c>;
 				#sound-dai-cells = <0>;
 				sound-name-prefix = "FRDDR_C";
 				interrupts = <GIC_SPI 90 IRQ_TYPE_EDGE_RISING>;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
