Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6C113632B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 23:19:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=lEChRWt7dUvWkWOcI/Ce+BRj9Q49z1kq7eyqbEzeFC8=; b=sUZ
	gbmd6coS50bF24OGuBT8zH8j5bJlrHmOjpjc+BN/nJNbtncO7furGLYHqYGc+ZmK9HUUPJFQBZ7uB
	WMicRml5oNVbgFCjeGSAe0z0yDrudIyPRFkIdYvQIxvDKgUMDyunB397oth00QL/X2Q3ZGYORS33+
	NaH7jN8t0P5pQiSufv6ivFszQZFAQwKo1BjRbRJQAT1IKqZPZD+jA6XNwuAoC7lmKGDwp+T+ivcq2
	EVglYYuiQhgfqskp1olEBXcra3LSlgMDM+aVA1n60wLK1JZZYe2WwG1n8wtHHKmVtE2HSGqQXLRB1
	nU75Zi8MwDl4wpA1oME/C5XqvJeqmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipg9D-0004m4-VS; Thu, 09 Jan 2020 22:19:23 +0000
Received: from inva020.nxp.com ([92.121.34.13])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipg96-0004l9-5T
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 22:19:18 +0000
Received: from inva020.nxp.com (localhost [127.0.0.1])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id E1AA81A0531;
 Thu,  9 Jan 2020 23:19:12 +0100 (CET)
Received: from smtp.na-rdc02.nxp.com (usphx01srsp001v.us-phx01.nxp.com
 [134.27.49.11])
 by inva020.eu-rdc02.nxp.com (Postfix) with ESMTP id 88A6F1A052F;
 Thu,  9 Jan 2020 23:19:12 +0100 (CET)
Received: from right.am.freescale.net (right.am.freescale.net [10.81.116.70])
 by usphx01srsp001v.us-phx01.nxp.com (Postfix) with ESMTP id
 BF10B40CD4; Thu,  9 Jan 2020 15:19:11 -0700 (MST)
From: Li Yang <leoyang.li@nxp.com>
To: arm@kernel.org,
	soc@kernel.org
Subject: [GIT PULL] soc/fsl drivers changes for next(v5.6)
Date: Thu,  9 Jan 2020 16:19:11 -0600
Message-Id: <1578608351-23289-1-git-send-email-leoyang.li@nxp.com>
X-Mailer: git-send-email 1.9.0
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_141916_486565_0FA44A8E 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.13 listed in list.dnswl.org]
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
Cc: shawnguo@kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi soc maintainers,

Please merge the following new changes for soc/fsl drivers.

Regards,
Leo


The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:

  Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/leo/linux.git tags/soc-fsl-next-v5.6

for you to fetch changes up to 6e62bd36e9ad85a22d92b1adce6a0336ea549733:

  soc: fsl: qe: remove set but not used variable 'mm_gc' (2020-01-08 16:02:48 -0600)

----------------------------------------------------------------
NXP/FSL SoC driver updates for v5.6

QUICC Engine drivers
- Improve the QE drivers to be compatible with ARM/ARM64/PPC64
architectures
- Various cleanups to the QE drivers

