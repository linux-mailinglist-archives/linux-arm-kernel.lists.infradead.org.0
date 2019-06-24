Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE61550943
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 12:53:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=NkgUX5s2uPH3xcaHod61/EqGCGTsddRrV6hujTeFBRQ=; b=WVPBwe47PH8lpzVc2BnAIw6RwE
	G/LSOb6XbRHpeoiMfFHSf6yG/sktKgEvAzHm3Za7JQDbA22bLS1EVSeSS7bHo/Z4hbOaWUuWbyPhL
	xDj/LtV1Zrvrvpq62dAwIWBZVaELWwcNyXnJRjzep+Atgd5mzXrKc/IBqmItzKnsUErLd3mEplS3F
	lu44PAJ/OxSrujvYMDTTGKEC8bzW/wmXg+YxoUuKKljn+ArPECQYeEifXw1pTXa4yESedRy0VM9Zz
	j4gmGdS57xGsKKcJSJxZ6/CTqIuGTKRGbZycjqcTQ6zNms+4+F91L5LHJwQv2sXTNm0DMmeNlRhYY
	qa2ftWPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfMbI-0007tC-4X; Mon, 24 Jun 2019 10:53:28 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfMag-0007UF-6M
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 10:52:51 +0000
Received: from penelope.horms.nl (ip4dab7138.direct-adsl.nl [77.171.113.56])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 40E6725B7C5;
 Mon, 24 Jun 2019 20:52:42 +1000 (AEST)
Received: by penelope.horms.nl (Postfix, from userid 7100)
 id 1020FE21A96; Mon, 24 Jun 2019 12:52:40 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-renesas-soc@vger.kernel.org
Subject: [PATCH v3 2/2] arm64: dts: renesas: r8a77995: Add cpg reset for DU
Date: Mon, 24 Jun 2019 12:52:24 +0200
Message-Id: <20190624105224.23927-3-horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190624105224.23927-1-horms+renesas@verge.net.au>
References: <20190624105224.23927-1-horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_035250_404172_65B9F6A4 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Yoshihiro Kaneko <ykaneko0929@gmail.com>,
 Magnus Damm <magnus.damm@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Yoshihiro Kaneko <ykaneko0929@gmail.com>

Add CPG reset properties to DU node of D3 (r8a77995) SoC.

According to Laurent Pinchart, R-Car Gen3 reset is handled at the group
level so specifying one reset entry per group is sufficient.

This patch was inspired by a patch in the BSP by
Takeshi Kihara <takeshi.kihara.df@renesas.com>.

Signed-off-by: Yoshihiro Kaneko <ykaneko0929@gmail.com>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
v3 [Simon Horman]
- rewrote changelog

v2 [Simon Horman]
- only add one reset entry per group

v1 [Yoshihiro Kaneko]
---
 arch/arm64/boot/dts/renesas/r8a77995.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/r8a77995.dtsi b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
index 0a344eb55094..ca6aeabd6d04 100644
--- a/arch/arm64/boot/dts/renesas/r8a77995.dtsi
+++ b/arch/arm64/boot/dts/renesas/r8a77995.dtsi
@@ -1001,6 +1001,8 @@
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
