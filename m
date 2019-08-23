Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 497149AFBA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=bBJMNzfqnFp4agcVxqYG/RYQDACbZ+ewh5MKoDcAbZg=; b=E2eFnXfrRW/8BFbjphZvALyPnC
	LRJpjk8ate6Q901tKOFYwW5s1bLApk5TmkPWl2LdgQOG6deW6SHzodrIBK5ttG7p5b0Cu6nQc4CK4
	Wte+KrgAJVHknk1AQqY6tmEOHnH2yp1crlJVHDrERJ6jtUJbQNaWp6amRE1rP4hGCaUdZpWFpGmNK
	fQZWbOBZ26J0UM11B4h/5wztRGtz2bJCwn0i3yeGcwsGQ94GAEoIrGOw5/vq8i7JagxWICbJlri/Q
	+ZdAtmJPVqBt0w9WLglQ0MBqavPa8x/+hMNB+7qMa1Hv+onqt03T7n9CLOrRWHEI4SXjshbI57i8s
	DI2Dy4cA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18pH-00080g-NW; Fri, 23 Aug 2019 12:37:55 +0000
Received: from michel.telenet-ops.be ([2a02:1800:110:4::f00:18])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18oQ-00074N-K3
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:37:05 +0000
Received: from ramsan ([84.194.98.4]) by michel.telenet-ops.be with bizsmtp
 id sccr2000T05gfCL06ccrx2; Fri, 23 Aug 2019 14:36:54 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0006YS-EV; Fri, 23 Aug 2019 14:36:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0004uO-DQ; Fri, 23 Aug 2019 14:36:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 3/5] Renesas ARM64 DT updates for v5.4 (take two)
Date: Fri, 23 Aug 2019 14:36:41 +0200
Message-Id: <20190823123643.18799-4-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823123643.18799-1-geert+renesas@glider.be>
References: <20190823123643.18799-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_053702_834041_9A553FA7 
X-CRM114-Status: UNSURE (   9.38  )
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
Cc: linux-renesas-soc@vger.kernel.org, Simon Horman <horms@verge.net.au>,
 Magnus Damm <magnus.damm@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The following changes since commit 0a05b3d7fee511de8a1c9dffc3d86f1df55e1737:

  arm64: dts: renesas: ulcb: Sort nodes (2019-07-30 11:25:35 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm64-dt-for-v5.4-tag2

for you to fetch changes up to 38290431d56d7d3928ac89e9f8d3d6b3c8df4c6e:

  arm64: dts: renesas: Update 'vsps' properties for readability (2019-08-21 14:18:56 +0200)

----------------------------------------------------------------
Renesas ARM64 DT updates for v5.4 (take two)

  - Sort nodes in various SoC and board DTSes,
  - HDMI sound for HiHope RZ/G2M and R-Car M3-N Salvator-X(S) boards,
  - Limit EtherAVB to 100Mbps on the Ebisu and Draak boards,
  - Small fixes and improvements.

----------------------------------------------------------------
Fabrizio Castro (3):
      arm64: dts: renesas: r8a774c0: Point LVDS0 to its companion LVDS1
      arm64: dts: renesas: r8a774c0: cat874: Add definition for 12V regulator
      arm64: dts: renesas: hihope-common: Add HDMI audio support

Geert Uytterhoeven (2):
      arm64: dts: renesas: r8a77980: Fix IPMMU-VC0 base address
      arm64: dts: renesas: r8a774c0: Fix register range of display node

Jacopo Mondi (1):
      arm64: dts: renesas: Update 'vsps' properties for readability

Kuninori Morimoto (1):
      arm64: dts: renesas: r8a77965-salvator-x(s): Enable HDMI sound

Simon Horman (1):
      arm64: dts: renesas: ebisu, draak: Limit EtherAVB to 100Mbps

Yoshihiro Kaneko (13):
      arm64: dts: renesas: r8a77970: eagle: Sort nodes
      arm64: dts: renesas: r8a77970: v3msk: Sort nodes
      arm64: dts: renesas: r8a77980: condor: Sort nodes
      arm64: dts: renesas: r8a77980: v3hsk: Sort nodes
      arm64: dts: renesas: r8a77990: ebisu: Sort nodes
      arm64: dts: renesas: r8a77990: Sort nodes
      arm64: dts: renesas: r8a77995: draak: Sort nodes
      arm64: dts: renesas: r8a77995: Sort nodes
      arm64: dts: renesas: r8a774a1: Sort nodes
      arm64: dts: renesas: r8a774c0: cat874: Sort nodes
      arm64: dts: renesas: r8a774c0: Sort nodes
      arm64: dts: renesas: r8a7796: Sort nodes
      arm64: dts: renesas: r8a77970: Sort nodes

 arch/arm64/boot/dts/renesas/hihope-common.dtsi     |  47 +++++
 arch/arm64/boot/dts/renesas/r8a774a1.dtsi          | 174 ++++++++---------
 arch/arm64/boot/dts/renesas/r8a774c0-cat874.dts    |  37 ++--
 arch/arm64/boot/dts/renesas/r8a774c0.dtsi          |  96 ++++-----
 arch/arm64/boot/dts/renesas/r8a7795.dtsi           |   2 +-
 arch/arm64/boot/dts/renesas/r8a7796.dtsi           | 152 +++++++--------
 .../arm64/boot/dts/renesas/r8a77965-salvator-x.dts |  28 +++
 .../boot/dts/renesas/r8a77965-salvator-xs.dts      |  28 +++
 arch/arm64/boot/dts/renesas/r8a77965.dtsi          |   2 +-
 arch/arm64/boot/dts/renesas/r8a77970-eagle.dts     |  58 +++---
 arch/arm64/boot/dts/renesas/r8a77970-v3msk.dts     | 116 +++++------
 arch/arm64/boot/dts/renesas/r8a77970.dtsi          |   6 +-
 arch/arm64/boot/dts/renesas/r8a77980-condor.dts    |  42 ++--
 arch/arm64/boot/dts/renesas/r8a77980-v3hsk.dts     |  12 +-
 arch/arm64/boot/dts/renesas/r8a77980.dtsi          |   4 +-
 arch/arm64/boot/dts/renesas/r8a77990-ebisu.dts     | 216 +++++++++++----------
 arch/arm64/boot/dts/renesas/r8a77990.dtsi          |  46 ++---
 arch/arm64/boot/dts/renesas/r8a77995-draak.dts     |  18 +-
 arch/arm64/boot/dts/renesas/r8a77995.dtsi          |  78 ++++----
 19 files changed, 646 insertions(+), 516 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
