Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7EB516FCE3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 12:03:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=YHzZfwjebYeofk32avn8Tw5FTM1XI/rlGUQd9UcN29U=; b=n5NeyVsqJgp1YBh17ZX/n6Iw75
	maQCX6u01+xNn8LpVCzYyqQVQImWyRzdKcN+1ZAerT3PiJaS8VD6nC+2VAKn4CbDi5SqyUQGfVD2P
	No4tK6Zkvy42LN8ikDoB/sOz0lM2wrqvN5d3VlkvQ0SIFQ+qXAzF1/I8iJfbAZaBUifb8sq6oWtEV
	WFsW3qvu0DIvsgSpBdYUak+447biYWz8YdDGwufV6+XaGLPOcsC6UM1Iczqz5Mhg3ushvDpJpfdw+
	MXHjAavHmXHVxMRnDZh36VF1dH13xS1SFSkClNIb9P9w6MX9HiAFU0t5d+wi7grt1c1n7grHRkegb
	G4XTUxOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6uTd-0007Gp-Ca; Wed, 26 Feb 2020 11:03:41 +0000
Received: from albert.telenet-ops.be ([2a02:1800:110:4::f00:1a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uSa-0006Qd-Tf
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 11:02:39 +0000
Received: from ramsan ([84.195.182.253]) by albert.telenet-ops.be with bizsmtp
 id 7P2V220085USYZQ06P2VLA; Wed, 26 Feb 2020 12:02:29 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-0002U3-92; Wed, 26 Feb 2020 12:02:29 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1j6uST-000526-85; Wed, 26 Feb 2020 12:02:29 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 3/5] Renesas ARM64 defconfig updates for v5.7
Date: Wed, 26 Feb 2020 12:02:19 +0100
Message-Id: <20200226110221.19288-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200226110221.19288-1-geert+renesas@glider.be>
References: <20200226110221.19288-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_030237_133545_87D3CD59 
X-CRM114-Status: UNSURE (   7.08  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:1a listed in]
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

The following changes since commit bb6d3fb354c5ee8d6bde2d576eb7220ea09862b9:

  Linux 5.6-rc1 (2020-02-09 16:08:48 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-defconfig-for-v5.7-tag1

for you to fetch changes up to bf9e333ec0d54f7428d9192ad403c3cb523584c7:

  arm64: defconfig: Enable additional support for Renesas platforms (2020-02-21 14:51:52 +0100)

----------------------------------------------------------------
Renesas ARM64 defconfig updates for v5.7

  - Restore R-Car M3-W support,
  - Enable additional support for Renesas platforms.

----------------------------------------------------------------
Geert Uytterhoeven (2):
      arm64: defconfig: Replace ARCH_R8A7796 by ARCH_R8A77960
      arm64: defconfig: Enable additional support for Renesas platforms

 arch/arm64/configs/defconfig | 23 ++++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
