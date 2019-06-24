Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A780B50BDA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 15:22:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/ip2ij50YjHiP8jghoAYywhyGKRa5/DcQaUA7UzEPwM=; b=kbBxdx7l0N6G8V
	tkZcWcFtlflFIdmHBsjRNnuJdM5HsE4E82rHCygTENclvH3bHqaI6WRGmNrzO6y1hzVVdGbi7Xyvv
	C/4JIUn8WiH6oplYSd51Wd4nKNe6YORwsUEpJe8SoPWEk6d0tXJW/WnBDucwQl3Xnvm5ADtEtbKIO
	VIdRHUvIT2W9dG/QpDTxe/hcfktOxca/s5HvtGBAnaxPCrPhsfj6tRsvtGAAbiTdxnmJF0VOv8gmi
	VqXvGV5ymgqDohRQj+m5pERBNDLUWz71wrqdSmv7wUf9MSmJ/S9cYyTlqS2jklsXEwztnTDyYjGhE
	zJ2ZjCWwIHc7WhwqD6/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfOvc-0006ko-5n; Mon, 24 Jun 2019 13:22:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfOud-0006Di-2a
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 13:21:37 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D48C92133F;
 Mon, 24 Jun 2019 13:21:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561382494;
 bh=9ELmp3ckM1SNaxjhHehS21dBJzYbmjQUXzH1W0gDRd4=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eDt6mjboezKiMPi593uwLjkuZhgMZpY9mcTV9T6q5lXacg1nyN2aPv747AJtlrKFI
 Sgv5uLIFoA0URSp+YDVd2ZzylWbFIxFdUAOBKWS73kO2diXRFrmu9n4PhkmGUayWJE
 AgdIbj45lYu0/YFzxaxVT32ITEnUa35TY5Kcr1KQ=
Date: Mon, 24 Jun 2019 14:21:29 +0100
From: Will Deacon <will@kernel.org>
To: jinho lim <jordan.lim@samsung.com>
Subject: Re: [PATCH v2] arm64: rename dump_instr as dump_kernel_instr
Message-ID: <20190624132129.4c772nkjbrilxtcy@willie-the-truck>
References: <CGME20190620065254epcas1p48539060e94433cc254a1650cdc359ac4@epcas1p4.samsung.com>
 <20190620065249.24112-1-jordan.lim@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190620065249.24112-1-jordan.lim@samsung.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_062135_168319_E58574DA 
X-CRM114-Status: GOOD (  16.24  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, anshuman.khandual@arm.com, marc.zyngier@arm.com,
 andreyknvl@google.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 seroto7@gmail.com, ebiederm@xmission.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 20, 2019 at 03:52:49PM +0900, jinho lim wrote:
> [v2]

The version information is not usually part of the commit message. Please
drop that...

> dump_kernel_instr does not work for user mode.
> rename dump_instr function and remove __dump_instr.

... and rewrite this so it explains the problem that you're solving.

> Signed-off-by: jinho lim <jordan.lim@samsung.com>
> ---
> 
> Thanks for review, I rename dump_instr function and merge __dump_instr in it.
> 
>  arch/arm64/kernel/traps.c | 29 ++++++++++++++---------------
>  1 file changed, 14 insertions(+), 15 deletions(-)
> 
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index ccc13b45d9b1..7053165cb31a 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -66,11 +66,20 @@ static void dump_backtrace_entry(unsigned long where)
>  	printk(" %pS\n", (void *)where);
>  }
>  
> -static void __dump_instr(const char *lvl, struct pt_regs *regs)
> +static void dump_kernel_instr(const char *lvl, struct pt_regs *regs)
>  {
> -	unsigned long addr = instruction_pointer(regs);
> +	unsigned long addr;
>  	char str[sizeof("00000000 ") * 5 + 2 + 1], *p = str;
>  	int i;
> +	mm_segment_t fs;
> +
> +	if (user_mode(regs))
> +		return;
> +
> +	addr = instruction_pointer(regs);
> +
> +	fs = get_fs();
> +	set_fs(KERNEL_DS);

Actually, if we use aarch64_insn_read() instead of get_user() then we can
avoid having to mess directly with the fs and we'll also get endianness
correction for free when running a big-endian kernel.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
