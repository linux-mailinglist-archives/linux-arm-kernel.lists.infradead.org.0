Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F01AE4B4D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:41:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SEALCtN8ZVAgpfFMK2PustCRWgAhnHoObO2O4UGcVJk=; b=Mib2h2mLmDq9PB
	etk6/nvK9e0XxVGKv3odFebVgO9lwrat0jrvSdA5re72qu4Ucu6+1KOJaLLtgDOfO7Q1fpe0x5dRX
	0akXpa/j1R88VtAJeNeRPNVzbfMPx78Gz8ZEzdOvCquXew+uSzaZzleTDc8i77sAEPaVaELZ0RG4m
	wtEIFQu6Z6ZIFNVEWLNLTW4Eq5ibGtyFNopv/4PjINfOsv6eC6tg8nbYmu5A5l+/wP2b7QwG3pNyF
	jhTnzSGSoHarKBYGbO0zIDKGArOlQHhxLUQqAwHv+11vcW9rnd4x1xpMZD4Mem+iWzum3P3exk4qF
	tSiSutgXyNhJF2URIJog==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyuT-0006XO-LI; Fri, 25 Oct 2019 12:41:41 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNytx-0006Df-67
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:41:10 +0000
Received: by mail-lf1-x143.google.com with SMTP id u16so1632573lfq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 25 Oct 2019 05:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=nNhTW3U2Xf+f8X6ztyGJ0vdPsrVEzgnkoLb09kGESGY=;
 b=gr43qyfKeoGH65CYsJHoPG+YL9Tx4hVUZVoQzYzb9XsMqHySY57WJtUCKdPh98abFb
 978lBekDEIJw3ctIHrCrHNrnVte3xIHmGJW9xZwa+BVM8YrwNCtva1EUvT8mgMQ0+NIk
 RMH0xuXFjObqrkldH+wRmh6xxURbjD8yMaUAw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=nNhTW3U2Xf+f8X6ztyGJ0vdPsrVEzgnkoLb09kGESGY=;
 b=OmhP9wVK8lh6sjSnpiUwSDX+FnggMsqayGcjbrf6rHJ2nEVZ7sSZvn+cxz4Xl4CfxB
 Wwqin0rhqIJlfcIblvsi2dzdV67HQkw4S5/gxEn2NKSO2cRNMBfmyAvxafzW6X3vFeQh
 YOW0qLOmXT29MY+M1Rr21CKyYIrjunAqmsW0+TJRaZ422K4+/ZhKDJ68/hvObhkmN4Ot
 MA7jJMhDnMDelFikt2cMTM9frxUktcs6R1h/uwrROJ4QJla0QhY3HfsbylM9a6AXF9F/
 hLOpo/HJ0ByYdKnJAevQeZsHhU+ywMMAdQiSvCd43GDFCdzxW/Ib22SWDH1+GvkkJAMZ
 s5rA==
X-Gm-Message-State: APjAAAUQaQlV199B8kLPukr23v9dSlEePXv6xOeITnY0SOYfrgDAw+tn
 rMa/5NmOVB3I77fSvgEtRCao3g==
X-Google-Smtp-Source: APXvYqzI54y0qXty0REj/t8bh97dPNgFy2YQ0TG2aFgxJMZvmcPNDi0C+wUJpvWYRj3db7mvv6qlJw==
X-Received: by 2002:ac2:4d04:: with SMTP id r4mr2706461lfi.136.1572007262270; 
 Fri, 25 Oct 2019 05:41:02 -0700 (PDT)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id 10sm821028lfy.57.2019.10.25.05.41.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 25 Oct 2019 05:41:01 -0700 (PDT)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Qiang Zhao <qiang.zhao@nxp.com>, Li Yang <leoyang.li@nxp.com>,
 Christophe Leroy <christophe.leroy@c-s.fr>
Subject: [PATCH v2 00/23] QUICC Engine support on ARM
Date: Fri, 25 Oct 2019 14:40:35 +0200
Message-Id: <20191025124058.22580-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
References: <20191018125234.21825-1-linux@rasmusvillemoes.dk>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_054109_256084_9E7D53C3 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Valentin Longchamp <valentin.longchamp@keymile.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Scott Wood <oss@buserror.net>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There have been several attempts in the past few years to allow
building the QUICC engine drivers for platforms other than PPC. This
is yet another attempt.

