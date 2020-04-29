Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C1FA1BEA35
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:50:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=T+3Mk2k+e9/OsnmuQp00b/ez/9ubbezSwqYF/MHAEf8=; b=X0aGdCfHyo7fFO
	Z3TUnBGOwwzRyaRN301fLJ9USFwMEctWc0AQQN0pmllZ8GQStIEdfR9sPI2QI2PPr4C7dDJxjWmcz
	Fcc99UKy/MFeGpiP6pIdfdw59QZPUDTPtuve4HZ4D4VWw1dg4e53zf27mzNFeGGhV+lFg96tKJeK7
	L2j5OkqNISVW3SrmqKpgloPozw/vv10jlQqtnFH8uXOvaQcwwc0ytVdFaXHTwpYX4+S3bkDnDR2Ta
	s30dfxmvTYO9jkqROWUElv8MiryejzGpfSTKCzDap6JW4YJWrTMvPDy/ItqrokjF8pBZnQBfAIkY1
	krld6WbJejI1SEaS/iPg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTub9-0008UF-8e; Wed, 29 Apr 2020 21:50:31 +0000
Received: from mail-qk1-x749.google.com ([2607:f8b0:4864:20::749])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTuar-00086k-Sj
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 21:50:15 +0000
Received: by mail-qk1-x749.google.com with SMTP id y64so4209836qkb.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 14:50:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=P4HtBjpSOsceKegug2sEdVIRavAA18N3gAKqWZxS3Rg=;
 b=TI7o13vZ0R4PIgdk5y6o23r6CG8YctneHrjonN+9jVFDJ8a0023jr599F8e7C/pCP1
 fL3VdXGkXbALChJNJ6t9m+IF3Wovo/x9/xrYX0g4YfMrgsQSVwwi23O/IaVGqNkQQ6h3
 x+0qrgSjRfFwRKbeWgXwjoMlqjH1lm4wAM3CELbCKXTiLq/swJ34pmCu23AMfL5Yjkgy
 2lr+IyuwfEsMfRYCu6HHrOrTyeTAAHhb+KjzIA+Iji3q7RLl2di8U0GeoekM5FEejqLO
 huXbxPxwrw4zSseLeMFqvnk/V1Q6Vuoaodwe0RRKcnawzra8PObdhok75bmLDdUPrs8e
 Ubdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=P4HtBjpSOsceKegug2sEdVIRavAA18N3gAKqWZxS3Rg=;
 b=tUC31VJR+gRtsnJPyz0H63qu559dEkH8qh861YPAEQSwfbXxjsJ6tdG1FCqClPe5ia
 j370eZn8tY2pPStQ0lMFTj7mNTrqN5m8AaVwPhp4IQe9gnDU1TkYckYruuxO1pUK0W4n
 lLFljfyDBRkawya92JOH6x2gev1DGmxCnS5ct5WmE2vkPpR+T701i49DmskLQcU5e9Yp
 chtgm5RsDKdU0C7QM1Q0nP8dEdzRppVq8EPJ9ViaQm0iuEk1JAh9R8Y24S+bVXSXS6PD
 Lcr4/mcAYFAUP4KjVzuEUgmK4KQHNP4yhvcM1ZEWAsOqDZybMRbrbLS1COdzc0s5Lrsa
 yQ+Q==
X-Gm-Message-State: AGi0PuaN+cVVrNhfoj50ScZBEUHuD3rl9P0w85L0S+bsuGneDd+Q2dpB
 /TZIz7sU0babAKKdyjrxSTvAdTx24A==
X-Google-Smtp-Source: APiQypKMctOewJ3jBsbKHfX9HPIgYNkTG/naYrVaiwmZ+zyaqG0pLqe4doZmeqtJnRlWlz10BcfPBfAjMw==
X-Received: by 2002:a0c:ba83:: with SMTP id x3mr36580637qvf.83.1588197009264; 
 Wed, 29 Apr 2020 14:50:09 -0700 (PDT)
