Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60D6C13ACDF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 16:02:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ekraAySPrFvoWXUmMU3RJh54asBK7DMGxPDO3AF6qMA=; b=BGziHtjlMDP8c8
	ZWWjvWpNjSNzq8ZYKAMWfBfEefy1GciF3TgVvRObTk9lA5Yiw1BZFVI0NlgQ8DczWouXImI5EDpCy
	xGbYImormdA14RDkgP6fzHahFMXZWFXqmgf7s5aSlSVm7F3Cl0AR0EJbDrr0Wdk057u9o0J4Qmd1R
	ZtcJhrT6TaFI2xTT9z077R5JoNpdFuI7v++duiQol0g+ApFl11XxTye6HycWg+Hde9WABQrpVibx1
	aSTdcP3QuMDPAdyu0EZLBUnf+coLdForBAMbSbgQx8sW1mMGw+ef6XZ24VyQUC+1dY1bkhuEaR2tT
	NGqkIgJp2q9y4IaGvQCQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irNhs-0003J4-Qm; Tue, 14 Jan 2020 15:02:12 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irNhe-0003Ho-25; Tue, 14 Jan 2020 15:02:03 +0000
Received: from ziggy.de (unknown [37.223.145.31])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 00324222C4;
 Tue, 14 Jan 2020 15:01:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579014117;
 bh=EKZ04GQRi8dqPD2Yc0r+3XDTaU1NagsiYPBB02PkBhI=;
 h=From:To:Cc:Subject:Date:From;
 b=Wk9SNhsjJF93erhd7Z/mXsMb6aFubTKoMH4FrFB4fHLRjr/S7MTiMybCQHGYKYxkk
 ahxGBo1inF2ecZ7qxh3cBJ4WvRGSxIU2jDCGphEN2ufaJonrEnr2dtSxaHSYyNz/9Y
 Qn1vTU2ftdIpoiHiSKgS0ALRfP7uTgZktFjshmjs=
From: matthias.bgg@kernel.org
To: robh+dt@kernel.org,
	broonie@kernel.org
Subject: [PATCH] ASoC: dt-bindings: rt5645: add suppliers
Date: Tue, 14 Jan 2020 16:01:50 +0100
Message-Id: <20200114150151.8537-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200114_070158_140004_977F88BD 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 alsa-devel@alsa-project.org, Nicolas Boichat <drinkcat@chromium.org>,
 Liam Girdwood <lgirdwood@gmail.com>, Daniel Kurtz <djkurtz@chromium.org>,
 linux-kernel@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-mediatek@lists.infradead.org, hsinyi@chromium.org,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <matthias.bgg@gmail.com>

The rt5645 and rt5650 have two suppliers, document them.

Signed-off-by: Matthias Brugger <matthias.bgg@gmail.com>

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
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
