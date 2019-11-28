Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F36210CAF5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 15:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=SjKyKLdT5GKNVtiWs8mMn6WLu/qFjZl26NjZpok2Tb8=; b=kGZKEf4i97J80f
	V//i2UUFtbUXh0+dKCY+iewb3FwTsfe5rPHa4kqaXVoxqB5sFU2OBr0zXh0k91UZWPvgJMib7ZIec
	RyNMO6rqpgkVdqcMzB+hUVGX84/KVUjZSlVUqWzFUTIV55w5VC3lbrggOHpw2DZuj9q25muRcnhh9
	7iJ/McpdPZlwkNOqmUZjehpnbkwF3Dp1tW7MIqABS6YQm2FOCc2BeG9vz39klRWRXD8V94XI/OCxT
	UWSGJln/kswPE53b8Qem4kRuhFLyf4DRcEIo/uLoTkFADvUOC6Dqrlo9bDzJWvou2SN/KRv1UjRMg
	BIKG3+bpzj+7qV5DHunA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaLFQ-00010B-1I; Thu, 28 Nov 2019 14:58:24 +0000
Received: from casper.infradead.org ([85.118.1.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEG-0000bi-4X
 for linux-arm-kernel@bombadil.infradead.org; Thu, 28 Nov 2019 14:57:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
 Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=TxEZJrapheuGcVkTHvEaSzlzFDex1eCRUreiKtmtrLw=; b=AZsOSP35mDSEx+KnrB1Di7n+gq
 R5jcwJE8Kq6Ztsya0PWOlJ2/QwUXLExQ8CbjqLcmMlE7XpLr/u8oGADBy64bse5/qDVcqGdSi4sOF
 MpxIzU1CpIwOr4JgVYZe1Pr6omORNSdu6iJrci8rniewZnmHhIP6LcTo5hHp2HO8eeZqP50soZJ5f
 dKe+cIA51yEHt7abRRZV0LvNKjYcCHcbyvUuspD/+jzDHVRtkDZF2vgcvI8dUjRel4O4aQ4AKkB9c
 A1G0PdgkCbDlgvH4L9fNC6pvzbbI4WIwGGSxNISUuL44wuPkhspZzpj9k6xoHgwE7yo39EBWINMiS
 dzdXaOzw==;
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaLEe-0005py-Cc
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 14:57:38 +0000
Received: by mail-lf1-x141.google.com with SMTP id y19so20245407lfl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 28 Nov 2019 06:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TxEZJrapheuGcVkTHvEaSzlzFDex1eCRUreiKtmtrLw=;
 b=PfbVpsxnqoTm4+AHUY52yavr/Olmmhghf3YHY+kKMXlwSUHKj7ivWpUmJTb67//5Fr
 VRIxjqB8WT7bnXSijqylFbKNJpxyOZi5OJ70gYmK8sviUxKME612j0Rr/9sW3D1bjOYi
 vtg9x8bmat3c/KIzgzTxJ6LwnXipQ6EHzSJh8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=TxEZJrapheuGcVkTHvEaSzlzFDex1eCRUreiKtmtrLw=;
 b=jJ8SzeehmiVxVo5wttPrpnDH//gj1Ix3jE4wLsNYTDLB9GGYLpWjsuwcUv8T7dGshk
 R+z0sO/63w3TB18xGh+l11VnUoSkeKhYLPMQ2s5ybhT1d129K+KOzMlinqOH0qyw3UtK
 HeJsMkkZiS7ZZqThMzZsQQmUbejYv39Mm3esNAJNlgaYkytdkWy8gOCE59xjFL9DPfMC
 hTH65ZD2heuEWs8RGKpViX3rV6ND6APPDLO8pBzrjsvESJYKBidbrzItY/PDo/fdLnAs
 IL0uAxHPi2Aig7Kmgf0FJhZ+sTCkEp+HxokHhEnF5YmBRqKfuhUauS5GpqaxELJIchT3
 uDig==
X-Gm-Message-State: APjAAAUwysEVa/19oa3aY1kDhA21eKlK8D9op5AaXrAgARR4fHLnx/Pb
 iMbsY+5WA9cVtPmw8vUSIhmYXw==
X-Google-Smtp-Source: APXvYqzkK4MYmxYs86ZDtYHyyEr4XJ45PCk4FMhZ/J+q5PVCLxvjdBvwDjJikQbZr2tpIFy9jXX2PQ==
X-Received: by 2002:ac2:42c2:: with SMTP id n2mr4838943lfl.152.1574953024022; 
 Thu, 28 Nov 2019 06:57:04 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id u2sm2456803lfl.18.2019.11.28.06.57.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 28 Nov 2019 06:57:03 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
Date: Thu, 28 Nov 2019 15:55:05 +0100
Message-Id: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_145736_444921_D49514B5 
X-CRM114-Status: GOOD (  23.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Timur Tabi <timur@kernel.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linux-kernel@vger.kernel.org, Scott Wood <oss@buserror.net>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There have been several attempts in the past few years to allow
building the QUICC engine drivers for platforms other than PPC32. This
is yet another attempt.

v5 can be found here: https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/

Changes in v6:

- add various R-b, A-b tags

- add a patch (48/49) fixing a build issue on ARM with CONFIG_SMP=y

I added that patch last in the series, apart from the "allow to build
on ARM" Kconfig change, to preserve the enumeration of the other
patches from v5.

1-5 are about replacing in_be32 etc. in the core QE code (drivers/soc/fsl/qe).

6-8 handle miscellaneous other ppcisms.

9-21 deal with qe_ic: Simplifying the driver significantly by removing
unused code, and removing the platform-specific initialization from
arch/powerpc/.

22-25 deal with raw access to devicetree properties in native endianness.

26-34 makes drivers/tty/serial/ucc_uart.c (CONFIG_SERIAL_QE) ready to build on non-ppc.

35-46 deal with IS_ERR_VALUE() and some other things found while
digging around that part of the code.

47 adds a PPC32 dependency to UCC_GETH - it has some of the same
issues that have been fixed in the ucc_uart and ucc_hdlc cases. Nobody
has requested that I allow that driver to be built for arm{,64} and
reportedly, the hardware has only ever shipped on PPC SOCs. So instead
of growing this series even bigger, I kept that addition. It's trivial
to remove if somebody cares enough to fix the build errors/warnings
and actually has a platform to test the result on.

48 fixes a build issue on ARM reported by the kbuild bot.

Finally patch 49 lifts the PPC32 restriction from QUICC_ENGINE. At the
request of Li Yang, it doesn't remove the PPC32 dependency but instead
changes it to PPC|| ARM || ARM64 (or COMPILE_TEST), i.e. listing
the platforms that may have a QE.

The series has been built and booted on both an mpc8309-based platform
(ppc) as well as an ls1021a-based platform (arm). The core QE code is
exercised on both, while I could only test the ucc_uart on arm, since
the uarts are not wired up on our mpc8309 board. Qiang Zhao reports
that the ucc_hdlc driver does indeed work on a ls1043ardb (arm64)
board.

Rasmus Villemoes (49):
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
  soc: fsl: qe: use qe_ic_cascade_{low,high}_mpic also on 83xx
  soc: fsl: qe: move calls of qe_ic_init out of arch/powerpc/
  powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
  powerpc/85xx: remove mostly pointless mpc85xx_qe_init()
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
  soc: fsl: qe: refactor cpm_muram_alloc_common to prevent BUG on error
    path
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

 arch/powerpc/include/asm/cpm.h                | 172 +-------
 arch/powerpc/platforms/83xx/km83xx.c          |   3 +-
 arch/powerpc/platforms/83xx/misc.c            |  23 --
 arch/powerpc/platforms/83xx/mpc832x_mds.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc832x_rdb.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc836x_mds.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc836x_rdk.c     |   3 +-
 arch/powerpc/platforms/83xx/mpc83xx.h         |   7 -
 arch/powerpc/platforms/85xx/common.c          |  23 --
 arch/powerpc/platforms/85xx/corenet_generic.c |  12 -
 arch/powerpc/platforms/85xx/mpc85xx.h         |   2 -
 arch/powerpc/platforms/85xx/mpc85xx_mds.c     |  28 --
 arch/powerpc/platforms/85xx/mpc85xx_rdb.c     |  18 -
 arch/powerpc/platforms/85xx/twr_p102x.c       |  16 -
 drivers/net/ethernet/freescale/Kconfig        |   2 +-
 drivers/net/wan/fsl_ucc_hdlc.c                |  23 +-
 drivers/net/wan/fsl_ucc_hdlc.h                |   2 +-
 drivers/soc/fsl/qe/Kconfig                    |   3 +-
 drivers/soc/fsl/qe/gpio.c                     |  34 +-
 drivers/soc/fsl/qe/qe.c                       | 104 ++---
 drivers/soc/fsl/qe/qe_common.c                |  50 +--
 drivers/soc/fsl/qe/qe_ic.c                    | 285 ++++++-------
 drivers/soc/fsl/qe/qe_ic.h                    |  99 -----
 drivers/soc/fsl/qe/qe_io.c                    |  70 ++--
 drivers/soc/fsl/qe/qe_tdm.c                   |   8 +-
 drivers/soc/fsl/qe/ucc.c                      |  27 +-
 drivers/soc/fsl/qe/ucc_fast.c                 |  86 ++--
 drivers/soc/fsl/qe/ucc_slow.c                 |  60 ++-
 drivers/soc/fsl/qe/usb.c                      |   2 +-
 drivers/tty/serial/ucc_uart.c                 | 385 +++++++++---------
 include/soc/fsl/cpm.h                         | 171 ++++++++
 include/soc/fsl/qe/qe.h                       |  59 ++-
 include/soc/fsl/qe/qe_ic.h                    | 135 ------
 include/soc/fsl/qe/ucc_fast.h                 |   4 +-
 include/soc/fsl/qe/ucc_slow.h                 |   6 +-
 35 files changed, 775 insertions(+), 1156 deletions(-)
 delete mode 100644 drivers/soc/fsl/qe/qe_ic.h
 create mode 100644 include/soc/fsl/cpm.h
 delete mode 100644 include/soc/fsl/qe/qe_ic.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
