Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 32370F9F7
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Apr 2019 15:26:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:References:Mime-Version
	:Message-Id:In-Reply-To:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=94XnHpowyqx5h1NIY4HT4dLW0B458dNfr9tMZbjdBLg=; b=hzXlupyORq4AkQ
	RjIqaN+wjjKruhC4GoxwWjrtfWxqqXu4Dob5t36NBiea/e0FS4a79Ag9JvwqQiR1+EuxI9uZCguey
	QR1WsAvz1LJ61kI5ul6gvzJbEzs7ZmUNrmrBqfb7ppOE4cFMfrGDvt11blwpKl4owslhToO/SHYGr
	cRgjcJgfQkruuxDaArAfSpUV2Ixl7bV+rcnbj+Quq5IoEUpQngB8EvQc//vbmdP8+L4j2lryoHn9U
	qnO5SHr71ELVceT5FZHGMc608OmAUUKvoe/BQxYk+2+qiuGRRhsjL5mkulaS1ReMPRxcSlN2lx1MF
	LS359M6ldVC4JyMo3HLA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hLSmN-0002sn-Al; Tue, 30 Apr 2019 13:26:39 +0000
Received: from mail-qt1-x84a.google.com ([2607:f8b0:4864:20::84a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hLSlL-0001h3-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Apr 2019 13:25:36 +0000
Received: by mail-qt1-x84a.google.com with SMTP id w53so13335734qtj.22
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Apr 2019 06:25:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:in-reply-to:message-id:mime-version:references:subject:from:to
 :cc; bh=sP41vSza+MgZL4E9JOHZR6SNiiwo3z4wqXp2POej+GY=;
 b=sj70XUZyY78fBBLRN0Y0ejY13Ah+DWSq5MZvdtC4oy13cP3DTQDgLFkcENh07spfmR
 23eMW0ICrpgPZePCfs+0BA1gHPdG5T6uXrEWd81Tbha8dBRDM5Df4bgp8ypNTHmZGxhB
 zSa9r+Rp6W+STnkRdeIoDVRh7qzf6mRVz3aHnzxLBAlwWCR6kWuFgAJ4CJMcjRmxd08s
 WnsYITF9lzQXqyZYteDI696ABzkYAJcaC1sR3amNrgXWNyCgGFhtLoxDguJqocrpZ4Uy
 mOYkJ3BstUbrdtjiLHmZC47MGFm370/x5FYq0YwcLbrA00fWtbMhOMLHm2kOb5VLfvHU
 R2IA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:in-reply-to:message-id:mime-version
 :references:subject:from:to:cc;
 bh=sP41vSza+MgZL4E9JOHZR6SNiiwo3z4wqXp2POej+GY=;
 b=jYcNuAevQ1dqkxqsuD2Iex0ZwsGLUp96pHzf2uP43NtY1jpYghxs5QDWLSEoSnNOFD
 VP4sCqOnR00C5mXjIXjgQMtkxDxnoWGVv6vHeh1fW1/v57uoItrghZ1205YWhMAimJ5A
 PXVn8B1RkxSpHLxIYDJ6W6rSmcn6YD07ieva7lha/ft4QWrrxan75kqSMaGdR8wZHEx8
 aYI2GCj9Dyc0Ha1qNFkeoTm39g6zptnv9fbXQUVWnOawFAgDF9r0wPeBwxvHqreV+Ebn
 yep6Nq5uIIGvPzGxJOPCg/X3U/0J5zqJXepNxUQmBuVXB5yKbbi6Ah45dyuqQwf12cn9
 xMrw==
X-Gm-Message-State: APjAAAUV87nxDMBo8htH6kEdfced6TqSOgGbC8GcN+gbt/TFDqlmhHov
 5R3UmP43wguxdyUtB6esknC4x/Fe44yDmg2Iw3M1u84lELiDpskMLicwXvfYeueDyfx1FMi7IMY
 da6tCTLYrY5xRFY3HZS5TjiNfNAUzbRN3iChhqUbXGHyHrAQXtk9NHXVhSdQ90Rkih3zNaNK0K7
 F4OYYz4flwDJOXKqo=
X-Google-Smtp-Source: APXvYqwOIvRkWypSUt5RnFMU33k3VTnn9YbxJDW32+qwnbYJck7Qr3YzoF+bGVldwhSnM3lKHenrz7Th7S5LU/LL
X-Received: by 2002:ac8:186e:: with SMTP id n43mr29405979qtk.69.1556630732994; 
 Tue, 30 Apr 2019 06:25:32 -0700 (PDT)
Date: Tue, 30 Apr 2019 15:25:01 +0200
In-Reply-To: <cover.1556630205.git.andreyknvl@google.com>
Message-Id: <9b9c21f2895b1dfd7079572ea6d9d4fd6b5bbc55.1556630205.git.andreyknvl@google.com>
Mime-Version: 1.0
References: <cover.1556630205.git.andreyknvl@google.com>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
Subject: [PATCH v14 05/17] arms64: untag user pointers passed to memory
 syscalls
From: Andrey Konovalov <andreyknvl@google.com>
To: linux-arm-kernel@lists.infradead.org, linux-mm@kvack.org, 
 linux-kernel@vger.kernel.org, amd-gfx@lists.freedesktop.org, 
 dri-devel@lists.freedesktop.org, linux-rdma@vger.kernel.org, 
 linux-media@vger.kernel.org, kvm@vger.kernel.org, 
 linux-kselftest@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190430_062535_347765_71301CC7 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:84a listed in]
 [list.dnswl.org]
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Koenig@google.com,
 Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Chintan Pandya <cpandya@codeaurora.org>,
 Felix <Felix.Kuehling@amd.com>, Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Kuehling@google.com, Dave Martin <Dave.Martin@arm.com>,
 Evgeniy Stepanov <eugenis@google.com>, Kevin Brodsky <kevin.brodsky@arm.com>,
 Kees Cook <keescook@chromium.org>, Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>, Deucher@google.com,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, Robin Murphy <robin.murphy@arm.com>,
 Christian <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch is a part of a series that extends arm64 kernel ABI to allow to
pass tagged user pointers (with the top byte set to something else other
than 0x00) as syscall arguments.

This patch allows tagged pointers to be passed to the following memory
syscalls: brk, get_mempolicy, madvise, mbind, mincore, mlock, mlock2,
mmap, mmap_pgoff, mprotect, mremap, msync, munlock, munmap,
remap_file_pages, shmat and shmdt.

This is done by untagging pointers passed to these syscalls in the
prologues of their handlers.

Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 arch/arm64/kernel/sys.c | 128 +++++++++++++++++++++++++++++++++++++++-
 1 file changed, 127 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/kernel/sys.c b/arch/arm64/kernel/sys.c
index b44065fb1616..933bb9f3d6ec 100644
--- a/arch/arm64/kernel/sys.c
+++ b/arch/arm64/kernel/sys.c
@@ -35,10 +35,33 @@ SYSCALL_DEFINE6(mmap, unsigned long, addr, unsigned long, len,
 {
 	if (offset_in_page(off) != 0)
 		return -EINVAL;
-
+	addr = untagged_addr(addr);
 	return ksys_mmap_pgoff(addr, len, prot, flags, fd, off >> PAGE_SHIFT);
 }
 
+SYSCALL_DEFINE6(arm64_mmap_pgoff, unsigned long, addr, unsigned long, len,
+		unsigned long, prot, unsigned long, flags,
+		unsigned long, fd, unsigned long, pgoff)
+{
+	addr = untagged_addr(addr);
+	return ksys_mmap_pgoff(addr, len, prot, flags, fd, pgoff);
+}
+
+SYSCALL_DEFINE5(arm64_mremap, unsigned long, addr, unsigned long, old_len,
+		unsigned long, new_len, unsigned long, flags,
+		unsigned long, new_addr)
+{
+	addr = untagged_addr(addr);
+	new_addr = untagged_addr(new_addr);
+	return ksys_mremap(addr, old_len, new_len, flags, new_addr);
+}
+
+SYSCALL_DEFINE2(arm64_munmap, unsigned long, addr, size_t, len)
+{
+	addr = untagged_addr(addr);
+	return ksys_munmap(addr, len);
+}
+
 SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
 {
 	if (personality(personality) == PER_LINUX32 &&
@@ -47,10 +70,113 @@ SYSCALL_DEFINE1(arm64_personality, unsigned int, personality)
 	return ksys_personality(personality);
 }
 
+SYSCALL_DEFINE1(arm64_brk, unsigned long, brk)
+{
+	brk = untagged_addr(brk);
+	return ksys_brk(brk);
+}
+
+SYSCALL_DEFINE5(arm64_get_mempolicy, int __user *, policy,
+		unsigned long __user *, nmask, unsigned long, maxnode,
+		unsigned long, addr, unsigned long, flags)
+{
+	addr = untagged_addr(addr);
+	return ksys_get_mempolicy(policy, nmask, maxnode, addr, flags);
+}
+
+SYSCALL_DEFINE3(arm64_madvise, unsigned long, start,
+		size_t, len_in, int, behavior)
+{
+	start = untagged_addr(start);
+	return ksys_madvise(start, len_in, behavior);
+}
+
+SYSCALL_DEFINE6(arm64_mbind, unsigned long, start, unsigned long, len,
+		unsigned long, mode, const unsigned long __user *, nmask,
+		unsigned long, maxnode, unsigned int, flags)
+{
+	start = untagged_addr(start);
+	return ksys_mbind(start, len, mode, nmask, maxnode, flags);
+}
+
+SYSCALL_DEFINE2(arm64_mlock, unsigned long, start, size_t, len)
+{
+	start = untagged_addr(start);
+	return ksys_mlock(start, len, VM_LOCKED);
+}
+
+SYSCALL_DEFINE2(arm64_mlock2, unsigned long, start, size_t, len)
+{
+	start = untagged_addr(start);
+	return ksys_mlock(start, len, VM_LOCKED);
+}
+
+SYSCALL_DEFINE2(arm64_munlock, unsigned long, start, size_t, len)
+{
+	start = untagged_addr(start);
+	return ksys_munlock(start, len);
+}
+
+SYSCALL_DEFINE3(arm64_mprotect, unsigned long, start, size_t, len,
+		unsigned long, prot)
+{
+	start = untagged_addr(start);
+	return ksys_mprotect_pkey(start, len, prot, -1);
+}
+
+SYSCALL_DEFINE3(arm64_msync, unsigned long, start, size_t, len, int, flags)
+{
+	start = untagged_addr(start);
+	return ksys_msync(start, len, flags);
+}
+
+SYSCALL_DEFINE3(arm64_mincore, unsigned long, start, size_t, len,
+		unsigned char __user *, vec)
+{
+	start = untagged_addr(start);
+	return ksys_mincore(start, len, vec);
+}
+
+SYSCALL_DEFINE5(arm64_remap_file_pages, unsigned long, start,
+		unsigned long, size, unsigned long, prot,
+		unsigned long, pgoff, unsigned long, flags)
+{
+	start = untagged_addr(start);
+	return ksys_remap_file_pages(start, size, prot, pgoff, flags);
+}
+
+SYSCALL_DEFINE3(arm64_shmat, int, shmid, char __user *, shmaddr, int, shmflg)
+{
+	shmaddr = untagged_addr(shmaddr);
+	return ksys_shmat(shmid, shmaddr, shmflg);
+}
+
+SYSCALL_DEFINE1(arm64_shmdt, char __user *, shmaddr)
+{
+	shmaddr = untagged_addr(shmaddr);
+	return ksys_shmdt(shmaddr);
+}
+
 /*
  * Wrappers to pass the pt_regs argument.
  */
 #define sys_personality		sys_arm64_personality
+#define sys_mmap_pgoff		sys_arm64_mmap_pgoff
+#define sys_mremap		sys_arm64_mremap
+#define sys_munmap		sys_arm64_munmap
+#define sys_brk			sys_arm64_brk
+#define sys_get_mempolicy	sys_arm64_get_mempolicy
+#define sys_madvise		sys_arm64_madvise
+#define sys_mbind		sys_arm64_mbind
+#define sys_mlock		sys_arm64_mlock
+#define sys_mlock2		sys_arm64_mlock2
+#define sys_munlock		sys_arm64_munlock
+#define sys_mprotect		sys_arm64_mprotect
+#define sys_msync		sys_arm64_msync
+#define sys_mincore		sys_arm64_mincore
+#define sys_remap_file_pages	sys_arm64_remap_file_pages
+#define sys_shmat		sys_arm64_shmat
+#define sys_shmdt		sys_arm64_shmdt
 
 asmlinkage long sys_ni_syscall(const struct pt_regs *);
 #define __arm64_sys_ni_syscall	sys_ni_syscall
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
