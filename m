Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9E97117742
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 21:18:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jcxPApRXdYrhEuBz4B/jpP0rq+OHOAdyuScBXY/CSpM=; b=Ut1NaA5JHfRsGy
	qzO6jUam0CMHvskncKUFiqunuefcOBkVxnqOw7jwDAUiJHp7rYHG+7pAZ1E9nq9GhoRWM/nO0NVmU
	SbjVvYpAQ/6ghrMnReK+sMBuUpah1Vscz3FCMJJg/JWODQcuX0VWLG9GxUTDvZ9aW3Pu5e9N0fku1
	EeMQzVNdXk1VOJ1Ne0Zl7+SFOCNPGQjPxxeyFtDSHeZCjR07zyEIdEFYnCFysuWRf3w9e4YQm7gqC
	DJyECw1TlQPJP8o83E/pf404Mm9hmXDIaEqe9wleEhB3YYhkFnAu4ZBXrHX5MdvnrQGffZtTAbX9w
	UnHYh7i7/EXF57vUOxnA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iePUW-0002tD-Ap; Mon, 09 Dec 2019 20:18:48 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iePUQ-0002sK-A8
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 20:18:44 +0000
Received: by mail-oi1-f193.google.com with SMTP id v140so7621225oie.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:18:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=m7V0G8JfUu86bq/RP6YxmwxwHbYcUhJINxbxqczRAcM=;
 b=G/RlXYDLSKiIHLukU/vlkM7ci9AaWfcjwS7O35jh3DNr9nVB9gT+u14HNruO/kI27e
 vJUjuGjkwO1Ceubisf3kxG+skIlF2pK/Xu1Zn8cl4xvB70G68HeRiOs5/U28ron1oY3+
 n7Jdn8YBAB4DheVl9MGgQGqpsZOB1HxXZgJ0fsIcYdp84HeCHEFvr8TIdYQrvDODJLhO
 ihdeDqMMn+01CulpfD9d8HSfWBsytC+Sr9+TAIPq/U2CxK55lYAedKsLD5cbFjj3kxKA
 lguY/tbZbJepF3+q8JPhiS72B4XQ0S4P/XNmXzCtbQOVxOZJ1x0FaK4wPd947y92Rq4R
 h9sw==
X-Gm-Message-State: APjAAAVfSKyZSYsgd8YvqmQHitkATGGGia8w21oUmGz/h5r6mSl14PQ+
 2v9xkJ/GuWCG+Z8F+oIEQS3bMsrx
X-Google-Smtp-Source: APXvYqxmlhRR5o8pttNPburN97vPracEV5WrVNdmcKdU9DagVOcWadGTI046n16jKZ/8NI7rNlm4jA==
X-Received: by 2002:aca:af54:: with SMTP id y81mr821583oie.154.1575922720300; 
 Mon, 09 Dec 2019 12:18:40 -0800 (PST)
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com.
 [209.85.210.53])
 by smtp.gmail.com with ESMTPSA id b15sm357899oti.23.2019.12.09.12.18.39
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 09 Dec 2019 12:18:39 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id 66so13393878otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 12:18:39 -0800 (PST)
X-Received: by 2002:a05:6830:11c3:: with SMTP id
 v3mr24197866otq.74.1575922719436; 
 Mon, 09 Dec 2019 12:18:39 -0800 (PST)
