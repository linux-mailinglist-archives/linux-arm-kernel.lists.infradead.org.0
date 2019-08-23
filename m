Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 297499AFB3
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 14:37:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QxVR3lCKU6EDxvDpgQm56abn4UTwa4xjiiwLCjnP1yw=; b=ibGu/MsjACM7q1k7DVnZpdniNr
	AJU8oscSkaPkVFpuY8MYfz6CUbYjzW6M2PVGo2TM1Wm6UWKK1wQDqqJbyNHme64k2nYWjQ3HYOtMQ
	bzdjNu4o+9aTk1mGOJ6p3UirfMntDSr3T6Ko+ZFLxv8s1yi6fUYwL4CwsEQzMejeFsiaWRMMj47dj
	pmaI7JTp2oP9xDoOKyLxrZuD/JQLCPDM4o41CXIOjgR0cL113/UAGEvkPmHUDEPJysZiHNx4hc1n6
	zLUm7IaDqccLbZS+2vxUwYnkz+sDIAw5qc6Td/2dXDBH/bXobZ4h7XDEAQDxmFV2EqFviE0kCeYJE
	po9VqLqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i18p8-0007lA-6a; Fri, 23 Aug 2019 12:37:46 +0000
Received: from laurent.telenet-ops.be ([2a02:1800:110:4::f00:19])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i18oQ-00074L-Jn
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 12:37:05 +0000
Received: from ramsan ([84.194.98.4]) by laurent.telenet-ops.be with bizsmtp
 id sccr2000k05gfCL01ccrcd; Fri, 23 Aug 2019 14:36:55 +0200
Received: from rox.of.borg ([192.168.97.57]) by ramsan with esmtp (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0006YM-D3; Fri, 23 Aug 2019 14:36:51 +0200
Received: from geert by rox.of.borg with local (Exim 4.90_1)
 (envelope-from <geert@linux-m68k.org>)
 id 1i18oF-0004uI-Bu; Fri, 23 Aug 2019 14:36:51 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: arm-soc <arm@kernel.org>,
	arm-soc <soc@kernel.org>
Subject: [PULL 1/5] Renesas ARM DT updates for v5.4
Date: Fri, 23 Aug 2019 14:36:39 +0200
Message-Id: <20190823123643.18799-2-geert+renesas@glider.be>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190823123643.18799-1-geert+renesas@glider.be>
References: <20190823123643.18799-1-geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_053702_812880_E25289B3 
X-CRM114-Status: UNSURE (   8.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a02:1800:110:4:0:0:f00:19 listed in]
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

The following changes since commit 5f9e832c137075045d15cd6899ab0505cfb2ca4b:

  Linus 5.3-rc1 (2019-07-21 14:05:38 -0700)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/geert/renesas-devel.git tags/renesas-arm-dt-for-v5.4-tag1

for you to fetch changes up to 57012813f1ba82412cdcc3665b04d4353b357378:

  ARM: dts: r8a77470: Add PMU device node (2019-08-21 10:28:57 +0200)

----------------------------------------------------------------
Renesas ARM DT updates for v5.4

  - Fix HSCIF PM Domain on R-Car H1,
  - PMU support for RZ/G1C.

----------------------------------------------------------------
Geert Uytterhoeven (2):
      ARM: dts: r8a7779: Use SYSC "always-on" PM Domain for HSCIF
      ARM: dts: r8a77470: Add PMU device node

 arch/arm/boot/dts/r8a77470.dtsi | 7 +++++++
 arch/arm/boot/dts/r8a7779.dtsi  | 4 ++--
 2 files changed, 9 insertions(+), 2 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
