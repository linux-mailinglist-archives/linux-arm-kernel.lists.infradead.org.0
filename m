Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6282E16FC88
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 11:53:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=IcCgURfkFzqoy1nGv56EKkK3bI68Ab01OhXt+hCJ9Rw=; b=sws
	6aOYruTq9BEtZ2vIrXf4NI9R6gJRFa+8TVya8hj6JPyMuUvkb9nvPydQezPwS8ch8u8htORChZHGg
	fnRBmDitlWoPTozaOE1mXLpLzr47q886kvbsKfUUDBZ9J5aDdhmPARLkbpAl9i1qlNNlk5NF3biy5
	wrus1jGER8QUYf3GWzvGrCUbdNyrx93TVCegLaOhSGpoyItnQk42ncg/NkOvqOkXaRRkTLfvPzsRa
	1HAfsuPMZYgav0SAOxpVNyU3SABFLiYnNQxPZ9zpOrLEbqvWQ7avf45vJ8QYhv1n5FOZDjAaF8p4v
	r6cdbudlXIK9heCUzgbK/RkdeEnllIg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uJT-00016M-Py; Wed, 26 Feb 2020 10:53:11 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uJJ-00015i-TJ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 10:53:03 +0000
Received: from ramsan ([84.195.182.253]) by laurent.telenet-ops.be with bizsmtp
 id 7Nsk220075USYZQ01NsknC; Wed, 26 Feb 2020 11:52:48 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uJ2-0002Ml-3E; Wed, 26 Feb 2020 11:52:44 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uJ2-0004n1-0U; Wed, 26 Feb 2020 11:52:44 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL] Renesas fixes for v5.6
Date: Wed, 26 Feb 2020 11:52:36 +0100
Message-Id: <20200226105236.18368-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_025302_102504_BE8DFADB 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

	Hi arm-soc folks,

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-fixes-for-v5.6-tag1

for you to fetch changes up to 21b388dca138b0fc540c76b065bc83281762a9b4:

  ARM: dts: r8a7779: Remove deprecated "renesas, rcar-sata" compatible value (2020-02-24 14:04:21 +0100)

----------------------------------------------------------------
Renesas Fixes for v5.6

  - Restore R-Car M3-W support,
  - Drop deprecated compatible value to ease DT binding conversion to
    json-schema.

Thanks for pulling!
----------------------------------------------------------------
Geert Uytterhoeven (2):
      arm64: defconfig: Replace ARCH_R8A7796 by ARCH_R8A77960
      ARM: dts: r8a7779: Remove deprecated "renesas, rcar-sata" compatible value

 arch/arm/boot/dts/r8a7779.dtsi | 2 +-
 arch/arm64/configs/defconfig   | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

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
