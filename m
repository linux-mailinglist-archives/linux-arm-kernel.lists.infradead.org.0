Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E45B6B7AC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jul 2019 09:52:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Mime-Version:References:In-Reply-To:
	Message-Id:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Q//fXatvmoMThDi5z5omjiHmTOMBq3/MaLdMPzhgAzw=; b=RSUMq+AUYtO1cE
	W12t12pKdQKgHJQ2oo25emE1O3B8KCMsP8wuwu8d0TT6PyEi2JU2gduyUnMubffC6cZJq2hKSw9iB
	vey5PgtRJyVW9vmvgHQ+OHJeUJr87rjk9MfSm0p/hIUUvBvfarxs+uz5sDPOrwJJvaqkUdXKKYDYk
	8os0j0SR49uFyV5iYSHUaauPEvPuAaHaCfEBSBcr04VOZYXQSs69M5WCKJsEMXWPIIXBle6ShqybE
	hmkTcA3czurv+yADz/Rjvl9dPkmjr5iUOmNDvUQF7EbkImPebBKzjr+wS3drF+d6KdRMuvUc9glqw
	jDpSY4NItM+dPUwTmfcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnek5-0006bS-7B; Wed, 17 Jul 2019 07:52:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnejq-0006b5-CE
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jul 2019 07:52:35 +0000
Received: from devnote2 (115.42.148.210.bf.2iij.net [210.148.42.115])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1CDD2077C;
 Wed, 17 Jul 2019 07:52:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1563349953;
 bh=AduzEhpfg2VrAE19OEU5UAD569tPbdK9WGCbykgfs9U=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=ADdIIP4LbRiUvB+uliUTmVchJU8aHDFFjvL+4mfKZw7q6/t82HChdesjTx2n7xkd/
 OqVQchqbg+KmENao+1iR9M2GDc9vVYXws0IxdcL8wKtSkAqpukBA+c+gDbRzFS+nfN
 kaXeGGe3GeHlkVgZ3pSVw+J5uQCh/oQ8gKL8HRvQ=
Date: Wed, 17 Jul 2019 16:52:22 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH 0/2] arm/arm64: Add support for function error injection
Message-Id: <20190717165222.62e02b99ebc16e23c3b81de2@kernel.org>
In-Reply-To: <20190716111301.1855-1-leo.yan@linaro.org>
References: <20190716111301.1855-1-leo.yan@linaro.org>
X-Mailer: Sylpheed 3.5.1 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190717_005234_439422_681543B8 
X-CRM114-Status: GOOD (  16.06  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Song Liu <songliubraving@fb.com>, linux-kernel@vger.kernel.org,
 Arnd Bergmann <arnd@arndb.de>, Daniel Borkmann <daniel@iogearbox.net>,
 Catalin Marinas <catalin.marinas@arm.com>, Alexei Starovoitov <ast@kernel.org>,
 Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
 Oleg Nesterov <oleg@redhat.com>, Yonghong Song <yhs@fb.com>,
 bpf@vger.kernel.org, Will Deacon <will@kernel.org>,
 Martin KaFai Lau <kafai@fb.com>, linux-arm-kernel@lists.infradead.org,
 Justin He <Justin.He@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019 19:12:59 +0800
Leo Yan <leo.yan@linaro.org> wrote:

> This small patch set is to add support for function error injection;
> this can be used to eanble more advanced debugging feature, e.g.
> CONFIG_BPF_KPROBE_OVERRIDE.
> 
> I only tested the first patch on arm64 platform Juno-r2 with below
> steps; the second patch is for arm arch, but I absent the platform
> for the testing so only pass compilation.
> 
> - Enable kernel configuration:
>   CONFIG_BPF_KPROBE_OVERRIDE
>   CONFIG_BTRFS_FS
>   CONFIG_BPF_EVENTS=y
>   CONFIG_KPROBES=y
>   CONFIG_KPROBE_EVENTS=y
>   CONFIG_BPF_KPROBE_OVERRIDE=y
> - Build samples/bpf on Juno-r2 board with Debian rootFS:
>   # cd $kernel
>   # make headers_install
>   # make samples/bpf/ LLC=llc-7 CLANG=clang-7
> - Run the sample tracex7:
>   # ./tracex7 /dev/sdb1
>   [ 1975.211781] BTRFS error (device (efault)): open_ctree failed
>   mount: /mnt/linux-kernel/linux-cs-dev/samples/bpf/tmpmnt: mount(2) system call failed: Cannot allocate memory.

This series looks good to me from the view point of override usage :)

Reviewed-by: Masami Hiramatsu <mhiramat@kernel.org>

For this series.

Thank you,

> 
> 
> Leo Yan (2):
>   arm64: Add support for function error injection
>   arm: Add support for function error injection
> 
>  arch/arm/Kconfig                         |  1 +
>  arch/arm/include/asm/error-injection.h   | 13 +++++++++++++
>  arch/arm/include/asm/ptrace.h            |  5 +++++
>  arch/arm/lib/Makefile                    |  2 ++
>  arch/arm/lib/error-inject.c              | 19 +++++++++++++++++++
>  arch/arm64/Kconfig                       |  1 +
>  arch/arm64/include/asm/error-injection.h | 13 +++++++++++++
>  arch/arm64/include/asm/ptrace.h          |  5 +++++
>  arch/arm64/lib/Makefile                  |  2 ++
>  arch/arm64/lib/error-inject.c            | 19 +++++++++++++++++++
>  10 files changed, 80 insertions(+)
>  create mode 100644 arch/arm/include/asm/error-injection.h
>  create mode 100644 arch/arm/lib/error-inject.c
>  create mode 100644 arch/arm64/include/asm/error-injection.h
>  create mode 100644 arch/arm64/lib/error-inject.c
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
