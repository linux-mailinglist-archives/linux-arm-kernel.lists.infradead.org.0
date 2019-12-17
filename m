Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 612B012351B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 19:39:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=qhdrG3nSUCFtll6Q/mRLSbBitOY8U4+E9iOyYO2kqWE=; b=df9tWrNr70YV+EnvLpDHDFPp9b
	Eypvnh6ZkBJPDaK9mJSNHttCasUzQbOkvR0ROf07d9xiTvg/BuyEi63BngmGU2NLwgFcuxu06XwsJ
	QOV4by/FHRgMByjzb22ykD03E5MIYyhApe/dt57UY7HNZSSiBPXDcquiudPYYsmq1sz4cqWL59Od5
	d/9QucNdIF/PZlD6r2m3NhcpqDpt4Yl+MoZ5aoACYeoscnNQ7O6v3Ucq1OOsAJ7hpHh43VbseP/j0
	u5o9y2izi4u2TeszADLldA2wOAAkwJJ72P/P8jHzpwbJGbCgL3vEBkEGgV/BKUbK36LTaIZD8dmU8
	ii11iyUQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihHkg-0003QI-MG; Tue, 17 Dec 2019 18:39:22 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihHkA-0003EI-OO
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 18:38:53 +0000
Received: from ramsan ([84.195.182.253]) by andre.telenet-ops.be with bizsmtp
 id f6ei2100H5USYZQ016eiFW; Tue, 17 Dec 2019 19:38:44 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-0003aQ-MN; Tue, 17 Dec 2019 19:38:42 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ihHk2-000086-Ku; Tue, 17 Dec 2019 19:38:42 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>,
 Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>,
 Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 Eugeniu Rosca <erosca@de.adit-jv.com>
Subject: [PATCH 4/5] arm64: dts: renesas: Prepare for split of ARCH_R8A7795
 into ARCH_R8A7795[01]
Date: Tue, 17 Dec 2019 19:38:40 +0100
Message-Id: <20191217183841.432-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191217183841.432-1-geert+renesas@glider.be>
References: <20191217183841.432-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_103850_971330_D2C106F0 
X-CRM114-Status: UNSURE (   6.63  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
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

As R-Car H3 ES1.x (R8A77950) and R-Car H3 ES2.0+ (R8A77951) are really
different SoCs, CONFIG_ARCH_R8A7795 will be split in
CONFIG_ARCH_R8A77950 and CONFIG_ARCH_R8A77951.

Relax dependencies by handling both the old and the new symbols.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
 arch/arm64/boot/dts/renesas/Makefile | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/Makefile b/arch/arm64/boot/dts/renesas/Makefile
index 7ac6f18c996a0961..b663176d153493f9 100644
--- a/arch/arm64/boot/dts/renesas/Makefile
+++ b/arch/arm64/boot/dts/renesas/Makefile
@@ -8,6 +8,10 @@ dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-salvator-x.dtb
 dtb-$(CONFIG_ARCH_R8A7795) += r8a77950-ulcb.dtb r8a77950-ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-salvator-x.dtb r8a77951-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A7795) += r8a77951-ulcb.dtb r8a77951-ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A77950) += r8a77950-salvator-x.dtb
+dtb-$(CONFIG_ARCH_R8A77950) += r8a77950-ulcb.dtb r8a77950-ulcb-kf.dtb
+dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-salvator-x.dtb r8a77951-salvator-xs.dtb
+dtb-$(CONFIG_ARCH_R8A77951) += r8a77951-ulcb.dtb r8a77951-ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-salvator-x.dtb r8a77960-salvator-xs.dtb
 dtb-$(CONFIG_ARCH_R8A77960) += r8a77960-ulcb.dtb r8a77960-ulcb-kf.dtb
 dtb-$(CONFIG_ARCH_R8A77961) += r8a77961-salvator-xs.dtb
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
