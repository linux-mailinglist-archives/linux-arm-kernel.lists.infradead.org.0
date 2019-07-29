Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F151C792B3
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Jul 2019 19:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=wKuywzg1yS3vTPdCinPJg40i+aLEO+hd/JDboh5hgRE=; b=B9Q
	YvvhXtjj1TGj4z39mO7dsUBHrfJ1ZdNIQy760Nx7VrLmyYTJ16MGSz0MyHKpVwVZ3gPabzZZTl1T6
	f97ScCqfELd9cYrQcUWAGV2oXBLh14v86XKmPsvGn9OQOorKigrEdgt5BzAkrkBU2H9FzzvjEKa9o
	1LVRwULsA7sN8oFs/KP12PUdcBWOGJwvOEMNfcL7BMIwUEtxQEqEl7NI28Z8tOfwwk8Kq6GsKbDnv
	cRYnavZdEaQ9KoGS0biMzUvAkrslNPBnlppbmX+X///dMGP3wjcJodWMyMCb5jdfs06L1URRkh+NE
	r8qIxymNI7pBx35RgsCB4XYz4Lg2aSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hs9tn-0005e0-RV; Mon, 29 Jul 2019 17:57:27 +0000
Received: from baptiste.telenet-ops.be ([2a02:1800:120:4::f00:13])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hs9tb-0005dF-Hl
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Jul 2019 17:57:17 +0000
Received: from ramsan ([84.194.98.4]) by baptiste.telenet-ops.be with bizsmtp
 id ihx02000S05gfCL01hx0yn; Mon, 29 Jul 2019 19:57:05 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hs9tM-00023k-R0; Mon, 29 Jul 2019 19:57:00 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1hs9tM-0003ZM-Os; Mon, 29 Jul 2019 19:57:00 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>
Subject: [PATCH] MAINTAINERS: Add Geert as Renesas SoC Co-Maintainer
Date: Mon, 29 Jul 2019 19:56:58 +0200
Message-Id: <20190729175658.13672-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190729_105715_740548_9547D290 
X-CRM114-Status: UNSURE (   8.09  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:13 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Magnus Damm <magnus.damm@gmail.com>,
 linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 Simon Horman <horms@verge.net.au>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the end of the v5.3 upstream kernel development cycle, Simon will be
stepping down from his role as Renesas SoC maintainer.  Starting with
the v5.4 development cycle, Geert is taking over this role.

Add Geert as a co-maintainer, and add his git repository and branch.

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Stephen: Can you please add my branch to linux-next, after Simon's
	 branch, which may still receive fixes for v5.3?

	 Thanks!
---
 MAINTAINERS | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 6426db5198f05377..6de667021591fb52 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -2155,10 +2155,12 @@ F:	Documentation/devicetree/bindings/arm/realtek.txt
 
 ARM/RENESAS ARM64 ARCHITECTURE
 M:	Simon Horman <horms@verge.net.au>
+M:	Geert Uytterhoeven <geert+renesas@glider.be>
 M:	Magnus Damm <magnus.damm@gmail.com>
 L:	linux-renesas-soc@vger.kernel.org
 Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
 S:	Supported
 F:	arch/arm64/boot/dts/renesas/
 F:	Documentation/devicetree/bindings/arm/renesas.yaml
@@ -2269,10 +2271,12 @@ F:	drivers/media/platform/s5p-mfc/
 
 ARM/SHMOBILE ARM ARCHITECTURE
 M:	Simon Horman <horms@verge.net.au>
+M:	Geert Uytterhoeven <geert+renesas@glider.be>
 M:	Magnus Damm <magnus.damm@gmail.com>
 L:	linux-renesas-soc@vger.kernel.org
 Q:	http://patchwork.kernel.org/project/linux-renesas-soc/list/
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git next
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git next
 S:	Supported
 F:	arch/arm/boot/dts/emev2*
 F:	arch/arm/boot/dts/gr-peach*
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
