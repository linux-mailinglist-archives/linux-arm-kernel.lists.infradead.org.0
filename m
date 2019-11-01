Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46EC9EC2E7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 13:42:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=61HjOiostsNhp/Mmsor9HiXR8SDs3e1CYLVxzU/HD58=; b=NzQDng7uNandts
	nwlNim2/6fwjZHHRp3EA4ZaPc8mGS2SaN3eBRlpq8H1cOTQ0VQnNQiVgz/ntR34Ux1JYKnkfbbdpX
	prZavGK9rZEh1DmYK0xNMU3MUfYN3i9cWsuJweX5xdwszAJp8RxVpQddqLfd+5JJ8oz+pOREGbWEN
	8ff7tKUtpFH0TgCQCPO1HLtYr5VxKTkOB59hUdH2MC4P0CQVW8WhYaX5tfBBwhru3+LcppHu1CsC5
	jpkIegEknn25cV5HQvU2iI3H92cqiHn3WgnuJSoZUTHxtE035nn79nVbi5X7mnBsfJ9+oHVxA3P41
	4HJDZ22DhwyMNkKaLOhA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQWGR-000801-2H; Fri, 01 Nov 2019 12:42:51 +0000
Received: from mail-lf1-x135.google.com ([2a00:1450:4864:20::135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQWFv-0007n1-OQ
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 12:42:21 +0000
Received: by mail-lf1-x135.google.com with SMTP id j5so7131812lfh.10
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 05:42:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=12SepDs6/FSflannDoWCyxi6C7tLQuH0xm/jM6LnU3g=;
 b=IdTl1JZl2Sowp/CbFfHVjBvj+ZNIOJhJcsZVu5j4ngE7H8QtjC9lfpfMVMKQwG1SRl
 RaOVI23pzPqAMol8XCO8qVHxMQ3KgFWhy12T90k72rofCGkA0WwAYL0hmluuk7yS3WAN
 Oaim1pVJnpfFfye8kGM2J63GHb6wKtChR5uWI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=12SepDs6/FSflannDoWCyxi6C7tLQuH0xm/jM6LnU3g=;
 b=RCQG/Nbzf2NSciXnm3EYTdxlHmTkS6/gaPDAqnkenX3RANv3NP0R3rFgD8IyIRvPnS
 BndMtl7x8tKW+NLt+WuEOu5ZtrtLcWjgkCYznFtwmyOA2retv9paSXGG81MdLTQDbjU2
 YE/QSF1tjmNWNygyjURkjDSPkZ41D1PFRAXcPPQOPyPhkmB4LKf8UInxJ781+5evFz1e
 M//p5OUiLsiouG6q5NxAELyOjpOkaB25IacmafR7eTUuvRXH0olo49Y0xowoBubzIkow
 AZQ5zwMYM7WQ3AVMqay5M0Nkh4ugYgivzbjDjScqCr9xRVgdBeReCCRfuBQHaANvlDMH
 d49g==
X-Gm-Message-State: APjAAAWJPHjWNUPqlt1EMBf+d43UavUv/LqRUFAIHunK2FIC2KD0q7TZ
 lpf/AXdPN8nTo/RiL8jKsPZmug==
X-Google-Smtp-Source: APXvYqyiWfNPCkE6rwOxYzYsiGbZYM7XmHPALK2+Uq1oKakULYdJwJJRnIu5ucPt8Lmpb7MKrL7Rtw==
X-Received: by 2002:a19:655b:: with SMTP id c27mr7112242lfj.122.1572612134709; 
 Fri, 01 Nov 2019 05:42:14 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id o26sm2458540lfi.57.2019.11.01.05.42.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 05:42:13 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v3 00/36] QUICC Engine support on ARM
Date: Fri,  1 Nov 2019 13:41:34 +0100
Message-Id: <20191101124210.14510-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_054219_796184_484D08F5 
X-CRM114-Status: GOOD (  14.67  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:135 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Scott Wood <oss@buserror.net>, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There have been several attempts in the past few years to allow
building the QUICC engine drivers for platforms other than PPC. This
is yet another attempt.

Changes in v3:

- Address the performance impact on ppc from replacing out_be32 by
  iowrite32be by instead introducing a qe_iowrite32be wrapper and
  using that - patches 3 and 4 in this series.

- Extend the series so that both the QE core as well as ucc_uart
  builds for ARM - patches 26-33.

- Reorganize things a bit to avoid touching code that gets killed
  anyway in a later patch.

Also the patches are now better grouped:

1-5 are about replacing in_be32 etc. in the core QE code (drivers/soc/fsl/qe).

6-8 handle miscellaneous other ppcisms.

9-21 deal with qe_ic: Simplifying the driver significantly by removing
unused code, and removing the platform-specific initialization from
arch/powerpc/.

22-25 deal with raw access to devicetree properties in native endianness.

26-33 makes drivers/tty/serial/ucc_uart.c (CONFIG_SERIAL_QE) ready to build on arm.

34-36 remove the PPC32 dependency from QUICC_ENGINE. Two drivers that
depend on QUICC_ENGINE get an explicit PPC32 dependency to prevent
allmodconfig build failures.

The series has been built and booted on both an mpc8309-based platform
(ppc) as well as an ls1021a-based platform (arm). The core QE code is
exercised on both, while I could only test the ucc_uart on arm, since
the uarts are not wired up on our mpc8309 board.

Rasmus Villemoes (36):
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
  serial: ucc_uart: access __be32 field using be32_to_cpu
  net: ethernet: freescale: make UCC_GETH explicitly depend on PPC32
  net/wan: make FSL_UCC_HDLC explicitly depend on PPC32
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
 drivers/net/wan/Kconfig                       |   2 +-
 drivers/net/wan/fsl_ucc_hdlc.c                |   4 +-
 drivers/soc/fsl/qe/Kconfig                    |   2 +-
 drivers/soc/fsl/qe/gpio.c                     |  34 +-
 drivers/soc/fsl/qe/qe.c                       |  95 ++---
 drivers/soc/fsl/qe/qe_ic.c                    | 285 ++++++-------
 drivers/soc/fsl/qe/qe_ic.h                    |  99 -----
 drivers/soc/fsl/qe/qe_io.c                    |  70 ++--
 drivers/soc/fsl/qe/qe_tdm.c                   |   8 +-
 drivers/soc/fsl/qe/ucc.c                      |  26 +-
 drivers/soc/fsl/qe/ucc_fast.c                 |  71 ++--
 drivers/soc/fsl/qe/ucc_slow.c                 |  38 +-
 drivers/soc/fsl/qe/usb.c                      |   2 +-
 drivers/tty/serial/ucc_uart.c                 | 383 +++++++++---------
 include/soc/fsl/cpm.h                         | 171 ++++++++
 include/soc/fsl/qe/qe.h                       |  42 +-
 include/soc/fsl/qe/qe_ic.h                    | 135 ------
 32 files changed, 701 insertions(+), 1084 deletions(-)
 delete mode 100644 drivers/soc/fsl/qe/qe_ic.h
 create mode 100644 include/soc/fsl/cpm.h
 delete mode 100644 include/soc/fsl/qe/qe_ic.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
