Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AB4AEBDB6
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 07:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=ijx7risxWP28uaKLH6fAs7MA31O7BIZGishUoW904l4=; b=ZXh
	BXbQ2QMw6arLkO3DJgd/5uX7Py0PH5Bg7ulzU7tJXZuDGNoR0U768Ux6P2Xep8d6Tkuq17cmWXvty
	Y5xrKZRSHNoVAGNhyrsKG7cfWRp+rQWWiJVLZjJE9bCJiZvKLhRvaciRJVmvFdlGP80NxUzXbUnbw
	aGQstj0JjPHyJ4ctRMNoTShOLszjkXdluhbh240Oe5JWSoHKGnQSqNfX34hvC6rLHyZZdrF4i3t70
	3Ru4lto29W2VUpBWj4lOJBZBi9ZthBDXLZKvwuaO0c5LG64yyh1n+bEzfpiI1/WPwNJhDyI8qV2kP
	p4HMKApf/2oyHxRHDv7stMY962ncYjw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQQDN-0007Mj-Bs; Fri, 01 Nov 2019 06:15:17 +0000
Received: from conuserg-09.nifty.com ([210.131.2.76])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQQD0-0007LT-6f
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 06:14:55 +0000
Received: from localhost.localdomain (p14092-ipngnfx01kyoto.kyoto.ocn.ne.jp
 [153.142.97.92]) (authenticated)
 by conuserg-09.nifty.com with ESMTP id xA16ELBc016348;
 Fri, 1 Nov 2019 15:14:22 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conuserg-09.nifty.com xA16ELBc016348
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nifty.com;
 s=dec2015msa; t=1572588862;
 bh=pGYwt8aksICDvlfvWj0tCkyuHYQwW0lnnIiz1OylTcI=;
 h=From:To:Cc:Subject:Date:From;
 b=2LEyL1aAf04dKzfo3G9K86up2BmcPt/JstqCUtoJLk02MXaqrTW2WCd7ZztvVKMci
 6ppe5upzfBLZZiHGY1Dqe0D/K+HksAM7zA/EpQouymBiw10cn2BioTABxASWR60hqj
 HHMOi9eEjk5rFEvUxS2H6fFJ+nSD5tw/6A73Ct+7tpkrTXEw6P+l/qLzNsCXW9+a6W
 SN06S6NH39f52zTMVPcCrqrMNTijLq14u+I6NZ+cinTJeciVQV8nzBtxISTvaTKpU4
 A/3DTOPAyvWAC5IXMGxN88SERT9Fj1HDyF9cNHz+MUUnLGgHhpIqCkwmXDiYAVRhif
 FyeF756FCdaeg==
X-Nifty-SrcIP: [153.142.97.92]
From: Masahiro Yamada <yamada.masahiro@socionext.com>
To: devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH 0/3] libfdt: prepare for (U)INT32_MAX addition
Date: Fri,  1 Nov 2019 15:14:08 +0900
Message-Id: <20191101061411.16988-1-yamada.masahiro@socionext.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191031_231454_474391_40191163 
X-CRM114-Status: UNSURE (   8.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 1.0 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.131.2.76 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 1.0 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 linuxppc-dev@lists.ozlabs.org, linux-arm-kernel@lists.infradead.org,
 David Gibson <david@gibson.dropbear.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


As you may know, libfdt in the upstream DTC project
added referenced to (U)INT32_MAX.

The kernel code has three files to adjust:

include/linux/libfdt_env.h
arch/powerpc/boot/libfdt_env.h
arch/arm/boot/compressed/libfdt_env.h

Instead of fixing arch/arm/boot/compressed/libfdt_env.h,
it is pretty easy to refactor the ARM decompressor
to reuse <linux/lbifdt_env.h>
So, 2/3 simplifies the Makefile and deletes its own
libfdt_env.h

On the other hand, the PPC boot-wrapper is a can of worms.
I give up refactoring it.
Let's keep it closed, and just update arch/powerpc/boot/libfdt_env.h



Masahiro Yamada (3):
  libfdt: add SPDX-License-Identifier to libfdt wrappers
  ARM: decompressor: simplify libfdt builds
  libfdt: define INT32_MAX and UINT32_MAX in libfdt_env.h

 arch/arm/boot/compressed/.gitignore     |  9 -------
 arch/arm/boot/compressed/Makefile       | 33 +++++++------------------
 arch/arm/boot/compressed/atags_to_fdt.c |  1 +
 arch/arm/boot/compressed/fdt.c          |  2 ++
 arch/arm/boot/compressed/fdt_ro.c       |  2 ++
 arch/arm/boot/compressed/fdt_rw.c       |  2 ++
 arch/arm/boot/compressed/fdt_wip.c      |  2 ++
 arch/arm/boot/compressed/libfdt_env.h   | 22 -----------------
 arch/powerpc/boot/libfdt_env.h          |  2 ++
 include/linux/libfdt_env.h              |  3 +++
 lib/fdt.c                               |  1 +
 lib/fdt_empty_tree.c                    |  1 +
 lib/fdt_ro.c                            |  1 +
 lib/fdt_rw.c                            |  1 +
 lib/fdt_strerror.c                      |  1 +
 lib/fdt_sw.c                            |  1 +
 lib/fdt_wip.c                           |  1 +
 17 files changed, 30 insertions(+), 55 deletions(-)
 create mode 100644 arch/arm/boot/compressed/fdt.c
 create mode 100644 arch/arm/boot/compressed/fdt_ro.c
 create mode 100644 arch/arm/boot/compressed/fdt_rw.c
 create mode 100644 arch/arm/boot/compressed/fdt_wip.c
 delete mode 100644 arch/arm/boot/compressed/libfdt_env.h

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
