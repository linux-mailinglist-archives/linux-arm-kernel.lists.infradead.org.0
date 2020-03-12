Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E9611835AA
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 16:59:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iR3xV/CCQHpIqTfkZeegIvH8+5TRW16iSDpsIZtmUD8=; b=ttbBqK9jVH8Xfc
	VlUBCsj8Wh+3NZpId+s+2nI/TA2CCFwHQs2XxYSjXYZFHK6bAdB8aqooeyev2Xq4bttzODZmCZHIz
	MOm457VjnteswRwjviFbqgPW0Kd+KYMfngG6I/1TFU7clTbUi0zPq/fbxk9vTGDUQUYAtmSvtnd9o
	tudkhhwoLg4XGSDvYqeY+EifZayxKjFkzIqJm6DH/nV4zT9EuyCjZKGyKxfsNlbBIMmZq96GBiZJT
	dP+eM/OwAEHRrVE1A/J9hKtFzW+YTk+0KBPlXpqnI2Gm7PRO4i32h7v8gj3bFL8t41n2thzVQTL8k
	Gye8C7C6acn6q2M5yotg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCQFH-0006vD-Lc; Thu, 12 Mar 2020 15:59:39 +0000
Received: from mail-ua1-x94a.google.com ([2607:f8b0:4864:20::94a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCQF7-0006uo-Ts
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 15:59:31 +0000
Received: by mail-ua1-x94a.google.com with SMTP id 30so1023717uaz.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Mar 2020 08:59:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=OuMVG+rAcmfDAvofKjPIQX+VmSUPtt76BOeSoyVp0P0=;
 b=paSD109ofywT5exuwClXg1CpSkd67fvla0fLoNnI4B3XWrXO1LZuDc5ckHUaHkQbgW
 l47wGBvbLvyQrQ6YYYCIxFUyJlInvlCh+aUQlzbO1UW5IFkgkfal8cQ4Qw9n9u4Gnxoh
 eoF++guRlwiHbzd40JXsZOIhaUsXUnhBek/ux7DqflkZ3AxlGfHIwXhZlhOS+M7KFX6q
 Dfqvl1cqacnRW59uNGU6Du41IKysk6tl+6pLqEfFOztMPn+/3KmWHlPdVbaVY7jClPbh
 CDlSvMVEOr/1jfjPMh09yr9uHZfo+g0bmrWNasbg56KJiGAECyck83ntiZGShDqfF7OF
 5pcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=OuMVG+rAcmfDAvofKjPIQX+VmSUPtt76BOeSoyVp0P0=;
 b=QRTkL52GpJ2ekFkNJYO1aPs4HdVqjWVUeQiHALBvvKjhAWT1B0WdvEJvVqcK09BwKB
 lwwqtfwdsMczr3MyatzVrheaRCbN1uhN2GIMrDE4e7eOnx64HDdZ+EKeusCmZ4YOBmrH
 mQ/lEiuXp6SdR3LBGrnKxcSOYchzzsb23qj29FRZhNmQRE4c0kovWRLgYloRgj7ZYMbs
 LD9M1ImW7eRWCESUioKfvJSsHmLnYhIiAVfdzXL8qP3eUwAgRPqB4vGpmTa3jc9JiP6N
 G5eRTm7lijgEQR+VvX8OdOORoPjx8ItZDN+It9wae14kLz8Zt2D7JkB593ioPbrmwYcO
 QMdw==
X-Gm-Message-State: ANhLgQ18h3tk76zBwjVMuIS0tEqAjLGqfjBSaSxvZZRZA0s9f7yv4s4m
 cVy2n6MF0XxoX5RwcE8/CjRN3I3YkYQ=
X-Google-Smtp-Source: ADFU+vuX7lmrwStgO00QF2whBWVzujCp6g4AqJSb1iqI9dt6fK6BzDUAqsvOBASiE2eLCEGcMWhMcNAeQrU=
X-Received: by 2002:a1f:2c08:: with SMTP id s8mr5746912vks.53.1584028767311;
 Thu, 12 Mar 2020 08:59:27 -0700 (PDT)
Date: Thu, 12 Mar 2020 16:59:20 +0100
Message-Id: <20200312155920.50067-1-glider@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.481.gfbce0eb801-goog
Subject: [PATCH] arm64: define __alloc_zeroed_user_highpage
From: glider@google.com
To: catalin.marinas@arm.com, will.deacon@arm.com, mark.rutland@arm.com
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200312_085929_992627_04E863A6 
X-CRM114-Status: UNSURE (   9.05  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:94a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 DKIMWL_WL_MED          DKIMwl.org - Medium sender
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
Cc: akpm@linux-foundation.org, Alexander Potapenko <glider@google.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 keescook@chromium.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

When running the kernel with init_on_alloc=1, calling the default
implementation of __alloc_zeroed_user_highpage() from include/linux/highmem.h
leads to double-initialization of the allocated page (first by the page
allocator, then by clear_user_page().
Calling alloc_page_vma() with __GFP_ZERO, similarly to e.g. x86, seems
to be enough to ensure the user page is zeroed only once.

Signed-off-by: Alexander Potapenko <glider@google.com>
---
 arch/arm64/include/asm/page.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/include/asm/page.h b/arch/arm64/include/asm/page.h
index d39ddb258a049..75d6cd23a6790 100644
--- a/arch/arm64/include/asm/page.h
+++ b/arch/arm64/include/asm/page.h
@@ -21,6 +21,10 @@ extern void __cpu_copy_user_page(void *to, const void *from,
 extern void copy_page(void *to, const void *from);
 extern void clear_page(void *to);
 
+#define __alloc_zeroed_user_highpage(movableflags, vma, vaddr) \
+	alloc_page_vma(GFP_HIGHUSER | __GFP_ZERO | movableflags, vma, vaddr)
+#define __HAVE_ARCH_ALLOC_ZEROED_USER_HIGHPAGE
+
 #define clear_user_page(addr,vaddr,pg)  __cpu_clear_user_page(addr, vaddr)
 #define copy_user_page(to,from,vaddr,pg) __cpu_copy_user_page(to, from, vaddr)
 
-- 
2.25.1.481.gfbce0eb801-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
