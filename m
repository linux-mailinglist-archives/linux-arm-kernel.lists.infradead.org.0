Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAC9CDC36D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:01:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mWofp/LMEpj7uGaYnsERjXZ8iQhOihQhewWwYs9qnWY=; b=Z4K9a3JbHW9KUGjLPY10Ck/mBS
	E6hPOc2w5kfQmuSsevjDOhivMfug9KCDv1PdVot4zRSEoV0oBLWwoNxeo+Ye1fwph5NK8KS5PlP8O
	eIEJ+U4lh4fJb1cePme6bIyf+4yaV+aTbCwn4beKZICdrg/EqAimiUwhE3fIoR/B/pf0JIRDZhxPq
	hXTx2a/cLlJe2ehl/0HBrCxisyx0lmrX20xUym+pGcRC1XNsZwdzueKMwB79qqTId4eHrwUqd825A
	NkHLqnfHYPDHTdD36k2fix6EQdXyA2D4gIxb8tza/OMCqYdOsBeKZE2tIlSDt+99aPXrU565H4/IF
	xE2jHLsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQ0d-0001SU-5k; Fri, 18 Oct 2019 11:01:27 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQ0P-0001QC-8B
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:01:15 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id Ez142100i05gfCL01z148H; Fri, 18 Oct 2019 13:01:05 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLQ0G-0005q3-JW; Fri, 18 Oct 2019 13:01:04 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1iLPEt-0006s8-Va; Fri, 18 Oct 2019 12:12:07 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 5/5] Renesas DT binding updates for v5.5
Date: Fri, 18 Oct 2019 12:11:36 +0200
Message-Id: <20191018101136.26350-6-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191018101136.26350-1-geert+renesas@glider.be>
References: <20191018101136.26350-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_040113_449199_37F56913 
X-CRM114-Status: UNSURE (   8.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
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

The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:

  Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-dt-bindings-for-v5.5-tag1

for you to fetch changes up to 4d3cae42544775c71521e8ed5adb64c1839036b9:

  dt-bindings: reset: rcar-rst: Document r8a774b1 reset module (2019-10-01 09:52:34 +0200)

----------------------------------------------------------------
Renesas DT binding updates for v5.5

  - RZ/G2M update for the Renesas Timer Unit bindings,
  - Support for the new RZ/G2N (r8a774b1) SoC and the HiHope RZ/G2N
    board.

----------------------------------------------------------------
Biju Das (4):
      dt-bindings: arm: renesas: Document RZ/G2N SoC DT bindings
      dt-bindings: arm: renesas: Add HopeRun RZ/G2N boards
      dt-bindings: power: rcar-sysc: Document r8a774b1 sysc
      dt-bindings: reset: rcar-rst: Document r8a774b1 reset module

Fabrizio Castro (1):
      dt-bindings: timer: renesas: tmu: Document r8a774a1 bindings

 Documentation/devicetree/bindings/arm/renesas.yaml           | 12 ++++++++++++
 .../devicetree/bindings/power/renesas,rcar-sysc.txt          |  1 +
 Documentation/devicetree/bindings/reset/renesas,rst.txt      |  1 +
 Documentation/devicetree/bindings/timer/renesas,tmu.txt      |  1 +
 4 files changed, 15 insertions(+)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
