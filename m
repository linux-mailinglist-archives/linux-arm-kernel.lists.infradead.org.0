Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B3517BA2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 16:38:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9CP1D/d7WYGAHwBqpaYVkTq8IWKp6IM2xAtRS7KTH5Q=; b=RnVR3ZH/qCDIIb
	ZP02An66SU2wy2pupaSv+gq3rMt6dsmdGjeSae7ufKI26GsAzCVJuio8r3J3Jh77kT7o/BzrVGUbe
	Z6CJFwjlfWz7/nm/78F7yB/lOJTSCznPEku62Ffn9LTb7k9Y0dBdWZsPuVL9bdrjBhUFcp/aNorYT
	QqFbh6xJGCmHHY33OgMkR4AsKKmh6k3GcJzute0qbiWhDaKpU2jDpeJSTZoZA2DFAh4k3STep7a/X
	+NXCK4ip/1kfcvKMwGLRwnSMstiSXbaYtqjCyVf6mu7psfFpnw04Qj+Rrd/A6+obIecosREDgyJKU
	N+pvg8eUhHbdOQr6JjeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hONhn-0001vw-S3; Wed, 08 May 2019 14:37:59 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hONhe-0001o3-Uz; Wed, 08 May 2019 14:37:52 +0000
Received: from we0048.dip.tu-dresden.de ([141.76.176.48]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hONhZ-0006TE-S5; Wed, 08 May 2019 16:37:45 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: broonie@kernel.org,
	lee.jones@linaro.org
Subject: [PATCH v8 0/5] support a new rk80x pmic-variants (rk817 and rk809)
Date: Wed,  8 May 2019 16:37:08 +0200
Message-Id: <20190508143713.27954-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_073751_146347_AA587AD9 
X-CRM114-Status: UNSURE (   9.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: huangtao@rock-chips.com, Heiko Stuebner <heiko@sntech.de>,
 zhangqing@rock-chips.com, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, tony.xie@rock-chips.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I've picked up and rebased Tony's patch-series for rk809 and rk817.
From the last iteration it looks like the regulator-portion did
fall through the cracks, the other patches seem to be sufficiently
reviewed/acked.

The regulator-patch could either just be picked alone to the regulator-
tree or with an Ack go through the mfd tree with the other patches.


Original cover-letter + changelog follows:

Most of functions and registers of the rk817 and rk808 are the same,
so they can share allmost all codes.

Their specifications are as follows:
  1) The RK809 and RK809 consist of 5 DCDCs, 9 LDOs and have the same
registers
     for these components except dcdc5.
  2) The dcdc5 is a boost dcdc for RK817 and is a buck for RK809.
  3) The RK817 has one switch but The Rk809 has two.

Changes in V2:
1. initialize the pm_pwroff_fn to NULL.
2. use EXPORT_SYMBOL_GPL to export pm_power_off_prepare.
3. change patch 2/3/4/5 subjects.

Changes in V3
1. change patch 4 subjects
2. replace pr_ with dev_ for printing in patch 2
3. modify switch1 and switch2 configs in patch 2
4. explain gpio information for rk809 and rk817 in patch 4

Changes in V4:
1. modify some codes for patch 2 and patch 5 according to comments 
2. add reviewer mail lists for patch 3 and 4

Changes in V5:
modify some codes for patch 1 according to reveiw comments for v3.
 1) remove the pm_power_off_prepare() and replace with shutdown
call-back from syscore
 2) move the macro REGMAP_IRQ_M into the regmap.h and rename it
REGMAP_IRQ_LINE
 3) make some dev_warn() log clear

Changes in V6:
modify some codes according to reveiw comments for v5.

Changes in V7:
modify some codes for patch 2 according to reveiw comments.

Changes in V8:
- [Heiko] rebase onto current mainline
- [Heiko] add some tags from Lee so that he can keep track of what
  he reviewed

Tony Xie (5):
  mfd: rk808: Add RK817 and RK809 support
  regulator: rk808: add RK809 and RK817 support.
  dt-bindings: mfd: rk808: Add binding information for RK809 and RK817.
  rtc: rk808: add RK809 and RK817 support.
  clk: RK808: add RK809 and RK817 support.

 .../devicetree/bindings/mfd/rk808.txt         |  44 ++
 drivers/clk/Kconfig                           |   9 +-
 drivers/clk/clk-rk808.c                       |  64 +-
 drivers/mfd/Kconfig                           |   6 +-
 drivers/mfd/rk808.c                           | 192 ++++-
 drivers/regulator/Kconfig                     |   4 +-
 drivers/regulator/rk808-regulator.c           | 657 +++++++++++++++++-
 drivers/rtc/Kconfig                           |   4 +-
 drivers/rtc/rtc-rk808.c                       |  68 +-
 include/linux/mfd/rk808.h                     | 175 +++++
 10 files changed, 1165 insertions(+), 58 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
