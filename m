Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABFCF1F4EE7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 09:31:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UvrvTmXvLc8Gj9fcKiPdfpyP4R9HVM9s/PCy9IBHvJM=; b=eRAgssbxAoppIM
	i5dyQJV9h3CcUcd/pFg4boRESf0zBtdt5RsEWt2qCB1Y2tStOTQtXmgElg0FTnMxFN6O8wHPKRjuB
	fT3sJ39rjX9b8EL++IPbKZExCTa8WWjsuujHiJcD9VtLIEVOsrfm7LBTY9TPRs80K473drMq5q/fa
	azhD0v8f1XTHfw4YnQgpWfktUDmOBNV4zjHH1jQxmleTXLOajguqFU9H4XiDl+tJh/RkfKi179nIk
	uFK6M4+jW7fqfcRR1/pyQ6ZpCPmSfap9ajoAcvhpNqfylfpbC+cC73QhFTtohhxPlHw6dqslX6bbC
	/8Q4Ae2Nz+/m0McYC4tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jivCS-0007QF-TE; Wed, 10 Jun 2020 07:31:04 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jivCK-0007Pj-8o
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 07:30:57 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id BE19D2064C;
 Wed, 10 Jun 2020 07:30:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1591774255;
 bh=IH/VSuSEAGvCmDHtwWjVeUZ11F3kkh8B0kP5JWifwc8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=kurjwS8fwiw8EGn0jbytoas/wrEj4xJkUEgxJkvcozH24JD2dlC5y+a4nJD0My3sq
 ul+wjivjzSARUMXtVw/lGNKsv6f0Tp7jqRq/C1+iXJ6YGLS7CKEkCCFlbDtWNARzK4
 Peuog3YYkCA20WJGXvYxTvu65RcFJjBDad24TU9U=
Date: Wed, 10 Jun 2020 08:30:47 +0100
From: Will Deacon <will@kernel.org>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH 5/5] gcc-plugins/stackleak: Don't instrument
 vgettimeofday.c in arm64 VDSO
Message-ID: <20200610073046.GA15939@willie-the-truck>
References: <20200604134957.505389-1-alex.popov@linux.com>
 <20200604134957.505389-6-alex.popov@linux.com>
 <20200604135806.GA3170@willie-the-truck>
 <202006091149.6C78419@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202006091149.6C78419@keescook>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200610_003056_351685_9EE343A6 
X-CRM114-Status: GOOD (  22.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: kernel-hardening@lists.openwall.com,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Sven Schnelle <svens@stackframe.org>, Naohiro Aota <naohiro.aota@wdc.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Emese Revfy <re.emese@gmail.com>, Iurii Zaikin <yzaikin@google.com>,
 PaX Team <pageexec@freemail.hu>, Laura Abbott <labbott@redhat.com>,
 Mathias Krause <minipli@googlemail.com>,
 Alexander Popov <alex.popov@linux.com>, linux-kbuild@vger.kernel.org,
 Alexander Monakov <amonakov@ispras.ru>, Michal Marek <michal.lkml@markovi.net>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 linux-arm-kernel@lists.infradead.org, notify@kernel.org,
 Florian Weimer <fweimer@redhat.com>, gcc@gcc.gnu.org,
 Brad Spengler <spender@grsecurity.net>, linux-kernel@vger.kernel.org,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 09, 2020 at 12:09:27PM -0700, Kees Cook wrote:
> On Thu, Jun 04, 2020 at 02:58:06PM +0100, Will Deacon wrote:
> > On Thu, Jun 04, 2020 at 04:49:57PM +0300, Alexander Popov wrote:
> > > Don't try instrumenting functions in arch/arm64/kernel/vdso/vgettimeofday.c.
> > > Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
> > > is disabled.
> > > 
> > > Signed-off-by: Alexander Popov <alex.popov@linux.com>
> > > ---
> > >  arch/arm64/kernel/vdso/Makefile | 3 ++-
> > >  1 file changed, 2 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
> > > index 3862cad2410c..9b84cafbd2da 100644
> > > --- a/arch/arm64/kernel/vdso/Makefile
> > > +++ b/arch/arm64/kernel/vdso/Makefile
> > > @@ -32,7 +32,8 @@ UBSAN_SANITIZE			:= n
> > >  OBJECT_FILES_NON_STANDARD	:= y
> > >  KCOV_INSTRUMENT			:= n
> > >  
> > > -CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables
> > > +CFLAGS_vgettimeofday.o = -O2 -mcmodel=tiny -fasynchronous-unwind-tables \
> > > +		$(DISABLE_STACKLEAK_PLUGIN)
> > 
> > I can pick this one up via arm64, thanks. Are there any other plugins we
> > should be wary of? It looks like x86 filters out $(GCC_PLUGINS_CFLAGS)
> > when building the vDSO.
> 
> I didn't realize/remember that arm64 retained the kernel build flags for
> vDSO builds. (I'm used to x86 throwing all its flags away for its vDSO.)
> 
> How does 32-bit ARM do its vDSO?
> 
> My quick run-through on plugins:
> 
> arm_ssp_per_task_plugin.c
> 	32-bit ARM only (but likely needs disabling for 32-bit ARM vDSO?)

On arm64, the 32-bit toolchain is picked up via CC_COMPAT -- does that still
get the plugins?

> cyc_complexity_plugin.c
> 	compile-time reporting only
> 
> latent_entropy_plugin.c
> 	this shouldn't get triggered for the vDSO (no __latent_entropy
> 	nor __init attributes in vDSO), but perhaps explicitly disabling
> 	it would be a sensible thing to do, just for robustness?
> 
> randomize_layout_plugin.c
> 	this shouldn't get triggered (again, lacking attributes), but
> 	should likely be disabled too.
> 
> sancov_plugin.c
> 	This should be tracking the KCOV directly (see
> 	scripts/Makefile.kcov), which is already disabled here.
> 
> structleak_plugin.c
> 	This should be fine in the vDSO, but there's not security
> 	boundary here, so it wouldn't be important to KEEP it enabled.

Thanks for going through these. In general though, it seems like an
opt-in strategy would make more sense, as it doesn't make an awful lot
of sense to me for the plugins to be used to build the vDSO.

So I would prefer that this patch filters out $(GCC_PLUGINS_CFLAGS).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
