Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AB9E19A3F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 05:23:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=N59c2J+bhSfdU6R0W0Keq5wVcqz7OlR+Oq3l5Tg8dlc=; b=pk0
	AiWZFcmFOQpyU4V4s5hpraHoDG6QkxWN8ni4iP674X7b46XPiXdT1ftsmnImpJAtmymJ+vJYN21W1
	kVU8wW3bpDpB08CCuXlrEJMZ+NSF1CFN0rcrmImBtyUp8p4CdXwOLTJL1tze+0YGWkSVDE9g1kehM
	nIyFk27dXliba7+QSrq9FkNf8ITtptmyT4DSFh1CTH62qJd+RSxzPsfUE+V8SlRbfYRSSucuxRjum
	s/ruBNSsNTdDQKL/0wmYxywcr3ZX48P8Amzzcz8pLHCKPOhpCyljz30MYetJlFpV0dPARxbf5QjcU
	ltKkftCUiPE3nOVhb1zppPhs7Lgx4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJTxx-0007Tp-Ik; Wed, 01 Apr 2020 03:22:57 +0000
Received: from conuserg-11.nifty.com ([210.131.2.78])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJTxr-0007TK-Vr
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Apr 2020 03:22:53 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-11.nifty.com with ESMTP id 0313MSET017333;
 Wed, 1 Apr 2020 12:22:29 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-11.nifty.com 0313MSET017333
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1585711350;
 bh=6cmk4VhYcoiSK0648BJFDTb8WGo1i4aniwWtusevAaQ=;
 h=From:To:Cc:Subject:Date:From;
 b=n0crX8GxExB2dPg/8QhQatWt02gUfaOo6/Q6XF2RR3LPaFrXrpow0/nhIbhk9UaSp
 a/+rhR9iy+jrfi4TIoRdURW1PVBAGPQ1E0Qbb7appR14bGzqqheIN3+Tx7tsYwceEx
 mQJxi6OQmpZb6Nar5VNm/dmqec/IsB23ZD5zBEZG7VFGh1uBd2BGZXjlY06PyQGSak
 7xgUgyNtqdbz+b1rgf6jKiqrYZsw273kOa1j7abnHphGqOx+Ff8e6bVIajur46u3j7
 LWs5x+R6+Vo36uvL3YHv/n2qz6z9yTXvH54CSJPzjKW07NcFPpKL7LMbISOrkFEyh6
 924kwGhB0OP7Q==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: Vinod Koul <vkoul@kernel.org>, dmaengine@vger.kernel.org
Subject: [PATCH] dt-bindings: dma: uniphier-xdmac: switch to single reg region
Date: Wed,  1 Apr 2020 12:21:50 +0900
Message-Id: <20200401032150.19767-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200331_202252_361646_215990EF 
X-CRM114-Status: UNSURE (   9.36  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.78 listed in list.dnswl.org]
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The reg in the example "<0x5fc10000 0x1000>, <0x5fc20000 0x800>"
is wrong. The register region of this controller is much smaller,
and there is no other hardware register interleaved. There is no
good reason to split it into two regions.

Just use a single, contiguous register region.

While I am here, I made the 'dma-channels' property mandatory because
otherwise there is no way to determine the number of the channels.

Please note the original binding was merged recently. Since there
is no user yet, this change has no actual impact.

Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

We do not need to touch the driver either because the second
region is not used.


 .../devicetree/bindings/dma/socionext,uniphier-xdmac.yaml  | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
index 86cfb599256e..371f18773198 100644
--- a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
+++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
@@ -22,9 +22,7 @@ properties:
     const: socionext,uniphier-xdmac
 
   reg:
-    items:
-      - description: XDMAC base register region (offset and length)
-      - description: XDMAC extension register region (offset and length)
+    maxItems: 1
 
   interrupts:
     maxItems: 1
@@ -49,12 +47,13 @@ required:
   - reg
   - interrupts
   - "#dma-cells"
+  - dma-channels
 
 examples:
   - |
     xdmac: dma-controller@5fc10000 {
         compatible = "socionext,uniphier-xdmac";
-        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
+        reg = <0x5fc10000 0x5300>;
         interrupts = <0 188 4>;
         #dma-cells = <2>;
         dma-channels = <16>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
