Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E211D4A6D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 12:06:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Xm66A26NFgz8Gu7U4velmcK5qXHozxqG282SqXbyCWc=; b=B7KlDEVW1BWr52svp+xRQI5GSJ
	FCUSkpO4Fe5heQKmew/CSjeY1ooD0HgSsEXGrPfjS5yCfbVyYigmMrKikG7Di/ZTWLj4mDgZuVKpn
	Iujq6WhEepEjOAJ655HJgW3fnYNCXLTTWdf/8JF8+xLaDB3i7iR2VGPGpwlttUTwAiQFzZ6nM9wl6
	1U1ew+O0EwzpYvz+zrL/mcYNSf6aHOQ2NSOlOTuOFQ5NdXwW38iVPqmkE2XcOdBS05ajaCNQqe9/N
	abeqIIBlfuF74AC0hSs5RBvg+mxEB707Q+r0CdOUhPWPxwCsXZhiLisPTjTfJYyzwqndOz9zl8aRE
	THxeNyhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZXEV-0003i8-NN; Fri, 15 May 2020 10:06:23 +0000
Received: from andre.telenet-ops.be ([2a02:1800:120:4::f00:15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZXEM-0003g2-0Q
 for linux-arm-kernel@lists.infradead.org; Fri, 15 May 2020 10:06:16 +0000
Received: from ramsan ([IPv6:2a02:1810:ac12:ed60:ad37:48f9:900a:523e])
 by andre.telenet-ops.be with bizsmtp
 id ey5w2200E1TfvYq01y5w1b; Fri, 15 May 2020 12:05:59 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0008Qj-D5; Fri, 15 May 2020 12:05:56 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jZXE4-0003pa-Bn; Fri, 15 May 2020 12:05:56 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 1/5] Renesas ARM defconfig updates for v5.8 (take two)
Date: Fri, 15 May 2020 12:05:43 +0200
Message-Id: <20200515100547.14671-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200515100547.14671-1-geert+renesas@glider.be>
References: <20200515100547.14671-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200515_030614_191875_9770BEC4 
X-CRM114-Status: UNSURE (   8.95  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:15 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 4c427ab28fd1cd988fce9517527476cfebd27485:

  ARM: shmobile: defconfig: Refresh for v5.7-rc1 (2020-04-20 10:02:46 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-defconfig-for-v5.8-tag2

for you to fetch changes up to 44b6141ebe936808fc59b386e3e259bef6c9bba6:

  ARM: multi_v7_defconfig: Enable r8a7742 SoC (2020-05-04 14:29:56 +0200)

----------------------------------------------------------------
Renesas ARM defconfig updates for v5.8 (take two)

  - Enable support for the new RZ/G1H SoC in the shmobile and multi_v7
    defconfigs.

----------------------------------------------------------------
Lad Prabhakar (2):
      ARM: shmobile: defconfig: Enable r8a7742 SoC
      ARM: multi_v7_defconfig: Enable r8a7742 SoC

 arch/arm/configs/multi_v7_defconfig | 1 +
 arch/arm/configs/shmobile_defconfig | 1 +
 2 files changed, 2 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
