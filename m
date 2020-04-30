Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E6001BF37D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 10:50:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nVcCHO9suaz24ImqvsgytkOh/LxB09q/4MSp6FzlNAE=; b=gmWWalJunFgPfThANiKo+2zJVp
	NisTciMtE/YL1mEjoa7S0bzrfMww//aR6wP/FW8Fv8ObXSD9XJl053YhhZZOVHlNpONb14IuVMCPf
	Qs7ocMMugGIy8jf8t3ONkcV9H6fzUIN4Dq6r3zF8Iy5V1tCKkFnb7eIOEa4KgKbQmaqDWDxYR8/+s
	oSz5iNLOO8cE2L9kFMcJQ8exdc080j7XSyiYZPXTbJ0HKP7S+NiwmstRcvzXnli4lkAFXIKPw70yA
	W56GfX9ILg/sKcH/0DIg7FUESNV+Y/gBwVBLQ6B478OtPcF/GTjTQPPVx21nL0/Dh+h+ahmPGL23Q
	qeTrCW5g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jU4ts-0001yd-Lr; Thu, 30 Apr 2020 08:50:32 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jU4sP-0006t5-0P
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 08:49:05 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:182a:142e:a95f:66c2])
 by albert.telenet-ops.be with bizsmtp
 id Ywor2200Y0w8ZL606worP7; Thu, 30 Apr 2020 10:48:52 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0002l9-IR; Thu, 30 Apr 2020 10:48:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jU4sF-0000OS-H9; Thu, 30 Apr 2020 10:48:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 3/5] Renesas ARM SoC updates for v5.8
Date: Thu, 30 Apr 2020 10:48:47 +0200
Message-Id: <20200430084849.1457-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200430084849.1457-1-geert+renesas@glider.be>
References: <20200430084849.1457-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_014901_273203_197CC3B1 
X-CRM114-Status: UNSURE (   7.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
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

The following changes since commit 8f3d9f354286745c751374f5f1fcafee6b3f3136:

  Linux 5.7-rc1 (2020-04-12 12:35:55 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-soc-for-v5.8-tag1

for you to fetch changes up to 135e7a156ae2c1a7a1f0c1d44bf2b3daece04bbf:

  ARM: shmobile: r8a7742: Basic SoC support (2020-04-28 10:13:58 +0200)

----------------------------------------------------------------
Renesas ARM SoC updates for v5.8

  - Add Basic support for the new RZ/G1H SoC.

----------------------------------------------------------------
Lad Prabhakar (1):
      ARM: shmobile: r8a7742: Basic SoC support

 arch/arm/mach-shmobile/setup-rcar-gen2.c | 2 ++
 1 file changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
