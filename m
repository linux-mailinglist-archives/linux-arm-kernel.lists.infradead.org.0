Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DB274E2B9
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:12:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=S7OIdYXLILT3Kh4MPyFAxzfcBAIqVjmXtjjfz4ehOFk=; b=Hcy
	Md38DOW5Ff2UaoklhVgOT0ydwbIazwRxALk2Z9zn0rITA+Bks1ySGg7FIbjUWTVT1KZzESiXXH1JM
	hnXKNY850irDGHfIdLy9C4CWQzzK4vQGQzbj3rFXQ9KgGnyB5b1cIpKNktNh6pKLKRur0B7cbaYob
	qVUoy99n++rmJ/O/L1Q+iMBc/pOVPUytLFWbJB9Ho0esBPRaXDvKeUXeFlVmbNkh6JkjxvCUcu+pA
	2fSM2YY59IbkTyVSTqGVXdlhENB5/mYxS8+z+IE1puHeZW2szFN32lYajPV10XE++n14J2HOUqzu+
	aDB0pezL3VCbQTBOobbUcvBeuFVJNBw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFaG-00075G-NA; Fri, 21 Jun 2019 09:11:48 +0000
Received: from kirsty.vergenet.net ([202.4.237.240])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFZt-00074W-Er
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:11:27 +0000
Received: from reginn.horms.nl (watermunt.horms.nl [80.127.179.77])
 by kirsty.vergenet.net (Postfix) with ESMTPA id 6866125AD85;
 Fri, 21 Jun 2019 19:11:18 +1000 (AEST)
Received: by reginn.horms.nl (Postfix, from userid 7100)
 id 71EA39408C4; Fri, 21 Jun 2019 11:11:16 +0200 (CEST)
From: Simon Horman <horms+renesas@verge.net.au>
To: arm@kernel.org
Subject: [GIT PULL] Renesas ARM Based SoC DT Bindings Updates for v5.3
Date: Fri, 21 Jun 2019 11:10:54 +0200
Message-Id: <cover.1561107729.git.horms+renesas@verge.net.au>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021125_657455_5F968214 
X-CRM114-Status: GOOD (  10.51  )
X-Spam-Score: -2.0 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [202.4.237.240 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Arnd Bergmann <arnd@arndb.de>, Kevin Hilman <khilman@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Magnus Damm <magnus.damm@gmail.com>, linux-renesas-soc@vger.kernel.org,
 Olof Johansson <olof@lixom.net>, Simon Horman <horms+renesas@verge.net.au>,
 "David S . Miller" <davem@davemloft.net>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Olof, Hi Kevin, Hi Arnd,

Please consider these Renesas ARM based SoC DT bindings updates for v5.3.

I have collected CMT and CAN controller patches that were slipping through
the cracks into this pull request. They have been acked by the relevant
maintainers.


The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:

  Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)

are available in the git repository at:

  https://git.kernel.org/pub/scm/linux/kernel/git/horms/renesas.git tags/renesas-dt-bindings-for-v5.3

for you to fetch changes up to 74a22e8f4350a9e096c84fc9e88cf72abf71887c:

  dt-bindings: display: renesas: Add r8a774a1 support (2019-06-19 15:49:46 +0200)

----------------------------------------------------------------
Renesas ARM Based SoC DT Bindings Updates for v5.3

* Renesas Gen3 DWC HDMI TX Encoder
  - Add RZ/G2M (r8a774a1) support

* Renesas R-Car Compare Match Timer (CMT)
 - Add R-Car H3 (r8a7795), M3-N (r8a77965) and E3 (r8a77990) support

* Renesas R-Car CAN FD Controller
  - Add R-Car M3-N (r8a77965) and E3 (r8a77990), and RZ/G2E (r8a774c0) support

* Renesas R-Car CAN Controller
  - Add RZ/G2M (r8a774a1) support
  - Correct RZ/G2 clocks

* Vendor prefixes: Add vendor prefix for HopeRun

* Renesas SoCs and boards: Add HopeRun RZ/G2[M] boards

----------------------------------------------------------------
Cao Van Dong (1):
      dt-bindings: timer: renesas, cmt: Document r8a779{5|65|90} CMT support

Fabrizio Castro (6):
      dt-bindings: arm: renesas: Add HopeRun RZ/G2[M] boards
      dt-bindings: Add vendor prefix for HopeRun
      dt-bindings: can: rcar_can: Fix RZ/G2 CAN clocks
      dt-bindings: can: rcar_can: Add r8a774c0 support
      dt-bindings: can: rcar_canfd: document r8a774c0 support
      dt-bindings: display: renesas: Add r8a774a1 support

Marek Vasut (2):
      dt-bindings: can: rcar_canfd: document r8a77965 support
      dt-bindings: can: rcar_canfd: document r8a77990 support

 Documentation/devicetree/bindings/arm/renesas.yaml       |  8 ++++++++
 .../bindings/display/bridge/renesas,dw-hdmi.txt          |  4 +++-
 Documentation/devicetree/bindings/net/can/rcar_can.txt   | 13 ++++---------
 Documentation/devicetree/bindings/net/can/rcar_canfd.txt | 16 ++++++++++------
 Documentation/devicetree/bindings/timer/renesas,cmt.txt  |  6 ++++++
 Documentation/devicetree/bindings/vendor-prefixes.yaml   |  2 ++
 6 files changed, 33 insertions(+), 16 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
