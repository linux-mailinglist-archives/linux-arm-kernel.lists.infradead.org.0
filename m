Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 037F6139BEF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 Jan 2020 22:54:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:From:To:
	Subject:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=8Br+5zsXusIpIv+FvoM90SUDm7SoJxup94dmS2faobo=; b=Wv2fnMqIrFf8GF
	jLLlX4pu+pYstJNu9FAMyeLVnxcdRawBsbyK9hetp0ZlQKG6t6cUzQ6eqe/tr0RJ05V+QiiHcxN2j
	5vQF5aaBz4nocfr/mX590XTtjK3u/Dx7aDWQA98wEVG4U4gTMe1MCBDjzez5mfs6PPcnIB93ATzyz
	Jlm8SHquZ9hWRMRlL8N5wRIKoPZndiENXQXDrAxSLX6M6sNlWabfYrhUPcNG5qjzLKKnVeZZo5FEo
	f9e04bpzUsncegPncLH1kNfgDhXJsudfcJQTqbpUlOxVbV1UjyD3IN5F7hAAAR4hm9506Q8obCgQb
	BMJEgPLsB/N3CD2GS8LQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ir7f1-0007gi-ND; Mon, 13 Jan 2020 21:54:11 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ir7ef-0007YJ-Up
 for linux-arm-kernel@lists.infradead.org; Mon, 13 Jan 2020 21:53:51 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 2458C2072B;
 Mon, 13 Jan 2020 21:53:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578952429;
 bh=E5M2fwsexzUeGxorU/uMyVyYctBbqMbYqkbEB3PIMgQ=;
 h=Subject:To:Cc:From:Date:From;
 b=TYgpI+4W6+nIP85N3UR06DVDEj/vsFNSIFFWCo6ACaK4ms+/wFooq38sd98aY8cYm
 NR/18Hrnq+ilY6PaM7WQfy94oywP0AhL7tkrrLDWw/+fvCSMniikTslo/buLvrunA/
 meT4AcYQLBCHAv/6gek+piyOYaBIL0cMpq4wVXpc=
Subject: Patch "arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi headers"
 has been added to the 5.4-stable tree
To: 20200102172413.654385-2-amanieu@gmail.com, amanieu@gmail.com, arnd@arndb.de,
 christian.brauner@ubuntu.com, gregkh@linuxfoundation.org,
 linux-arm-kernel@lists.infradead.org
From: <gregkh@linuxfoundation.org>
Date: Mon, 13 Jan 2020 22:53:35 +0100
Message-ID: <157895241534163@kroah.com>
MIME-Version: 1.0
X-stable: commit
X-Patchwork-Hint: ignore 
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_135350_009246_D9D0E9AB 
X-CRM114-Status: GOOD (  11.55  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 2.5 SORTED_RECIPS          Recipient list is sorted by address
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: stable-commits@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


This is a note to let you know that I've just added the patch titled

    arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi headers

to the 5.4-stable tree which can be found at:
    http://www.kernel.org/git/?p=linux/kernel/git/stable/stable-queue.git;a=summary

The filename of the patch is:
     arm64-move-__arch_want_sys_clone3-definition-to-uapi-headers.patch
and it can be found in the queue-5.4 subdirectory.

If you, or anyone else, feels it should not be added to the stable tree,
please let <stable@vger.kernel.org> know about it.


From 3e3c8ca5a351350031f0f3d5ecedf7048b1b9008 Mon Sep 17 00:00:00 2001
From: Amanieu d'Antras <amanieu@gmail.com>
Date: Thu, 2 Jan 2020 18:24:07 +0100
Subject: arm64: Move __ARCH_WANT_SYS_CLONE3 definition to uapi headers

From: Amanieu d'Antras <amanieu@gmail.com>

commit 3e3c8ca5a351350031f0f3d5ecedf7048b1b9008 upstream.

Previously this was only defined in the internal headers which
resulted in __NR_clone3 not being defined in the user headers.

Signed-off-by: Amanieu d'Antras <amanieu@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: <stable@vger.kernel.org> # 5.3.x
Reviewed-by: Arnd Bergmann <arnd@arndb.de>
Link: https://lore.kernel.org/r/20200102172413.654385-2-amanieu@gmail.com
Signed-off-by: Christian Brauner <christian.brauner@ubuntu.com>
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
 arch/arm64/include/asm/unistd.h      |    1 -
 arch/arm64/include/uapi/asm/unistd.h |    1 +
 2 files changed, 1 insertion(+), 1 deletion(-)

--- a/arch/arm64/include/asm/unistd.h
+++ b/arch/arm64/include/asm/unistd.h
@@ -42,7 +42,6 @@
 #endif
 
 #define __ARCH_WANT_SYS_CLONE
-#define __ARCH_WANT_SYS_CLONE3
 
 #ifndef __COMPAT_SYSCALL_NR
 #include <uapi/asm/unistd.h>
--- a/arch/arm64/include/uapi/asm/unistd.h
+++ b/arch/arm64/include/uapi/asm/unistd.h
@@ -19,5 +19,6 @@
 #define __ARCH_WANT_NEW_STAT
 #define __ARCH_WANT_SET_GET_RLIMIT
 #define __ARCH_WANT_TIME32_SYSCALLS
+#define __ARCH_WANT_SYS_CLONE3
 
 #include <asm-generic/unistd.h>


Patches currently in stable-queue which might be from amanieu@gmail.com are

queue-5.4/arm-implement-copy_thread_tls.patch
queue-5.4/arm64-implement-copy_thread_tls.patch
queue-5.4/xtensa-implement-copy_thread_tls.patch
queue-5.4/arm64-move-__arch_want_sys_clone3-definition-to-uapi-headers.patch
queue-5.4/parisc-implement-copy_thread_tls.patch
queue-5.4/clone3-ensure-copy_thread_tls-is-implemented.patch
queue-5.4/riscv-implement-copy_thread_tls.patch
queue-5.4/um-implement-copy_thread_tls.patch

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
