Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BA1DC184AFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 16:44:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=VxMlT5gsOKApugMp9790XE6zSYL51Q53wBJMeYd/qPU=; b=T/hWbhquGEZ5Z69tcaL/3BtXpd
	0v3/kiWchKUeMk4zYzLCCgsBHudBw1C4MMgEPVSzbKwadOx+AMkarsEvGjbH4J5FmZn03usBVr2ZY
	AyoJCRWi4gUwalRecQpQinpYkI910Ee0nTQjIjERB2kxdbaMQLCgIeuWRz7/BC9TjwD9HJR4lDTs3
	YnigpTDgr9wouILDlPiFLT13iwayzIA2P1fCZAubumn+PoZQsV9YuJfkWoed+sDNQ5V2T0QPB1RqJ
	CVrKH3oIFy9tK3f1Z3t5dVZpqOO4H6av8jQM35zNML5a//b1ZqTTpy4iD7ghgkrOCfMjC03jJBBL8
	KY/QjFLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCmTo-0004Sd-SW; Fri, 13 Mar 2020 15:44:08 +0000
Received: from xavier.telenet-ops.be ([2a02:1800:120:4::f00:14])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCmTC-00041L-0o
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 15:43:33 +0000
Received: from ramsan ([84.195.182.253]) by xavier.telenet-ops.be with bizsmtp
 id DrjG2200Q5USYZQ01rjGwA; Fri, 13 Mar 2020 16:43:24 +0100
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0002sF-Ft; Fri, 13 Mar 2020 16:43:16 +0100
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1jCmSy-0000RR-E4; Fri, 13 Mar 2020 16:43:16 +0100
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [GIT PULL 2/3] Renesas ARM64 DT updates for v5.7 (take two)
Date: Fri, 13 Mar 2020 16:43:03 +0100
Message-Id: <20200313154304.1636-3-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200313154304.1636-1-geert+renesas@glider.be>
References: <20200313154304.1636-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_084330_221101_7F6A321D 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:120:4:0:0:f00:14 listed in]
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
Cc: linux-renesas-soc@vger.kernel.org, Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 721b76195b31467e56851fbab3855e700f281270:

  arm64: dts: renesas: rzg2: Add reset control properties for display (2020-02-21 14:41:36 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.7-tag2

for you to fetch changes up to e30f56800e69db6d2763a1f7f64dfcc79f9b5ea7:

  arm64: dts: renesas: Add HiHope RZ/G2M board with idk-1110wr display (2020-03-12 10:51:20 +0100)

----------------------------------------------------------------
Renesas ARM64 DT updates for v5.7 (take two)

  - Thermal support for R-Car M3-W+,
  - Support for the M3ULCB board with R-Car M3-W+,
  - CPUIdle support for R-Car M3-N and E3,
  - Display support for the HiHope RZ/G2M board,
  - A minor fix.

----------------------------------------------------------------
Fabrizio Castro (1):
      arm64: dts: renesas: Add HiHope RZ/G2M board with idk-1110wr display

Geert Uytterhoeven (2):
      arm64: dts: renesas: r8a77961: Add thermal nodes
      arm64: dts: renesas: r8a77961: salvator-xs: Fix memory unit-address

Takeshi Kihara (2):
      arm64: dts: renesas: r8a77965: Add CPUIdle support for CA57 cores
      arm64: dts: renesas: r8a77990: Add CPUIdle support for CA53 cores

Yuya Hamamachi (1):
      arm64: dts: renesas: Add support for M3ULCB with R-Car M3-W+

 arch/arm64/boot/dts/renesas/Makefile               |  2 +
 .../r8a774a1-hihope-rzg2m-ex-idk-1110wr.dts        | 52 ++++++++++++++
 .../boot/dts/renesas/r8a77961-salvator-xs.dts      |  2 +-
 arch/arm64/boot/dts/renesas/r8a77961-ulcb.dts      | 32 +++++++++
 arch/arm64/boot/dts/renesas/r8a77961.dtsi          | 80 ++++++++++++++++++++++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          | 15 ++++
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          | 15 ++++
 7 files changed, 197 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/renesas/r8a774a1-hihope-rzg2m-ex-idk-1110wr.dts
 create mode 100644 arch/arm64/boot/dts/renesas/r8a77961-ulcb.dts

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
