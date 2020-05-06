Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6249D1C7393
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 17:06:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+nVlNlqVKBgrMSqxYJB95h6LGjc3STSNtus1HYfrax8=; b=HcAHx6PfznShpO
	/WlDMLlZb9FVtIKl8/XVuGwnUeZjtkORlK/ItJc4gm9x5dDvBrEt0uoi25Unh3pDVC0fB4YN8UPQf
	Q48XLf65eUKup0Xx1Q06TzZeSrYzh79N4H1tYu7pJPNCwKIsOJCTEBxk2VmbX89yZH7JKoIln1Kpc
	0wT6SgoYLVe/VF2eGYnssxn2xUdJz+Ikajx8hFPU0xprfGOZub6h6ts4hW+/QQWYc/kM/LnX0buu3
	rzopBU2Wj5021SlgwBUdL62ykMOtspmxECH2mnkLHyLJw4glX+nxXgTLeAmSmKNQTavRQ5PGwpJlz
	C+3onClKy1jHVjoj/Evw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWLct-0004lL-L9; Wed, 06 May 2020 15:06:23 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWLcl-0004jy-LO
 for linux-arm-kernel@lists.infradead.org; Wed, 06 May 2020 15:06:17 +0000
Received: by mail-wr1-x444.google.com with SMTP id w7so1777987wre.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 May 2020 08:06:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=XkU2IfxEMFIBK8H+k9ssjVS2oIzqzYZTgrhsr6AigAM=;
 b=npqa6IgLiZJF6NVdHMawWGS9zek/ZPPNICAvxHyZcerAg3LlKC3hp7NMVz4DdDPrmj
 TgU2PQvtrtLz6M4/UJ53N5ClhyptBhtKVUEbWQtugGXrz0N8ZXiDpQzCQlQPQpAMEZFa
 Po46nJE+RclPLc6A5M0b+q04reLnoXvFxZmJrfpGi+oSxBrSh1UrBza+ZB1MMWfGE45e
 1SizfD5twDyO6jVjIDEaXfPPArRul2pqGMmuZirCcO7Lzz6IdV13LCJOVPJJpCbdmS9T
 pS+4o90sWVv+3W+cn113tu1BAk+vlThVcB1XqCjY1ri89el1HO9etl6PYmzfWAg544Jd
 rfJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=XkU2IfxEMFIBK8H+k9ssjVS2oIzqzYZTgrhsr6AigAM=;
 b=VWrSXdqI/48AEQdfNuap21x6dV764DbY3PZh6t0eej47B0J0VB7fKo/JjqLVxNugfT
 v86Ubi0o96Hf/R9f1zCnVSWu9gBNmekPnBOx4bLR9F0kYhU9kwsf2bwbEv5ZZOjIQvmV
 FL+c6H/g6fHFQxsKrV1f7tzCDFW/kGnBMt88KGOrinnA+EcU+DM8ynaU3YKWZNwUUS2F
 uyKQydG1vfRtlxye7CMxNBkGLxuvieWTXjaMkiaXyoRNcZnOx0IeMJiBzV6Op05ceGf5
 Bj/NEKYdf1zVahyrKYfU1Prvq1243ndxeqjjJdsYv4eM0dMa5ChvcHLvIC7frKhWtFQc
 5ftQ==
X-Gm-Message-State: AGi0PuaxvZRmQK5rcHpA3qJWWUp9sKWvj1cJrYdF9v3VABmngu5tMKaW
 xPiPt22ZiWfq8qTvj/0nUSfb5HEed+M5Ew==
X-Google-Smtp-Source: APiQypJsiRqkKLp7nVfuEm6QRdUvRTQVYCCMh+alAFwNSHkEzDiZiewVAFCAZezDpAesFLQQwnHImQ==
X-Received: by 2002:adf:f4d1:: with SMTP id h17mr9632031wrp.69.1588777572367; 
 Wed, 06 May 2020 08:06:12 -0700 (PDT)
Received: from holly.lan (cpc141214-aztw34-2-0-cust773.18-1.cable.virginm.net.
 [86.9.19.6])
 by smtp.gmail.com with ESMTPSA id c190sm3591094wme.10.2020.05.06.08.06.11
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 06 May 2020 08:06:11 -0700 (PDT)
Date: Wed, 6 May 2020 16:06:09 +0100
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Message-ID: <20200506150609.kya3nygfvdwvimad@holly.lan>
References: <20200504170518.2959478-1-daniel.thompson@linaro.org>
 <20200504204803.GA5657@willie-the-truck>
 <20200505141529.2qb35fbqudtac3ys@holly.lan>
 <20200505150916.GC24239@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505150916.GC24239@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_080615_710273_636DFC9D 
X-CRM114-Status: GOOD (  18.49  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: patches@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 04:09:16PM +0100, Will Deacon wrote:
> On Tue, May 05, 2020 at 03:15:29PM +0100, Daniel Thompson wrote:
> > On Mon, May 04, 2020 at 09:48:04PM +0100, Will Deacon wrote:
> > > On Mon, May 04, 2020 at 06:05:18PM +0100, Daniel Thompson wrote:
> > > > diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> > > > index e6cca3d4acf7..ce50c1f1f1ea 100644
> > > > --- a/arch/arm64/include/asm/cacheflush.h
> > > > +++ b/arch/arm64/include/asm/cacheflush.h
> > > > @@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> > > >  	 * IPI all online CPUs so that they undergo a context synchronization
> > > >  	 * event and are forced to refetch the new instructions.
> > > >  	 */
> > > > -#ifdef CONFIG_KGDB
> > > > +
> > > >  	/*
> > > >  	 * KGDB performs cache maintenance with interrupts disabled, so we
> > > >  	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
> > > > @@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> > > >  	 * the patching operation, so we don't need extra IPIs here anyway.
> > > >  	 * In which case, add a KGDB-specific bodge and return early.
> > > >  	 */
> > > > -	if (kgdb_connected && irqs_disabled())
> > > > +	if (in_dbg_master())
> > > 
> > > Does this imply that irqs are disabled?
> > 
> > Yes.

Except for bugs...


> > 
> > Assuming CONFIG_KGDB is enabled then in_dbg_master() expands to:
> > 
> >     (raw_smp_processor_id() == atomic_read(&kgdb_active))
> 
> Aha, so this can drop the raw_ prefix and call smp_processor_id() instead?

We need to allow in_dbg_master() to be called from preemptible contexts
(because its job it to disclose information about our executions
context) but given irqs are always disabled when we in_dbg_master()
then I think we can make this and rely on short-circuit eval to
avoid PREEMPT_DEBUG errors:

    (irqs_disabled() && (smp_processor_id() == atomic_read(&kgdb_active)))


> I can queue the arm64 patch regardless.

I don't want to hide anything... when I looked closer I realized
that the above change also eliminates a small window where the original
macro can spuriously evaluate to true.

Specifically if we migrate to a new core after reading the processor
id and the previous core takes a breakpoint then we would evaluate
true if we read kgdb_active before we get the IPI to bring us to halt.

Sorry for overlooking this in my reply yesterday! I'll have a patch out
for this shortly.


Daniel.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
