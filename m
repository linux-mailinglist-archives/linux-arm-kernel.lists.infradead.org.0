Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E812B646F3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 15:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=B6cS1IZlNOpImbqgMIxlUBzbjhbBHktvrHx167ryL4U=; b=ZChenflwb2tQml
	MeMAAnwQjAgDxfrIgBjqkW9Rnp0obA36R3HfmEf44ECmI5E6DGYmL1IcQBGB9p6pv01IIjiO1OITP
	KPwvHSHGwCQgRV5h5mrQ5p55mS/ZGKmD1QXyGfYx/gghpa0ZOT3Ed8vdjISUtC8DbVAqz5XFzXsux
	1LBKrB9OVaH8CKI6urls1cYUzB2wJecojAjDnFhWxp0ceGo8ZJK2KmreZ+sHvWboEMA94s7o5Z7mn
	rSd9tJNvtJoeFOytpUhK2exm6c1u0ffL01AyLrdyDQXyYfPO+qCZAEBWct5yKFPm7DNumJ9OMWrMN
	+PnGMOfJ3mU27WLMw55g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlCbn-0002CA-Pj; Wed, 10 Jul 2019 13:26:07 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlCbM-0002Bj-3G
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 13:25:41 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D787A2064B;
 Wed, 10 Jul 2019 13:25:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1562765139;
 bh=TvIYigy0Bf458ARoYJR+lIAzAVW32Q+zCs3htN50YFE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=eX9ZzqH6pqN88Uqghq+OYeQgOiUPblilOt1ruqmmlPIMENmN+dxYtWWv3Yq2amFbI
 LDtJTQQ1b/um0wiQeYo/JHi4IeBRalMLwk/LB26dPlW6rtCF/OFhonm3olB3u1SwY7
 rnSwgLdcakjndWNB0IxuKSgaOAGdD0NYXVF4OaBs=
Date: Wed, 10 Jul 2019 14:25:33 +0100
From: Will Deacon <will@kernel.org>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: [PATCH] arm64: vdso: Fix ABI regression in compat vdso
Message-ID: <20190710132532.r27yryvt25ex76xk@willie-the-truck>
References: <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <20190710130452.44111-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190710130452.44111-1-vincenzo.frascino@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_062540_201911_8024748E 
X-CRM114-Status: GOOD (  16.47  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: luto@kernel.org, linux@rasmusvillemoes.dk, catalin.marinas@arm.com,
 will.deacon@arm.com, linux-mips@vger.kernel.org,
 linux-kselftest@vger.kernel.org, shuah@kernel.org, linux-arch@vger.kernel.org,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, arnd@arndb.de,
 andre.przywara@arm.com, john.stultz@linaro.org, 0x7f454c46@gmail.com,
 tglx@linutronix.de, pcc@google.com, linux-arm-kernel@lists.infradead.org,
 huw@codeweavers.com, linux-kernel@vger.kernel.org, ralf@linux-mips.org,
 salyzyn@android.com, paul.burton@mips.com, sthotton@marvell.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jul 10, 2019 at 02:04:52PM +0100, Vincenzo Frascino wrote:
> Prior to the introduction of Unified vDSO support and compat layer for
> vDSO on arm64, AT_SYSINFO_EHDR was not defined for compat tasks.
> In the current implementation, AT_SYSINFO_EHDR is defined even if the
> compat vdso layer is not built and this causes a regression in the
> expected behavior of the ABI.
> 
> Restore the ABI behavior making sure that AT_SYSINFO_EHDR for compat
> tasks is defined only when CONFIG_GENERIC_COMPAT_VDSO and
> CONFIG_COMPAT_VDSO are enabled.

I think you could do a better job in the changelog of explaining what's
actually going on here. The problem seems to be that you're advertising
the presence of a non-existent vDSO to userspace.

> Reported-by: John Stultz <john.stultz@linaro.org>
> Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
> ---
>  arch/arm64/include/asm/elf.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/include/asm/elf.h b/arch/arm64/include/asm/elf.h
> index 3c7037c6ba9b..b7992bb9d414 100644
> --- a/arch/arm64/include/asm/elf.h
> +++ b/arch/arm64/include/asm/elf.h
> @@ -202,7 +202,7 @@ typedef compat_elf_greg_t		compat_elf_gregset_t[COMPAT_ELF_NGREG];
>  ({									\
>  	set_thread_flag(TIF_32BIT);					\
>   })
> -#ifdef CONFIG_GENERIC_COMPAT_VDSO
> +#if defined(CONFIG_COMPAT_VDSO) && defined(CONFIG_GENERIC_COMPAT_VDSO)

Can't this just be #ifdef CONFIG_COMPAT_VDSO ?

John -- can you give this a whirl, please?

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
