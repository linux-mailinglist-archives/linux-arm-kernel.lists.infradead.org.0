Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BFEEA144328
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Jan 2020 18:28:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=7KwRsiEy7jSAlOpdhzTcNTzJeX6Kl7C+sPOrFiJEdoE=; b=elD
	6YvT5klBksbHYaEpYOFTONL0i92fG6tDQ/GXMm+ixfX9sR+wBVMwj2so3PAGhPW8c63X0i+Pyf+Uh
	CaLBTKMhlUbVedxkozwfbFT95JdA9cqpC01t8HD/B2Uloyy3nb5Y5ftyXbHiTOGt4BtIsI2aPy8J4
	UvsZr+kWWI1DpkfhqVJObMpkbDtxFcJTBcUZbTaF00J9UnpZiU9FXQMtgT3QGiFjFwdan9epD0wMB
	sSsWh+CdLD3sG6OSUH3RV+4vjKNIpjUWsOHQNsxmpHuLv2e7ucMoqmYACILvAG8U2D8czoWnRLzHj
	lTYgNmmOL3SHG8KsIpzq7otmBJ5jxyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itxK8-0005uV-0O; Tue, 21 Jan 2020 17:28:20 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itxJv-0005tO-BY; Tue, 21 Jan 2020 17:28:12 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8260830E;
 Tue, 21 Jan 2020 09:28:06 -0800 (PST)
Received: from localhost (unknown [10.37.6.21])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C82203F6C4;
 Tue, 21 Jan 2020 09:28:05 -0800 (PST)
Date: Tue, 21 Jan 2020 17:28:04 +0000
From: Mark Brown <broonie@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Applied "ASoC: dt-bindings: rt5645: add suppliers" to the asoc tree
In-Reply-To: <20200114150151.8537-1-matthias.bgg@kernel.org>
Message-Id: <applied-20200114150151.8537-1-matthias.bgg@kernel.org>
X-Patchwork-Hint: ignore
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_092807_439653_4C98C84E 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Nicolas Boichat <drinkcat@chromium.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Daniel Kurtz <djkurtz@chromium.org>,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Mark Brown <broonie@kernel.org>, linux-mediatek@lists.infradead.org,
 hsinyi@chromium.org, Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: dt-bindings: rt5645: add suppliers

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.6

All being well this means that it will be integrated into the linux-next
tree (usually sometime in the next 24 hours) and sent to Linus during
the next merge window (or sooner if it is a bug fix), however if
problems are discovered then the patch may be dropped or reverted.  

You may get further e-mails resulting from automated or manual testing
and review of the tree, please engage with people reporting problems and
send followup patches addressing any issues that are reported if needed.

If any updates are required or you are submitting further changes they
should be sent as incremental updates against current git, existing
patches will not be replaced.

Please add any relevant lists and maintainers to the CCs when replying
to this mail.

Thanks,
Mark

From 26aa19174f0d1837cb268b744f6dcb013265ab03 Mon Sep 17 00:00:00 2001
From: Matthias Brugger <matthias.bgg@gmail.com>
Date: Tue, 14 Jan 2020 16:01:50 +0100
Subject: [PATCH] ASoC: dt-bindings: rt5645: add suppliers

The rt5645 and rt5650 have two suppliers, document them.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

Link: https://lore.kernel.org/r/20200114150151.8537-1-matthias.bgg@kernel.org
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/rt5645.txt | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rt5645.txt b/Documentation/devicetree/bindings/sound/rt5645.txt
index a03f9a872a71..41a62fd2ae1f 100644
--- a/Documentation/devicetree/bindings/sound/rt5645.txt
+++ b/Documentation/devicetree/bindings/sound/rt5645.txt
@@ -10,6 +10,10 @@ Required properties:
 
 - interrupts : The CODEC's interrupt output.
 
+- avdd-supply: Power supply for AVDD, providing 1.8V.
+
+- cpvdd-supply: Power supply for CPVDD, providing 3.5V.
+
 Optional properties:
 
 - hp-detect-gpios:
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
