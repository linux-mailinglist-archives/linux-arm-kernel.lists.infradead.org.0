Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 36D811DFAE9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 23 May 2020 22:16:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8Md6bCvoLNEFPT/yRrjhAqDjiYBlq9Kc2T8xLbl8r4=; b=NB1dQVszIXDEN6
	3U2EyGGkD8SHp8THGK4QwTivm5N6b999ALa4KRrOSup7gmwAhrKhniu2ZLAH/hnVzlNDbTSb6MESL
	oKFqRokYNNpukY5PAaFeM5ZfS/CMnTIm18uqxOIYgw7q50PDScVm3AyixT7vGeIiRFr5z/n8chYn0
	Cc+wOkgRKBWgEa5oD0dPZE/hKDhmXyWVkBikCFAirwkEH8FXq1EmUgY293LKMLb0+DtYGZ17p5kgo
	3Leqsow6Lqve8cK8tTqUkV0mmV/dTQ8eb8P/lMBG9QTAlzE6k8+8zjR/mQeRDV2pIvBDd05iyRw1c
	YYDlzHzT0yQPW+dcZphg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jcaYs-0001SL-EU; Sat, 23 May 2020 20:16:02 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jcaYh-0001Rk-EN; Sat, 23 May 2020 20:15:52 +0000
Received: from ziggy.de (unknown [213.195.113.243])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 332B420735;
 Sat, 23 May 2020 20:15:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1590264945;
 bh=6NVJkDskDeSVG7nACrgOiBNrXbEYpv5thIkjzs1fYpQ=;
 h=From:To:Cc:Subject:Date:From;
 b=YqJ1UC6/w724lYfsZMcCtX6NO+gGocMubK8pXx+Y7r0uYeXyR+3ErvxQlffNYL3pf
 VD+VpIpVPxmTiN2S8S1PUOCUjN3npLKQ1iIlvkW1BET+zmFVX10n3nYiqQZMfkuFXn
 M16XalZKAkz22ItTu9hAFLiRjAAAoINHcjlR/C3o=
From: matthias.bgg@kernel.org
To: sean.wang@mediatek.com,
	vkoul@kernel.org,
	robh+dt@kernel.org
Subject: [PATCH] dt-bindings: dma: uart: mtk: fix example
Date: Sat, 23 May 2020 22:15:30 +0200
Message-Id: <20200523201530.18225-1-matthias.bgg@kernel.org>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200523_131551_502767_4EF80C36 
X-CRM114-Status: UNSURE (   9.48  )
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
Cc: devicetree@vger.kernel.org, Matthias Brugger <mbrugger@suse.com>,
 linux-kernel@vger.kernel.org, dmaengine@vger.kernel.org,
 linux-mediatek@lists.infradead.org, matthias.bgg@gmail.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Matthias Brugger <mbrugger@suse.com>

The binding example is missing the fallback compatible.
This is needed as the driver only matches against mt6577.

Signed-off-by: Matthias Brugger <mbrugger@suse.com>
---
 Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
index 5d6f98c43e3d..2117db0ce4f2 100644
--- a/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
+++ b/Documentation/devicetree/bindings/dma/mtk-uart-apdma.txt
@@ -21,7 +21,8 @@ Required properties:
 Examples:
 
 	apdma: dma-controller@11000400 {
-		compatible = "mediatek,mt2712-uart-dma";
+		compatible = "mediatek,mt2712-uart-dma",
+			     "mediatek,mt6577-uart-dma";
 		reg = <0 0x11000400 0 0x80>,
 		      <0 0x11000480 0 0x80>,
 		      <0 0x11000500 0 0x80>,
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
