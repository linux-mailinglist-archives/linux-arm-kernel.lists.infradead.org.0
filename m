Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB920135EC
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:05:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=9DRp3nPYrpqkdKIgvUFB5AHmBwXjGA1ezTul9hab/oo=; b=gaN
	cd6sj48dEQ2Mj090ICmRP7SwKhoBKNKD8uNCgh1yj59vDijAyqwfhSMewUWpw54ahDpjt52CVvKVu
	+epglAj8YeO19hUG+cYYzq0jkmW6vgAtvqMSHb4qYFrqadHJNmmx9tNlmzGZBxUsp+GzRUFXrfdHh
	sJpFTP6GrH10qfO2kKSfojK2/i1Oo+hMp/lMcEUKpRRuwGiW/28OhEM/5oLeyIKPIdOb3pKp+kfl3
	BZCBJ34Hlkb18Hq7kSSqcpU3p2+BECSb5vtm4yolh78H+B89TlLkbD+6gAg/zqrs8Q7EPDiwuIa5E
	d607ogrA1U22X6M9NSJH0k4P3cYvg2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhFV-0008T2-9M; Fri, 03 May 2019 23:05:49 +0000
Received: from mail2.sp2max.com.br ([138.185.4.9])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhFO-0008Rr-CT
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:05:44 +0000
Received: from pgsop.sopnet.com.ar (unknown [179.40.38.12])
 (Authenticated sender: pablo@fliagreco.com.ar)
 by mail2.sp2max.com.br (Postfix) with ESMTPA id DCD307B305F;
 Fri,  3 May 2019 20:05:25 -0300 (-03)
From: Pablo Greco <pgreco@centosproject.org>
To: linux-sunxi@googlegroups.com
Subject: [PATCH] ARM: dts: sun8i: r40: bananapi-m2-ultra: Remove
 regulator-always-on
Date: Fri,  3 May 2019 20:05:19 -0300
Message-Id: <1556924720-49372-1-git-send-email-pgreco@centosproject.org>
X-Mailer: git-send-email 1.8.3.1
X-SP2Max-MailScanner-Information: Please contact the ISP for more information
X-SP2Max-MailScanner-ID: DCD307B305F.A4ECF
X-SP2Max-MailScanner: Sem Virus encontrado
X-SP2Max-MailScanner-SpamCheck: nao spam, SpamAssassin (not cached,
 escore=-2.9, requerido 6, autolearn=not spam, ALL_TRUSTED -1.00,
 BAYES_00 -1.90)
X-SP2Max-MailScanner-From: pgreco@centosproject.org
X-Spam-Status: No
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_160542_605616_39BCD972 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Maxime Ripard <maxime.ripard@bootlin.com>,
 Pablo Greco <pgreco@centosproject.org>, linux-kernel@vger.kernel.org,
 Chen-Yu Tsai <wens@csie.org>, Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Now that the regulators are tied to the GPIO bank, we can remove the
unneeded regulator-always-on in reg_aldo2

Signed-off-by: Pablo Greco <pgreco@centosproject.org>
---
 arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
index 699579d..42d62d1 100644
--- a/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
+++ b/arch/arm/boot/dts/sun8i-r40-bananapi-m2-ultra.dts
@@ -210,7 +210,6 @@
 };
 
 &reg_aldo2 {
-	regulator-always-on;
 	regulator-min-microvolt = <2500000>;
 	regulator-max-microvolt = <2500000>;
 	regulator-name = "vcc-pa";
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
