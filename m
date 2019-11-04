Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E868EE1B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 14:55:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5GIZu+pmht2EcYwj5ex8aW2jmTTj0OaCxhjRjIsdCpE=; b=SM/hKEudZY/K8E
	aGbRdR52veY8Pp2EpwxWaVvjAxw5jMA2unPg18RctbQ0v4c52e1yDG1ApKx7qW2Y/4nyce6kZd1ZE
	1Z1zYqA3Nnx2ViDQIHl3exG5vIbODTAhSAfGVu13lrQzuIvGoqG+eHIIgjxUbPHr/MxAMHw5SOQ0u
	pOuteFwZF+JyPLSiE3Iio1PpR3FT2Mkb4rEQq26Vnu7j0spL9LQC4JovRPt8MaHZ37RCUjg7nfmaZ
	GRMp8SHaE2m22LInlqj69gL8ZmIFSgVE7DNc+Qi/WH4duSKwZosfkQkyMU7ZNjJLPueniEWbefNRO
	zTEwenNgZ8Io/BD1GW7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRcpk-0003tT-DW; Mon, 04 Nov 2019 13:55:52 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRcpd-0003t6-Dr
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 13:55:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D21141FB;
 Mon,  4 Nov 2019 05:55:44 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 976583F6C4;
 Mon,  4 Nov 2019 05:55:42 -0800 (PST)
Date: Mon, 4 Nov 2019 13:55:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Amit Daniel Kachhap <amit.kachhap@arm.com>
Subject: Re: [PATCHv2 4/8] arm64: module/ftrace: intialize PLT at load time
Message-ID: <20191104135540.GH45140@lakrids.cambridge.arm.com>
References: <20191029165832.33606-1-mark.rutland@arm.com>
 <20191029165832.33606-5-mark.rutland@arm.com>
 <d22b27b5-6b76-6124-efff-fd577a8f482e@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d22b27b5-6b76-6124-efff-fd577a8f482e@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_055545_505332_7379077D 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: jthierry@redhat.com, linux-parisc@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, deller@gmx.de, jpoimboe@redhat.com,
 linux-kernel@vger.kernel.org, rostedt@goodmis.org,
 James.Bottomley@HansenPartnership.com, takahiro.akashi@linaro.org,
 will@kernel.org, mingo@redhat.com, james.morse@arm.com, jeyu@kernel.org,
 svens@stackframe.org, duwe@suse.de, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Nov 02, 2019 at 05:50:02PM +0530, Amit Daniel Kachhap wrote:
> On 10/29/19 10:28 PM, Mark Rutland wrote:
> > @@ -485,24 +486,33 @@ static const Elf_Shdr *find_section(const Elf_Ehdr *hdr,
> >   	return NULL;
> >   }
> > +int module_init_ftrace_plt(const Elf_Ehdr *hdr,
> > +			   const Elf_Shdr *sechdrs,
> > +			   struct module *mod)
> I think this function can be made static as it is not used anywhere.

It's only called by module_finalize() below, so making it static makese
sense; done.

Thanks
Mark.

> > +{
> > +#if defined(CONFIG_ARM64_MODULE_PLTS) && defined(CONFIG_DYNAMIC_FTRACE)
> > +	const Elf_Shdr *s;
> > +	struct plt_entry *plt;
> > +
> > +	s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
> > +	if (!s)
> > +		return -ENOEXEC;
> > +
> > +	plt = (void *)s->sh_addr;
> > +	*plt = get_plt_entry(FTRACE_ADDR, plt);
> > +	mod->arch.ftrace_trampoline = plt;
> > +#endif
> > +	return 0;
> > +}
> > +
> >   int module_finalize(const Elf_Ehdr *hdr,
> >   		    const Elf_Shdr *sechdrs,
> >   		    struct module *me)
> >   {
> >   	const Elf_Shdr *s;
> > -
> >   	s = find_section(hdr, sechdrs, ".altinstructions");
> >   	if (s)
> >   		apply_alternatives_module((void *)s->sh_addr, s->sh_size);
> > -#ifdef CONFIG_ARM64_MODULE_PLTS
> > -	if (IS_ENABLED(CONFIG_DYNAMIC_FTRACE)) {
> > -		s = find_section(hdr, sechdrs, ".text.ftrace_trampoline");
> > -		if (!s)
> > -			return -ENOEXEC;
> > -		me->arch.ftrace_trampoline = (void *)s->sh_addr;
> > -	}
> > -#endif
> > -
> > -	return 0;
> > +	return module_init_ftrace_plt(hdr, sechdrs, me);
> >   }
> > 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
