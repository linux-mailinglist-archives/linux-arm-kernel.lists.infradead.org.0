Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C57451CDDFB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:59:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EVYMguRt/37zQgw+Dsax5qH8TjL+1xIkOyEGbFxp6wk=; b=M0yqrsyBLT7yIR
	baYfdOSQLJEbfa75IyvDjWwwcLfj8s/H2w2eAAYd894jRLF72IabcPU2LDCpgzY4ZmdGdwDZSgb9q
	20Tw/YvRMIzd+B62NsHFisszjFcGt37Ml1DZIjc1HQ6AlEnB4fm7inkGe8F5KYHTupCqiF7i6p3yA
	o/ayi4hybiIAfc0/Pk0GWQzlZmjESCXstwvkjo+bZj03h3dzIY0tHZwR/o8Nn1QDzRaRf7D5uB0zq
	RiESK1hSJ9S4+X8sfmeJ6NPHHKUCXLNnDrqb+JCriGSN6Tyy3do27QVYOFVR/l21h5Ig8mpeIaaqJ
	QXcTRfzIgd0JzxIO69DA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9u7-0003iR-6D; Mon, 11 May 2020 14:59:39 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9tl-0003Yb-9m
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:59:18 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B959420643;
 Mon, 11 May 2020 14:59:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589209157;
 bh=h6Ea4lLoHxX7Auk/jUvpA6sDRTJxI89bcfhFCCCylgg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=wKZwMCRGb/qPVQrXagi72UbQrDDDpUCfscELhKXUCYWtWz/96oJ3TsTAVuOo9hq3N
 OTup9e3bn90dJWWmHxlKrSdmxAXWW+8b1fClhGGt1d9f8pbz6odwWVeOYY4PQ/tUpC
 Fx64l5wovGXZdTUhdEqOyQyid+5J32xaXo4AOdek=
Date: Mon, 11 May 2020 15:59:09 +0100
From: Will Deacon <will@kernel.org>
To: Douglas Anderson <dianders@chromium.org>
Subject: Re: [PATCH v3 05/11] arm64: Add call_break_hook() to early_brk64()
 for early kgdb
Message-ID: <20200511145908.GA22040@willie-the-truck>
References: <20200428211351.85055-1-dianders@chromium.org>
 <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200428141218.v3.5.I22067ad43e77ddfd4b64c2d49030628480f9e8d9@changeid>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_075917_356532_E3ADF014 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: -5.4 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.4 points)
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
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, catalin.marinas@arm.com,
 bjorn.andersson@linaro.org, hpa@zytor.com, frowand.list@gmail.com,
 daniel.thompson@linaro.org, corbet@lwn.net, jinho lim <jordan.lim@samsung.com>,
 agross@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org, kgdb-bugreport@lists.sourceforge.net,
 Dave Martin <Dave.Martin@arm.com>, Masami Hiramatsu <mhiramat@kernel.org>,
 jslaby@suse.com, Alexios Zavras <alexios.zavras@intel.com>, bp@alien8.de,
 tglx@linutronix.de, mingo@redhat.com, Allison Randal <allison@lohutok.net>,
 sumit.garg@linaro.org, gregkh@linuxfoundation.org,
 linux-kernel@vger.kernel.org, James Morse <james.morse@arm.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, jason.wessel@windriver.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Doug,

On Tue, Apr 28, 2020 at 02:13:45PM -0700, Douglas Anderson wrote:
> diff --git a/arch/arm64/kernel/debug-monitors.c b/arch/arm64/kernel/debug-monitors.c
> index 48222a4760c2..59c353dfc8e9 100644
> --- a/arch/arm64/kernel/debug-monitors.c
> +++ b/arch/arm64/kernel/debug-monitors.c
> @@ -297,7 +297,7 @@ void unregister_kernel_break_hook(struct break_hook *hook)
>  	unregister_debug_hook(&hook->node);
>  }
>  
> -static int call_break_hook(struct pt_regs *regs, unsigned int esr)
> +int call_break_hook(struct pt_regs *regs, unsigned int esr)
>  {
>  	struct break_hook *hook;
>  	struct list_head *list;
> diff --git a/arch/arm64/kernel/traps.c b/arch/arm64/kernel/traps.c
> index cf402be5c573..a8173f0c1774 100644
> --- a/arch/arm64/kernel/traps.c
> +++ b/arch/arm64/kernel/traps.c
> @@ -1044,6 +1044,9 @@ int __init early_brk64(unsigned long addr, unsigned int esr,
>  	if ((comment & ~KASAN_BRK_MASK) == KASAN_BRK_IMM)
>  		return kasan_handler(regs, esr) != DBG_HOOK_HANDLED;
>  #endif
> +	if (call_break_hook(regs, esr) == DBG_HOOK_HANDLED)
> +		return 0;

I think this just means we're not running debug_traps_init() early enough,
and actually the KASAN early handler is unnecessary too.

If we call debug_traps_init() directly from setup_arch() and drop the
arch_initcall(), can we then drop early_brk64 entirely?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
