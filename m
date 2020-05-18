Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9757F1D7A35
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:40:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vXKhkVtpZnqcksxVxrtVtP/rBbk+qS+FY6v+aMRaBw4=; b=g8zBNqpOGn0gK5
	X4R3cNSONN1CCZA3VhWPvqCeWrN6wcKVVabl7mMmK5qf1CsriHYTiuMDB9ktQUVydr2N1J/D/gKmL
	j0xTKcZqix9esMW93V6xRXIziBAGv8F+gi5g8BSANnCVa8eaXTf87hgKXW95eiN84dXAfhVZ01B5L
	41Md6gCHQUK44Y/i2Tlieg2Vo1BZruaz9PN33RiSbn+01VPOPOGsTtxlKAAGLNFNuqk24ijTZ41wG
	Kwx+SiYGsu9sXGyue9NhLc9QTsCQggfGHam+feXpUCSrTaZF4+VVtMaxusE4OfnkvNSGXHQTYRu7V
	Ac4NviLOgmCVmcTlYxrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jag0M-0003Jt-6B; Mon, 18 May 2020 13:40:30 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafzM-0002hs-Fh
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:39:29 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 18F98206D4;
 Mon, 18 May 2020 13:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589809167;
 bh=D1sgcR3s0/mmhpAOarOMiHpa1UutLMQ17UcgkBniPGg=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=AaWcYukF7z4VgGM1jdLOfON+zSJmb3CJvVMUi1xzQomqJ8I8az/Zwv94rOK/iKu2m
 dIz6hHWpuhxKlABDxtR3LYXoxU19qGZs79TP90mfHwNwlir9vLL5wqeE+XuKzL2ecH
 qweBr+RV3AEhvzAOCyMoKGFwrI/LVcpKM9YqgPLk=
Date: Mon, 18 May 2020 14:39:23 +0100
From: Will Deacon <will@kernel.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH 2/6] scs: Move accounting into alloc/free functions
Message-ID: <20200518133922.GG32394@willie-the-truck>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-3-will@kernel.org>
 <20200518113858.GB1957@C02TD0UTHF1T.local>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518113858.GB1957@C02TD0UTHF1T.local>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063928_585175_20008F69 
X-CRM114-Status: GOOD (  17.40  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Kees Cook <keescook@chromium.org>, Jann Horn <jannh@google.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Mark Rutland <mark.rutland@am.com>, Sami Tolvanen <samitolvanen@google.com>,
 kernel-team@android.com, Ard Biesheuvel <ardb@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:38:58PM +0100, Mark Rutland wrote:
> On Fri, May 15, 2020 at 06:27:52PM +0100, Will Deacon wrote:
> > There's no need to perform the shadow stack page accounting independently
> > of the lifetime of the underlying allocation, so call the accounting code
> > from the {alloc,free}() functions and simplify the code in the process.
> > 
> > Signed-off-by: Will Deacon <will@kernel.org>
> > ---
> >  kernel/scs.c | 45 +++++++++++++++++++++------------------------
> >  1 file changed, 21 insertions(+), 24 deletions(-)
> 
> One (super trivial) nit below, but regardless this looks like a sound
> and sensible cleanup, so:
> 
> Reviewed-by: Mark Rutland <mark.rutland@arm.com>
> 
> > diff --git a/kernel/scs.c b/kernel/scs.c
> > index 5ff8663e4a67..aea841cd7586 100644
> > --- a/kernel/scs.c
> > +++ b/kernel/scs.c
> > @@ -14,25 +14,35 @@
> 
> >  static void *scs_alloc(int node)
> >  {
> 
> > +	void *s = kmem_cache_alloc_node(scs_cache, GFP_SCS, node);
> > +
> > +	if (!s)
> > +		return NULL;
> 
> Super trivial nit, but could we omit the line space between these two,
> to fit with usual style?

I really like having the empty line after the last variable declaration.

Sorry,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
