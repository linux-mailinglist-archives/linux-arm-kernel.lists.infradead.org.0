Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A3EE88B914
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 13 Aug 2019 14:48:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k9pQvhxX281zjkwa3ZaHvyPy4ng7503eHvvexTLt1GA=; b=gJa2GEMN9cd7ie
	Gw25Jph/mhQ44nwbs/ppErB6xrm9QpByvXxpWfIR4t20IafaV/oHL1ooZMmgH9UbAT6N4zxVT8MhS
	X7+R/uyPXRDM7w0QewNeupRlT9AqmYTvE9HEvqcF1BykrBILlNXwj7TMp8ug0C8UVEjhonrM47gWi
	eXB3PFkiXmQuBN/XpYFXiupbe7RE/DTwphiiNnoX8sihx4wU94t1ECAsEsTz3cr+Kg8FH49MTERHm
	mGeAhMcZdgecuzlRKG4Ba4AHTLZJpPnX0+K7IHvY90nk9MGhaWcYve1U3xqgjjmJd+ib+ncu1Th25
	fnTjc4bFsgNuN/TMxXug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxWE0-0006Nq-4m; Tue, 13 Aug 2019 12:48:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxWDR-0005vI-Eb
 for linux-arm-kernel@lists.infradead.org; Tue, 13 Aug 2019 12:47:54 +0000
Received: from localhost (lfbn-1-17395-211.w86-250.abo.wanadoo.fr
 [86.250.200.211])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A2A922085A;
 Tue, 13 Aug 2019 12:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565700473;
 bh=fK5hDNjRuNS77RPfIT+JYLABnTrKkRRYlSzM051qvLk=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=qtLC0+FjMtX2PpANrFFwlrg4UdEHF35C/aYylTdp4pgcxiabgIKoggv6/ddaYKRvJ
 76EwtZduy6hKmfgMtvjH5UcQVZ9KhKtxJtFOlBIZ81CTArvajcEsYpVn0TbqefLFbO
 qWNppVCDVmLxWVrD8LrMtgrkrekxWNuK8DZ5GQ64=
From: Maxime Ripard <mripard@kernel.org>
To: linux@roeck-us.net,
	wim@linux-watchdog.org
Subject: [PATCH 3/5] dt-bindings: watchdog: sun4i: Add the watchdog interrupts
Date: Tue, 13 Aug 2019 14:47:42 +0200
Message-Id: <20190813124744.32614-3-mripard@kernel.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190813124744.32614-1-mripard@kernel.org>
References: <20190813124744.32614-1-mripard@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190813_054753_516405_F77ADB92 
X-CRM114-Status: GOOD (  10.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 Maxime Ripard <maxime.ripard@bootlin.com>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

The Allwinner watchdog has an interrupt, either shared or dedicated
depending on the SoC, that has been described in some DT, but not all of
them.

The binding is also completely missing that description. Let's add that
property to be consistent.

Signed-off-by: Maxime Ripard <maxime.ripard@bootlin.com>
---
 .../bindings/watchdog/allwinner,sun4i-a10-wdt.yaml           | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
index 93df27ec1664..4ace89f129b4 100644
--- a/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
+++ b/Documentation/devicetree/bindings/watchdog/allwinner,sun4i-a10-wdt.yaml
@@ -28,6 +28,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
   timeout-sec:
     $ref: /schemas/types.yaml#/definitions/uint32
     description:
@@ -36,6 +39,7 @@ properties:
 required:
   - compatible
   - reg
+  - interrupts
 
 additionalProperties: false
 
@@ -44,6 +48,7 @@ examples:
     wdt: watchdog@1c20c90 {
         compatible = "allwinner,sun4i-a10-wdt";
         reg = <0x01c20c90 0x10>;
+        interrupts = <24>;
         timeout-sec = <10>;
     };
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