MIME-Version: 1.0
References: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
In-Reply-To: <20191128145554.1297-1-linux@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 9 Dec 2019 14:18:27 -0600
X-Gmail-Original-Message-ID: <CADRPPNQBucGPaG0p5SDneVQYt9Wqgv8PuqFF0HFmj2LD8wybtA@mail.gmail.com>
Message-ID: <CADRPPNQBucGPaG0p5SDneVQYt9Wqgv8PuqFF0HFmj2LD8wybtA@mail.gmail.com>
Subject: Re: [PATCH v6 00/49] QUICC Engine support on ARM, ARM64, PPC64
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_121842_348075_873A6D89 
X-CRM114-Status: GOOD (  24.98  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Timur Tabi <timur@kernel.org>,
 lkml <linux-kernel@vger.kernel.org>, Scott Wood <oss@buserror.net>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 28, 2019 at 8:59 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>
> There have been several attempts in the past few years to allow
> building the QUICC engine drivers for platforms other than PPC32. This
> is yet another attempt.
>
> v5 can be found here: https://lore.kernel.org/lkml/20191118112324.22725-1-linux@rasmusvillemoes.dk/
>
> Changes in v6:
>
> - add various R-b, A-b tags
>
> - add a patch (48/49) fixing a build issue on ARM with CONFIG_SMP=y
>
> I added that patch last in the series, apart from the "allow to build
> on ARM" Kconfig change, to preserve the enumeration of the other
> patches from v5.
>
> 1-5 are about replacing in_be32 etc. in the core QE code (drivers/soc/fsl/qe).
>
> 6-8 handle miscellaneous other ppcisms.
>
> 9-21 deal with qe_ic: Simplifying the driver significantly by removing
> unused code, and removing the platform-specific initialization from
> arch/powerpc/.
>
> 22-25 deal with raw access to devicetree properties in native endianness.
>
> 26-34 makes drivers/tty/serial/ucc_uart.c (CONFIG_SERIAL_QE) ready to build on non-ppc.
>
> 35-46 deal with IS_ERR_VALUE() and some other things found while
> digging around that part of the code.
>
> 47 adds a PPC32 dependency to UCC_GETH - it has some of the same
> issues that have been fixed in the ucc_uart and ucc_hdlc cases. Nobody
> has requested that I allow that driver to be built for arm{,64} and
> reportedly, the hardware has only ever shipped on PPC SOCs. So instead
> of growing this series even bigger, I kept that addition. It's trivial
> to remove if somebody cares enough to fix the build errors/warnings
> and actually has a platform to test the result on.
>
> 48 fixes a build issue on ARM reported by the kbuild bot.
>
> Finally patch 49 lifts the PPC32 restriction from QUICC_ENGINE. At the
> request of Li Yang, it doesn't remove the PPC32 dependency but instead
> changes it to PPC|| ARM || ARM64 (or COMPILE_TEST), i.e. listing
> the platforms that may have a QE.
>
> The series has been built and booted on both an mpc8309-based platform
> (ppc) as well as an ls1021a-based platform (arm). The core QE code is
> exercised on both, while I could only test the ucc_uart on arm, since
> the uarts are not wired up on our mpc8309 board. Qiang Zhao reports
> that the ucc_hdlc driver does indeed work on a ls1043ardb (arm64)
> board.

Series applied for next on my soc tree.  Thanks!

Regards,
Leo
>
> Rasmus Villemoes (49):
>   soc: fsl: qe: remove space-before-tab
>   soc: fsl: qe: drop volatile qualifier of struct qe_ic::regs
>   soc: fsl: qe: rename qe_(clr/set/clrset)bit* helpers
>   soc: fsl: qe: introduce qe_io{read,write}* wrappers
>   soc: fsl: qe: avoid ppc-specific io accessors
>   soc: fsl: qe: replace spin_event_timeout by readx_poll_timeout_atomic
>   soc: fsl: qe: qe.c: guard use of pvr_version_is() with CONFIG_PPC32
>   soc: fsl: qe: drop unneeded #includes
>   soc: fsl: qe: drop assign-only high_active in qe_ic_init
>   soc: fsl: qe: remove pointless sysfs registration in qe_ic.c
>   soc: fsl: qe: use qe_ic_cascade_{low,high}_mpic also on 83xx
>   soc: fsl: qe: move calls of qe_ic_init out of arch/powerpc/
>   powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
>   powerpc/85xx: remove mostly pointless mpc85xx_qe_init()
>   soc: fsl: qe: move qe_ic_cascade_* functions to qe_ic.c
>   soc: fsl: qe: rename qe_ic_cascade_low_mpic -> qe_ic_cascade_low
>   soc: fsl: qe: remove unused qe_ic_set_* functions
>   soc: fsl: qe: don't use NO_IRQ in qe_ic.c
>   soc: fsl: qe: make qe_ic_get_{low,high}_irq static
>   soc: fsl: qe: simplify qe_ic_init()
>   soc: fsl: qe: merge qe_ic.h headers into qe_ic.c
>   soc: fsl: qe: qe.c: use of_property_read_* helpers
>   soc: fsl: qe: qe_io.c: don't open-code of_parse_phandle()
>   soc: fsl: qe: qe_io.c: access device tree property using be32_to_cpu
>   soc: fsl: qe: qe_io.c: use of_property_read_u32() in par_io_init()
>   soc: fsl: move cpm.h from powerpc/include/asm to include/soc/fsl
>   soc/fsl/qe/qe.h: update include path for cpm.h
>   serial: ucc_uart: explicitly include soc/fsl/cpm.h
>   serial: ucc_uart: replace ppc-specific IO accessors
>   serial: ucc_uart: factor out soft_uart initialization
>   serial: ucc_uart: stub out soft_uart_init for !CONFIG_PPC32
>   serial: ucc_uart: use of_property_read_u32() in ucc_uart_probe()
>   serial: ucc_uart: limit brg-frequency workaround to PPC32
>   serial: ucc_uart: access __be32 field using be32_to_cpu
>   soc: fsl: qe: change return type of cpm_muram_alloc() to s32
>   soc: fsl: qe: make cpm_muram_free() return void
>   soc: fsl: qe: make cpm_muram_free() ignore a negative offset
>   soc: fsl: qe: drop broken lazy call of cpm_muram_init()
>   soc: fsl: qe: refactor cpm_muram_alloc_common to prevent BUG on error
>     path
>   soc: fsl: qe: avoid IS_ERR_VALUE in ucc_slow.c
>   soc: fsl: qe: drop use of IS_ERR_VALUE in qe_sdma_init()
>   soc: fsl: qe: drop pointless check in qe_sdma_init()
>   soc: fsl: qe: avoid IS_ERR_VALUE in ucc_fast.c
>   net/wan/fsl_ucc_hdlc: avoid use of IS_ERR_VALUE()
>   net/wan/fsl_ucc_hdlc: fix reading of __be16 registers
>   net/wan/fsl_ucc_hdlc: reject muram offsets above 64K
>   net: ethernet: freescale: make UCC_GETH explicitly depend on PPC32
>   soc: fsl: qe: remove unused #include of asm/irq.h from ucc.c
>   soc: fsl: qe: remove PPC32 dependency from CONFIG_QUICC_ENGINE
>
>  arch/powerpc/include/asm/cpm.h                | 172 +-------
>  arch/powerpc/platforms/83xx/km83xx.c          |   3 +-
>  arch/powerpc/platforms/83xx/misc.c            |  23 --
>  arch/powerpc/platforms/83xx/mpc832x_mds.c     |   3 +-
>  arch/powerpc/platforms/83xx/mpc832x_rdb.c     |   3 +-
>  arch/powerpc/platforms/83xx/mpc836x_mds.c     |   3 +-
>  arch/powerpc/platforms/83xx/mpc836x_rdk.c     |   3 +-
>  arch/powerpc/platforms/83xx/mpc83xx.h         |   7 -
>  arch/powerpc/platforms/85xx/common.c          |  23 --
>  arch/powerpc/platforms/85xx/corenet_generic.c |  12 -
>  arch/powerpc/platforms/85xx/mpc85xx.h         |   2 -
>  arch/powerpc/platforms/85xx/mpc85xx_mds.c     |  28 --
>  arch/powerpc/platforms/85xx/mpc85xx_rdb.c     |  18 -
>  arch/powerpc/platforms/85xx/twr_p102x.c       |  16 -
>  drivers/net/ethernet/freescale/Kconfig        |   2 +-
>  drivers/net/wan/fsl_ucc_hdlc.c                |  23 +-
>  drivers/net/wan/fsl_ucc_hdlc.h                |   2 +-
>  drivers/soc/fsl/qe/Kconfig                    |   3 +-
>  drivers/soc/fsl/qe/gpio.c                     |  34 +-
>  drivers/soc/fsl/qe/qe.c                       | 104 ++---
>  drivers/soc/fsl/qe/qe_common.c                |  50 +--
>  drivers/soc/fsl/qe/qe_ic.c                    | 285 ++++++-------
>  drivers/soc/fsl/qe/qe_ic.h                    |  99 -----
>  drivers/soc/fsl/qe/qe_io.c                    |  70 ++--
>  drivers/soc/fsl/qe/qe_tdm.c                   |   8 +-
>  drivers/soc/fsl/qe/ucc.c                      |  27 +-
>  drivers/soc/fsl/qe/ucc_fast.c                 |  86 ++--
>  drivers/soc/fsl/qe/ucc_slow.c                 |  60 ++-
>  drivers/soc/fsl/qe/usb.c                      |   2 +-
>  drivers/tty/serial/ucc_uart.c                 | 385 +++++++++---------
>  include/soc/fsl/cpm.h                         | 171 ++++++++
>  include/soc/fsl/qe/qe.h                       |  59 ++-
>  include/soc/fsl/qe/qe_ic.h                    | 135 ------
>  include/soc/fsl/qe/ucc_fast.h                 |   4 +-
>  include/soc/fsl/qe/ucc_slow.h                 |   6 +-
>  35 files changed, 775 insertions(+), 1156 deletions(-)
>  delete mode 100644 drivers/soc/fsl/qe/qe_ic.h
>  create mode 100644 include/soc/fsl/cpm.h
>  delete mode 100644 include/soc/fsl/qe/qe_ic.h
>
> --
> 2.23.0
>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
