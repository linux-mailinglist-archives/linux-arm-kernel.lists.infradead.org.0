Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 428F778DBE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 16:24:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Aoyq05H39sGMYhw0PHjhDzDEYU1pOJGk1CQuzVB/eD4=; b=dwu
	GKMCUMaJh7UX5rJmjdmzcl3vnTpZPJnPS6Ut2qKOjrapF4BkJ+2QSuf7hUKBa8xgFBKEXxDmSCIlm
	VVZVY1TP7rEvKV/sM3pzOrsb9sX7iSxsKOr7+4zULKdF585fYObRna5pVYcCyHn1UlvnWL12bEpHX
	wE/jsRjImKO3mFjaMpW63ZMHhhtCD4PPTdZC5We1mPYkIMnAoU9BbfwdMFxdVISaJcgg8iSd/ophy
	Ajse4bxnmn6IUGG4at+uYZeZHHi/RuAiwBXMPPdwr4rcbGv5ny/Om2BzVXsB6hRbsVjBFMRbldTkB
	zQWYK2le8TqW9SNkd+YiY9UmRm0Pb+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs6ZJ-0002oD-K9; Mon, 29 Jul 2019 14:24:05 +0000
Received: from viti.kaiser.cx ([2a01:238:43fe:e600:cd0c:bd4a:7a3:8e9f])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs6Z4-0002nI-6y
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 14:23:51 +0000
Received: from [46.114.3.104] (helo=martin-debian-1.paytec.ch)
 by viti.kaiser.cx with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <martin@kaiser.cx>)
 id 1hs6Yw-0005cy-4j; Mon, 29 Jul 2019 16:23:42 +0200
From: Martin Kaiser <martin@kaiser.cx>
To: Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, Rob Herring <robh+dt@kernel.org>
Subject: [PATCH] ARM: dts: imx25-pdk: native-mode is part of display-timings
Date: Mon, 29 Jul 2019 16:23:16 +0200
Message-Id: <20190729142316.21900-1-martin@kaiser.cx>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_072350_404138_6F34E5EE 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Martin Kaiser <martin@kaiser.cx>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Move the native-mode property inside the display-timings node.

According to
Documentation/devicetree/bindings/display/panel/display-timing.txt.
native-mode is a property of the display-timings node.

If it's located outside of display-timings, the native-mode setting is
ignored and the first display timing is used (which is a problem only if
someone adds another display timing).

Signed-off-by: Martin Kaiser <martin@kaiser.cx>
---

Dear all,

I found this issue on a similar board when I tried to define two
variants that use different displays. I had two display timings and
ended up using the wrong one because native-mode was ignored outside of
display-timings.

Thanks for reviewing the patch,

   Martin

 arch/arm/boot/dts/imx25-pdk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/imx25-pdk.dts b/arch/arm/boot/dts/imx25-pdk.dts
index f8544a9e4633..05cccd12624c 100644
--- a/arch/arm/boot/dts/imx25-pdk.dts
+++ b/arch/arm/boot/dts/imx25-pdk.dts
@@ -76,8 +76,8 @@
 		bits-per-pixel = <16>;
 		fsl,pcr = <0xfa208b80>;
 		bus-width = <18>;
-		native-mode = <&wvga_timings>;
 		display-timings {
+			native-mode = <&wvga_timings>;
 			wvga_timings: 640x480 {
 				hactive = <640>;
 				vactive = <480>;
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
