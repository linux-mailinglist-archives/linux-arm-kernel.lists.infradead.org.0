Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20374136959
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Jan 2020 10:02:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:To:From:Subject:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=QDkqWYlM4nteuJ4/YDOH5aPcuHV3ZkpHINUJDkOmoIc=; b=NFtddeRWxFBCL2
	3i6f39cIrkLagKhygVwlAmPe+xkmx2t16a57YtJP9PoX+pIxdZ31mqdle7FoPRGdHF3Nw51Hl7LKW
	4LSqEGHlZshH3Na8lZIzrHpOXdOtKaav71iPpOmHMs5rqpiwGTppyOjX0enXqKYnX68tkCn39OckF
	wp8KoUVFW/ahOpaEgHMwdnEeehPxKjOgT8Yycm6X0C0iYf1rfTi+gkDBro4LSIDBfYdlW0gKQL8Y/
	Kgn+aZ3ejvuZHmewlA7l7zF0Ae+uUezQ29EKOnpg1mv9N2oBWiGuMY/17mEIgZIzinYp/G6W9phlU
	9g4j9cFnKeFn6s79n6Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipqBr-0001LP-Vm; Fri, 10 Jan 2020 09:02:47 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipqBl-0001Kj-6G
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Jan 2020 09:02:42 +0000
Received: from lupine.hi.pengutronix.de
 ([2001:67c:670:100:3ad5:47ff:feaf:1a17] helo=lupine)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ipqBh-0004ot-NF; Fri, 10 Jan 2020 10:02:37 +0100
Received: from pza by lupine with local (Exim 4.92)
 (envelope-from <p.zabel@pengutronix.de>)
 id 1ipqBh-0005dn-Cm; Fri, 10 Jan 2020 10:02:37 +0100
Message-ID: <dbbb2ca7490a0146d9ba632fd4d9f38063e03e9f.camel@pengutronix.de>
Subject: [GIT PULL] Reset controller updates for v5.6
From: Philipp Zabel <p.zabel@pengutronix.de>
To: soc@kernel.org
Date: Fri, 10 Jan 2020 10:02:37 +0100
User-Agent: Evolution 3.30.5-1.1 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2001:67c:670:100:3ad5:47ff:feaf:1a17
X-SA-Exim-Mail-From: p.zabel@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de);
 SAEximRunCond expanded to false
X-PTX-Original-Recipient: linux-arm-kernel@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200110_010241_226552_82612FA9 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Dear SoC maintainers,

The following changes since commit 46cf053efec6a3a5f343fead837777efe8252a46:

  Linux 5.5-rc3 (2019-12-22 17:02:23 -0800)

are available in the Git repository at:

  git://git.pengutronix.de/pza/linux.git tags/reset-for-5.6

for you to fetch changes up to e2d5e8332c9684ea254c84002bc1e13a42db9e54:

  reset: qcom-aoss: Allow CONFIG_RESET_QCOM_AOSS to be a tristate (2020-01-08 10:26:14 +0100)

----------------------------------------------------------------
Reset controller updates for v5.6

This tag adds support for the Nuvoton NPCM, Intel Gatway SoC, and
Broadcom BCM7216 RESCAL reset controllers, adds missing SCSSI reset
controls for newer Uniphier SoCs, aligns the program flow in the
devm_reset_controller_register, __devm_reset_control_get, and
devm_reset_control_array_get functions for better consistency,
and allows to build the Qcom AOSS reset driver as a module.

This is based on v5.5-rc3 because the core patch depends on commit
db23808615e2 ("reset: Do not register resource data for missing
resets").

----------------------------------------------------------------
Dilip Kota (2):
      dt-bindings: reset: Add YAML schemas for the Intel Reset controller
      reset: intel: Add system reset controller driver

Geert Uytterhoeven (1):
      reset: Align logic and flow in managed helpers

Jim Quinlan (2):
      dt-bindings: reset: Document BCM7216 RESCAL reset controller
      reset: Add Broadcom STB RESCAL reset controller

John Stultz (1):
      reset: qcom-aoss: Allow CONFIG_RESET_QCOM_AOSS to be a tristate

Kunihiko Hayashi (1):
      reset: uniphier: Add SCSSI reset control for each channel

Tomer Maimon (3):
      dt-bindings: reset: add NPCM reset controller documentation
      dt-bindings: reset: Add binding constants for NPCM7xx reset controller
      reset: npcm: add NPCM reset controller driver

 .../reset/brcm,bcm7216-pcie-sata-rescal.yaml       |  37 +++
 .../devicetree/bindings/reset/intel,rcu-gw.yaml    |  63 +++++
 .../bindings/reset/nuvoton,npcm-reset.txt          |  32 +++
 drivers/reset/Kconfig                              |  25 +-
 drivers/reset/Makefile                             |   3 +
 drivers/reset/core.c                               |  33 +--
 drivers/reset/reset-brcmstb-rescal.c               | 107 ++++++++
 drivers/reset/reset-intel-gw.c                     | 262 +++++++++++++++++++
 drivers/reset/reset-npcm.c                         | 291 +++++++++++++++++++++
 drivers/reset/reset-qcom-aoss.c                    |   3 +-
 drivers/reset/reset-uniphier.c                     |  13 +-
 include/dt-bindings/reset/nuvoton,npcm7xx-reset.h  |  91 +++++++
 12 files changed, 937 insertions(+), 23 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/reset/brcm,bcm7216-pcie-sata-rescal.yaml
 create mode 100644 Documentation/devicetree/bindings/reset/intel,rcu-gw.yaml
 create mode 100644 Documentation/devicetree/bindings/reset/nuvoton,npcm-reset.txt
 create mode 100644 drivers/reset/reset-brcmstb-rescal.c
 create mode 100644 drivers/reset/reset-intel-gw.c
 create mode 100644 drivers/reset/reset-npcm.c
 create mode 100644 include/dt-bindings/reset/nuvoton,npcm7xx-reset.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
