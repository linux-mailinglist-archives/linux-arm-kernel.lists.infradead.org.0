Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 51C107F66E
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  2 Aug 2019 14:04:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=38IyyctwVs3Ee+w4NKxiWWJkcvyEbHm7yzjY9jnuGUo=; b=tJaE/zjRTLshX3rAzO5pmGG/V5
	rQ4zFiPw8RJJHZfWkypQGlmAglvp0qEImiH/CZbZQePNczU7BZ+wCzMPSvJdWBvT8zJzlIVKtfaKf
	e6KcARdDLwcm9Su/nodROeWB39Om2RiTQJpm14yp7L6scd6DDyUkHzgBSRfe77Rtt6Kn6BL6iflzL
	idD/hsLVzBtPI3JFO53Tw9sUEgzoRuTrHexsaaslOOIVU7irCIoSkEeSQxCG60gaRaTIkZdP8CE84
	/bXuCdSz9cqTO4jmlKS3a2Y3qcB30nZTE0cRYCv4BcJt6SeBrFadDBUe06LwYj3VLjq/Qd3MOjaoU
	BmQoSewQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1htWIa-0007qT-6k; Fri, 02 Aug 2019 12:04:40 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1htWIC-0007TB-Gm
 for linux-arm-kernel@lists.infradead.org; Fri, 02 Aug 2019 12:04:19 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id kC4B2000505gfCL01C4BNB; Fri, 02 Aug 2019 14:04:11 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI7-0002hR-4B; Fri, 02 Aug 2019 14:04:11 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1htWI7-0000PA-1i; Fri, 02 Aug 2019 14:04:11 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 1/3] Renesas ARM64 DT updates for v5.4
Date: Fri,  2 Aug 2019 14:03:53 +0200
Message-Id: <20190802120355.1430-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190802120355.1430-1-geert+renesas@glider.be>
References: <20190802120355.1430-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190802_050416_717331_D91902A5 
X-CRM114-Status: UNSURE (   9.47  )
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.4-tag1

for you to fetch changes up to 0a05b3d7fee511de8a1c9dffc3d86f1df55e1737:

  arm64: dts: renesas: ulcb: Sort nodes (2019-07-30 11:25:35 +0200)

----------------------------------------------------------------
Renesas ARM64 DT updates for v5.4

  - CAN support for the HiHope RZ/G2E board,
  - BT and WLAN support for the HiHope RZ/G2[MN] boards,
  - Sound support for RZ/G2M,
  - Sort nodes in various SoC and board DTSes,
  - Small fixes and improvements.

----------------------------------------------------------------
Biju Das (3):
      arm64: dts: renesas: hihope-common: Add PCA9654 I/O expander
      arm64: dts: renesas: hihope-common: Add BT support
      arm64: dts: renesas: hihope-common: Add WLAN support

Fabrizio Castro (6):
      arm64: dts: renesas: r8a774c0: Add missing assigned-clocks for CAN[01]
      arm64: dts: renesas: r8a774a1: Add missing assigned-clocks for CAN[01]
      arm64: dts: renesas: r8a774a1: Add CANFD support
      arm64: dts: renesas: hihope-rzg2-ex: Enable CAN interfaces
      arm64: dts: renesas: r8a774a1: Use extended audio dmac registers
      arm64: dts: renesas: r8a774a1: Add SSIU support for sound

Takeshi Kihara (1):
      arm64: dts: renesas: r8a77990: Add cpg reset for DU

Yoshihiro Kaneko (13):
      arm64: dts: renesas: r8a77995: Add cpg reset for DU
      arm64: dts: renesas: r8a77995: Fix register range of display node
      arm64: dts: renesas: r8a7795: Sort nodes
      arm64: dts: renesas: r8a7795-es1: Sort nodes
      arm64: dts: renesas: r8a77965: Sort nodes
      arm64: dts: renesas: r8a7795-es1: salvator-x: Sort nodes
      arm64: dts: renesas: r8a7795: salvator-x: Sort nodes
      arm64: dts: renesas: r8a7795: salvator-xs: Sort nodes
      arm64: dts: renesas: r8a7796: salvator-x: Sort nodes
      arm64: dts: renesas: r8a7796: salvator-xs: Sort nodes
      arm64: dts: renesas: salvator-common: Sort nodes
      arm64: dts: renesas: ulcb-kf: Sort nodes
      arm64: dts: renesas: ulcb: Sort nodes

 arch/arm64/boot/dts/renesas/hihope-common.dtsi     |  78 ++++++
 arch/arm64/boot/dts/renesas/hihope-rzg2-ex.dtsi    |  22 ++
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi          | 282 +++++++++++++++++++--
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi          |   4 +
 .../boot/dts/renesas/r8a7795-es1-salvator-x.dts    |  26 +-
 arch/arm64/boot/dts/renesas/r8a7795-es1.dtsi       | 223 ++++++++--------
 arch/arm64/boot/dts/renesas/r8a7795-salvator-x.dts |  26 +-
 .../arm64/boot/dts/renesas/r8a7795-salvator-xs.dts |  82 +++---
 arch/arm64/boot/dts/renesas/r8a7795.dtsi           | 154 +++++------
 arch/arm64/boot/dts/renesas/r8a7796-salvator-x.dts |  10 +-
 .../arm64/boot/dts/renesas/r8a7796-salvator-xs.dts |  10 +-
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          |  48 ++--
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          |   2 +
 arch/arm64/boot/dts/renesas/r8a77995.dtsi          |   4 +-
 arch/arm64/boot/dts/renesas/salvator-common.dtsi   |  72 +++---
 arch/arm64/boot/dts/renesas/ulcb-kf.dtsi           | 226 ++++++++---------
 arch/arm64/boot/dts/renesas/ulcb.dtsi              |  10 +-
 17 files changed, 814 insertions(+), 465 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
