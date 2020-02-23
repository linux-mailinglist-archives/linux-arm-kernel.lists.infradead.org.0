Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A71001699A1
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 23 Feb 2020 20:26:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yXepzAvvp5dzbB2CemfO/IEWNYjjt5y4G0AiGRO8l6c=; b=g6lSvm5vlrEH+R
	Jkze18nV+/YRoV8nv3TuVmNTmm/FG5OEY0WOVV0XHoTvIYSS1/8Pl8DGWIQw62dJLKDEMZihcqn6L
	42ywmhM5mOnNWjNz2gpsQLcQFk3KbKWbAO63LS4DJa2JvCxT7kU2CgTyknoqKR3mXrDG5z+l9ai0E
	ChMrj/i1IawSLeB0OwbNZBK7x02XyuBlKYLCIZCf8TiWmsYYIL0ESeCG+IZSBgTZgLbZitwlJmU1H
	9c7FDFHwT7WlPZyGSF4ovLtd4/lQCdfCDnt3vWs42W+2pIVZHDGyzfjBqwl23HA40ANfeFWHNJ7dv
	86H7h4ZNKm3O5c1v5ONA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j5wtA-0000I7-U6; Sun, 23 Feb 2020 19:26:04 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j5wsh-000060-7X
 for linux-arm-kernel@lists.infradead.org; Sun, 23 Feb 2020 19:25:36 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1582485932;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=WdAkDw0jQFrUByye8xgaI8zjWL8waIYULZhRupYTANc=;
 b=KWIm41Dr4PCgJ8lKtHQdx2eGcYTMTuK5CBWtUya2fOCR42OTJVGpDnELB6YqjxS+kIjf6l
 dHQWxDQWQe/bwnCu26HRTaGGcvB+50zbbB1FgNT/aF/0cp+VoYfU7Gbx+o9tPJaSdK4DU4
 Is45a8tXCbrgR03caurIFcznAhZXWA0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-383-2r8xQ-VeOtOrXPcYfZce8A-1; Sun, 23 Feb 2020 14:25:26 -0500
X-MC-Unique: 2r8xQ-VeOtOrXPcYfZce8A-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3F1BF107ACC5;
 Sun, 23 Feb 2020 19:25:24 +0000 (UTC)
Received: from mail (ovpn-120-118.rdu2.redhat.com [10.10.120.118])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 3C33A5C1B2;
 Sun, 23 Feb 2020 19:25:21 +0000 (UTC)
From: Andrea Arcangeli <aarcange@redhat.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Rafael Aquini <aquini@redhat.com>, Mark Salter <msalter@redhat.com>
Subject: [PATCH 1/3] mm: use_mm: fix for arches checking mm_users to optimize
 TLB flushes
Date: Sun, 23 Feb 2020 14:25:18 -0500
Message-Id: <20200223192520.20808-2-aarcange@redhat.com>
In-Reply-To: <20200223192520.20808-1-aarcange@redhat.com>
References: <20200223192520.20808-1-aarcange@redhat.com>
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_112535_345549_18DD51D0 
X-CRM114-Status: UNSURE (   9.87  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-kernel@vger.kernel.org, Michal Hocko <mhocko@kernel.org>,
 linux-mm@kvack.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

alpha, ia64, mips, powerpc, sh, sparc are relying on a check on
mm->mm_users to know if they can skip some remote TLB flushes for
single threaded processes.

Most callers of use_mm() tend to invoke mmget_not_zero() or
get_task_mm() before use_mm() to ensure the mm will remain alive in
between use_mm() and unuse_mm().

Some callers however don't increase mm_users and they instead rely on
serialization in __mmput() to ensure the mm will remain alive in
between use_mm() and unuse_mm(). Not increasing mm_users during
use_mm() is however unsafe for aforementioned arch TLB flushes
optimizations. So either mmget()/mmput() should be added to the
problematic callers of use_mm()/unuse_mm() or we can embed them in
use_mm()/unuse_mm() which is more robust.

Signed-off-by: Andrea Arcangeli <aarcange@redhat.com>
---
 mm/mmu_context.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/mmu_context.c b/mm/mmu_context.c
index 3e612ae748e9..ced0e1218c0f 100644
--- a/mm/mmu_context.c
+++ b/mm/mmu_context.c
@@ -30,6 +30,7 @@ void use_mm(struct mm_struct *mm)
 		mmgrab(mm);
 		tsk->active_mm = mm;
 	}
+	mmget(mm);
 	tsk->mm = mm;
 	switch_mm(active_mm, mm, tsk);
 	task_unlock(tsk);
@@ -57,6 +58,7 @@ void unuse_mm(struct mm_struct *mm)
 	task_lock(tsk);
 	sync_mm_rss(mm);
 	tsk->mm = NULL;
+	mmput(mm);
 	/* active_mm is still 'mm' */
 	enter_lazy_tlb(mm, tsk);
 	task_unlock(tsk);


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
