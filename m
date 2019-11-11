Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4ECB1F83B9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 Nov 2019 00:40:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2GQnB4Hu2Gz0NS+tJoZxGCqTJBubUfTQ03scQbriP44=; b=EN2/B111aBjv6M
	rofiogm1Ku/QP14mU4ZvMrPMI+ZDJh1TW8R8jd5Hfl9XU2apbAM1Or7/9Axv5uNe260Ye/Dapzc3A
	zOlaoQuSgOz0VXso94xzobynkA+k1IMrAWY9SXMxRYdbMqYu9AeXv9sApAFccgcF0DRAxQfjwuaHA
	+AO+eIZvph1BcxFhsp+4TKO8O50UOY7mKRF2QhzFVlvvbPZ2lIyM5GE5W8Jgf+xWKsCgLIlKOY6uu
	AF9F/AsGr33FX0V4yJMuwC3HNucjjBkRhb5TRcPS3kdurKsLvi6w3M9/9wV1Nlfm6yxmwg2dr/xXD
	r0N2TRie4+KO5MbJja9g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUJI6-0000uv-Qa; Mon, 11 Nov 2019 23:40:14 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUJHw-0008Vr-2M
 for linux-arm-kernel@lists.infradead.org; Mon, 11 Nov 2019 23:40:06 +0000
Received: by mail-oi1-f195.google.com with SMTP id l20so13100746oie.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 15:40:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rYJ3hr5T5tZC4vSB8BbaPI2/bk6dIa1jNkM2nXBTPBI=;
 b=tiDpZOjzJ6e7eCDh9pVqqwQ1qtaSsawTErcljS/knxPpCR8R5u1b+YeV82irfNc242
 lOtgMjm6ceuaqDTnDjeWxWOLZi6jUI4L5FEhfYiaGfIprmC3s4SgzxlLlHPCrnT6VQsS
 YFXSju/cXownqLTNFRR/aVGzMWZH0Rsa4MPSTuA9CrUBdHGY4ZVmKw5soFNgrGk+hHHN
 BPNDEz5mCMs+AO3OZK3bAXP6AtkBgQ6OuooCPXEROXL01Qox3yaM2cZucpM9rMTglzRr
 9BE4XLnpCS13qtGXXqwVEVXrb488gvugdmkBj6YKgn9uZ7KWOzPbymvU5JfAGRzOhzql
 vcAA==
X-Gm-Message-State: APjAAAWc+OkGN+XOzmHwonLshyHueCKFRII6sku5FJXmMaZGxsqHEgei
 8miEOH457brnFjTyF0bVHCuMkUp+
X-Google-Smtp-Source: APXvYqzo4JoYC9vDcAmfE2jptXf2+CgCWEDo1k+BW52TS60GY7HG3E7vQmprIo5Oi5lAABa1VgjRgw==
X-Received: by 2002:aca:6c1:: with SMTP id 184mr1339118oig.84.1573515601590;
 Mon, 11 Nov 2019 15:40:01 -0800 (PST)
Received: from mail-oi1-f169.google.com (mail-oi1-f169.google.com.
 [209.85.167.169])
 by smtp.gmail.com with ESMTPSA id e19sm5270642otj.51.2019.11.11.15.40.01
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 11 Nov 2019 15:40:01 -0800 (PST)
Received: by mail-oi1-f169.google.com with SMTP id l202so13134910oig.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 11 Nov 2019 15:40:01 -0800 (PST)
X-Received: by 2002:aca:1205:: with SMTP id 5mr1320355ois.51.1573515600853;
 Mon, 11 Nov 2019 15:40:00 -0800 (PST)
MIME-Version: 1.0
References: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
In-Reply-To: <20191108130123.6839-1-linux@rasmusvillemoes.dk>
From: Li Yang <leoyang.li@nxp.com>
Date: Mon, 11 Nov 2019 17:39:49 -0600
X-Gmail-Original-Message-ID: <CADRPPNSeEvFnVzGeZW6RPo_LP8mq14G2ZmmDAuwNdC3hT8Ekcg@mail.gmail.com>
Message-ID: <CADRPPNSeEvFnVzGeZW6RPo_LP8mq14G2ZmmDAuwNdC3hT8Ekcg@mail.gmail.com>
Subject: Re: [PATCH v4 00/47] QUICC Engine support on ARM and ARM64
To: Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 David Miller <davem@davemloft.net>, 
 Scott Wood <oss@buserror.net>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Timur Tabi <timur@kernel.org>, Qiang Zhao <qiang.zhao@nxp.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_154004_116236_8683410E 
