Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B7E17E55D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 18:09:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=g/jV3houOT2HGGPbEiTfHJEX0zFzUPdakzODIn//le0=; b=rdW
	JAlsdGth1NeuuCn6YQSe0m3x9+Dkmct2MdQQJxvDtqyNFBav5uMkajR7SvdTyGza2nJVD2ychzT2A
	CLTjwcKp9Vmo9F+DtmDhsvKucZr0Rhy5tlnjCwMNd4KBKPG8iA7USRgjdc02rEqQ8W0ocp6awQEcJ
	G+3KzAcg61ULIVoY/YfJGz5Ttwa52+tYkUez0kKbK77gASflmRcOrwoC5kiEpPzRiFiNpDchPthDG
	ppVtRzMCFOxzSHNRCmLwbqjfzyv16mHmzt14AOkzI0uH11xhk/ZlBrRlLD8YsupNvP+73uPDIJHyo
	kEAQIT98Wjg85WYY9ZK9i8u3j9IlUiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLte-0007Kq-M2; Mon, 09 Mar 2020 17:08:54 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLtT-0007K0-0K
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 17:08:46 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id CH8S2200X5USYZQ01H8Spu; Mon, 09 Mar 2020 18:08:27 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jBLtC-0007JK-Ev; Mon, 09 Mar 2020 18:08:26 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jBLtC-0005RY-CZ; Mon, 09 Mar 2020 18:08:26 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH] arm64: dts: renesas: r8a77961: salvator-xs: Fix memory
 unit-address
Date: Mon,  9 Mar 2020 18:08:25 +0100
Message-Id: <20200309170825.20882-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_100844_511497_4678D5B0 
X-CRM114-Status: UNSURE (   9.25  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Correct the unit-address of the second memory node, to match the
corresponding reg property.

Fixes: 92980759c1699a3c ("arm64: dts: renesas: Add support for Salvator-XS with R-Car M3-W+")
Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
To be queued in renesas-devel for v5.7.

 arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts b/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
index 4abd78ac1cd597d9..2ffc7e31dd58fc12 100644
--- a/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
+++ b/arch/arm64/boot/dts/renesas/r8a77961-salvator-xs.dts
@@ -19,7 +19,7 @@
 		reg = <0x0 0x48000000 0x0 0x78000000>;
 	};
 
-	memory@400000000 {
+	memory@480000000 {
 		device_type = "memory";
 		reg = <0x4 0x80000000 0x0 0x80000000>;
 	};
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
