Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EC0F1B6677
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Apr 2020 23:43:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=sOvpJa7gRGaBXIaJKux+270AkoE73qjA3Oi9/HOpCHg=; b=TQUyRgbey3D1ZaDPYg9jKeGS+8
	727Qe6pDcUNwUrqU/b6260zNkc1sBbXmCygXJ2mo73P1fzH7/6tr/yEaMrR9OgsMF/1Di848m2Oy+
	fgBw5uAp2NVgYGtKkMBiuBcPsKr5bRyTvVX7XD98skulsypKRmpvCtb5oRxgP4NF9Z7zfegMyj7cr
	HgVrRL9VeqGi27O/pcEY2cHXPrm6d4z/01YMjQjGkBaweG9ZfAEd47avS6gRYWFj6RYVU/8BEdLue
	QnJd18yk7GW7/XIh0KgQqDkN+epeePQrxKnYd2ohZSEroiwwu5PshzxbJxcYczH8gdnbvWeeNkfw/
	L85Y3CUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRjch-0000cg-Gl; Thu, 23 Apr 2020 21:43:07 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRjbA-0007uU-HX
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Apr 2020 21:41:35 +0000
X-IronPort-AV: E=Sophos;i="5.73,309,1583161200"; d="scan'208";a="45553095"
Received: from unknown (HELO relmlir5.idc.renesas.com) ([10.200.68.151])
 by relmlie5.idc.renesas.com with ESMTP; 24 Apr 2020 06:41:31 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir5.idc.renesas.com (Postfix) with ESMTP id A74634004BB2;
 Fri, 24 Apr 2020 06:41:27 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Geert Uytterhoeven <geert+renesas@glider.be>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Magnus Damm <magnus.damm@gmail.com>, Russell King <linux@armlinux.org.uk>
Subject: [PATCH 06/10] dt-bindings: clock: renesas: cpg-mssr: Document r8a7742
 binding
Date: Thu, 23 Apr 2020 22:40:46 +0100
Message-Id: <1587678050-23468-7-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <1587678050-23468-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200423_144132_773776_4C624B2F 
X-CRM114-Status: UNSURE (   7.73  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
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
 Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>,
 linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Lad Prabhakar <prabhakar.csengg@gmail.com>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add binding documentation for the RZ/G1H (R8A7742) Clock Pulse Generator
driver.

Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Reviewed-by: Marian-Cristian Rotariu <marian-cristian.rotariu.rb@bp.renesas.com>
---
 Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
index 9cd102e..c745bd6 100644
--- a/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
+++ b/Documentation/devicetree/bindings/clock/renesas,cpg-mssr.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     enum:
       - renesas,r7s9210-cpg-mssr  # RZ/A2
+      - renesas,r8a7742-cpg-mssr  # RZ/G1H
       - renesas,r8a7743-cpg-mssr  # RZ/G1M
       - renesas,r8a7744-cpg-mssr  # RZ/G1N
       - renesas,r8a7745-cpg-mssr  # RZ/G1E
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
