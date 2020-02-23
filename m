Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622D7169903
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 18:30:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Hx+ef8nxRq8DZtdAkdQjV6QGfo02ZIEtxXOUh/5+rW8=; b=Cn7ybUPoe8Htva
	KxutWS/xcGLFxHDCtyvN/X8rhVChfFf5HGAB600neRBn7wmS4B0hZ3jkAE5Izqqdv1rO1Sm7EuNzW
	8yfKKRTKFW0aDEioaZTyQzUP1v+WAll8upIZjYN2wyjC1EuG4XvqmpyErbcxCIldbXDqk8lbXgL3M
	oRUsSUku39tH4HSvbKMWWm9t9kZXi7d/j8KTYI84DWJXe5qnzRHKNqlNX6Ygx7kzvxKsShEi+jIuh
	wjxKhF/hoGXxJ7Y1FwgyNIBFieYpClgMsoPa3CM+BsrzVcJP6YsA7y7BfDFRBdWInBIjdfUY+n45L
	n5IYPNoufOSPPUCJ/mBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5v58-00070M-Vz; Sun, 23 Feb 2020 17:30:19 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5v4L-0006Xd-Ck
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 17:29:32 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1582478966; bh=xWvIq2K8vFLnETTDs7Gq4WrOOk7m+WA+aN0LYzNvStA=;
 h=From:To:Cc:Subject:Date:References:From;
 b=QDN6KAniOV+RdBqj3rt/ejmUhdo5aZhXStUvI1yDle2O9TE9uWeWy2cNRxQCc5P6a
 2OBa0J9QjN4SH4q/DUTIMTX6+xoK+OhfSQcemVVjYsqNNEhoNmlmGaGZHyo8LTWuxV
 5Crw9lAlkDdgsg+2sKpv5sFEFp0uOqkaJC2dngGs=
From: Ondrej Jirman <megous@megous.com>
To: linux-sunxi@googlegroups.com, Rob Herring <robh+dt@kernel.org>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>
Subject: [PATCH 2/3] dt-bindings: arm: sunxi: Add PinePhone 1.0 and 1.1
 bindings
Date: Sun, 23 Feb 2020 18:29:15 +0100
Message-Id: <20200223172916.843379-3-megous@megous.com>
In-Reply-To: <20200223172916.843379-1-megous@megous.com>
References: <20200223172916.843379-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_092929_777788_96894B9D 
X-CRM114-Status: UNSURE (   8.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, Mark Rutland <mark.rutland@arm.com>,
 Samuel Holland <samuel@sholland.org>, Bhushan Shah <bshah@kde.org>,
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>,
 Martijn Braam <martijn@brixit.nl>,
 Georgii Staroselskii <georgii.staroselskii@emlid.com>,
 devicetree@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, Icenowy Zheng <icenowy@aosc.io>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Document board compatible names for Pine64 PinePhone:

- 1.0 - Developer variant
- 1.1 - Braveheart variant

Signed-off-by: Ondrej Jirman <megous@megous.com>
---
 Documentation/devicetree/bindings/arm/sunxi.yaml | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/sunxi.yaml b/Documentation/devicetree/bindings/arm/sunxi.yaml
index 327ce67308237..e24e0fac58f04 100644
--- a/Documentation/devicetree/bindings/arm/sunxi.yaml
+++ b/Documentation/devicetree/bindings/arm/sunxi.yaml
@@ -636,6 +636,16 @@ properties:
           - const: pine64,pinebook
           - const: allwinner,sun50i-a64
 
+      - description: Pine64 PinePhone Developer Batch (1.0)
+        items:
+          - const: pine64,pinephone-1.0
+          - const: allwinner,sun50i-a64
+
+      - description: Pine64 PinePhone Braveheart (1.1)
+        items:
+          - const: pine64,pinephone-1.1
+          - const: allwinner,sun50i-a64
+
       - description: Pine64 SoPine Baseboard
         items:
           - const: pine64,sopine-baseboard
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
