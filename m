Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D590C32CB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 13:41:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:Message-Id:
	In-Reply-To:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	References:List-Owner; bh=aLyS9g1C6tfAgboxTeHPKA3BzDXXD7iX/WjHGloCRh0=; b=D0A
	TLHKEIkZdXTTol/n/cWM/eeVre5rAA4f3MQj/DIbc6dNSuSSo+6GTNwAomBQF8ECRFr6DZ2pGTnp4
	ACqg+zkZmij1XF6fH1/F38KjW6vyTcb4ijE9jZgXQe+bOhNjr4oKtvT0Hnxb7dbmiiLceBDA3qtCx
	MekYXYLfqYZTnD5fUgOjZlGyNfLpOKFlctANPDoomfjtlzvisC+8iUZjKjhsA37eoTO+sbtxdw/NK
	k4FZjguluahP16QxCtr0plDs8DG7XGNIm5AxYkelP/uc4FROOz79eIcx7cZNIJ/5ATQYglZh9QQy0
	BIWMc7NCyp9alXA4lqrXUjBEcIWZRxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFGWu-0007LG-P0; Tue, 01 Oct 2019 11:41:20 +0000
Received: from heliosphere.sirena.org.uk ([172.104.155.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFGWU-0007A9-Ex
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 11:40:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=sirena.org.uk; s=20170815-heliosphere; h=Date:Message-Id:In-Reply-To:
 Subject:Cc:To:From:Sender:Reply-To:MIME-Version:Content-Type:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
 List-Id:List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:
 List-Archive; bh=fST/AH+GOt2GHguW9Cy53gJrYgbzWWwyPXEqzuvSsEs=; b=tCb9X5iSdz0b
 Xn1KGOQTBvZ2Z6OVme0fjPxRVkv5AEjseEShBXVJMwGRdua+NxRxVeWRY0ZQQ+TAdA4vdPZdGo0gV
 A4jbN5nN+OwUmDI4e0LUa5vnuad2n0YS/DDUV8xELsEVOmGdCmQ+FqEFgbyhoOzvuddfSngWrAUfG
 NRjAE=;
Received: from cpc102320-sgyl38-2-0-cust46.18-2.cable.virginm.net
 ([82.37.168.47] helo=ypsilon.sirena.org.uk)
 by heliosphere.sirena.org.uk with esmtpsa
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <broonie@sirena.co.uk>)
 id 1iFGWQ-0004UX-V9; Tue, 01 Oct 2019 11:40:51 +0000
Received: by ypsilon.sirena.org.uk (Postfix, from userid 1000)
 id 5D7C527429C0; Tue,  1 Oct 2019 12:40:50 +0100 (BST)
From: Mark Brown <broonie@kernel.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Applied "ASoC: dt-bindings: Document "samsung,
 arndale-wm1811" compatible" to the asoc tree
In-Reply-To: <20190920130218.32690-7-s.nawrocki@samsung.com>
X-Patchwork-Hint: ignore
Message-Id: <20191001114050.5D7C527429C0@ypsilon.sirena.org.uk>
Date: Tue,  1 Oct 2019 12:40:50 +0100 (BST)
X-Bad-Reply: In-Reply-To but no 'Re:' in Subject.
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_044054_497259_B5F57A52 
X-CRM114-Status: GOOD (  13.70  )
X-Spam-Score: 0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [172.104.155.198 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
 linux-samsung-soc@vger.kernel.org, ckeepax@opensource.cirrus.com,
 b.zolnierkie@samsung.com, sbkim73@samsung.com, patches@opensource.cirrus.com,
 lgirdwood@gmail.com, Krzysztof Kozlowski <krzk@kernel.org>, robh+dt@kernel.org,
 Mark Brown <broonie@kernel.org>, linux-arm-kernel@lists.infradead.org,
 m.szyprowski@samsung.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The patch

   ASoC: dt-bindings: Document "samsung, arndale-wm1811" compatible

has been applied to the asoc tree at

   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git for-5.5

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

From f4528af69fdc112247a78599c6e8f7f618aff4e6 Mon Sep 17 00:00:00 2001
From: Sylwester Nawrocki <s.nawrocki@samsung.com>
Date: Fri, 20 Sep 2019 15:02:15 +0200
Subject: [PATCH] ASoC: dt-bindings: Document "samsung, arndale-wm1811"
 compatible

Add compatible string for boards with WM1811 CODEC to the list.

Acked-by: Krzysztof Kozlowski <krzk@kernel.org>
Signed-off-by: Sylwester Nawrocki <s.nawrocki@samsung.com>
Link: https://lore.kernel.org/r/20190920130218.32690-7-s.nawrocki@samsung.com
Signed-off-by: Mark Brown <broonie@kernel.org>
---
 Documentation/devicetree/bindings/sound/arndale.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/arndale.txt b/Documentation/devicetree/bindings/sound/arndale.txt
index 0e76946385ae..17530120ccfc 100644
--- a/Documentation/devicetree/bindings/sound/arndale.txt
+++ b/Documentation/devicetree/bindings/sound/arndale.txt
@@ -1,8 +1,9 @@
 Audio Binding for Arndale boards
 
 Required properties:
-- compatible : Can be the following,
-			"samsung,arndale-rt5631"
+- compatible : Can be one of the following:
+		"samsung,arndale-rt5631",
+		"samsung,arndale-wm1811"
 
 - samsung,audio-cpu: The phandle of the Samsung I2S controller
 - samsung,audio-codec: The phandle of the audio codec
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
