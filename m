Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 981F7162F28
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:56:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XZM+ZPjLPYMZqtUw4oFo4Jk8F5Nowm1RI0Gd0eajK/I=; b=hR09wVeaq1kNvI
	tKXXD1zCCEj1tSeMeezkK1psBgO6mSrsJ7EG1ATWJ1bZnY5fUJfxf1iI7iD4zBKcY7N4Eva5zvtzZ
	dIKoADPdrHntcWxgfyt26BJV+rb2dcXcZShXhatQmksUXUal+UTHysuA9fUcRl2DOd2t+g+MnlxlO
	USUXocseREn4vOKqzKLVpocHv4Y12eKMpcRUyIKg27I0mwTBmwgTpJWo/IsblrYD4WS16c//zZkmu
	mxTwBy68mum7qXuyCZMj3T7RWZvuLjqpVneIt790y8S/sMxxmzQJH0AUtWAV/r/nZeSReds773TjI
	XMaCNBV5iyIZo5o/a53Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4834-0000JF-0G; Tue, 18 Feb 2020 18:56:46 +0000
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j482u-0000IQ-PV
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:56:38 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582052194;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=UGqjQEwBIAGIH2rlvtx+n4+mjmKd16dlzwe9jbo2/EQ=;
 b=gIYljOJMI/CDbHuQo03coWWwQgD2jDlaOc0ER7xtvK/mngVjnjnn/1iiWslXrzfi17ilGJ
 WNafyQqiS0WGOhqQtkvvnsUFZkcIMsvERHqkXSuAu0CN/ewclf5V0JnkK30LHnfob0G1VI
 XROaABK6X4MKn8ibMguNs8Lzlidepr0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-20-WUsHyBmKMyO0YlUQF_9VXQ-1; Tue, 18 Feb 2020 13:56:24 -0500
X-MC-Unique: WUsHyBmKMyO0YlUQF_9VXQ-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 01E3BDBA3;
 Tue, 18 Feb 2020 18:56:23 +0000 (UTC)
Received: from mail (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id B10A560BE1;
 Tue, 18 Feb 2020 18:56:19 +0000 (UTC)
Date: Tue, 18 Feb 2020 13:56:18 -0500
From: Andrea Arcangeli <aarcange@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH 1/2] mm: use_mm: fix for arches checking mm_users to
 optimize TLB flushes
Message-ID: <20200218185618.GB14027@redhat.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-2-aarcange@redhat.com>
 <20200218113103.GB4151@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200218113103.GB4151@dhcp22.suse.cz>
User-Agent: Mutt/1.13.1 (2019-12-14)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_105636_906180_509421B1 
X-CRM114-Status: GOOD (  26.91  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Michal!

On Tue, Feb 18, 2020 at 12:31:03PM +0100, Michal Hocko wrote:
> On Mon 03-02-20 15:17:44, Andrea Arcangeli wrote:
> > alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
> > mm->mm_users to know if they can skip some remote TLB flushes for
> > single threaded processes.
> > 
> > Most callers of use_mm() tend to invoke mmget_not_zero() or
> > get_task_mm() before use_mm() to ensure the mm will remain alive in
> > between use_mm() and unuse_mm().
> > 
> > Some callers however don't increase mm_users and they instead rely on
> > serialization in __mmput() to ensure the mm will remain alive in
> > between use_mm() and unuse_mm(). Not increasing mm_users during
> > use_mm() is however unsafe for aforementioned arch TLB flushes
> > optimizations. So either mmget()/mmput() should be added to the
> > problematic callers of use_mm()/unuse_mm() or we can embed them in
> > use_mm()/unuse_mm() which is more robust.
> 
> I would prefer we do not do that because then the real owner of the mm
> cannot really tear down the address space and the life time of it is
> bound to a kernel thread doing the use_mm. This is undesirable I would
> really prefer if the existing few users would use mmget only when they
> really need to access mm.

If the existing few users that don't already do the explicit mmget
will have to start doing it too, the end result will be exactly the
same that you described in your "cons" (lieftime of the mm will still
be up to who did mmget;use_mm and didn't call unuse_mm;mmput yet).

One reason to prefer adding the mmget to the callers to forget it,
would be to avoid an atomic op in use_mm (for those callers that
didn't forget it), but if anybody is doing use_mm in a fast path that
won't be very fast anyway so I didn't think this was worth the
risk. If that microoptimization in a slow path is the reason we should
add mmget to the callers that forgot it that would be fine with me
although I think it's risky because if already happened once and it
could happen again (and when it happens it only bits a few arches if
used with a few drivers).

On a side note the patch 2/2 should be dropped for now, I'm looking if
we can optimize away TLB-i broadcasts from multithreaded apps too.

Thanks,
Andrea

> 
> > Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> > ---
> >  mm/mmu_context.c | 2 ++
> >  1 file changed, 2 insertions(+)
> > 
> > diff --git a/mm/mmu_context.c b/mm/mmu_context.c
> > index 3e612ae748e9..ced0e1218c0f 100644
> > --- a/mm/mmu_context.c
> > +++ b/mm/mmu_context.c
> > @@ -30,6 +30,7 @@ void use_mm(struct mm_struct *mm)
> >  		mmgrab(mm);
> >  		tsk->active_mm = mm;
> >  	}
> > +	mmget(mm);
> >  	tsk->mm = mm;
> >  	switch_mm(active_mm, mm, tsk);
> >  	task_unlock(tsk);
> > @@ -57,6 +58,7 @@ void unuse_mm(struct mm_struct *mm)
> >  	task_lock(tsk);
> >  	sync_mm_rss(mm);
> >  	tsk->mm = NULL;
> > +	mmput(mm);
> >  	/* active_mm is still 'mm' */
> >  	enter_lazy_tlb(mm, tsk);
> >  	task_unlock(tsk);
> > 
> > 
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 
> -- 
> Michal Hocko
> SUSE Labs
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
