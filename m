Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7398312063B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 13:48:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=hs9IJUP2rmMo1iogYnC88HihODij13c96NxE37YitNE=; b=i8G
	i2n/HFpabpDabbX6qMZyQFYm7xoaoNyQgWHFNU1y0aPH81VSy/yif2PBembcugq4rtalt0JTdW2W+
	ld14/1etPaubHwCZTXWYOJ3WQ8AZKm6TMEW0HRad/NvL3jlYx9dbKIcJvwkUYLABCglGm4gaeLvR7
	a8SRQTI2OxJ4zIkCPbed68ZinqMnnu86ZZ8mVkjJm2ilx45gFcn1nttNUtxelhTDykrr6YpzMfK8I
	YAtKfZ59kimM536eeMguRkOX3ZTOTDVilQHubJCQiMPUPHG0MXzdvkh+WncSUKHmnWYfcZJfkaS3S
	iJ2txDvFeSi0ap2HSacwaY342k9wZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igpn6-0001Lz-O0; Mon, 16 Dec 2019 12:48:00 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igpmx-0001KA-VP
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 12:47:53 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id ecnh2100r5USYZQ06cnhWU; Mon, 16 Dec 2019 13:47:47 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1igpmn-0004EJ-MJ; Mon, 16 Dec 2019 13:47:41 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1igpmn-0004LK-KM; Mon, 16 Dec 2019 13:47:41 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Magnus Damm <magnus.damm@gmail.com>
Subject: [PATCH v2 0/6] arm64: dts: renesas: r8a77961: Add more device nodes
Date: Mon, 16 Dec 2019 13:47:34 +0100
Message-Id: <20191216124740.16647-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_044752_167916_DEB2D198 
X-CRM114-Status: UNSURE (   9.28  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:18 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 Eugeniu Rosca <erosca@de.adit-jv.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi all,

This patch series broadens support for the R-Car M3-W+ (aka R-Car M3-W
ES3.0) Soc (R8A77961), by adding more device nodes to its DT source
file, up to what can be tested reasonably using remote access.
For your convenience, it is available in the topic/r8a77961-v2 branch of
my renesas-drivers git repository at
git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-drivers.git.

Changes compared to v1:
  - Group SYS-DMAC interrupt specifiers.

This has been tested on a Salvator-XS development board.
More details can be found in the individual patches.

To be queued in renesas-devel for v5.6.
Thanks!

Geert Uytterhoeven (6):
  arm64: dts: renesas: r8a77961: Add RWDT node
  arm64: dts: renesas: r8a77961: Add GPIO nodes
  arm64: dts: renesas: r8a77961: Add RAVB node
  arm64: dts: renesas: r8a77961: Add SYS-DMAC nodes
  arm64: dts: renesas: r8a77961: Add I2C nodes
  arm64: dts: renesas: r8a77961: Add SDHI nodes

 arch/arm64/boot/dts/renesas/r8a77961.dtsi | 390 +++++++++++++++++++++-
 1 file changed, 377 insertions(+), 13 deletions(-)

-- 
2.17.1

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
