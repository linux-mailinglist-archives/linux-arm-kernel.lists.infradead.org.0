Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4209C1F3AEB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 14:47:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=60UD9X7VSes/HRSDm8j8vJ0GGVRxYFPqCOjVhlzFTlg=; b=GJLxrY2eBcHzB+
	osRQQ62hn60SvjrrgEhkvPKttxkXqzi1zwmfuIQhKivPbQKC4exRlmnVj6B+Dax6K1DQO49UKAxC2
	JJxCmxDqk7+BBpWX0/LxALnU7bYZk8/A8jtUzXM2zjlW0CgRo7XpNXRgdbItHAnSvmqS5bekR3tAf
	F5p9ilqtV1Mjq/dewScmH2l+tsJo94ujEz56f0BtGMVKFLtNfhqTDbLwIgFjXMC8dRbZqLm5llKQD
	hVAX3ncGutLW/oDV/tvO7aRzcNT/pFYhKz8HEF6cUwX6O8ystGwr3ITBePnqtCpTo6L6ivKLzFUvL
	+Z6GoN+o2Q0zW2xrpiDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jidei-0001DV-6l; Tue, 09 Jun 2020 12:47:04 +0000
Received: from perceval.ideasonboard.com
 ([2001:4b98:dc2:55:216:3eff:fef7:d647])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jideA-0000zn-CT; Tue, 09 Jun 2020 12:46:32 +0000
Received: from Q.local (cpc89242-aztw30-2-0-cust488.18-1.cable.virginm.net
 [86.31.129.233])
 by perceval.ideasonboard.com (Postfix) with ESMTPSA id 69A37291;
 Tue,  9 Jun 2020 14:46:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
 s=mail; t=1591706776;
 bh=e3OIMaowMErPAcp8NkPKang2PFc5JcVtp2mzp1SGQas=;
 h=From:To:Cc:Subject:Date:From;
 b=EOdFenfdoWi99kjLMHynj4J1fzXhK70x9pvPJKGRwe+u9s7ClkH6rqbqST2T0r5e5
 rd2CXOXDlipTFhHia9lb8Zg7V4PjvCiyTFMXq9uTY1o2DVNqSQeMO1a0klpHPm0VND
 3avMiOPNyTukk9rgiob/Q4qsq6cY/3qW7k1hOjx8=
