Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1558BA9E85
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 11:36:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X0HTMnNLbCv6cQojzy8PVFf7HtUGZ5RzAoOSI6p1wgs=; b=UXmQuh2+Sn+/IWNqhW/tAtR1MW
	ESxKdFJBZlhckKuyZzaNsSOX4jRNwaGsI5vRBIe/JC/Vl6qA0xSF1BYul6Pv0yw4JwOgoevkKZZqs
	JQxRU0i8RUNSptsMUh+q1/6XziwSpZGc+u+bZxWm5KmOEDuyrAhKzLMjQef5Rw9dsvlB2wtqkr66s
	CZoNbUiT3Jdc8MTS1z35XW4uEvGAHLRbuyY3Xuryqe1T9S/3A7RUXMxINXkfDY9eNaJbMKwudX6m4
	l6/8J1bsyJsvWwlIMbDMLx+8OL0ZFk4pvd04I/0NClXfMUy4tCUMjwdxRp0F4e1erw0H4dlb38DFo
	e2sVLPtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5oBQ-0005RO-Jw; Thu, 05 Sep 2019 09:36:04 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1i5oAS-0003lJ-AL
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 09:35:06 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id DEFA425B82B;
 Thu,  5 Sep 2019 19:35:00 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id D6C58940B15; Thu,  5 Sep 2019 11:34:58 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: linux-renesas-soc@vger.kernel.org
Subject: [PATCH 1/1] arm64: dts: renesas: hihope-common: Fix eMMC status
Date: Thu,  5 Sep 2019 11:34:57 +0200
Message-Id: <ae688e1720fd387de34f2140a735917411672bf1.1567675986.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <cover.1567675986.git.horms+renesas@verge.net.au>
References: <cover.1567675986.git.horms+renesas@verge.net.au>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_023504_537765_B05E3CEA 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Fabrizio Castro <fabrizio.castro@bp.renesas.com>,
 Simon Horman <horms+renesas@verge.net.au>, Magnus Damm <magnus.damm@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Fabrizio Castro <fabrizio.castro@bp.renesas.com>

SDHI3 got accidentally disabled while adding USB 2.0 support,
this patch fixes it.

Fixes: 734d277f412a ("arm64: dts: renesas: hihope-common: Add USB 2.0 support")
Signed-off-by: Fabrizio Castro <fabrizio.castro@bp.renesas.com>
Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Simon Horman <horms+renesas@verge.net.au>
---
 arch/arm64/boot/dts/renesas/hihope-common.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/renesas/hihope-common.dtsi b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
index 3311a982fff8..23fd0224ca90 100644
--- a/arch/arm64/boot/dts/renesas/hihope-common.dtsi
+++ b/arch/arm64/boot/dts/renesas/hihope-common.dtsi
@@ -279,6 +279,7 @@
 	mmc-hs200-1_8v;
 	non-removable;
 	fixed-emmc-driver-type = <1>;
+	status = "okay";
 };
 
 &usb_extal_clk {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
