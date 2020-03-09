Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B02817E46B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 17:15:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ufuspoSFG+uTNvahkTMdn1OwtYtTeLoN5VBrkUoe8V0=; b=AlfxtqVBDlfCy2
	pxs4RqMbl6A6SSuaPaaczU8ks5u4VaQivErXDfm/I8r6IUDBAWf+0ktp0rdGvr6C6jr1mQxIquEpV
	XRhScbsAPPDH92dkRoXNA6Be5dfBYvkuQ50QzMN5+GbHURqyyPUu1PclCl7zx5PQsRylQDDaDm48K
	4G+dEPUetkdYQSWEzkwXiPmi9ldozC1dWkVAoYjdcunUul/nGPOjU040boh3Efv2Xuc8sUprmiSKA
	F7sFhCApS6s/9M7Njdc61KMjknxGJle9KqR7ht75eg3N0yZrv3NYrwBiJWl5LVUwm5moc9sJvLAoc
	HPjsK6sJz1iLRkud4M4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBL3r-0007lh-V6; Mon, 09 Mar 2020 16:15:24 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBL3h-0007ku-3y
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 16:15:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id t14so4164123plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 09:15:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=YnKNr3hKRT5ikwt9roCSkDxlo76o8UWZ8pQ2c566Cf4=;
 b=bFsZ5+xSdTR8H8crWlM6K47GKUWc1rJ515OZGp73trVfjgiNteU9a+Cahp2oKyNWjY
 5fyUr2Je7MMc9pQbQScjAk+4L4d7mu0qzQ67QIx5ntGMze9FCj00EIuaXj45eRA9xwLC
 Q39gzs6fLraauHczp7CUQ/uvpSu/Pv3g1+zyM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=YnKNr3hKRT5ikwt9roCSkDxlo76o8UWZ8pQ2c566Cf4=;
 b=UpgG2JAtSc020MntkW2o3vpPTYHrucpHA+E9tLYvmJHyWdvzC5Gcp2q1x4X7B21W7x
 MH+7LZmYmU1GBWkIHoFbIGT4XG8JZYz+APYapTosJhtRWtDKrgt2N+2xMKtxz4VGlhRs
 OAJ3kX8fxJxV4LWxsTJBVH1l8GKETKvEDug/kC2UtvG3JiGEMxltv19Eer29RGhUlaQw
 dPJGwpqdZxfYApqeBZTMa4di4+l52V4oZ6XZwhF01aqVY/yJmJHtB+PkH1LbbBfbgkZU
 Juhvbls6p+W4Mh0vc7CT7vNxSyxrTZrxDiyVwaOTEu7YchVL44463eucmScmje3GdmTb
 g40g==
X-Gm-Message-State: ANhLgQ13fpr5SBwxqldY2NFebnqjAkZGnAvNHmvmq+G1liIpiQ8FFghG
 7xQIb9Ijg/0vErNQyCF3GSStag==
X-Google-Smtp-Source: ADFU+vvFjBxaKhEtFtDyy5FhCQR6zvOlDckAvu416t13ucxmTgfU3D8gVc8Q+eGzqzcwU5poa34MfQ==
X-Received: by 2002:a17:90a:a588:: with SMTP id b8mr71771pjq.182.1583770512109; 
 Mon, 09 Mar 2020 09:15:12 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id e9sm1299721pfl.179.2020.03.09.09.15.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Mar 2020 09:15:11 -0700 (PDT)
Date: Mon, 9 Mar 2020 09:15:10 -0700
From: Kees Cook <keescook@chromium.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH] arm64: add check_wx_pages debugfs for CHECK_WX
Message-ID: <202003090914.F6720CFF13@keescook>
References: <20200307093926.27145-1-tranmanphong@gmail.com>
 <20200309121713.GA26309@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200309121713.GA26309@lakrids.cambridge.arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_091513_193600_A240EF26 
