Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AF112351C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:39:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=DrSE6g8Y+W97fcKmhPQKKjkIhzP1ta277KkgWlJ5ILQ=; b=s1Jq9OAjIIINXLDK45jO7706oJ
	CICg4B0Tj0yyJ5crX8avLJ0XXIt7F7YU+FnQr0A9SOni1md2hO1FibChnoN58TcRGTAJVePnKgw6A
	fPt9jUHeapLmvVOioWQCzoI/dEF4pJgMzt/5Ah8mb9tszX2eWlPbaV9tcJnDC51Fk59GDHYFxbSSf
	50fy9UQ9YIjISHOPrsPiUfBk66wcdznWjnFOqSeNoCSWi2kIMm/sbpkK7zriuWpUL5LM3M7bixnFO
	XXb0IE/msZrTW4E6U5PQP2j5R7hNHb2+IgRESL2nEnd5nZo2VspFgWdQU1S7Ko7UuRgfiCtQ7rte1
	kpRMkmPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHku-0003do-Qa; Tue, 17 Dec 2019 18:39:36 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHkB-0003EO-7v
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:38:53 +0000
Received: from ramsan ([84.195.182.253])
 by baptiste.telenet-ops.be with bizsmtp
 id f6ei2100C5USYZQ016eiwp; Tue, 17 Dec 2019 19:38:47 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-0003aL-LL; Tue, 17 Dec 2019 19:38:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-000083-Jw; Tue, 17 Dec 2019 19:38:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: [PATCH 3/5] arm64: dts: renesas: Sort DTBs in Makefile
Date: Tue, 17 Dec 2019 19:38:39 +0100
Message-Id: <20191217183841.432-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217183841.432-1-geert+renesas@glider.be>
References: <20191217183841.432-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103851_453760_0086757E 
X-CRM114-Status: UNSURE (   7.22  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort the entries for the various DTBs in the Makefile by SoC and board
type.  Keep Salvator-X(S) together, and do the same for ULCB with and
without Kingfisher extension.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/Makefile | 17 +++++++----------
 1 file changed, 7 insertions(+), 10 deletions(-)

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index f7ed7b5a41ea3c77..7ac6f18c996a0961 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -4,18 +4,15 @@ dtb-$(CONFIG_ARCH_R8A774A1) += r8a774a1-hihope-rzg2m-ex.dtb
 dtb-$(CONFIG_ARCH_R8A774B1) += r8a774b1-hihope-rzg2n.dtb
 dtb-$(CONFIG_ARCH_R8A774B1) += r8a774b1-hihope-rzg2n-ex.dtb
 dtb-$(CONFIG_ARCH_R8A774C0) += r8a774c0-cat874.dtb r8a774c0-ek874.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-x.dtb r8a77951-ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-ulcb-kf.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-xs.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-salvator-x.dtb r8a77950-ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-ulcb-kf.dtb
-dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x.dtb r8a77960-ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-ulcb-kf.dtb
-dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-salvator-x.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-ulcb.dtb r8a77950-ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-x.dtb r8a77951-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-ulcb.dtb r8a77951-ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x.dtb r8a77960-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-ulcb.dtb r8a77960-ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-salvator-x.dtb r8a77965-salvator-xs.dtb
-dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb.dtb
-dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A77965) += r8a77965-ulcb.dtb r8a77965-ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77970) += r8a77970-eagle.dtb r8a77970-v3msk.dtb
 dtb-$(CONFIG_ARCH_R8A77980) += r8a77980-condor.dtb r8a77980-v3hsk.dtb
 dtb-$(CONFIG_ARCH_R8A77990) += r8a77990-ebisu.dtb
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
