Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43AF0176DFE
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 05:28:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fr8wc+DDsO21YFlChVzIgrqAQNklmBF5BQ+xWzL+OQk=; b=ZJjW70ANqVAsCE
	yrsThJXlP04HJJRPK4p/p2ejZmF77C53fansvt4nROzB1xOLOksh1IgRYCoCmBxxp/Ll1k5AA18hM
	0ziltEyydy6lNsuN6kltKBny06XUSqi7W3TrxClTa3AByatODNRtHgilphSQ7gzXZMSNycVY+hLp1
	7KjnhBQ5CFWUldCuhnDvcbNPhvA2bAuTzEuIKO6GOdCPAGFapTxwKTwZekz1ZQ41GrQzgEkO+5t5B
	1yhmJc0JjqPpUiIPs5eKBxe53jOkmvfg2mGO5TAzhu7l8e9PPOVtLZEPfwWGqBOjxZnnJDn79rRYH
	2ONyvmF0RkXPhNsubI0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8zAN-0001vs-NR; Tue, 03 Mar 2020 04:28:23 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8zAG-0001uh-8Y
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 04:28:18 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1583209693;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=GDMIPd7v29HF3qLCK2yjuGYjUXKITzcTwLkju8pHxl0=;
 b=WsZixNvWQsrgG7G/9vOGXdWXeIqXuasGYdIJCu/S9qeaueLi22yfHCiBNGawRQCCp52aSt
 KOp4L6ytwhg/Pazi/Duh8hgTW5KunfMrknfsFvW81Yvl58kyQasTxPic91u0tSnCoAjowu
 l/I8LXNbwOiqepjt8v1L55P3suWg3wM=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-185-BfzygFwcMtmV8FItHabr5g-1; Mon, 02 Mar 2020 23:28:09 -0500
X-MC-Unique: BfzygFwcMtmV8FItHabr5g-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 317098017CC;
 Tue,  3 Mar 2020 04:28:08 +0000 (UTC)
Received: from t490s (ovpn-116-88.phx2.redhat.com [10.3.116.88])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id A9CB68D568;
 Tue,  3 Mar 2020 04:28:06 +0000 (UTC)
Date: Mon, 2 Mar 2020 23:28:04 -0500
From: Rafael Aquini <aquini@redhat.com>
To: Andrea Arcangeli <aarcange@redhat.com>
Subject: Re: [PATCH 1/3] mm: use_mm: fix for arches checking mm_users to
 optimize TLB flushes
Message-ID: <20200303042804.GA94763@t490s>
References: <20200223192520.20808-1-aarcange@redhat.com>
 <20200223192520.20808-2-aarcange@redhat.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200223192520.20808-2-aarcange@redhat.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_202816_381759_C9E9284A 
X-CRM114-Status: GOOD (  16.58  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: QI Fuli <qi.fuli@fujitsu.com>, Jon Masters <jcm@jonmasters.org>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Michal Hocko <mhocko@kernel.org>, linux-mm@kvack.org,
 Mark Salter <msalter@redhat.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Feb 23, 2020 at 02:25:18PM -0500, Andrea Arcangeli wrote:
> alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
> mm->mm_users to know if they can skip some remote TLB flushes for
> single threaded processes.
> 
> Most callers of use_mm() tend to invoke mmget_not_zero() or
> get_task_mm() before use_mm() to ensure the mm will remain alive in
> between use_mm() and unuse_mm().
> 
> Some callers however don't increase mm_users and they instead rely on
> serialization in __mmput() to ensure the mm will remain alive in
> between use_mm() and unuse_mm(). Not increasing mm_users during
> use_mm() is however unsafe for aforementioned arch TLB flushes
> optimizations. So either mmget()/mmput() should be added to the
> problematic callers of use_mm()/unuse_mm() or we can embed them in
> use_mm()/unuse_mm() which is more robust.
> 
> Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
> ---
>  mm/mmu_context.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/mm/mmu_context.c b/mm/mmu_context.c
> index 3e612ae748e9..ced0e1218c0f 100644
> --- a/mm/mmu_context.c
> +++ b/mm/mmu_context.c
> @@ -30,6 +30,7 @@ void use_mm(struct mm_struct *mm)
>  		mmgrab(mm);
>  		tsk->active_mm = mm;
>  	}
> +	mmget(mm);
>  	tsk->mm = mm;
>  	switch_mm(active_mm, mm, tsk);
>  	task_unlock(tsk);
> @@ -57,6 +58,7 @@ void unuse_mm(struct mm_struct *mm)
>  	task_lock(tsk);
>  	sync_mm_rss(mm);
>  	tsk->mm = NULL;
> +	mmput(mm);
>  	/* active_mm is still 'mm' */
>  	enter_lazy_tlb(mm, tsk);
>  	task_unlock(tsk);

Acked-by: Rafael Aquini <aquini@redhat.com>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
