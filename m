Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A522164F81
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Feb 2020 21:05:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GGd0HWXY2mUlLMIRfCFreyr/ZN9TZzqHhGzT6ega3UE=; b=OUSlx/ZcX3iQQq
	9/WBVSNYzPfhKM/c4YLF7s5plLevKqPeYDGdf7+y+rvlgCybECoamR5geFk/qHx8TqSij+X7fvc1w
	lyaN62pS7jowOaQ3lk22JaVvuZdwByPYUYBuspr5QOuZbcx4qLC68QjAm/jCYmCDNtfsTto6GoITx
	utzvjJV9jML2qqZmkLmPVnMMuCDY8icrO/J0mKJ5McV+MHsGYjAdeIjbO3H5wTIdWM7H1nHcJiXwR
	TSgGne8p9PEoIwOxH62kuFyyYNbjO3qa/CarmxEsTHTD16bhvHVhLzi3giwTjmtXxzAJVHYYNDFGY
	J7Hbj54qfbalRXBwCIag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4Vac-0003Uj-6n; Wed, 19 Feb 2020 20:04:58 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4VaS-0003Tg-Rm
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Feb 2020 20:04:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582142686;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=79VaVLaMvILH9sVhxkEy97vEIOv8ZIgozZ9v2HZt0g4=;
 b=WVjdxt75SBTuBXSqUrhgFXTGAyWl65+wGz3Q+85r1m/r5Ku1EG1M2J/GDStYn2PxONZE9Q
 ifhefQbYfWJ5DbZ20H6yf0OQ3Mwz7kfU54uD7Q7shnVeZ6iwUWGLF200eo88bleZeWqpqf
 IU7sW7R5jHNY9ggNkgqn1fyyo0zAIN4=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-74-E5XDV-lONAGSLR6zykbLtw-1; Wed, 19 Feb 2020 15:04:40 -0500
X-MC-Unique: E5XDV-lONAGSLR6zykbLtw-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 11A4E13EA;
 Wed, 19 Feb 2020 20:04:38 +0000 (UTC)
Received: from mail (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 0F49F5C557;
 Wed, 19 Feb 2020 20:04:34 +0000 (UTC)
Date: Wed, 19 Feb 2020 15:04:33 -0500
From: Andrea Arcangeli <aarcange@redhat.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH 1/2] mm: use_mm: fix for arches checking mm_users to
 optimize TLB flushes
Message-ID: <20200219200433.GB5402@redhat.com>
References: <20200203201745.29986-1-aarcange@redhat.com>
 <20200203201745.29986-2-aarcange@redhat.com>
 <20200218113103.GB4151@dhcp22.suse.cz>
 <20200218185618.GB14027@redhat.com>
 <20200219115855.GR4151@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219115855.GR4151@dhcp22.suse.cz>
User-Agent: Mutt/1.13.4 (2020-02-15)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200219_120448_975368_9A0E7DA4 
X-CRM114-Status: GOOD (  33.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rafael Aquini <aquini@redhat.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 linux-mm@kvack.org, Mark Salter <msalter@redhat.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 19, 2020 at 12:58:55PM +0100, Michal Hocko wrote:
> On Tue 18-02-20 13:56:18, Andrea Arcangeli wrote:
> > Hi Michal!
> > 
> > On Tue, Feb 18, 2020 at 12:31:03PM +0100, Michal Hocko wrote:
> > > On Mon 03-02-20 15:17:44, Andrea Arcangeli wrote:
> > > > alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
> > > > mm->mm_users to know if they can skip some remote TLB flushes for
> > > > single threaded processes.
> > > > 
> > > > Most callers of use_mm() tend to invoke mmget_not_zero() or
> > > > get_task_mm() before use_mm() to ensure the mm will remain alive in
> > > > between use_mm() and unuse_mm().
> > > > 
> > > > Some callers however don't increase mm_users and they instead rely on
> > > > serialization in __mmput() to ensure the mm will remain alive in
> > > > between use_mm() and unuse_mm(). Not increasing mm_users during
> > > > use_mm() is however unsafe for aforementioned arch TLB flushes
> > > > optimizations. So either mmget()/mmput() should be added to the
> > > > problematic callers of use_mm()/unuse_mm() or we can embed them in
> > > > use_mm()/unuse_mm() which is more robust.
> > > 
> > > I would prefer we do not do that because then the real owner of the mm
> > > cannot really tear down the address space and the life time of it is
> > > bound to a kernel thread doing the use_mm. This is undesirable I would
> > > really prefer if the existing few users would use mmget only when they
> > > really need to access mm.
> > 
> > If the existing few users that don't already do the explicit mmget
> > will have to start doing it too, the end result will be exactly the
> > same that you described in your "cons" (lieftime of the mm will still
> > be up to who did mmget;use_mm and didn't call unuse_mm;mmput yet).
> 
> Well, they should use mmget only for moments when they access the
> address space.

I don't think so because mmget is a pure atomic_inc. How can you serialize
that against a tlb flush that just does an atomic_read() on mm_users?

At the very least you will have to invent something new slower than
mmget that adds some serialization against the TLB flush code and the
common code would need to learn to use that. And the question is how
much faster that can be than switch_mm() that use_mm already invokes.

It doesn't need to block but it needs a smp_mb() on both sides.

i.e. after atomic_inc(&mm_users) you need a smp_mb() and a
test_and_clear_bit and conditional local tlb flush. In the TLB flush
code you need to set the bit, smp_mb() and then atomic_read(&mm_users).

As things are now (no new mmget_local_tlb_flush() call in common code)
the mmget has to happen regardless before use_mm() so there's a slight
chance to serialize it in switch_mm arch code. Note I did put a
smp_mb() myself in the switch_mm path to make it safe in 2/2.

With your solution it'd be already possible to call mmput at any time
after using the mm and before calling unuse_mm. But then you'd have to
still call unuse_mm; mmget;use_mm again before you can use the mm
again so why not to call unuse_mm immediately instead of only mmput?

> > One reason to prefer adding the mmget to the callers to forget it,
> > would be to avoid an atomic op in use_mm (for those callers that
> > didn't forget it), but if anybody is doing use_mm in a fast path that
> > won't be very fast anyway so I didn't think this was worth the
> > risk. If that microoptimization in a slow path is the reason we should
> > add mmget to the callers that forgot it that would be fine with me
> > although I think it's risky because if already happened once and it
> > could happen again (and when it happens it only bits a few arches if
> > used with a few drivers).
> 
> The primary concern really is that use_mm is usually not bound in time
> and we do not want to pin the address space for such a long time without
> any binding to a killable process.

Almost all use_mm already do mmget before use_mm and mmput after
unuse_mm, or perhaps I wouldn't have to find about this by source
review only. So the cons you describe already affects the vast
majority of use_mm cases (the non buggy ones).

I see you concern for adding a "cons" to the minority of remaining
cases, but it's still better to introduce that "cons" than corrupting
userland memory.

Thanks,
Andrea


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