X-CRM114-Status: GOOD (  30.40  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (pku.leo[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 lkml <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Nov 8, 2019 at 7:05 AM Rasmus Villemoes
<linux@rasmusvillemoes.dk> wrote:
>

I'm generally ok with these enhencements and cleanups.  But as the
whole patch series touched multiple subsystems, I would like to
collect the Acked-by from Scott, Greg and David if we want the whole
series to go through the fsl/soc tree.

Also Qiang, can you help to test the latest version and provide you
Tested-by?  Thanks.

> There have been several attempts in the past few years to allow
> building the QUICC engine drivers for platforms other than PPC. This
> is yet another attempt.
>
> v3 can be found here: https://lore.kernel.org/lkml/20191101124210.14510-1-linux@rasmusvillemoes.dk/
>
> v4 adds a some patches to fix (ab)use of IS_ERR_VALUE which fails when
> sizeof(u32) != sizeof(long), i.e. on 64-bit platforms. Freescale
> drivers are some of the last holdouts using that macro (outside of
> arch/ and core mm code), so I decided trying to simply get rid of it
> instead of papering over it by using a temporary long to store the
> result in. Doing that I stumbled on some other things that should be
> fixed. These are the new patches 34-45.
>
> Patch 35 from v3 (which added a PPC32 dependency to FSL_UCC_HDLC) is
> gone from this version, so that that driver can indeed now be built
> for arm and arm64.
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
> 26-33 makes drivers/tty/serial/ucc_uart.c (CONFIG_SERIAL_QE) ready to build on arm.
>
> 34-45 deal with IS_ERR_VALUE() and some other things found while
> digging around that part of the code.
>
> 46 adds a PPC32 dependency to UCC_GETH - it has some of the same
> issues that have been fixed in the ucc_uart and ucc_hdlc cases. Nobody
> has requested that I allow that driver to be built for arm{,64}, so
> instead of growing this series even bigger, I kept that addition. It's
> trivial to remove if somebody cares enough to fix the build
> errors/warnings and actually has a platform to test the result on.
>
> Finally patch 47 lifts the PPC32 restriction from QUICC_ENGINE. At the
> request of Li Yang, it doesn't remove the PPC32 dependency but instead
> changes it to PPC32 || ARM || ARM64 (or COMPILE_TEST), i.e. listing
> the platforms that may have a QE.
>
> The series has been built and booted on both an mpc8309-based platform
> (ppc) as well as an ls1021a-based platform (arm). The core QE code is
> exercised on both, while I could only test the ucc_uart on arm, since
> the uarts are not wired up on our mpc8309 board. Qiang Zhao reports
> that the ucc_hdlc driver does indeed work on a ls1043ardb (arm64)
> board, I hope he'll formally add a Tested-by: to the relevant patches
> since I don't have any arm64 board with QE.
>
> Rasmus Villemoes (47):
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

Scott,
What do you think about the PPC changes?

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
>   serial: ucc_uart: access __be32 field using be32_to_cpu

Greg and Timur,
What do you think about these serial changes.

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

David and Qiang,
What do you think of the net changes?

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
>  drivers/soc/fsl/qe/ucc.c                      |  26 +-
>  drivers/soc/fsl/qe/ucc_fast.c                 |  86 ++--
>  drivers/soc/fsl/qe/ucc_slow.c                 |  60 ++-
>  drivers/soc/fsl/qe/usb.c                      |   2 +-
>  drivers/tty/serial/ucc_uart.c                 | 383 +++++++++---------
>  include/soc/fsl/cpm.h                         | 171 ++++++++
>  include/soc/fsl/qe/qe.h                       |  59 ++-
>  include/soc/fsl/qe/qe_ic.h                    | 135 ------
>  include/soc/fsl/qe/ucc_fast.h                 |   4 +-
>  include/soc/fsl/qe/ucc_slow.h                 |   6 +-
>  35 files changed, 770 insertions(+), 1158 deletions(-)
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