Date: Wed, 29 Apr 2020 23:49:49 +0200
Message-Id: <20200429214954.44866-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.526.g744177e7f7-goog
Subject: [PATCH v2 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_145013_961086_0389EAB4 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:749 listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Rich Felker <dalias@libc.org>, linux-c6x-dev@linux-c6x.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-sh@vger.kernel.org,
 linux-kernel@vger.kernel.org, Oleg Nesterov <oleg@redhat.com>,
 linux-mm@kvack.org, Alexander Viro <viro@zeniv.linux.org.uk>,
 Mark Salter <msalter@redhat.com>, linux-fsdevel@vger.kernel.org,
 Russell King <linux@armlinux.org.uk>,
 Aurelien Jacquiot <jacquiot.aurelien@gmail.com>,
 Linus Torvalds <torvalds@linux-foundation.org>, Christoph Hellwig <hch@lst.de>,
 linux-arm-kernel@lists.infradead.org,
 "Eric W . Biederman" <ebiederm@xmission.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

At the moment, we have that rather ugly mmget_still_valid() helper to
work around <https://crbug.com/project-zero/1790>: ELF core dumping
doesn't take the mmap_sem while traversing the task's VMAs, and if
anything (like userfaultfd) then remotely messes with the VMA tree,
fireworks ensue. So at the moment we use mmget_still_valid() to bail
out in any writers that might be operating on a remote mm's VMAs.

With this series, I'm trying to get rid of the need for that as
cleanly as possible.
In particular, I want to avoid holding the mmap_sem across unbounded
sleeps.


Patches 1, 2 and 3 are relatively unrelated cleanups in the core
dumping code.

Patches 4 and 5 implement the main change: Instead of repeatedly
accessing the VMA list with sleeps in between, we snapshot it at the
start with proper locking, and then later we just use our copy of
the VMA list. This ensures that the kernel won't crash, that VMA
metadata in the coredump is consistent even in the presence of
concurrent modifications, and that any virtual addresses that aren't
being concurrently modified have their contents show up in the core
dump properly.

The disadvantage of this approach is that we need a bit more memory
during core dumping for storing metadata about all VMAs.

After this series has landed, we should be able to rip out
mmget_still_valid().


Testing done so far:

 - Creating a simple core dump on X86-64 still works.
 - The created coredump on X86-64 opens in GDB, and both the stack and the
   exectutable look vaguely plausible.
 - 32-bit ARM compiles with FDPIC support, both with MMU and !MMU config.

I'm CCing some folks from the architectures that use FDPIC in case
anyone wants to give this a spin.


This series is based on
<https://lore.kernel.org/linux-fsdevel/20200427200626.1622060-1-hch@lst.de/>
(Christoph Hellwig's "remove set_fs calls from the coredump code v4").


changed in v2:
 - replace "Fix handling of partial writes in dump_emit()" with
   "Let dump_emit() bail out on short writes" (Linus)
 - get rid of the useless complicated cache flushing in
   "Take mmap_sem in get_dump_page()" (Linus)

Jann Horn (5):
  binfmt_elf_fdpic: Stop using dump_emit() on user pointers on !MMU
  coredump: Let dump_emit() bail out on short writes
  coredump: Refactor page range dumping into common helper
  binfmt_elf, binfmt_elf_fdpic: Use a VMA list snapshot
  mm/gup: Take mmap_sem in get_dump_page()

 fs/binfmt_elf.c          | 170 ++++++++++++---------------------------
 fs/binfmt_elf_fdpic.c    | 106 +++++++++---------------
 fs/coredump.c            | 123 +++++++++++++++++++++++++---
 include/linux/coredump.h |  12 +++
 mm/gup.c                 |  60 +++++++-------
 5 files changed, 245 insertions(+), 226 deletions(-)


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
prerequisite-patch-id: c0a20b414eebc48fe0a8ca570b05de34c7980396
prerequisite-patch-id: 51973b8db0fa4b114e0c3fd8936b634d9d5061c5
prerequisite-patch-id: 0e1e8de282ca6d458dc6cbdc6b6ec5879edd8a05
prerequisite-patch-id: d5ee749c4d3a22ec80bd0dd88aadf89aeb569db8
prerequisite-patch-id: 46ce14e59e98e212a1eca0aef69c6dcdb62b8242
-- 
2.26.2.526.g744177e7f7-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
