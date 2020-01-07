Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26463132E1C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:14:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PHO+mltlOrK1/n5lagW67+g+zRfEkJaSd6rPyUBO5do=; b=K/cUyb8mF8L7ym
	lUqnD9VBjdKJ/9CmcG5Xl72f3/BOts38WwCJGGQcAziTfM2+ROBOZ/vsrUrEZarLrIa/aNOQgBg/S
	BDIYFaMcDEVwfeh4pSQIJxYi+y+JBvibOSZgGJyNOhmTeqqlQK9271xJd3PnTos1REjEchIECSs/k
	De21wjy9WS9INoUFnSMHZyo7b75GtPRMFrTd/5mvF1soSuO6vuN8JnTzqICjdTS0+KWzSUDPX2CXT
	Om6fKwoCc0FaMTLZxqT2/92xeVCEqBiH1L94dpU4r441kAoA/uLYSvOVuEDzlxoQR9KJ2k/TIx5oQ
	ricGiA4lvr14jTpYUm2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotNL-0001XP-58; Tue, 07 Jan 2020 18:14:43 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotN3-0001OF-3e
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 18:14:26 +0000
Received: from hillo.muru.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTP id 3538F810E;
 Tue,  7 Jan 2020 18:15:06 +0000 (UTC)
From: Tony Lindgren <tony@atomide.com>
To: soc@kernel.org
Subject: [GIT PULL 2/4] dts changes for omaps for v5.6
Date: Tue,  7 Jan 2020 10:14:17 -0800
Message-Id: <pull-1578420398-290837@atomide.com-2>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <pull-1578420398-290837@atomide.com>
References: <pull-1578420398-290837@atomide.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_101425_186144_574E0A4F 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
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
Cc: Tony Lindgren <tony@atomide.com>, linux-omap@vger.kernel.org,
 arm@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: "Tony Lindgren" <tony@atomide.com>

The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/tmlind/linux-omap tags/omap-for-v5.6/dt-signed

for you to fetch changes up to bfe0237dd6c441f0ba531755ab24579eaee99be7:

  ARM: dts: am335x-icev2: Add support for OSD9616P0899-10 at i2c0 (2019-12-12 09:35:02 -0800)

----------------------------------------------------------------
Devicetree changes for omaps for v5.6 merge window

Devicetree changes for omaps for v5.6 to configure more
devices and update boards to use generic lcd panels:

- Configure HDMI for dra76-evm and am57xx-idk

- Correct node name for am3517 mdio

- Convert am335x-evm, am335x-evmsk, and am335x-icev2 to use generic
  panels

----------------------------------------------------------------
Grygorii Strashko (1):
      ARM: dts: omap3: name mdio node properly

Jyri Sarha (3):
      ARM: dts: am335x-evm: Use drm simple-panel instead of tilcdc-panel
      ARM: dts: am335x-evmsk: Use drm simple-panel instead of tilcdc-panel
      ARM: dts: am335x-icev2: Add support for OSD9616P0899-10 at i2c0

Tomi Valkeinen (2):
      ARM: dts: dra76-evm: add HDMI output
      ARM: dts: am57xx-idk-common: add HDMI to the common dtsi

 arch/arm/boot/dts/am335x-evm.dts         | 40 +++++++------------
 arch/arm/boot/dts/am335x-evmsk.dts       | 38 ++++++------------
 arch/arm/boot/dts/am335x-icev2.dts       | 13 +++++++
 arch/arm/boot/dts/am3517.dtsi            |  2 +-
 arch/arm/boot/dts/am57xx-idk-common.dtsi | 59 ++++++++++++++++++++++++++++
 arch/arm/boot/dts/dra76-evm.dts          | 66 ++++++++++++++++++++++++++++++++
 6 files changed, 164 insertions(+), 54 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