----------------------------------------------------------------
Rasmus Villemoes (48):
      soc: fsl: qe: remove space-before-tab
      soc: fsl: qe: drop volatile qualifier of struct qe_ic::regs
      soc: fsl: qe: rename qe_(clr/set/clrset)bit* helpers
      soc: fsl: qe: introduce qe_io{read,write}* wrappers
      soc: fsl: qe: avoid ppc-specific io accessors
      soc: fsl: qe: replace spin_event_timeout by readx_poll_timeout_atomic
      soc: fsl: qe: qe.c: guard use of pvr_version_is() with CONFIG_PPC32
      soc: fsl: qe: drop unneeded #includes
      soc: fsl: qe: drop assign-only high_active in qe_ic_init
      soc: fsl: qe: remove pointless sysfs registration in qe_ic.c
      soc: fsl: qe: use qe_ic_cascade_{low, high}_mpic also on 83xx
      soc: fsl: qe: move calls of qe_ic_init out of arch/powerpc/
      powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
      soc: fsl: qe: move qe_ic_cascade_* functions to qe_ic.c
      soc: fsl: qe: rename qe_ic_cascade_low_mpic -> qe_ic_cascade_low
      soc: fsl: qe: remove unused qe_ic_set_* functions
      soc: fsl: qe: don't use NO_IRQ in qe_ic.c
      soc: fsl: qe: make qe_ic_get_{low,high}_irq static
      soc: fsl: qe: simplify qe_ic_init()
      soc: fsl: qe: merge qe_ic.h headers into qe_ic.c
      soc: fsl: qe: qe.c: use of_property_read_* helpers
      soc: fsl: qe: qe_io.c: don't open-code of_parse_phandle()
      soc: fsl: qe: qe_io.c: access device tree property using be32_to_cpu
      soc: fsl: qe: qe_io.c: use of_property_read_u32() in par_io_init()
      soc: fsl: move cpm.h from powerpc/include/asm to include/soc/fsl
      soc/fsl/qe/qe.h: update include path for cpm.h
      serial: ucc_uart: explicitly include soc/fsl/cpm.h
      serial: ucc_uart: replace ppc-specific IO accessors
      serial: ucc_uart: factor out soft_uart initialization
      serial: ucc_uart: stub out soft_uart_init for !CONFIG_PPC32
      serial: ucc_uart: use of_property_read_u32() in ucc_uart_probe()
      serial: ucc_uart: limit brg-frequency workaround to PPC32
      serial: ucc_uart: access __be32 field using be32_to_cpu
      soc: fsl: qe: change return type of cpm_muram_alloc() to s32
      soc: fsl: qe: make cpm_muram_free() return void
      soc: fsl: qe: make cpm_muram_free() ignore a negative offset
      soc: fsl: qe: drop broken lazy call of cpm_muram_init()
      soc: fsl: qe: refactor cpm_muram_alloc_common to prevent BUG on error path
      soc: fsl: qe: avoid IS_ERR_VALUE in ucc_slow.c
      soc: fsl: qe: drop use of IS_ERR_VALUE in qe_sdma_init()
      soc: fsl: qe: drop pointless check in qe_sdma_init()
      soc: fsl: qe: avoid IS_ERR_VALUE in ucc_fast.c
      net/wan/fsl_ucc_hdlc: avoid use of IS_ERR_VALUE()
      net/wan/fsl_ucc_hdlc: fix reading of __be16 registers
      net/wan/fsl_ucc_hdlc: reject muram offsets above 64K
      net: ethernet: freescale: make UCC_GETH explicitly depend on PPC32
      soc: fsl: qe: remove unused #include of asm/irq.h from ucc.c
      soc: fsl: qe: remove PPC32 dependency from CONFIG_QUICC_ENGINE

YueHaibing (1):
      soc: fsl: qe: remove set but not used variable 'mm_gc'

 arch/powerpc/include/asm/cpm.h                | 172 +-----------
 arch/powerpc/platforms/83xx/km83xx.c          |   3 +-
 arch/powerpc/platforms/83xx/misc.c            |  23 --
 arch/powerpc/platforms/83xx/mpc832x_mds.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc832x_rdb.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc836x_mds.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc836x_rdk.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc83xx.h         |   7 -
 arch/powerpc/platforms/85xx/corenet_generic.c |  10 -
 arch/powerpc/platforms/85xx/mpc85xx_mds.c     |  27 --
 arch/powerpc/platforms/85xx/mpc85xx_rdb.c     |  17 --
 arch/powerpc/platforms/85xx/twr_p102x.c       |  15 -
 drivers/net/ethernet/freescale/Kconfig        |   2 +-
 drivers/net/wan/fsl_ucc_hdlc.c                |  23 +-
 drivers/net/wan/fsl_ucc_hdlc.h                |   2 +-
 drivers/soc/fsl/qe/Kconfig                    |   3 +-
 drivers/soc/fsl/qe/gpio.c                     |  36 +--
 drivers/soc/fsl/qe/qe.c                       | 104 +++----
 drivers/soc/fsl/qe/qe_common.c                |  50 ++--
 drivers/soc/fsl/qe/qe_ic.c                    | 285 +++++++++----------
 drivers/soc/fsl/qe/qe_ic.h                    |  99 -------
 drivers/soc/fsl/qe/qe_io.c                    |  70 +++--
 drivers/soc/fsl/qe/qe_tdm.c                   |   8 +-
 drivers/soc/fsl/qe/ucc.c                      |  27 +-
 drivers/soc/fsl/qe/ucc_fast.c                 |  86 +++---
 drivers/soc/fsl/qe/ucc_slow.c                 |  60 ++--
 drivers/soc/fsl/qe/usb.c                      |   2 +-
 drivers/tty/serial/ucc_uart.c                 | 385 ++++++++++++++------------
 include/soc/fsl/cpm.h                         | 171 ++++++++++++
 include/soc/fsl/qe/qe.h                       |  59 ++--
 include/soc/fsl/qe/qe_ic.h                    | 135 ---------
 include/soc/fsl/qe/ucc_fast.h                 |   4 +-
 include/soc/fsl/qe/ucc_slow.h                 |   6 +-
 33 files changed, 775 insertions(+), 1128 deletions(-)
 delete mode 100644 drivers/soc/fsl/qe/qe_ic.h
 create mode 100644 include/soc/fsl/cpm.h
 delete mode 100644 include/soc/fsl/qe/qe_ic.h

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
