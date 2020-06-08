Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88D191F21F2
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  9 Jun 2020 00:49:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YHdCl4Nndpg6GQgqEGCU89E7SgFEG9aoLttpZOQHxgE=; b=LqwQ7njKR/sywM
	Ysti0xg3m4MElSD4EQiMOYyW7KdSOD/ZhZMmAF/cQCrW4RdT2mLXbIhxFCU/eQPeozSZivl6LuAV0
	cf7nyARUA8wc5sXzSg2CHi/Rtpb1SwoyuSTdItOPr5Xu0/b+voC1GwO45YcY5pK3gMITWJsXZjgnc
	g5JwPpdtvqM5G+U/Ezw4vIwgUegb+Aw4gMa4pyswp9zOIWcOp4CyD3RVpcEdkVjVlU7tMCyvqhIjY
	1lsXNq8S8y0HpViKnhnM3dmjawrrdYQWkx1XXlEf6nqA1UgcqXUqvDf3hGNwgHFnj3Km+Qy8YPQEY
	+kUdaaWrDJtzBw0bNzYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiQaR-0003TC-2P; Mon, 08 Jun 2020 22:49:47 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiQaJ-0003My-UG
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 22:49:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=Y2HS2LGqWaKPSca7GE57exwm7FpVYRWbDREYsvUANqA=; b=KE7ecXd04ZU7zk4ovrPi5M+01
 Tn6VhOkq+iA6RhmPtHr11B3ZsEDeTTcDCCNkJ1qvgkh7qZutaqgv7MrCF7UFaQ8d1V7/K8H/RyqGD
 2ejYEfEj63pLJRx2rqDyqevsdRo9/PbmfW2xHFpOYZ2gDGm3/7ItcNMLSm8f1eRwLWi2QpOfuAdM9
 2f+YZHiaYoGqApzEfoRG7138zdltjuQTH5qF9BGtwjfMcmhEuaPBwgxJXAjWVsJuLUDUzNA/GfSGi
 T633EvrfmJG+m4VlpP8bX+N6uLf+1CQoiGhKs6qt0MHWqBTcBpyUSLqAOldSpYu4qJKsbCLbs7WSS
 VSUZqiVuQ==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:51112)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jiQYB-0001D0-Kb; Mon, 08 Jun 2020 23:47:27 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jiQY9-0002T6-CC; Mon, 08 Jun 2020 23:47:25 +0100
Date: Mon, 8 Jun 2020 23:47:25 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Nicolas Pitre <nicolas.pitre@linaro.org>,
 David Howells <dhowells@redhat.com>,
 Alexander Viro <viro@zeniv.linux.org.uk>
Subject: Re: [PULL REQUEST v2] FDPIC ELF support for ARM
Message-ID: <20200608224725.GH1605@shell.armlinux.org.uk>
References: <nycvar.YSQ.7.76.1708292307400.2606@knanqh.ubzr>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <nycvar.YSQ.7.76.1708292307400.2606@knanqh.ubzr>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_154939_977040_79CE3381 
X-CRM114-Status: GOOD (  19.10  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Nico,

Al Viro has identified this in include/uapi/linux/elfcore.h:

        elf_gregset_t pr_reg;   /* GP registers */
#ifdef CONFIG_BINFMT_ELF_FDPIC
        /* When using FDPIC, the loadmap addresses need to be communicated
         * to GDB in order for GDB to do the necessary relocations.  The
         * fields (below) used to communicate this information are placed
         * immediately after ``pr_reg'', so that the loadmap addresses may
         * be viewed as part of the register set if so desired.
         */
        unsigned long pr_exec_fdpic_loadmap;
        unsigned long pr_interp_fdpic_loadmap;
#endif
        int pr_fpvalid;         /* True if math co-processor being used.  */

which means if CONFIG_BINFMT_ELF_FDPIC is enabled for a target that
also uses ELF, then the ELF coredump format breaks.  David Howells
says this evening:

23:42 < dhowells> you weren't meant to use ELF and ELF_FDPIC both

So, we now have a problem; your code has done something that was never
intended to be permitted, and there are configurations where the kernel
breaks the user API.  This only affects ARM as this is the only arch
that was silly enough to allow ELF and ELF_FDPIC.

Please address.

Thanks.

On Tue, Aug 29, 2017 at 11:16:13PM -0400, Nicolas Pitre wrote:
> Russell, could you please pull the following:
> 
>   http://git.linaro.org/people/nicolas.pitre/linux fdpic
> 
> This series provides the needed changes to suport the ELF_FDPIC binary
> format on ARM. Both MMU and non-MMU systems are supported. This format
> has many advantages over the BFLT format used on MMU-less systems, such
> as being real ELF that can be parsed by standard tools, can support
> shared dynamic libs, etc.
> 
> This is based on v4.13-rc4 not to conflict with changes to signal.c
> that happened in v4.13-rc3.
> 
> A complete toolchain and prebuilt packages can be obtained here:
> 
> https://github.com/mickael-guene/fdpic_manifest
> 
> Changes from v1:
> 
> - Reworked the signal return code to be compatible with a non-executable
>   stack.
> - Rebased on v4.13-rc4 to pick up latest signal changes.
> - Added MMU support.
> - Fixed crash in the ELF-FDPIC loader when loading an executable with
>   shared libs on a system with an MMU.
> - Made the regular ELF loader reject FDPIC binaries.
> - Added ACKs and Reviewed-bys.
> 
> diffstat:
> 
>  arch/arm/include/asm/elf.h         | 16 +++++++--
>  arch/arm/include/asm/mmu.h         |  8 +++++
>  arch/arm/include/asm/processor.h   | 22 +++++++++----
>  arch/arm/include/asm/ucontext.h    |  1 +
>  arch/arm/include/uapi/asm/ptrace.h |  4 +++
>  arch/arm/include/uapi/asm/unistd.h |  1 +
>  arch/arm/kernel/asm-offsets.c      |  4 +++
>  arch/arm/kernel/elf.c              | 24 +++++++++++++-
>  arch/arm/kernel/signal.c           | 53 +++++++++++++++++++++---------
>  arch/arm/kernel/signal.h           | 11 +++++++
>  arch/arm/kernel/sigreturn_codes.S  | 56 +++++++++++++++++++++++++++++---
>  arch/arm/kernel/traps.c            |  3 ++
>  fs/Kconfig.binfmt                  |  4 +--
>  fs/binfmt_elf.c                    | 15 +++++++--
>  fs/binfmt_elf_fdpic.c              | 13 ++++++--
>  15 files changed, 199 insertions(+), 36 deletions(-)

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC for 0.8m (est. 1762m) line in suburbia: sync at 13.1Mbps down 503kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
