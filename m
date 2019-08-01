Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CAD57D673
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 09:37:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gmdnmEF8Y4CSi07Ef/piAkwOlk1iOTE/e42XKpGj/8I=; b=Myf9Rgj0ljHm6V
	uzDU8sbSNslmvDWhL90cfNGyLocog9bJLI/M8vxGpnOIAX3QGeYK1DazDLkKwlnj5A74JH9UUB5AF
	gdTPJQFod8dR/OHvFkhtlgd8KI1fh82SWdXXNH8VcfUj7avJmJ4x6FDNxMEIOmlHfS7OmTCIgO7Sk
	ZOsRBJMi6MbUAzODCXJuo14B8BhZf8xrzZvoFnkHYB3roIdvPOIVxsFC8HaK16zhbGXP2GKGJ2w28
	gOAETumcK2S9oy0thPQBlMHoYpuPXISXXcEl7KlljB89Q9QXNoJbBP9SaYlhrToETO1KHGvfSSnfD
	z6ImFhQWmYJGyjIoRH7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht5en-0003HQ-8c; Thu, 01 Aug 2019 07:37:49 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht5eg-0003H5-V0
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 07:37:44 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id C46EC206B8;
 Thu,  1 Aug 2019 07:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564645062;
 bh=sOf2S0CiEG1ZaH20+DYy2OtudWMWVUNo515WBoje4Fo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=qB1YTh06fJbasGpBvg62Fur5l+pTa927ewmGW+JK8xFgsz+l9oKu1NCXMvhNd9pz/
 cUdBcq5fI/kp2K6UnIHMSqIloQX1CvMe/pi0G3KpyMW51Sozf4tWn4lpqFX7tjqQgZ
 EpuvgXEoCiN5JGif8mykFQQyloj4Ehxz2JijKmS4=
Date: Thu, 1 Aug 2019 08:37:37 +0100
From: Will Deacon <will@kernel.org>
To: Masami Hiramatsu <mhiramat@kernel.org>
Subject: Re: [PATCH v3 3/4] arm64: Make debug exception handlers visible from
 RCU
Message-ID: <20190801073737.wrhespf5xh3qudil@willie-the-truck>
References: <156404254387.2020.886452004489353899.stgit@devnote2>
 <156404257493.2020.7940525305482369976.stgit@devnote2>
 <20190731172602.36hdk3yb3w6uihbu@willie-the-truck>
 <20190801143225.e61e38ce7a701407b19f8008@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190801143225.e61e38ce7a701407b19f8008@kernel.org>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_003743_025523_601F5AC8 
X-CRM114-Status: GOOD (  16.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Dan Rue <dan.rue@linaro.org>, Daniel Diaz <daniel.diaz@linaro.org>,
 Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Naresh Kamboju <naresh.kamboju@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Matt Hart <matthew.hart@linaro.org>,
 "Paul E . McKenney" <paulmck@linux.ibm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Masami,

On Thu, Aug 01, 2019 at 02:32:25PM +0900, Masami Hiramatsu wrote:
> On Wed, 31 Jul 2019 18:26:03 +0100
> Will Deacon <will@kernel.org> wrote:
> > On Thu, Jul 25, 2019 at 05:16:15PM +0900, Masami Hiramatsu wrote:
> > > diff --git a/arch/arm64/mm/fault.c b/arch/arm64/mm/fault.c
> > > index 9568c116ac7f..ed6c55c87fdc 100644
> > > --- a/arch/arm64/mm/fault.c
> > > +++ b/arch/arm64/mm/fault.c
> > > @@ -777,6 +777,42 @@ void __init hook_debug_fault_code(int nr,
> > >  	debug_fault_info[nr].name	= name;
> > >  }
> > >  
> > > +/*
> > > + * In debug exception context, we explicitly disable preemption.
> > 
> > Maybe add "despite having interrupts disabled"?
> 
> OK, I'll add it.
> 
> > > + * This serves two purposes: it makes it much less likely that we would
> > > + * accidentally schedule in exception context and it will force a warning
> > > + * if we somehow manage to schedule by accident.
> > > + */
> > > +static void debug_exception_enter(struct pt_regs *regs)
> > > +{
> > > +	if (user_mode(regs)) {
> > > +		RCU_LOCKDEP_WARN(!rcu_is_watching(), "entry code didn't wake RCU");
> > > +	} else {
> > > +		/*
> > > +		 * We might have interrupted pretty much anything.  In
> > > +		 * fact, if we're a debug exception, we can even interrupt
> > > +		 * NMI processing. We don't want this code makes in_nmi()
> > > +		 * to return true, but we need to notify RCU.
> > > +		 */
> > > +		rcu_nmi_enter();
> > > +	}
> > > +
> > > +	preempt_disable();
> > 
> > If you're addingt new functions for entry/exit, maybe move the
> > trace_hardirqs_{on,off}() calls in here too?
> 
> OK, let's move it in these functions.

Brill, thanks. Please just resend this patch, as I can pick the other three
up as they are.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
