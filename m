Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB0F71A9C9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 13:36:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A9Bm3RW4eoMtD8URVrIkb0JePfu7cy91DzEoYhmA4J0=; b=GgMeUAxLcOBysX
	Ky6f+wP6YuIKk+lYdE9ZwFxKZkMM8rMhOePcTXN5CY71p5aCW4ZIYpeb7Z/8ApUxtWtOIZZTTdrJh
	itTUJlQDNw5dsQp1YRdIiX0cXBmTombtK9ITJ+Z8W94WX3tnfSS3ZZc7a25qzYq+PGlT2QAfrDuO0
	8MJfj1hkw8lEsTYquF1kQpsJ8zrcs31WRZKNs0akX9k1nOENu7XVK+y4se4d/juNz/oetspB4sNZR
	Uee7y3p6WKXj3LS3eATutC9SLYej4Y8sxg9FbjZT1jsXl8N0tth2aRgsKRzdVdjx/yLzgMD8BO4Fj
	E/X0ndDCtumgg9sJJ7Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOgLa-000102-IO; Wed, 15 Apr 2020 11:36:50 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOgK7-0008Pc-UD
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 11:35:21 +0000
Received: from sasha-vm.mshome.net (c-73-47-72-35.hsd1.nh.comcast.net
 [73.47.72.35])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 251C220775;
 Wed, 15 Apr 2020 11:35:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586950518;
 bh=VyOZnvDN6v7p/4EWitshi6AaubiDqI05pzbnVO4r8mA=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pHecc/lv0CeaDB9mMCQZOmkzMEvZ/OZR1TA3xrg2i8FZNoeQs/Q91l3F1kCaLBYeD
 s43GMM/kujtTkGsf5exvu2m5ssNAdlcnxraIKFpU+r6Q7XXJuRh6him1/TFlhqEqjz
 cMAuMgwM0qFsFQnv9vGZiQVrjoPkp+9YM/hazP2k=
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Subject: [PATCH AUTOSEL 5.6 028/129] arm64: dts: marvell: espressobin: add
 ethernet alias
Date: Wed, 15 Apr 2020 07:33:03 -0400
Message-Id: <20200415113445.11881-28-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200415113445.11881-1-sashal@kernel.org>
References: <20200415113445.11881-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_043520_081999_EFE5F43C 
X-CRM114-Status: UNSURE (   9.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tomasz Maciej Nowak <tmn505@gmail.com>, Sasha Levin <sashal@kernel.org>,
 Gregory CLEMENT <gregory.clement@bootlin.com>,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Tomasz Maciej Nowak <tmn505@gmail.com>

[ Upstream commit 5253cb8c00a6f4356760efb38bca0e0393aa06de ]

The maker of this board and its variants, stores MAC address in U-Boot
environment. Add alias for bootloader to recognise, to which ethernet
node inject the factory MAC address.

Signed-off-by: Tomasz Maciej Nowak <tmn505@gmail.com>
Signed-off-by: Gregory CLEMENT <gregory.clement@bootlin.com>
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
index 53b8ac55a7f3d..e5262dab28f58 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin.dtsi
@@ -13,6 +13,12 @@
 #include "armada-372x.dtsi"
 
 / {
+	aliases {
+		ethernet0 = &eth0;
+		serial0 = &uart0;
+		serial1 = &uart1;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