X-CRM114-Status: GOOD (  22.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: steve.capper@arm.com, Phong Tran <tranmanphong@gmail.com>,
 catalin.marinas@arm.com, kernel-hardening@lists.openwall.com,
 linux-kernel@vger.kernel.org, steven.price@arm.com, alexios.zavras@intel.com,
 broonie@kernel.org, tglx@linutronix.de, will@kernel.org,
 akpm@linux-foundation.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 09, 2020 at 12:17:14PM +0000, Mark Rutland wrote:
> On Sat, Mar 07, 2020 at 04:39:26PM +0700, Phong Tran wrote:
> > follow the suggestion from
> > https://github.com/KSPP/linux/issues/35
> 
> That says:
> 
> | This should be implemented for all architectures
> 
> ... so surely this should be in generic code, rahter than being
> arm64-specific?

Not all architectures have implemented CONFIG_DEBUG_WX...

-Kees

> 
> Thanks,
> Mark.
> 
> > 
> > Signed-off-by: Phong Tran <tranmanphong@gmail.com>
> > ---
> >  arch/arm64/Kconfig.debug        |  3 ++-
> >  arch/arm64/include/asm/ptdump.h |  2 ++
> >  arch/arm64/mm/dump.c            |  1 +
> >  arch/arm64/mm/ptdump_debugfs.c  | 18 ++++++++++++++++++
> >  4 files changed, 23 insertions(+), 1 deletion(-)
> > 
> > diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
> > index 1c906d932d6b..be552fa351e2 100644
> > --- a/arch/arm64/Kconfig.debug
> > +++ b/arch/arm64/Kconfig.debug
> > @@ -48,7 +48,8 @@ config DEBUG_WX
> >  	  of other unfixed kernel bugs easier.
> >  
> >  	  There is no runtime or memory usage effect of this option
> > -	  once the kernel has booted up - it's a one time check.
> > +	  once the kernel has booted up - it's a one time check and
> > +	  can be checked by echo "1" to "check_wx_pages" debugfs in runtime.
> >  
> >  	  If in doubt, say "Y".
> >  
> > diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
> > index 38187f74e089..b80d6b4fc508 100644
> > --- a/arch/arm64/include/asm/ptdump.h
> > +++ b/arch/arm64/include/asm/ptdump.h
> > @@ -24,9 +24,11 @@ struct ptdump_info {
> >  void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
> >  #ifdef CONFIG_PTDUMP_DEBUGFS
> >  void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
> > +int ptdump_check_wx_init(void);
> >  #else
> >  static inline void ptdump_debugfs_register(struct ptdump_info *info,
> >  					   const char *name) { }
> > +static inline int ptdump_check_wx_init(void) { return 0; }
> >  #endif
> >  void ptdump_check_wx(void);
> >  #endif /* CONFIG_PTDUMP_CORE */
> > diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
> > index 860c00ec8bd3..60c99a047763 100644
> > --- a/arch/arm64/mm/dump.c
> > +++ b/arch/arm64/mm/dump.c
> > @@ -378,6 +378,7 @@ static int ptdump_init(void)
> >  #endif
> >  	ptdump_initialize();
> >  	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
> > +	ptdump_check_wx_init();
> >  	return 0;
> >  }
> >  device_initcall(ptdump_init);
> > diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
> > index 1f2eae3e988b..73cddc12c3c2 100644
> > --- a/arch/arm64/mm/ptdump_debugfs.c
> > +++ b/arch/arm64/mm/ptdump_debugfs.c
> > @@ -16,3 +16,21 @@ void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
> >  {
> >  	debugfs_create_file(name, 0400, NULL, info, &ptdump_fops);
> >  }
> > +
> > +static int check_wx_debugfs_set(void *data, u64 val)
> > +{
> > +	if (val != 1ULL)
> > +		return -EINVAL;
> > +
> > +	ptdump_check_wx();
> > +
> > +	return 0;
> > +}
> > +
> > +DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, "%llu\n");
> > +
> > +int ptdump_check_wx_init(void)
> > +{
> > +	return debugfs_create_file("check_wx_pages", 0200, NULL,
> > +				   NULL, &check_wx_fops) ? 0 : -ENOMEM;
> > +}
> > -- 
> > 2.20.1
> > 

-- 
Kees Cook

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
