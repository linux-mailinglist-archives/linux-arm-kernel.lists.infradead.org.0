Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4129317E509
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:52:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ya6NOkPbW2dckiaBW1AE64MXiPTFY+/Gnfhp2kaWRhc=; b=WnjSPZrfsv2zoC
	QTytammbRn1G4MnHlynAKj3gxAwOGciG7lIxDxmSieQVaYzLoDHiiJxa1wrhAfYNJoHj1cNlQfRJm
	8fwwl8jTBLNeVCCz45gfGCG/vi+JcUIk/c0yFwMirQSEaZXZ09iF/nOpje1e42WbKRJaw+k7LsZjl
	v/Jh4Kjh3Y71zN689oPygv26APHhJT0wzAw5iArDh7RfHL53DMvvBkUcEBmGK3PA1Tkg816QDeG6+
	gYHg3w6mpWl4lfIXPNvwisJyu1sg2r6l5mGWnQFCq/OBfu91TK3iOzWGBksOplPpzj4tR7As019xv
	4qQbz0nTdQlDb62N80yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBLdI-0008Jr-CV; Mon, 09 Mar 2020 16:52:00 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBLd9-0008JC-AY
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:51:52 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9A9A11FB;
 Mon,  9 Mar 2020 09:51:49 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id EDE713F534;
 Mon,  9 Mar 2020 09:51:47 -0700 (PDT)
Date: Mon, 9 Mar 2020 16:51:39 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH] arm64: add check_wx_pages debugfs for CHECK_WX
Message-ID: <20200309165125.GA44566@lakrids.cambridge.arm.com>
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200309121713.GA26309@lakrids.cambridge.arm.com>
 <202003090914.F6720CFF13@keescook>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <202003090914.F6720CFF13@keescook>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_095151_455141_8F60E66F 
X-CRM114-Status: GOOD (  24.63  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: steve.capper@arm.com, Phong Tran <tranmanphong@gmail.com>,
 catalin.marinas@arm.com, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, steven.price@arm.com, alexios.zavras@intel.com,
 broonie@kernel.org, tglx@linutronix.de, will@kernel.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 09:15:10AM -0700, Kees Cook wrote:
> On Mon, Mar 09, 2020 at 12:17:14PM +0000, Mark Rutland wrote:
> > On Sat, Mar 07, 2020 at 04:39:26PM +0700, Phong Tran wrote:
> > > follow the suggestion from
> > > https://github.com/KSPP/linux/issues/35
> > 
> > That says:
> > 
> > | This should be implemented for all architectures
> > 
> > ... so surely this should be in generic code, rahter than being
> > arm64-specific?
> 
> Not all architectures have implemented CONFIG_DEBUG_WX...

Sure; I assumed the generic code could be gated with:

#ifdef CONFIG_DEBUG_WX
	debug_checkwx()
#endif

... or something to that effect, so that the common code could handle
all the sysfs bits and ensure that part was consistent.

Thanksm
Mark.
> 
> -Kees
> 
> > 
> > Thanks,
> > Mark.
> > 
> > > 
> > > Signed-off-by: Phong Tran <tranmanphong@gmail.com>
> > > ---
> > >  arch/arm64/Kconfig.debug        |  3 ++-
> > >  arch/arm64/include/asm/ptdump.h |  2 ++
> > >  arch/arm64/mm/dump.c            |  1 +
> > >  arch/arm64/mm/ptdump_debugfs.c  | 18 ++++++++++++++++++
> > >  4 files changed, 23 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> > > index 1c906d932d6b..be552fa351e2 100644
> > > --- a/arch/arm64/Kconfig.debug
> > > +++ b/arch/arm64/Kconfig.debug
> > > @@ -48,7 +48,8 @@ config DEBUG_WX
> > >  	  of other unfixed kernel bugs easier.
> > >  
> > >  	  There is no runtime or memory usage effect of this option
> > > -	  once the kernel has booted up - it's a one time check.
> > > +	  once the kernel has booted up - it's a one time check and
> > > +	  can be checked by echo "1" to "check_wx_pages" debugfs in runtime.
> > >  
> > >  	  If in doubt, say "Y".
> > >  
> > > diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
> > > index 38187f74e089..b80d6b4fc508 100644
> > > --- a/arch/arm64/include/asm/ptdump.h
> > > +++ b/arch/arm64/include/asm/ptdump.h
> > > @@ -24,9 +24,11 @@ struct ptdump_info {
> > >  void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
> > >  #ifdef CONFIG_PTDUMP_DEBUGFS
> > >  void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
> > > +int ptdump_check_wx_init(void);
> > >  #else
> > >  static inline void ptdump_debugfs_register(struct ptdump_info *info,
> > >  					   const char *name) { }
> > > +static inline int ptdump_check_wx_init(void) { return 0; }
> > >  #endif
> > >  void ptdump_check_wx(void);
> > >  #endif /* CONFIG_PTDUMP_CORE */
> > > diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> > > index 860c00ec8bd3..60c99a047763 100644
> > > --- a/arch/arm64/mm/dump.c
> > > +++ b/arch/arm64/mm/dump.c
> > > @@ -378,6 +378,7 @@ static int ptdump_init(void)
> > >  #endif
> > >  	ptdump_initialize();
> > >  	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
> > > +	ptdump_check_wx_init();
> > >  	return 0;
> > >  }
> > >  device_initcall(ptdump_init);
> > > diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
> > > index 1f2eae3e988b..73cddc12c3c2 100644
> > > --- a/arch/arm64/mm/ptdump_debugfs.c
> > > +++ b/arch/arm64/mm/ptdump_debugfs.c
> > > @@ -16,3 +16,21 @@ void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
> > >  {
> > >  	debugfs_create_file(name, 0400, NULL, info, &ptdump_fops);
> > >  }
> > > +
> > > +static int check_wx_debugfs_set(void *data, u64 val)
> > > +{
> > > +	if (val != 1ULL)
> > > +		return -EINVAL;
> > > +
> > > +	ptdump_check_wx();
> > > +
> > > +	return 0;
> > > +}
> > > +
> > > +DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, "%llu\n");
> > > +
> > > +int ptdump_check_wx_init(void)
> > > +{
> > > +	return debugfs_create_file("check_wx_pages", 0200, NULL,
> > > +				   NULL, &check_wx_fops) ? 0 : -ENOMEM;
> > > +}
> > > -- 
> > > 2.20.1
> > > 
> 
> -- 
> Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
