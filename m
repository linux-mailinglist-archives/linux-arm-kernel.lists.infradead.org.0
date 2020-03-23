Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59B2D18F1DF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 23 Mar 2020 10:33:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=tTJHjkfq3/UJvLePdWXOmkvd5rnerSnVgS7PeGNtG0s=; b=eljkMPtqx3MOhM/Aj0cNwzdF/b
	Pm3XNuALjO6hc6uOXo+5/otbxICjrfMMoLt5aGC8IHvt4qyoEUXaqVLAQ6jpvQxfjliOvgku2s+Hr
	K+jGCiinIgEI28gD24fWfulvGcEM+QKACXT7CZeNMKNXr9iMFLxoUtwUBuqu6u+TXewzhynGAh9Hi
	Lq0NuKIo5MBvtajotOiu3CBqiNGKuX2RKc+z9Bch+2pRJUwCBuZAT9v0UFN1tu6JYY8p5f9ER19vh
	g9jnFiIDmSB6bTi5h3qyns8lyDsqPsQVYKvuyRbS7F+jkChGMqwapB9JmRFEriD7ZuheqKSsKIcac
	l6MryZJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jGJSR-0001dL-Ce; Mon, 23 Mar 2020 09:33:19 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jGJSH-0001bo-PH
 for linux-arm-kernel@lists.infradead.org; Mon, 23 Mar 2020 09:33:11 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 23 Mar 2020 18:33:08 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id 9CE87180BCB;
 Mon, 23 Mar 2020 18:33:08 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Mon, 23 Mar 2020 18:33:08 +0900
Received: from plum.e01.socionext.com (unknown [10.213.132.32])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 2A4301A12AD;
 Mon, 23 Mar 2020 18:33:08 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH v3 1/6] dt-bindings: dma: uniphier-xdmac: Consolidate register
 region description
Date: Mon, 23 Mar 2020 18:32:45 +0900
Message-Id: <1584955970-8162-2-git-send-email-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
References: <1584955970-8162-1-git-send-email-hayashi.kunihiko@socionext.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200323_023309_941506_62AE34D1 
X-CRM114-Status: GOOD (  15.05  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [202.248.49.38 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org,
 Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 linux-arm-kernel@lists.infradead.org, Jassi Brar <jaswinder.singh@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The extension register region isn't currently referred from the driver, so
this consolidates the extension register region description into the base
register region, and spreads the region size in example.

Fixes: b9fb56b6ba8a ("dt-bindings: dmaengine: Add UniPhier external DMA controller bindings")
Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
index 86cfb59..830cd88 100644
--- a/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
+++ b/Documentation/devicetree/bindings/dma/socionext,uniphier-xdmac.yaml
@@ -23,8 +23,7 @@ properties:
 
   reg:
     items:
-      - description: XDMAC base register region (offset and length)
-      - description: XDMAC extension register region (offset and length)
+      - description: XDMAC register region (offset and length)
 
   interrupts:
     maxItems: 1
@@ -54,7 +53,7 @@ examples:
   - |
     xdmac: dma-controller@5fc10000 {
         compatible = "socionext,uniphier-xdmac";
-        reg = <0x5fc10000 0x1000>, <0x5fc20000 0x800>;
+        reg = <0x5fc10000 0x5100>;
         interrupts = <0 188 4>;
         #dma-cells = <2>;
         dma-channels = <16>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
