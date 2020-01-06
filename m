Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E1E81310D2
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 11:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QCJcTV2kQsVS/IH/b+1Dg+/dPCl/PD2cGlghaQGqp4Y=; b=l7q5YQXnEZv3ECgznYsv6IOv6J
	R+q8EzdgcXaXqvZlA2PoGIyzTAk4neE9krPkSmSAq4RX5xax3NSzT7eOAOYNClN+zCeB6t9hP/G8L
	LOMBj8d4IpoCL5CaJjLF4OWD7GE5rOUBi9L5wWK1+fTZ2H26YyWR1t3akRgNHkLjQ55gazr5xqnzO
	LNdc6JIE5fVyY7TquFF/7122z07kDXhPzbQlzlEiMlMywrKVTbp9V6wgVnbGEVXcfjqYychZsPIs9
	nVco7vcqT++kM5uR682EtQdUU0Yt8EEuLQU0/vZh8rOs7Xt+awsFM7Pw40RnRTjSDCVcpaYkkoxCi
	ImbAP4GQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioPxa-00046e-0C; Mon, 06 Jan 2020 10:50:10 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioPwg-0003TO-Qj
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 10:49:18 +0000
Received: from ramsan ([84.195.182.253]) by michel.telenet-ops.be with bizsmtp
 id myp52100U5USYZQ06yp5RT; Mon, 06 Jan 2020 11:49:09 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0001yo-Mq; Mon, 06 Jan 2020 11:49:05 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1ioPwX-0002C0-Lr; Mon, 06 Jan 2020 11:49:05 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 4/5] Renesas driver updates for v5.6
Date: Mon,  6 Jan 2020 11:48:56 +0100
Message-Id: <20200106104857.8361-5-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200106104857.8361-1-geert+renesas@glider.be>
References: <20200106104857.8361-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_024915_027261_615E6A2E 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a02:1800:110:4:0:0:f00:18 listed in] [list.dnswl.org]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-drivers-for-v5.6-tag1

for you to fetch changes up to b925adfceb529389124193b57be5b7014e481834:

  soc: renesas: Add ARCH_R8A7795[01] for existing R-Car H3 (2020-01-06 11:08:43 +0100)

----------------------------------------------------------------
Renesas driver updates for v5.6

  - Remove now unused ARCH_R8A7796 config symbol,
  - Fix a sparse warning,
  - Add split R-Car H3 ES1.x and ES2.0+ config symbols.

----------------------------------------------------------------
Ben Dooks (Codethink) (1):
      soc: renesas: rcar-rst: Fix __iomem on configure call

Geert Uytterhoeven (2):
      soc: renesas: Remove ARCH_R8A7796
      soc: renesas: Add ARCH_R8A7795[01] for existing R-Car H3

 drivers/soc/renesas/Kconfig    | 14 +++++++++-----
 drivers/soc/renesas/rcar-rst.c |  2 +-
 2 files changed, 10 insertions(+), 6 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
