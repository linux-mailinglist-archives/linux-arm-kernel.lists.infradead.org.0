Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D867C1BB4A8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 05:28:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rLpsSJl/Frt0ezUhbPOt3524KMQO6q8iRrrZc38b/J8=; b=noiQzU16x5nmQq
	Vq89BTQEE6KMCyN8rfOndCstoV20sCYNsi0ZhVAPh7bYSdUaWqqHVRLHybl9zK0F6nyHmVNj0A9Vm
	MRERfELhPKRCrFkUAWKTo96ZBJmh5UzJGJG1Ovwh4yc3V5LF/dhkxCV4hHpheMDF3Y3p1xSsT8yWL
	/OCY4kebUUoqn27+/MYVWTdlh5ZK0k29BBKyMfy12GEnq6xN8xMO9A0miD3NIi0hTkAFSEI8TA+r4
	UNUOXkUG5LixXk3mMV2ap/MWnEeK4ehbdtMfydPF8b9mApparrMgz8nszb3/EgioZD/OTQp6VbJTi
	gJbqjGlzh0covWYyPL1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTGun-0000Zi-8A; Tue, 28 Apr 2020 03:28:09 +0000
Received: from mail-yb1-xb49.google.com ([2607:f8b0:4864:20::b49])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTGue-0000Z5-6b
 for linux-arm-kernel@lists.infradead.org; Tue, 28 Apr 2020 03:28:01 +0000
Received: by mail-yb1-xb49.google.com with SMTP id s62so23469507ybs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 20:27:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=u+G4hEDBCMfTTINsEe1rRLbmDctcZioKYhqJKU0a/to=;
 b=KS7OZjdt/sKvdslTKy6L/T6sE7YdAFI7rtNbHDh37qyDWlr6BYYTbLkiyvmD0nU0Vg
 PRRFYjaV7UbuK8P97MQGc1kQlBkhSW5m1ljSw8YwuhdjhF7jXweNqaFbkY9Plz6Wl1j4
 osppM2gxoE4Yrgh4n66OgZ3JsEY6l1ff2OMDXWcjzIlhM9kTGJ4VqWohzV1FRAHXNefl
 ZYwNdvb4LAg5HEbG7ldnRs7JPffDElIHozrCI8WkjzJY+A19nzvQ5AN+xrhkWxSSzafL
 O46PyHQSSBOenRmN3cTUjh1IJpeaEsSCOrwDvLioHY9vH6+s/1WzYSsDqeo2yVlPtFEk
 +EUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=u+G4hEDBCMfTTINsEe1rRLbmDctcZioKYhqJKU0a/to=;
 b=oDyuNCxm9IDYk0PZV/+vxRAMWaeLBdhv0MgAtqoSaMRukrYn8n/w/a3GR4f/1WqhxR
 E6ADkoyyFdBwTomq5j+iJCinYF0/OGH6DE+lStsobYN9e/7E5Iu5FNr9pG0yL4qmCjVW
 nLbgBLRbHN6dGqJzMrO8kIfCRf1ly/of91KMCT84E3xv3OJl4Jc9FZL1N/v0j0FMpuh+
 WWYtp9d/ZMC7lZ0z8YFfClTFTxkZr6QWD/4HzLpVexuJGZ3Fx0vXJ1va2bYDDGiWZuUN
 aOZNeSetw1a4idRPDw82uvrS5kcTK7/Dx77Xhet88D8VFJgoc3UMNzSkMv214mIq6/Sc
 G4Ag==
X-Gm-Message-State: AGi0PuYLRzy/eya2agaS7FrAYm1xbzj2lQb8EDeUVnYji6+fzYsOUSZy
 5erZq8NekGtKv5u8aUGaIVT7c2iEzQ==
X-Google-Smtp-Source: APiQypK6jqWOuNTokUNhG2QCt7A5zcXYd6+OoLGYxMDdl4Pak6sHqzfYvRIQd9LB/iLqowxAAwDHJLlsNA==
X-Received: by 2002:a25:afd0:: with SMTP id d16mr42901934ybj.441.1588044478270; 
 Mon, 27 Apr 2020 20:27:58 -0700 (PDT)
Date: Tue, 28 Apr 2020 05:27:40 +0200
Message-Id: <20200428032745.133556-1-jannh@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH 0/5] Fix ELF / FDPIC ELF core dumping, and use mmap_sem
 properly in there
From: Jann Horn <jannh@google.com>
To: Andrew Morton <akpm@linux-foundation.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_202800_267136_350C9E59 
X-CRM114-Status: GOOD (  13.49  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b49 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

Jann Horn (5):
  binfmt_elf_fdpic: Stop using dump_emit() on user pointers on !MMU
  coredump: Fix handling of partial writes in dump_emit()
  coredump: Refactor page range dumping into common helper
  binfmt_elf, binfmt_elf_fdpic: Use a VMA list snapshot
  mm/gup: Take mmap_sem in get_dump_page()

 fs/binfmt_elf.c          | 170 ++++++++++++---------------------------
 fs/binfmt_elf_fdpic.c    | 106 +++++++++---------------
 fs/coredump.c            | 102 +++++++++++++++++++++++
 include/linux/coredump.h |  12 +++
 mm/gup.c                 |  69 +++++++++-------
 5 files changed, 243 insertions(+), 216 deletions(-)


base-commit: 6a8b55ed4056ea5559ebe4f6a4b247f627870d4c
prerequisite-patch-id: c0a20b414eebc48fe0a8ca570b05de34c7980396
prerequisite-patch-id: 51973b8db0fa4b114e0c3fd8936b634d9d5061c5
prerequisite-patch-id: 0e1e8de282ca6d458dc6cbdc6b6ec5879edd8a05
prerequisite-patch-id: d5ee749c4d3a22ec80bd0dd88aadf89aeb569db8
prerequisite-patch-id: 46ce14e59e98e212a1eca0aef69c6dcdb62b8242
-- 
2.26.2.303.gf8c07b1a785-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
