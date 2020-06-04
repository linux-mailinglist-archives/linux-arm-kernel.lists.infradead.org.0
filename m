Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E1CE41EE620
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pp7IMrrZTKCsbslhTvAXsJjseNEJqv9QaC8Mj2dN+OQ=; b=RtkggPv6vPwHtZ
	JZ8qcwNX2s0fzeKC1LKHr8aUQX2u0asJaie6zi32DN/mYdPK6l7AMYcjafVsFyBcUjXOn2Ha9+FzG
	BPIBFtoyGYMOcuohhvZOOw++KyvSq+qR6ibRs0jAfKjHgjqg8mb+K7jntdnw6MXlQ1fBslsS2sEvC
	8WHMeBIn07GwVm+OGHY2CkrhE/+t2iOkjVZNIx1Ns3ZfPlFyDvT7sLy/NjridG1n1AMjNJ2Jun+J1
	CHjXdrxZxCWl2gwRABltbwAKocQP27P9OuiubGlzKZpGQEBSEz8IEB/Uv0xTUisVbw5Om3no6+Ejj
	k55KzHD/Q5VSNL4WbTeA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqNz-0005xx-Lc; Thu, 04 Jun 2020 13:58:23 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqNt-0005wx-9V
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:58:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DCCA020772;
 Thu,  4 Jun 2020 13:58:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591279094;
 bh=NECwl9V9eUPjMiBKm4/NUElVNzAVswrtLb5Ash6AmNw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=uGZWLY/90X3PHBwBJBECC5AEfkkUvXvRftsarwbHRlL1ye5SM0NXKjjA7fXltKfGL
 /httPXwbNmxOx61CMzCyRmmNhJ4+zpJaCMxhkZyxsAuEoa42eK0fxNKhxjslhbGNOe
 FH0d0K3cWhCZARJdAG4cZYTOH1PPjLcVIF1yjwFA=
Date: Thu, 4 Jun 2020 14:58:06 +0100
From: Will Deacon <will@kernel.org>
To: Alexander Popov <alex.popov@linux.com>
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
Message-ID: <20200604135806.GA3170@willie-the-truck>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200604134957.505389-6-alex.popov@linux.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065817_352536_94DD17B4 
X-CRM114-Status: GOOD (  14.22  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>, Kees Cook <keescook@chromium.org>,
 linux-kbuild@vger.kernel.org, Alexander Monakov <amonakov@ispras.ru>,
 Michal Marek <michal.lkml@markovi.net>, Thomas Gleixner <tglx@linutronix.de>,
 Peter Collingbourne <pcc@google.com>, linux-arm-kernel@lists.infradead.org,
 notify@kernel.org, Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 04, 2020 at 04:49:57PM +0300, Alexander Popov wrote:
> Don't try instrumenting functions in arch/arm64/kernel/vdso/vgettimeofday.c.
> Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
> is disabled.
> 
> Signed-off-by: Alexander Popov <alex.popov@linux.com>
> ---
>  arch/arm64/kernel/vdso/Makefile | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> index 3862cad2410c..9b84cafbd2da 100644
> --- a/arch/arm64/kernel/vdso/Makefile
> +++ b/arch/arm64/kernel/vdso/Makefile
> @@ -32,7 +32,8 @@ UBSAN_SANITIZE			:= n
>  OBJECT_FILES_NON_STANDARD	:= y
>  KCOV_INSTRUMENT			:= n
>  
> -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
> +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables \
> +		$(DISABLE_STACKLEAK_PLUGIN)

I can pick this one up via arm64, thanks. Are there any other plugins we
should be wary of? It looks like x86 filters out $(GCC_PLUGINS_CFLAGS)
when building the vDSO.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
