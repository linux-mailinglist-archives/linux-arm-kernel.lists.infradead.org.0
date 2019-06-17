Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DDCA47D49
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Jun 2019 10:38:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1mTEOMxu7cIRNqH0kAVmTQrV/uweqPrMB7edI467jUM=; b=LMiVIyXwfPQd8pBuXEVxO9+5gS
	PjTcYzYwoVqMQM7VJa3dB7S93wAwiWTbty3LjGp9SbhN/o2m1Z6k37VuJbW6LA7ZM7d6riXPq7A4h
	bN9Hawk0uzsvbh+WUFlEA+IltBF8i3nxaNvZVP7rDoXS4qcDKXP3Do703Cemf2VUu2OSipY+QO1lC
	Jo66CLTYkizg24g4wtW8dLjMStDKKp4zYOB4w3ekuHz+U/7EbUFYF34qEeq5eer0XXE0en4+zcu6g
	iAmCLa4HgOtKXsQb3QjdDifS8wgE8D82q4gx51nrm5sykzOCgMu7zRSAVXva/2LiYm1OxBBJRVyYb
	REr44Bag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hcn9e-00050c-W3; Mon, 17 Jun 2019 08:38:19 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hcn8r-0004jD-J5
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Jun 2019 08:37:31 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 7544F25B740;
 Mon, 17 Jun 2019 18:37:23 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 75046940228; Mon, 17 Jun 2019 10:37:21 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH v2 1/2] arm64: dts: renesas: r8a77990: Add cpg reset for LVDS
 Interface
Date: Mon, 17 Jun 2019 10:37:03 +0200
Message-Id: <20190617083704.3941-2-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190617083704.3941-1-horms+renesas@verge.net.au>
References: <20190617083704.3941-1-horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190617_013729_814490_3981467C 
X-CRM114-Status: GOOD (  11.14  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Takeshi Kihara <takeshi.kihara.df@renesas.com>,
 Yoshihiro Kaneko <ykaneko0929@gmail.com>, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Simon Horman <horms+renesas@verge.net.au>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Takeshi Kihara <takeshi.kihara.df@renesas.com>

It is necessary to reset the LVDS Interface according to display on/off.
Therefore, this patch adds CPG reset properties in DU device node
for the R8A77990 SoC.

According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
level so specifying one reset entry per group is sufficient. For this
reason <&cpg 724> is not listed as a reset for "du.1" as was the case in an
earlier revision of this patch.

Signed-off-by: Takeshi Kihara <takeshi.kihara.df@renesas.com>
Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
v2 [Simon Horman]
- only add one reset entry per group

v1 [Yoshihiro Kaneko]

v0 [Takeshi Kihara]
---
 arch/arm64/boot/dts/renesas/r8a77990.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77990.dtsi b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
index b4318661f35e..84d1f58e73e7 100644
--- a/arch/arm64/boot/dts/renesas/r8a77990.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77990.dtsi
@@ -1766,6 +1766,8 @@
 			clocks = <&cpg CPG_MOD 724>,
 				 <&cpg CPG_MOD 723>;
 			clock-names = "du.0", "du.1";
+			resets = <&cpg 724>;
+			reset-names = "du.0";
 			vsps = <&vspd0 0 &vspd1 0>;
 			status = "disabled";
 
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
