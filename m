Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F61183E23
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  7 Aug 2019 02:08:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IzlZalLokUdERRoZZ0voebfhue+TD+pil++9VNhTmpE=; b=L9s8AAcOLy155Y
	L8CoxRbJeIi/Y1UaB5CjEteaYnynGtjtfddq20SMtFLAtYGW2WUAd3/kVOqq3kqaTM+mU+K23+lVk
	ayroYh2jPiHc8WcjMH63X7BRfDK+y4I4Z13xio3tuqELmF8672PyTm3ZwSu6AWIlE3MWRVE4xhkoV
	p0PA48NXK2upeq0DFWgYMfrk7gZEVxmARtkgvjVE25eP/QCfmriGsMPbHyIfhACG0fDCm/QQap/eG
	Wc8CS4qPkxqQRz6qYCZLTSAMdamJ/6DvqbrN2sOxqM8GzjNmUrsefTTiROMmeJe0PKggxp7OU4so+
	lxF8763DzXDEkGVkORyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hv9VI-0006c6-Ou; Wed, 07 Aug 2019 00:08:32 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hv9V5-0006bm-SS
 for linux-arm-kernel@lists.infradead.org; Wed, 07 Aug 2019 00:08:21 +0000
Received: from devnote2 (NE2965lan1.rev.em-net.ne.jp [210.141.244.193])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id ED7FA2089E;
 Wed,  7 Aug 2019 00:08:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1565136499;
 bh=FhChKXsPPb1L8MSYtmcGqA0kOKtJaeO7DrzVbRT1MXs=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=TAeG++7BBNLdzsT8EeUACw88fONFc1pQcT8EUvAlKq8EqeLzcGZIz0ceLh4nYgX84
 xTRDE/BvbyzWZvQYIvI12bG0fb2Hr+ia9Vz72+zfUolIsY7N4a0uoRfA30sNdV3zwc
 LDnEWEZxfNuA7Zo/uTF7X1Z/DVFpbZNzGS5Nb8/c=
Date: Wed, 7 Aug 2019 09:08:11 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v2 0/3] arm/arm64: Add support for function error injection
Message-Id: <20190807090811.1e50eb3e1d5a7b85743748e7@kernel.org>
In-Reply-To: <20190806100015.11256-1-leo.yan@linaro.org>
References: <20190806100015.11256-1-leo.yan@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_170819_965132_83A1BE59 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Song Liu <songliubraving@fb.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Alexei Starovoitov <ast@kernel.org>, Oleg Nesterov <oleg@redhat.com>,
 Paul Mackerras <paulus@samba.org>, "H. Peter Anvin" <hpa@zytor.com>,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 Daniel Borkmann <daniel@iogearbox.net>, Michael Ellerman <mpe@ellerman.id.au>,
 x86@kernel.org, Russell King <linux@armlinux.org.uk>,
 clang-built-linux@googlegroups.com, Ingo Molnar <mingo@redhat.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, Yonghong Song <yhs@fb.com>,
 "Naveen N. Rao" <naveen.n.rao@linux.vnet.ibm.com>,
 Arnd Bergmann <arnd@arndb.de>, Borislav Petkov <bp@alien8.de>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org, bpf@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, Martin KaFai Lau <kafai@fb.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue,  6 Aug 2019 18:00:12 +0800
Leo Yan <leo.yan@linaro.org> wrote:

> This small patch set is to add support for function error injection;
> this can be used to eanble more advanced debugging feature, e.g.
> CONFIG_BPF_KPROBE_OVERRIDE.
> 
> The patch 01/03 is to consolidate the function definition which can be
> suared cross architectures, patches 02,03/03 are used for enabling
> function error injection on arm64 and arm architecture respectively.
> 
> I tested on arm64 platform Juno-r2 and one of my laptop with x86
> architecture with below steps; I don't test for Arm architecture so
> only pass compilation.
> 
> - Enable kernel configuration:
>   CONFIG_BPF_KPROBE_OVERRIDE
>   CONFIG_BTRFS_FS
>   CONFIG_BPF_EVENTS=y
>   CONFIG_KPROBES=y
>   CONFIG_KPROBE_EVENTS=y
>   CONFIG_BPF_KPROBE_OVERRIDE=y
> 
> - Build samples/bpf on with Debian rootFS:
>   # cd $kernel
>   # make headers_install
>   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> 
> - Run the sample tracex7:
>   # dd if=/dev/zero of=testfile.img bs=1M seek=1000 count=1
>   # DEVICE=$(losetup --show -f testfile.img)
>   # mkfs.btrfs -f $DEVICE
>   # ./tracex7 testfile.img
>   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
>   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.
> 
> Changes from v1:
> * Consolidated the function definition into asm-generic header (Will);
> * Used APIs to access pt_regs elements (Will);
> * Fixed typos in the comments (Will).

This looks good to me.

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

Thank you!

> 
> 
> Leo Yan (3):
>   error-injection: Consolidate override function definition
>   arm64: Add support for function error injection
>   arm: Add support for function error injection
> 
>  arch/arm/Kconfig                           |  1 +
>  arch/arm/include/asm/ptrace.h              |  5 +++++
>  arch/arm/lib/Makefile                      |  2 ++
>  arch/arm/lib/error-inject.c                | 19 +++++++++++++++++++
>  arch/arm64/Kconfig                         |  1 +
>  arch/arm64/include/asm/ptrace.h            |  5 +++++
>  arch/arm64/lib/Makefile                    |  2 ++
>  arch/arm64/lib/error-inject.c              | 18 ++++++++++++++++++
>  arch/powerpc/include/asm/error-injection.h | 13 -------------
>  arch/x86/include/asm/error-injection.h     | 13 -------------
>  include/asm-generic/error-injection.h      |  6 ++++++
>  include/linux/error-injection.h            |  6 +++---
>  12 files changed, 62 insertions(+), 29 deletions(-)
>  create mode 100644 arch/arm/lib/error-inject.c
>  create mode 100644 arch/arm64/lib/error-inject.c
>  delete mode 100644 arch/powerpc/include/asm/error-injection.h
>  delete mode 100644 arch/x86/include/asm/error-injection.h
> 
> -- 
> 2.17.1
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
