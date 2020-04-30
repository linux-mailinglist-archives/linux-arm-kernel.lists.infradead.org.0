Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B356B1BF373
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:49:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ksdgDpf2rwjqfrwWZ+8g9ZzS7pFKKMyRhun/ix3kaUI=; b=PT8
	6jF/D/Ro2oZIJpAKqXJuB5edB/bz76AFgJN2qQ6X6PAJ9h2gCW+q8QMOp3sOgNR1pTEiMx1CDZCEA
	m4su4+BX+1FiD6Y6bgTz6cjMJgcFjrGja+hFxAorqLiwU39UYFxbWb9GET2snLh7v6sS8wxQSxVMc
	NB+AZJ6QpmFgGpXzfplMrpTCjo1tC0daME/NHBxy9iOPjYKZJ1qqP/Icd8i5/J/p5vDz3VI8tl1yf
	encnbt1Q+W6fZJe40KHNJPjFF0kZOxJsuy6n0Hdp1isYg3tELIpa4dufcwFMDkXvAl4akkS05lHfn
	+onG1KsD9h08VGbBWpab0d8SsxuXXhw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4sX-0006ra-FL; Thu, 30 Apr 2020 08:49:09 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sG-0006oT-Sl
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:48:54 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:182a:142e:a95f:66c2])
 by laurent.telenet-ops.be with bizsmtp
 id Ywoc220090w8ZL601wocCu; Thu, 30 Apr 2020 10:48:36 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4s0-0002kK-3M; Thu, 30 Apr 2020 10:48:36 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4s0-0000N3-0t; Thu, 30 Apr 2020 10:48:36 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL] Renesas fixes for v5.7
Date: Thu, 30 Apr 2020 10:48:34 +0200
Message-Id: <20200430084834.1384-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014853_075888_D4840183 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-fixes-for-v5.7-tag1

for you to fetch changes up to b704fc1da9b84d7145db550a13e2b7140f6b419b:

  ARM: dts: r7s9210: Remove bogus clock-names from OSTM nodes (2020-04-28 10:15:38 +0200)

----------------------------------------------------------------
Renesas fixes for v5.7

  - Fix IOMMU support on R-Car V3H,
  - Minor fixes that are fast-tracked to avoid introducing regressions
    during conversion of DT bindings to json-schema.

Thanks for pulling!
----------------------------------------------------------------
Geert Uytterhoeven (2):
      ARM: dts: r8a73a4: Add missing CMT1 interrupts
      ARM: dts: r7s9210: Remove bogus clock-names from OSTM nodes

Yoshihiro Shimoda (1):
      arm64: dts: renesas: r8a77980: Fix IPMMU VIP[01] nodes

 arch/arm/boot/dts/r7s9210.dtsi            | 3 ---
 arch/arm/boot/dts/r8a73a4.dtsi            | 9 ++++++++-
 arch/arm64/boot/dts/renesas/r8a77980.dtsi | 2 ++
 3 files changed, 10 insertions(+), 4 deletions(-)

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