From: Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>
To: Kieran Bingham <kieran.bingham@ideasonboard.com>
Subject: [PATCH 00/17] spelling.txt: /decriptors/descriptors/
Date: Tue,  9 Jun 2020 13:45:53 +0100
Message-Id: <20200609124610.3445662-1-kieran.bingham+renesas@ideasonboard.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_054630_570066_09284438 
X-CRM114-Status: UNSURE (   4.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-scsi@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rdma@vger.kernel.org, netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
 linux-renesas-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
 linux-mtd@lists.infradead.org, ath10k@lists.infradead.org,
 linux-input@vger.kernel.org, linuxppc-dev@lists.ozlabs.org, linux-mm@kvack.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I wouldn't normally go through spelling fixes, but I caught sight of
this typo twice, and then foolishly grepped the tree for it, and saw how
pervasive it was.

so here I am ... fixing a typo globally... but with an addition in
scripts/spelling.txt so it shouldn't re-appear ;-)

Cc: linux-arm-kernel@lists.infradead.org (moderated list:TI DAVINCI MACHINE SUPPORT)
Cc: linux-kernel@vger.kernel.org (open list)
Cc: linux-pm@vger.kernel.org (open list:DEVICE FREQUENCY EVENT (DEVFREQ-EVENT))
Cc: linux-gpio@vger.kernel.org (open list:GPIO SUBSYSTEM)
Cc: dri-devel@lists.freedesktop.org (open list:DRM DRIVERS)
Cc: linux-rdma@vger.kernel.org (open list:HFI1 DRIVER)
Cc: linux-input@vger.kernel.org (open list:INPUT (KEYBOARD, MOUSE, JOYSTICK, TOUCHSCREEN)...)
Cc: linux-mtd@lists.infradead.org (open list:NAND FLASH SUBSYSTEM)
Cc: netdev@vger.kernel.org (open list:NETWORKING DRIVERS)
Cc: ath10k@lists.infradead.org (open list:QUALCOMM ATHEROS ATH10K WIRELESS DRIVER)
Cc: linux-wireless@vger.kernel.org (open list:NETWORKING DRIVERS (WIRELESS))
Cc: linux-scsi@vger.kernel.org (open list:IBM Power Virtual FC Device Drivers)
Cc: linuxppc-dev@lists.ozlabs.org (open list:LINUX FOR POWERPC (32-BIT AND 64-BIT))
Cc: linux-usb@vger.kernel.org (open list:USB SUBSYSTEM)
Cc: virtualization@lists.linux-foundation.org (open list:VIRTIO CORE AND NET DRIVERS)
Cc: linux-mm@kvack.org (open list:MEMORY MANAGEMENT)


Kieran Bingham (17):
  arch: arm: mach-davinci: Fix trivial spelling
  drivers: infiniband: Fix trivial spelling
  drivers: gpio: Fix trivial spelling
  drivers: mtd: nand: raw: Fix trivial spelling
  drivers: net: Fix trivial spelling
  drivers: scsi: Fix trivial spelling
  drivers: usb: Fix trivial spelling
  drivers: gpu: drm: Fix trivial spelling
  drivers: regulator: Fix trivial spelling
  drivers: input: joystick: Fix trivial spelling
  drivers: infiniband: Fix trivial spelling
  drivers: devfreq: Fix trivial spelling
  include: dynamic_debug.h: Fix trivial spelling
  kernel: trace: Fix trivial spelling
  mm: Fix trivial spelling
  regulator: gpio: Fix trivial spelling
  scripts/spelling.txt: Add descriptors correction

 arch/arm/mach-davinci/board-da830-evm.c  | 2 +-
 drivers/devfreq/devfreq-event.c          | 4 ++--
 drivers/gpio/TODO                        | 2 +-
 drivers/gpu/drm/drm_dp_helper.c          | 2 +-
 drivers/infiniband/hw/hfi1/iowait.h      | 2 +-
 drivers/infiniband/hw/hfi1/ipoib_tx.c    | 2 +-
 drivers/infiniband/hw/hfi1/verbs_txreq.h | 2 +-
 drivers/input/joystick/spaceball.c       | 2 +-
 drivers/mtd/nand/raw/mxc_nand.c          | 2 +-
 drivers/mtd/nand/raw/nand_bbt.c          | 2 +-
 drivers/net/wan/lmc/lmc_main.c           | 2 +-
 drivers/net/wireless/ath/ath10k/usb.c    | 2 +-
 drivers/net/wireless/ath/ath6kl/usb.c    | 2 +-
 drivers/net/wireless/cisco/airo.c        | 2 +-
 drivers/regulator/fixed.c                | 2 +-
 drivers/regulator/gpio-regulator.c       | 2 +-
 drivers/scsi/ibmvscsi/ibmvfc.c           | 2 +-
 drivers/scsi/ibmvscsi/ibmvscsi.c         | 2 +-
 drivers/scsi/qla2xxx/qla_inline.h        | 2 +-
 drivers/scsi/qla2xxx/qla_iocb.c          | 6 +++---
 drivers/usb/core/of.c                    | 2 +-
 include/drm/drm_dp_helper.h              | 2 +-
 include/linux/dynamic_debug.h            | 2 +-
 kernel/trace/trace_events.c              | 2 +-
 mm/balloon_compaction.c                  | 4 ++--
 scripts/spelling.txt                     | 1 +
 26 files changed, 30 insertions(+), 29 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
