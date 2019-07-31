Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE3A7B975
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 31 Jul 2019 08:06:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CgYdBHwlVU+jyGefkfcP2PrMJT66G81T/m76BXT9BXU=; b=B/WIeOzpfYI1RVE494K8nDW2c
	MinD1a+/Bw6U1PmqEucWCdjuTZu1E54xPMYEoBRx0KUqk3gqU2ZOmbGGPnqJXmAGutVtvjOMev+8K
	UXEp6BhHDiNT1sSjQraUvBdiKSMKiB23841PNiEiTYTUdcDQCUpRpGd0eQZp2OyBM9+qSCsv1FKEn
	0/gdFK7f9PXnMarvZW8oxIBXrBu8kDY1QyGu43XWz2XHFtj967EXevMV6JOEefjLkz/F+w/zm4QUg
	xt07qBP3kbu5a4oR/QXsspGnNMdubt7WlHn3y9JLv3aOmODo9apuCj5tNtQdGw6O+KRlgZptiIK5t
	rKCyZVGjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hshl5-0005E7-DC; Wed, 31 Jul 2019 06:06:43 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshkc-00050F-SE; Wed, 31 Jul 2019 06:06:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Transfer-Encoding:Content-Type:
 In-Reply-To:MIME-Version:Date:Message-ID:From:References:Cc:To:Subject:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=MqJgnMfqUabt7G5ra2x8qYxYqtvy4l0Kam0LO5xhytQ=; b=i9nr8rZhuzykTwvJnAjlBz4LyL
 9a9UGxcGGK7BHeosUnNK3QW5P0V8lQXBD3HaYRujToD5q/fCAyS4l8Y8IWWKYogsc2cpICeoFHk7l
 8nRUIkh0ycTcSRwBHmoswgWXFPaR6VeXEq+rSHRWy163/VPjj1Cjh5rHzvw6AFzjABqpsUXUvn0tU
 O1e+tPfPKJaXi4SL4/SddPbuoH8cPZJ/6oIFuZl8J5jr/vpxdZu8SXhle8oficy6xk5YxBm1h+VnS
 Pk+HvHi+60ZkZ0c2MJmd6bgRK/fhbqaxQa86zJwUcUZiqVxuFvr4W18fH9Tmq8q8ahWau3LYDhdKu
 e3S+YXYw==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hshkZ-0007Sz-GU; Wed, 31 Jul 2019 06:06:13 +0000
Received: from [192.168.0.12] (127.19.86.79.rev.sfr.net [79.86.19.127])
 (Authenticated sender: alex@ghiti.fr)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 68D61100008;
 Wed, 31 Jul 2019 06:05:23 +0000 (UTC)
Subject: Re: [PATCH v5 14/14] riscv: Make mmap allocation top-down by default
To: Andrew Morton <akpm@linux-foundation.org>
References: <20190730055113.23635-1-alex@ghiti.fr>
 <20190730055113.23635-15-alex@ghiti.fr>
From: Alex Ghiti <alex@ghiti.fr>
Message-ID: <88a9bbf8-872f-97cc-fc1a-83eb7694478f@ghiti.fr>
Date: Wed, 31 Jul 2019 02:05:23 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.4.0
MIME-Version: 1.0
In-Reply-To: <20190730055113.23635-15-alex@ghiti.fr>
Content-Language: sv-FI
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Kees Cook <keescook@chromium.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Russell King <linux@armlinux.org.uk>,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Luis Chamberlain <mcgrof@kernel.org>,
 Paul Burton <paul.burton@mips.com>, James Hogan <jhogan@kernel.org>,
 linux-fsdevel@vger.kernel.org, linux-riscv@lists.infradead.org,
 linux-mips@vger.kernel.org, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org, Alexander Viro <viro@zeniv.linux.org.uk>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 7/30/19 1:51 AM, Alexandre Ghiti wrote:
> In order to avoid wasting user address space by using bottom-up mmap
> allocation scheme, prefer top-down scheme when possible.
>
> Before:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 00018000-00039000 rw-p 00000000 00:00 0          [heap]
> 1555556000-155556d000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 155556d000-155556e000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 155556e000-155556f000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 155556f000-1555570000 rw-p 00000000 00:00 0
> 1555570000-1555572000 r-xp 00000000 00:00 0      [vdso]
> 1555574000-1555576000 rw-p 00000000 00:00 0
> 1555576000-1555674000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 1555674000-1555678000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 1555678000-155567a000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 155567a000-15556a0000 rw-p 00000000 00:00 0
> 3fffb90000-3fffbb1000 rw-p 00000000 00:00 0      [stack]
>
> After:
> root@qemuriscv64:~# cat /proc/self/maps
> 00010000-00016000 r-xp 00000000 fe:00 6389       /bin/cat.coreutils
> 00016000-00017000 r--p 00005000 fe:00 6389       /bin/cat.coreutils
> 00017000-00018000 rw-p 00006000 fe:00 6389       /bin/cat.coreutils
> 2de81000-2dea2000 rw-p 00000000 00:00 0          [heap]
> 3ff7eb6000-3ff7ed8000 rw-p 00000000 00:00 0
> 3ff7ed8000-3ff7fd6000 r-xp 00000000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fd6000-3ff7fda000 r--p 000fd000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fda000-3ff7fdc000 rw-p 00101000 fe:00 7187   /lib/libc-2.28.so
> 3ff7fdc000-3ff7fe2000 rw-p 00000000 00:00 0
> 3ff7fe4000-3ff7fe6000 r-xp 00000000 00:00 0      [vdso]
> 3ff7fe6000-3ff7ffd000 r-xp 00000000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffd000-3ff7ffe000 r--p 00016000 fe:00 7193   /lib/ld-2.28.so
> 3ff7ffe000-3ff7fff000 rw-p 00017000 fe:00 7193   /lib/ld-2.28.so
> 3ff7fff000-3ff8000000 rw-p 00000000 00:00 0
> 3fff888000-3fff8a9000 rw-p 00000000 00:00 0      [stack]
>
> Signed-off-by: Alexandre Ghiti <alex@ghiti.fr>
> Reviewed-by: Christoph Hellwig <hch@lst.de>
> Reviewed-by: Kees Cook <keescook@chromium.org>
> Reviewed-by: Luis Chamberlain <mcgrof@kernel.org>
> ---
>   arch/riscv/Kconfig | 13 +++++++++++++
>   1 file changed, 13 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8ef64fe2c2b3..8d0d8af1a744 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -54,6 +54,19 @@ config RISCV
>   	select EDAC_SUPPORT
>   	select ARCH_HAS_GIGANTIC_PAGE
>   	select ARCH_WANT_HUGE_PMD_SHARE if 64BIT
> +	select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
> +	select HAVE_ARCH_MMAP_RND_BITS
> +
> +config ARCH_MMAP_RND_BITS_MIN
> +	default 18 if 64BIT
> +	default 8
> +
> +# max bits determined by the following formula:
> +#  VA_BITS - PAGE_SHIFT - 3
> +config ARCH_MMAP_RND_BITS_MAX
> +	default 33 if RISCV_VM_SV48
> +	default 24 if RISCV_VM_SV39
> +	default 17 if RISCV_VM_SV32
>   
>   config MMU
>   	def_bool y


Hi Andrew,

I have just seen you took this series into mmotm but without Paul's 
patch ("riscv: kbuild: add virtual memory system selection") on which 
this commit relies, I'm not sure it could
compile without it as there is no default for ARCH_MMAP_RND_BITS_MAX.

Thanks,

Alex


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
