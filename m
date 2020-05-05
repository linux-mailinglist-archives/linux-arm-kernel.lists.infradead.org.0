Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F581C5AB7
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 17:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YR6UzxRD6DbeBkAfYHtZRAc3NdYTC23fCN+sgNhqxAg=; b=OoMOTqJWwF+CkH
	c/vKfhbqi1fZy8l21JcsFpvKSnhCJhtUiVWyZ9zc/fSE1aQVzd0BQnUIhS9vskGwn1JrqbQRCR82A
	Vfo7WjGhoJLNC9+vtOb4xvrQx44SYleOKwxw9LMSKJYbtDMmePEPloDOQWpLb1k+kzNx1e67TjYK+
	sIVKUstHprLaFLx4q4S5Q6riWpuWhmbQtrRX6SgUOa//WfU8dRUY9TS1SdNnEHL1bSk6T76cuMleH
	TeRSB4+VHBPUv5H7O/AUP9+KGi/m1dUEIxF2ldk6qZWkZFeQ0fAIMsT6iwDCg1gndSbkEW27b7ZEE
	w1M9QhiC2PYn2dJ4QJdw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVzEg-0004ZH-9s; Tue, 05 May 2020 15:11:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVzCD-0000BR-Vl
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 15:09:24 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3E4DF2078D;
 Tue,  5 May 2020 15:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588691361;
 bh=wehOs7TzzSRDwsIiBrb11QEbyguhnDAUrPFjehEcsWw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=EyaqCaFCUiFGU75ZiQ7lP/igTsu2wIlIHWUSD6+l2UJXUc/h+OJW+8gTjIs0ZICMo
 Py1MVzr2BsXo41HNEwcnLiGZG8HI3+eUekL+yTwId7gnF4Oz26D6m9Q74+aSJFNItE
 BmSem2l5jrxSksyLXkKfBJgNDYKiYzBrc4IxcT7Q=
Date: Tue, 5 May 2020 16:09:16 +0100
From: Will Deacon <will@kernel.org>
To: Daniel Thompson <daniel.thompson@linaro.org>
Subject: Re: [PATCH v2] arm64: cacheflush: Fix KGDB trap detection
Message-ID: <20200505150916.GC24239@willie-the-truck>
References: <20200504170518.2959478-1-daniel.thompson@linaro.org>
 <20200504204803.GA5657@willie-the-truck>
 <20200505141529.2qb35fbqudtac3ys@holly.lan>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200505141529.2qb35fbqudtac3ys@holly.lan>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_080922_187217_608CD9CB 
X-CRM114-Status: GOOD (  15.30  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: patches@linaro.org, Catalin Marinas <catalin.marinas@arm.com>,
 linux-kernel@vger.kernel.org, Douglas Anderson <dianders@chromium.org>,
 Jason Wessel <jason.wessel@windriver.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, May 05, 2020 at 03:15:29PM +0100, Daniel Thompson wrote:
> On Mon, May 04, 2020 at 09:48:04PM +0100, Will Deacon wrote:
> > On Mon, May 04, 2020 at 06:05:18PM +0100, Daniel Thompson wrote:
> > > diff --git a/arch/arm64/include/asm/cacheflush.h b/arch/arm64/include/asm/cacheflush.h
> > > index e6cca3d4acf7..ce50c1f1f1ea 100644
> > > --- a/arch/arm64/include/asm/cacheflush.h
> > > +++ b/arch/arm64/include/asm/cacheflush.h
> > > @@ -79,7 +79,7 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> > >  	 * IPI all online CPUs so that they undergo a context synchronization
> > >  	 * event and are forced to refetch the new instructions.
> > >  	 */
> > > -#ifdef CONFIG_KGDB
> > > +
> > >  	/*
> > >  	 * KGDB performs cache maintenance with interrupts disabled, so we
> > >  	 * will deadlock trying to IPI the secondary CPUs. In theory, we can
> > > @@ -89,9 +89,9 @@ static inline void flush_icache_range(unsigned long start, unsigned long end)
> > >  	 * the patching operation, so we don't need extra IPIs here anyway.
> > >  	 * In which case, add a KGDB-specific bodge and return early.
> > >  	 */
> > > -	if (kgdb_connected && irqs_disabled())
> > > +	if (in_dbg_master())
> > 
> > Does this imply that irqs are disabled?
> 
> Yes.
> 
> Assuming CONFIG_KGDB is enabled then in_dbg_master() expands to:
> 
>     (raw_smp_processor_id() == atomic_read(&kgdb_active))

Aha, so this can drop the raw_ prefix and call smp_processor_id() instead?
I can queue the arm64 patch regardless.

Cheers,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
