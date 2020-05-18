Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAECE1D7A13
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 15:37:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AY69iPSeVEX3XYnF6qP9MLJdv1bMIVjeA0bSlafVPKk=; b=C33v1H26wuM9V5
	4ZYEUxhF8jP4F2g0+E/N1soE19v+OgoGDEZIiIHeT9G4jRYNkjnBWX0BTf1xnfSRgYRL9YNYYvgmI
	JcFGTSZyzc5UauVYkbnLISEzSquALh0914ZLBwKlzYoyYi1YsBKLWIwIhzJO6zUR245lsT7lhgQ1Q
	NZLDQjtC9k/JCeNBRsojFIUl2HVocpT7ntrfNELfjyIBA5chrhQOzNcBei2SrmDhlTszahCOqU3sc
	CX4gpjtxnzxLe47i/XRsj3OHxSikNclaN0VJOFSvlTaZy8IFzNZ6zM+xQDhaTydFnVyjL0vI5vo/V
	QYjbsrzHAekFB1AttZdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jafxV-0001fj-KY; Mon, 18 May 2020 13:37:33 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jafxM-0001ex-Dm
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 13:37:25 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9C84A101E;
 Mon, 18 May 2020 06:37:21 -0700 (PDT)
Received: from C02TD0UTHF1T.local (unknown [10.57.29.34])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 28C743F305;
 Mon, 18 May 2020 06:37:18 -0700 (PDT)
Date: Mon, 18 May 2020 14:37:16 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 6/6] scs: Move DEFINE_SCS macro into core code
Message-ID: <20200518133716.GD2787@C02TD0UTHF1T.local>
References: <20200515172756.27185-1-will@kernel.org>
 <20200515172756.27185-7-will@kernel.org>
 <20200518121441.GE1957@C02TD0UTHF1T.local>
 <20200518132612.GE32394@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200518132612.GE32394@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_063724_505925_2858C050 
X-CRM114-Status: GOOD (  14.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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

On Mon, May 18, 2020 at 02:26:12PM +0100, Will Deacon wrote:
> On Mon, May 18, 2020 at 01:14:41PM +0100, Mark Rutland wrote:
> > On Fri, May 15, 2020 at 06:27:56PM +0100, Will Deacon wrote:
> > > Defining static shadow call stacks is not architecture-specific, so move
> > > the DEFINE_SCS() macro into the core header file.
> > > 
> > > Signed-off-by: Will Deacon <will@kernel.org>
> > 
> > I think that we'll have to pull this back into arch code if/when we deal
> > with VMAP'd stacks, so I'm not sure this is worthwhile given the
> > diffstat is balanced.
> 
> I dunno, if another architecture wants to use this then having the stuff
> in the core code makes sense to me. I also want to kill asm/scs.h entirely
> and move our asm macros somewhere else where they're not mixed up with the
> C headers.

Thinking about it a bit further, we'd have to make bigger changes anyhow
(to dynamically allocate), but given we can do that for regular stacks
we can probably do something similar here.

So no strong feelings either way on this patch.

Reviewed-by: Mark Rutland <mark.rutland@arm.com>

Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
