Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AAE3DA268
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 01:46:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dfZukkCAbReJPivVigWAVTtDbG95BSkPSm6GoJxK7nk=; b=ZcrpdThYiJUGfU
	CzD06PLkiMZDN1M85EN+HTI18oUoa+bzNTKw2387XPijtir6u/D6Gu+SLc80bmrNBA8GeDvYqKRV4
	wpb0jy0+Yo4HKRbOblLmf65exRuLihfKk5HibWF3oPfMsh5GMcx3GBwakWyfe5Pxscfj6n03D0/bx
	N0pZlwby+Xg64ithsK1YQ/EJGSTsy2eBR19IR/EU8INK86iGzQQRznzABWnZnPI6EFElbZvZG5i3A
	AMAk1Q+RI8vqtc3mmvIvmfq7l47M0PCPuJ1GBlfk+Kg+NGzRUUzIXvshw2yyVQPI3UDwhoOAcjax9
	Ycq2njDVYG2wKBPKYMYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKszq-0006Yt-GU; Wed, 16 Oct 2019 23:46:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKsze-0006YJ-UE
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 23:46:17 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 971AB20659;
 Wed, 16 Oct 2019 23:46:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571269574;
 bh=1d+anmR89+BsXGTeKAeDSQMGxC4eYRI2kxsjcdlZMTE=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z6Qx+YjtJmpoUVU8R7/jtOToPUmweQ91tIuV2pHkqKBannSmtgnxpD10pvX/mMjBb
 aThIrnvXcv4Y9U1Lf5Ly6vCeEKvNk3pFBM/Q3I9LjbuPY0fNPzxbINylySRKYve0BK
 mkq4d9FNRSMXljwo1DSsWbBB9x0S6XLS2cSludn0=
Date: Thu, 17 Oct 2019 00:46:08 +0100
From: Will Deacon <will@kernel.org>
To: Palmer Dabbelt <palmer@sifive.com>
Subject: Re: [PATCH v10 3/3] mm: fix double page fault on arm64 if PTE_AF is
 cleared
Message-ID: <20191016234607.626nzv5kf5fgz25x@willie-the-truck>
References: <20191008123943.j7q6dlu2qb2az6xa@willie-the-truck>
 <mhng-dd251518-8ac0-40fa-9f62-20715d9ba906@palmer-si-x1e>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <mhng-dd251518-8ac0-40fa-9f62-20715d9ba906@palmer-si-x1e>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_164615_018977_143C464B 
X-CRM114-Status: GOOD (  23.58  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark.Rutland@arm.com, Justin.He@arm.com, Kaly.Xin@arm.com,
 Catalin.Marinas@arm.com, linux-kernel@vger.kernel.org, willy@infradead.org,
 linux-mm@kvack.org, James.Morse@arm.com, linux-arm-kernel@lists.infradead.org,
 punitagrawal@gmail.com, maz@kernel.org, hejianet@gmail.com, tglx@linutronix.de,
 nd@arm.com, akpm@linux-foundation.org, kirill.shutemov@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hey Palmer,

On Wed, Oct 16, 2019 at 04:21:59PM -0700, Palmer Dabbelt wrote:
> On Tue, 08 Oct 2019 05:39:44 PDT (-0700), will@kernel.org wrote:
> > On Tue, Oct 08, 2019 at 02:19:05AM +0000, Justin He (Arm Technology China) wrote:
> > > > On Mon, Sep 30, 2019 at 09:57:40AM +0800, Jia He wrote:
> > > > > diff --git a/mm/memory.c b/mm/memory.c
> > > > > index b1ca51a079f2..1f56b0118ef5 100644
> > > > > --- a/mm/memory.c
> > > > > +++ b/mm/memory.c
> > > > > @@ -118,6 +118,13 @@ int randomize_va_space __read_mostly =
> > > > >  					2;
> > > > >  #endif
> > > > >
> > > > > +#ifndef arch_faults_on_old_pte
> > > > > +static inline bool arch_faults_on_old_pte(void)
> > > > > +{
> > > > > +	return false;
> > > > > +}
> > > > > +#endif
> > > >
> > > > Kirill has acked this, so I'm happy to take the patch as-is, however isn't
> > > > it the case that /most/ architectures will want to return true for
> > > > arch_faults_on_old_pte()? In which case, wouldn't it make more sense for
> > > > that to be the default, and have x86 and arm64 provide an override? For
> > > > example, aren't most architectures still going to hit the double fault
> > > > scenario even with your patch applied?
> > > 
> > > No, after applying my patch series, only those architectures which don't provide
> > > setting access flag by hardware AND don't implement their arch_faults_on_old_pte
> > > will hit the double page fault.
> > > 
> > > The meaning of true for arch_faults_on_old_pte() is "this arch doesn't have the hardware
> > > setting access flag way, it might cause page fault on an old pte"
> > > I don't want to change other architectures' default behavior here. So by default,
> > > arch_faults_on_old_pte() is false.
> > 
> > ...and my complaint is that this is the majority of supported architectures,
> > so you're fixing something for arm64 which also affects arm, powerpc,
> > alpha, mips, riscv, ...
> > 
> > Chances are, they won't even realise they need to implement
> > arch_faults_on_old_pte() until somebody runs into the double fault and
> > wastes lots of time debugging it before they spot your patch.
> 
> If I understand the semantics correctly, we should have this set to true.  I
> don't have any context here, but we've got
> 
>                /*
>                 * The kernel assumes that TLBs don't cache invalid
>                 * entries, but in RISC-V, SFENCE.VMA specifies an
>                 * ordering constraint, not a cache flush; it is
>                 * necessary even after writing invalid entries.
>                 */
>                local_flush_tlb_page(addr);
> 
> in do_page_fault().

Ok, although I think this is really about whether or not your hardware can
make a pte young when accessed, or whether you take a fault and do it
by updating the pte explicitly.

v12 of the patches did change the default, so you should be "safe" with
those either way:

http://lists.infradead.org/pipermail/linux-arm-kernel/2019-October/686030.html

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
