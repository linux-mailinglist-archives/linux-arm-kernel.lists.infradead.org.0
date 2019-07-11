Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 006D865413
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 11:45:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QfyxJYvelYyvg3QUcxDUg4KXmvkTD4Xj9HHhPPw8ygg=; b=EcqnV2I6iIV1Q3
	RKxjh3Guj4/RmokF9dQZRNLhf8XTnUyX6KToOE/LY5/kmoXgyktk4Vmfys0asyw6wBVeDlSRLVEM+
	gDO4lZGvJqQLjyEnlnb6mCNXNSj3juJKK0N3n3N5vhx0u7s3jj5knQ6kUYnPL/dCM1I1EWPfpViCw
	onQ8de/Kwy4+jMHsRmK2/RFTqrDkfARh9/VEf3H+1CgqgsjXglJEEtNn1tb7ihwS7IUzoTRydFD6U
	8j1qsBQE6hRryeRk9S9iM2sJh+weBCBUcb/fZ9tjhdGmorNav44wUxDvi/nr9Vo2hbqKCt1AMHiUN
	Lqmj3tLQCHxiXlX83ADA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlVdn-0004qx-DU; Thu, 11 Jul 2019 09:45:27 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlVda-0004qX-A9
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 09:45:15 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 4C7E420872;
 Thu, 11 Jul 2019 09:45:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562838313;
 bh=fCmvtSnN5KcuFoyLXltopennSHZGXM/xZ3ZSn2MCAkc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=msKHFoq1k7Hqwov4CLkE1ZEAbs1wTC7Q18jlnlcjXlM0AkkuxcfbcStOXB9miXgCJ
 5d74po+3Nlt9RbYtxyX8i5luTtfSyihwcZXy/t819iQWVpHaNBqUftSeNtf76ElQVI
 lQbiMqDAOvUJBQ5kwOGGbgW3h/xX3YrpNVoA5jqU=
Date: Thu, 11 Jul 2019 10:45:06 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH v2] arm64: vdso: Fix ABI regression in compat vdso
Message-ID: <20190711094505.rwy6t6wu2cvmvwr6@willie-the-truck>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710140119.23417-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710140119.23417-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190711_024514_373134_EB0FDDB4 
X-CRM114-Status: GOOD (  17.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux@rasmusvillemoes.dk, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org, shuah@kernel.org,
 linux-arch@vger.kernel.org, 0x7f454c46@gmail.com, daniel.lezcano@linaro.org,
 linux@armlinux.org.uk, arnd@arndb.de, andre.przywara@arm.com,
 john.stultz@linaro.org, luto@kernel.org, tglx@linutronix.de, pcc@google.com,
 linux-arm-kernel@lists.infradead.org, huw@codeweavers.com,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, salyzyn@android.com,
 paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 03:01:19PM +0100, Vincenzo Frascino wrote:
> Prior to the introduction of Unified vDSO support and compat layer for
> vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
> In the current implementation, AT_SYSINFO_EHDR is defined even if the
> compat vdso layer is not built and this causes a regression in the
> expected behavior of the ABI.
> 
> Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
> tasks is defined only when CONFIG_COMPAT_VDSO is enabled.
> 
> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/elf.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index 3c7037c6ba9b..b618017205a3 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
>  ({									\
>  	set_thread_flag(TIF_32BIT);					\
>   })
> -#ifdef CONFIG_GENERIC_COMPAT_VDSO
> +#ifdef CONFIG_COMPAT_VDSO
>  #define COMPAT_ARCH_DLINFO						\
>  do {									\
>  	/*								\

Acked-by: Will Deacon <will@kernel.org>

I can take this at -rc1 via arm64 unless tglx plans to send it during the
rest of the merge window. Please let me know.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
