Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 354E013D333
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Jan 2020 05:36:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=/CoFn/Bl0MSBCdkru2kKZwjOHSSCZO1O/j3V7elQ04Y=; b=Zr9qelfrBVNkRo
	10hkenTjgP83Odng90JR24jBL65y0tf7sx8LZC9adQtM4HEBQne5NrK8izvX7i9JZZXOxuJ4QGItz
	3s80hNcKJwAYXfi6B6l1cPbdsuvmmGugbKcuQmWAFp37YYzrfg46iP0631HM+V2XB3owZuvjc5Qi2
	hmSGLUyjCKtetBIlAwq0SqNZhzaiSq1zrGJSbQ/jK77A8XHep/wah1R15ewe9AI9KygZDXDixZk6s
	kpcX+t7fZNKzZAaEycP9d5IZYyDLwyg38ja9F7mgxJm3xo5sx+nwJQPCX2lfMf6eINLw52YvNcie8
	mMX4kQVpOaivdQYpmHGw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irwtS-0000I7-MY; Thu, 16 Jan 2020 04:36:30 +0000
Received: from mail-pl1-x64a.google.com ([2607:f8b0:4864:20::64a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irwtG-0000G9-Hu
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Jan 2020 04:36:20 +0000
Received: by mail-pl1-x64a.google.com with SMTP id g16so8103098plo.14
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 20:36:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=iNg4g6cNRZYUNuBsTO74IwcH6tuAcaZ/nzmuUCgI7YQ=;
 b=fN56Jr4nvW06HTQ13RJneqj6X8lflgmq6jlCoKsIPmknMl26RPKWCz8YEw1tHa1jYz
 2FHoKNebeuIlL6IVX9VRKW/oUm9eaZqm+8btqLQ+Nlcd1VZiHbmg/BoKSpmF3FoJIoqo
 6288KMRzjyYttljMBr1z60uAlr8s/UoWzpL6nPgZWUat7AqhnKexYi5cfsk+npyXYqtZ
 3A+h/dAOOUB0LJrFQh2qEQP/OiXhnOm9Q9/zvYNeu8l66371mJxlH2QimcYGjNM3gCyf
 QWaNg/ehOECHaLWi6uhhJ/vhW8Z0wBC8Td+0KrpsYSt+KrXhE1CCQbHvIvlrocKve+JL
 vPIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=iNg4g6cNRZYUNuBsTO74IwcH6tuAcaZ/nzmuUCgI7YQ=;
 b=fPzURsugnhI67vEYXnPnJckAWvOgdY+BNhrqNOK/I5stOZ5iBggMYBfam45Eibirl7
 Q2TqpMdYMA3TXgLclOAYCzEA/UPl00T/99GlyT2Ic/GeiwZZVrDCGzgLkVnFOmoM4pjP
 s+t6P92TZXr6u0BSzAu4nAMjdP2jOpLe2X7bYFZC8jcYVS3RZa00x+ttz4VJegcNhQ3y
 fW7pSW1jJB1X0OyIlzoCN2rRlwTQ3+Wz+1InDRf+8Z9WJ4vhGwW0OHvc8Cnu26IOiyNC
 xWUPRuN9JxSTYYnydpbVYv8a1JnQ4WUmHZaUMn25k4aGQx5YNfq9fHmyP6ZzYhIqM8em
 T+jQ==
X-Gm-Message-State: APjAAAU+i3g60th87sDRNttn4LRw6SLhacc6c/7Ko5lUnGvouHtVz/ke
 gnPMBb/LOFRh7uEHypHvifUraJXfkAs=
X-Google-Smtp-Source: APXvYqzkI7+HJc2DBEcUiBL1OG8evclCeD08SK626xi0qNNGMKZfjols95ySgh76BxNKtrvJ3r6rUEDzoXM=
X-Received: by 2002:a63:f202:: with SMTP id v2mr36549471pgh.420.1579149376256; 
 Wed, 15 Jan 2020 20:36:16 -0800 (PST)
Date: Wed, 15 Jan 2020 20:36:11 -0800
Message-Id: <20200116043612.52782-1-surenb@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.0.rc1.283.g88dfdc4193-goog
Subject: [PATCH 1/2] cgroup: allow deletion of cgroups containing only dying
 processes
From: Suren Baghdasaryan <surenb@google.com>
To: surenb@google.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_203618_589988_5E6F8D92 
X-CRM114-Status: GOOD (  18.21  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:64a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: mkoutny@suse.com, linger.lee@mediatek.com, kernel-team@android.com,
 linux-kernel@vger.kernel.org, tomcherry@google.com, matthias.bgg@gmail.com,
 lizefan@huawei.com, linux-mediatek@lists.infradead.org,
 linux-kselftest@vger.kernel.org, hannes@cmpxchg.org, tj@kernel.org,
 cgroups@vger.kernel.org, alex.shi@linux.alibaba.com, shuah@kernel.org,
 guro@fb.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A cgroup containing only dying tasks will be seen as empty when a userspace
process reads its cgroup.procs or cgroup.tasks files. It should be safe to
delete such a cgroup as it is considered empty. However if one of the dying
tasks did not reach cgroup_exit then an attempt to delete the cgroup will
fail with EBUSY because cgroup_is_populated() will not consider it empty
until all tasks reach cgroup_exit. Such a condition can be triggered when
a task consumes large amounts of memory and spends enough time in exit_mm
to create delay between the moment it is flagged as PF_EXITING and the
moment it reaches cgroup_exit.
Fix this by detecting cgroups containing only dying tasks during cgroup
destruction and proceeding with it while postponing the final step of
releasing the last reference until the last task reaches cgroup_exit.

Signed-off-by: Suren Baghdasaryan <surenb@google.com>
Reported-by: JeiFeng Lee <linger.lee@mediatek.com>
Fixes: c03cd7738a83 ("cgroup: Include dying leaders with live threads in PROCS iterations")
---
 include/linux/cgroup-defs.h |  3 ++
 kernel/cgroup/cgroup.c      | 65 +++++++++++++++++++++++++++++++++----
 2 files changed, 61 insertions(+), 7 deletions(-)

diff --git a/include/linux/cgroup-defs.h b/include/linux/cgroup-defs.h
index 63097cb243cb..f9bcccbac8dd 100644
--- a/include/linux/cgroup-defs.h
+++ b/include/linux/cgroup-defs.h
@@ -71,6 +71,9 @@ enum {
 
 	/* Cgroup is frozen. */
 	CGRP_FROZEN,
+
+	/* Cgroup is dead. */
+	CGRP_DEAD,
 };
 
 /* cgroup_root->flags */
diff --git a/kernel/cgroup/cgroup.c b/kernel/cgroup/cgroup.c
index 735af8f15f95..a99ebddd37d9 100644
--- a/kernel/cgroup/cgroup.c
+++ b/kernel/cgroup/cgroup.c
@@ -795,10 +795,11 @@ static bool css_set_populated(struct css_set *cset)
  * that the content of the interface file has changed.  This can be used to
  * detect when @cgrp and its descendants become populated or empty.
  */
-static void cgroup_update_populated(struct cgroup *cgrp, bool populated)
+static bool cgroup_update_populated(struct cgroup *cgrp, bool populated)
 {
 	struct cgroup *child = NULL;
 	int adj = populated ? 1 : -1;
+	bool state_change = false;
 
 	lockdep_assert_held(&css_set_lock);
 
@@ -817,6 +818,7 @@ static void cgroup_update_populated(struct cgroup *cgrp, bool populated)
 		if (was_populated == cgroup_is_populated(cgrp))
 			break;
 
+		state_change = true;
 		cgroup1_check_for_release(cgrp);
 		TRACE_CGROUP_PATH(notify_populated, cgrp,
 				  cgroup_is_populated(cgrp));
@@ -825,6 +827,21 @@ static void cgroup_update_populated(struct cgroup *cgrp, bool populated)
 		child = cgrp;
 		cgrp = cgroup_parent(cgrp);
 	} while (cgrp);
+
+	return state_change;
+}
+
+static void cgroup_prune_dead(struct cgroup *cgrp)
+{
+	lockdep_assert_held(&css_set_lock);
+
+	do {
+		/* put the base reference if cgroup was already destroyed */
+		if (!cgroup_is_populated(cgrp) &&
+		    test_bit(CGRP_DEAD, &cgrp->flags))
+			percpu_ref_kill(&cgrp->self.refcnt);
+		cgrp = cgroup_parent(cgrp);
+	} while (cgrp);
 }
 
 /**
@@ -838,11 +855,15 @@ static void cgroup_update_populated(struct cgroup *cgrp, bool populated)
 static void css_set_update_populated(struct css_set *cset, bool populated)
 {
 	struct cgrp_cset_link *link;
+	bool state_change;
 
 	lockdep_assert_held(&css_set_lock);
 
-	list_for_each_entry(link, &cset->cgrp_links, cgrp_link)
-		cgroup_update_populated(link->cgrp, populated);
+	list_for_each_entry(link, &cset->cgrp_links, cgrp_link) {
+		state_change = cgroup_update_populated(link->cgrp, populated);
+		if (state_change && !populated)
+			cgroup_prune_dead(link->cgrp);
+	}
 }
 
 /*
@@ -5458,8 +5479,26 @@ static int cgroup_destroy_locked(struct cgroup *cgrp)
 	 * Only migration can raise populated from zero and we're already
 	 * holding cgroup_mutex.
 	 */
-	if (cgroup_is_populated(cgrp))
-		return -EBUSY;
+	if (cgroup_is_populated(cgrp)) {
+		struct css_task_iter it;
+		struct task_struct *task;
+
+		/*
+		 * cgroup_is_populated does not account for exiting tasks
+		 * that did not reach cgroup_exit yet. Check if all the tasks
+		 * in this cgroup are exiting.
+		 */
+		css_task_iter_start(&cgrp->self, 0, &it);
+		do {
+			task = css_task_iter_next(&it);
+		} while (task && (task->flags & PF_EXITING));
+		css_task_iter_end(&it);
+
+		if (task) {
+			/* cgroup is indeed populated */
+			return -EBUSY;
+		}
+	}
 
 	/*
 	 * Make sure there's no live children.  We can't test emptiness of
@@ -5510,8 +5549,20 @@ static int cgroup_destroy_locked(struct cgroup *cgrp)
 
 	cgroup_bpf_offline(cgrp);
 
-	/* put the base reference */
-	percpu_ref_kill(&cgrp->self.refcnt);
+	/*
+	 * Take css_set_lock because of the possible race with
+	 * cgroup_update_populated.
+	 */
+	spin_lock_irq(&css_set_lock);
+	/* The last task might have died since we last checked */
+	if (cgroup_is_populated(cgrp)) {
+		/* mark cgroup for future destruction */
+		set_bit(CGRP_DEAD, &cgrp->flags);
+	} else {
+		/* put the base reference */
+		percpu_ref_kill(&cgrp->self.refcnt);
+	}
+	spin_unlock_irq(&css_set_lock);
 
 	return 0;
 };
-- 
2.25.0.rc1.283.g88dfdc4193-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
