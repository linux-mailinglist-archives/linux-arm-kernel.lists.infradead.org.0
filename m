Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DD417F66A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:04:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=6PArDPVaBtaw6ZTebWdIziaa3P4D2xZ5pBtcJaJlUa0=; b=bgF
	9WmeC0utINUECGwP76iw4UPS+Wue3ZmWtgTdGTlevQWB2o28YqMyLvfIPX4cf5o2UgLUhliR5VLri
	HYfD4PL5cG57xDejDIbss5D081Kc7w0Tc1/amoNGtMd8fCljoCLKoJSA4qbh25iTOqmQ5FmeRIXXE
	jl/0YqgTiFh5jP1nLu5fQqdgmldOXbEidX2ZIPv1AL7ArOVNDqDgE9UntK+y52cRu/U6jJ8/IOi9A
	REG6KYTfYwTzyhA6LIlzC0AXuC2pVJGtP7mo5k6HRRLMx9u+KiCBc0IpYar3l+jV2CgirU77RkVza
	uI7hi9qYkU9XCac+w/KlLQ4XpGzH17w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWIJ-0007Vm-OJ; Fri, 02 Aug 2019 12:04:23 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWIB-0007Sz-VN
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:04:18 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id kC462000205gfCL01C46MU; Fri, 02 Aug 2019 14:04:08 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI1-0002hK-Tm; Fri, 02 Aug 2019 14:04:05 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI1-0000P5-RU; Fri, 02 Aug 2019 14:04:05 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 0/3] Renesas SoC updates for v5.4
Date: Fri,  2 Aug 2019 14:03:52 +0200
Message-Id: <20190802120355.1430-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_050416_165756_D7707DE3 
X-CRM114-Status: UNSURE (   7.42  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

This is my first pull request for the inclusion of Renesas SoC updates
for v5.4.  As this is also my first pull request for arm-soc, I wanted
to start with something small.  You can expect more later.

It consists of 3 parts:

  [PULL 1/3] Renesas ARM64 DT updates for v5.4

    - CAN support for the HiHope RZ/G2E board,
    - BT and WLAN support for the HiHope RZ/G2[MN] boards,
    - Sound support for RZ/G2M,
    - Sort nodes in various SoC and board DTSes,
    - Small fixes and improvements.

  [PULL 2/3] Renesas driver updates for v5.4

    - Fix a flexible array member definition in the R-Car SYSC driver.

  [PULL 3/3] Renesas DT binding updates for v5.4

    - RZ/G2 updates for the R-Car CAN and CANFD DT bindings.

For now I more or less followed Simon's way of structuring the branches,
but I'm open for change.  Hence if you have any comments, or suggestions
for improving the workflow, please let me know.

Thanks for pulling, and for your comments!

Gr{oetje,eeting}s,

						Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
							    -- Linus Torvalds

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
