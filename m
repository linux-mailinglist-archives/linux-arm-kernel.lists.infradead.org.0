Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C28371B7B26
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:10:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Date:Message-ID:To:Subject
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=r9Js+P/lDglJowRxZrclAkK64/EkWxuoxc7bjJ7ghjM=; b=lp+xh6/ztDobUU
	64OmbJU4Lt7oOJE1AkCf8ZC3JIq0qGU2HIA+XlxN53t5KSmkWG3bsyd4iwVXrbu64IJ9EdwWZHrX3
	9ptDnhBde72vzS12sV2yXGdMYs85+FkUpK+qCOLeOXQZVM5j/sqJauMk1PpNE/zh4axj8nPOBiwt6
	fY5lMZDLGq9/AigIcKYvrnzDFVu1prynpB5mDTe9yKRW+9Vy+ozgfzKuU1XsOow8fMbxHFVCf9YfQ
	6MEmW3nlstM+mGFFa6v2vHcN6Pf+v6Zd9KdPubP5CXdulYKaY7QOZU9FwsOGhxZW6V6Kjv99bPrH9
	UonkQWNTqQwnsqbX2dTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0uJ-0001L8-7A; Fri, 24 Apr 2020 16:10:27 +0000
Received: from [2602:306:37b0:7840:74d2:f789:74e8:9f56]
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0j4-0003cM-SX; Fri, 24 Apr 2020 15:58:50 +0000
From: Geoff Levand <geoff@infradead.org>
Subject: [PATCH] arm64/vdso: Remove unused makefile variable
To: Catalin Marinas <catalin.marinas@arm.com>
Message-ID: <d8baa0e5-0e20-9f58-5e79-34a272f86d1d@infradead.org>
Date: Fri, 24 Apr 2020 08:58:49 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
Content-Language: en-US
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
Cc: Will Deacon <will@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vdso makefile variable VDSO_LDFLAGS is defined, but never used,
so remove it.

Signed-off-by: Geoff Levand <geoff@infradead.org>
---

Hi,

This seems to be left over from a code cleanup that missed it.

-Geoff

 arch/arm64/kernel/vdso/Makefile | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/kernel/vdso/Makefile b/arch/arm64/kernel/vdso/Makefile
index dd2514bb1511..6f6b55c12029 100644
--- a/arch/arm64/kernel/vdso/Makefile
+++ b/arch/arm64/kernel/vdso/Makefile
@@ -23,8 +23,6 @@ ldflags-y := -shared -nostdlib -soname=linux-vdso.so.1 --hash-style=sysv \
 ccflags-y := -fno-common -fno-builtin -fno-stack-protector -ffixed-x18
 ccflags-y += -DDISABLE_BRANCH_PROFILING
 
-VDSO_LDFLAGS := -Bsymbolic
-
 CFLAGS_REMOVE_vgettimeofday.o = $(CC_FLAGS_FTRACE) -Os
 KBUILD_CFLAGS			+= $(DISABLE_LTO)
 KASAN_SANITIZE			:= n
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
