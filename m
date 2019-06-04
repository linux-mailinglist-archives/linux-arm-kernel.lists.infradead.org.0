Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BFAC349AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 16:01:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=enlqPBA//9RxOfvspbXFzCWKtOS5v7kzVmfYoYIpBjQ=; b=X7+
	jXGMUphQbuhyratXLfotNUszNfvI11CwHb0U5oabE6Ee0I8RrtzXySu2gAHWoXs1kJXfr1s/wMR/b
	o2qZdjAlPoRDAxjFLUWfefK6eBeRp9GeFfpJMyYyVZM6GsvreWzT6Vl2w9ZMrqFur/uc3dFvxtJnw
	/au3V/BCTnPT8W2qyfYRpPEtLuocssWF+G3Vn4ss7QmF5IuvEUjOIBkOxOZqggJWa2h666noMT5eC
	jmLhtG6Myb7MIxx8/G75La3XRoRB1ZcAUAfxsu4fmaEW4mNEGFs777r42J905KBlM+ikkDCYbq/pc
	clcBcYlFf72bxwYAnL/uYLqE/5syekQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYA03-00040C-Uw; Tue, 04 Jun 2019 14:01:15 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY9zx-0003zT-KR
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 14:01:10 +0000
Received: by mail-qt1-x842.google.com with SMTP id y57so13846104qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 07:01:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=HA9nmzXQ1v1EpP1te6eSn7ZdKChVSouT7677WSi9nIU=;
 b=FjD0vS909bew//7s7kZ4U68BxVAcYNK5lIoo28VJ0iR1cKCHo5uwPCWhKdZwvb5R3h
 l+JLi7kgdhHQ1mXfsVZvplZ78xwVC8/ftBcb4Y1CP7AfT7ECrvsLzhzJmhjoXKQ+9YfW
 jkK1KfkjNxpW1xSRKQnYK4mvUMqCOfcP73zC3WHA+ooGIl+psI9Q4jqvA7bBCK7mH9Ef
 w3/bC3nfoSs3iDZfv8dHX2070J87acrVGFg6U4tChzCNpv8wZEvISzXrFjF4d2cH+dQg
 CW65qtmF/xSV9/UwnhEaWAjNq9r1a+ZARBE5OytTmcBx9/3tgsvUzYwtXDaZM5w9ZTBz
 LD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=HA9nmzXQ1v1EpP1te6eSn7ZdKChVSouT7677WSi9nIU=;
 b=skry0NaKnyrczo7koqf4TVHv74Db4Zuxai7IqFh45mxuwSnSCH2vPPUWLJnF3HzlEU
 oPe9TFIf8oILJ6ciPrns6IE6lRjqSDangkP7uXJL2kvJLAqk2eHjjChdLcheCoJrGVCI
 mvzk0vsdtApikLCUvjpZIzwXZbUrxwJO5tSynldOHjGKDeoTd3wKhC4E56ivCIJPTgtX
 9XDHyFvqsHxhT9PvKBzXu1wKZs5zCyVqgxIj5rwZ5+9SKxxwQoESiMZrdef1kN7zv0L8
 PyXPcynHTHTgEArdId+oTvHOunbNCO61sTgPcBYQdguxr1apIjjOJQfTfRz8nYmN3y1v
 HvXQ==
X-Gm-Message-State: APjAAAVU0y+9+eO8sjXjWdWR1jJBdvss/tjc5Gt0+8Q4w46VoRKdoa+I
 q3Mwl/e2PZqSW/pw11ID3f6qvrs6Wak=
X-Google-Smtp-Source: APXvYqyaYFcOVCNNE4EgaFXVtcyiuzl8/nFtl+bPshTs3JbBCrjCSlVZ/oa+7ymTOAx0gJHRKZE4qg==
X-Received: by 2002:a0c:be87:: with SMTP id n7mr8195030qvi.65.1559656867510;
 Tue, 04 Jun 2019 07:01:07 -0700 (PDT)
Received: from qcai.nay.com (nat-pool-bos-t.redhat.com. [66.187.233.206])
 by smtp.gmail.com with ESMTPSA id f189sm2340295qkj.13.2019.06.04.07.01.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 07:01:06 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: akpm@linux-foundation.org
Subject: [PATCH -next] arm64/mm: fix a bogus GFP flag in pgd_alloc()
Date: Tue,  4 Jun 2019 10:00:36 -0400
Message-Id: <1559656836-24940-1-git-send-email-cai@lca.pw>
X-Mailer: git-send-email 1.8.3.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_070109_719224_39EC3E34 
X-CRM114-Status: GOOD (  11.18  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: catalin.marinas@arm.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 mhocko@kernel.org, linux-mm@kvack.org, Qian Cai <cai@lca.pw>,
 vdavydov.dev@gmail.com, hannes@cmpxchg.org, cgroups@vger.kernel.org,
 rppt@linux.ibm.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit "arm64: switch to generic version of pte allocation"
introduced endless failures during boot like,

kobject_add_internal failed for pgd_cache(285:chronyd.service) (error:
-2 parent: cgroup)

It turns out __GFP_ACCOUNT is passed to kernel page table allocations
and then later memcg finds out those don't belong to any cgroup.

backtrace:
  kobject_add_internal
  kobject_init_and_add
  sysfs_slab_add+0x1a8
  __kmem_cache_create
  create_cache
  memcg_create_kmem_cache
  memcg_kmem_cache_create_func
  process_one_work
  worker_thread
  kthread

Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/mm/pgd.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/mm/pgd.c b/arch/arm64/mm/pgd.c
index 769516cb6677..53c48f5c8765 100644
--- a/arch/arm64/mm/pgd.c
+++ b/arch/arm64/mm/pgd.c
@@ -38,7 +38,7 @@ pgd_t *pgd_alloc(struct mm_struct *mm)
 	if (PGD_SIZE == PAGE_SIZE)
 		return (pgd_t *)__get_free_page(gfp);
 	else
-		return kmem_cache_alloc(pgd_cache, gfp);
+		return kmem_cache_alloc(pgd_cache, GFP_PGTABLE_KERNEL);
 }
 
 void pgd_free(struct mm_struct *mm, pgd_t *pgd)
-- 
1.8.3.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