In v2, I've fixed a few style issues. But more importantly, it now
contains enough to actually remove the PPC32 dependency from
CONFIG_QUICC_ENGINE, so that's what the last patch does.

I haven't found a way to address Christophe's concern over the
performance impact of using the (on powerpc) out-of-line iowrite32be
instead of out_be32. I could of course introduce some qe_ prefixed
helpers (similar to the already added qe_clrsetbits ones) and make
their definition dependent on PPC32 or not, but that seems to be a bit
ugly.

Rasmus Villemoes (23):
  soc: fsl: qe: remove space-before-tab
  soc: fsl: qe: drop volatile qualifier of struct qe_ic::regs
  soc: fsl: qe: avoid ppc-specific io accessors
  soc: fsl: qe: replace spin_event_timeout by readx_poll_timeout_atomic
  soc: fsl: qe: qe.c: guard use of pvr_version_is() with CONFIG_PPC32
  soc: fsl: qe: avoid tail comments in qe_ic.h
  soc: fsl: qe: merge qe_ic.h into qe_ic.c
  soc: fsl: qe: drop unneeded #includes
  soc: fsl: qe: move qe_ic_cascade_* functions to qe_ic.c
  soc: fsl: qe: use qe_ic_cascade_{low,high}_mpic also on 83xx
  soc: fsl: qe: rename qe_ic_cascade_low_mpic -> qe_ic_cascade_low
  soc: fsl: qe: drop assign-only high_active in qe_ic_init
  soc: fsl: qe: remove pointless sysfs registration in qe_ic.c
  soc: fsl: qe: move calls of qe_ic_init out of arch/powerpc/
  powerpc/83xx: remove mpc83xx_ipic_and_qe_init_IRQ
  powerpc/85xx: remove mostly pointless mpc85xx_qe_init()
  soc: fsl: qe: make qe_ic_cascade_* static
  soc: fsl: qe: remove unused qe_ic_set_* functions
  net: ethernet: freescale: make UCC_GETH explicitly depend on PPC32
  serial: make SERIAL_QE depend on PPC32
  serial: ucc_uart.c: explicitly include asm/cpm.h
  soc/fsl/qe/qe.h: remove include of asm/cpm.h
  soc: fsl: qe: remove PPC32 dependency from CONFIG_QUICC_ENGINE

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
 arch/powerpc/platforms/85xx/mpc85xx_rdb.c     |  18 --
 arch/powerpc/platforms/85xx/twr_p102x.c       |  16 -
 drivers/net/ethernet/freescale/Kconfig        |   1 +
 drivers/soc/fsl/qe/Kconfig                    |   2 +-
 drivers/soc/fsl/qe/gpio.c                     |  30 +-
 drivers/soc/fsl/qe/qe.c                       |  59 ++--
 drivers/soc/fsl/qe/qe_ic.c                    | 289 ++++++++++--------
 drivers/soc/fsl/qe/qe_ic.h                    |  99 ------
 drivers/soc/fsl/qe/qe_io.c                    |  42 ++-
 drivers/soc/fsl/qe/qe_tdm.c                   |   8 +-
 drivers/soc/fsl/qe/ucc.c                      |  16 +-
 drivers/soc/fsl/qe/ucc_fast.c                 |  70 ++---
 drivers/soc/fsl/qe/ucc_slow.c                 |  38 +--
 drivers/soc/fsl/qe/usb.c                      |   2 +-
 drivers/tty/serial/Kconfig                    |   1 +
 drivers/tty/serial/ucc_uart.c                 |   1 +
 include/soc/fsl/qe/qe.h                       |   1 -
 include/soc/fsl/qe/qe_ic.h                    |  69 -----
 29 files changed, 299 insertions(+), 573 deletions(-)
 delete mode 100644 drivers/soc/fsl/qe/qe_ic.h

-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
