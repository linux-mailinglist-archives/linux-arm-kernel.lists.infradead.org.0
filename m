Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBAB15C7BE
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 17:20:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dWu3YK4nqf/RKzXR9Sm1AKvPmiD8sTsZ/GBTkDJ0Qo4=; b=heVdqb3gSiI58l
	/J2QBBPXqDb2IhQydPHfYMKnvia1MWF77+6lcj7r8543jnRuE9vlYMeA2aQ2i29bwOKzoIogyFvBT
	9TRFq2t734w8U5AHOo7jniUl+7Q8wdeS2eVLhXcnfOC1An/nQvlawv9/ligQgZMz9Pq0kSzs2nGCP
	bHnlWPiglhFt2TwmJ8T09PFJoswIbBSxZoTVDNgv4XnwhuqID+l0Iz+I1IFGQhnEHOBHNxPVjazQZ
	1X5ix4WrjF1oV806ov+lpqoaukKGhL9/i+P6z6//xp4XsRE0mEkKVDgbEi1e5mTO5P1/mSY/alCgp
	n6oJ7JQ/OSZLQVrwsFJA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2HDV-0006mo-06; Thu, 13 Feb 2020 16:19:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2HAv-0004DL-LR
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 16:17:16 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 239721063;
 Thu, 13 Feb 2020 08:17:13 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com
 [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 97AF03F6CF;
 Thu, 13 Feb 2020 08:17:10 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 clang-built-linux@googlegroups.com, x86@kernel.org
Subject: [PATCH 11/19] linux/elfnote.h: Replace elf.h with UAPI equivalent
Date: Thu, 13 Feb 2020 16:16:06 +0000
Message-Id: <20200213161614.23246-12-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_081714_243417_3786DD57 
X-CRM114-Status: GOOD (  11.09  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: ndesaulniers@google.com, 0x7f454c46@gmail.com, avagin@openvz.org,
 arnd@arndb.de, sboyd@kernel.org, catalin.marinas@arm.com, will.deacon@arm.com,
 linux@armlinux.org.uk, salyzyn@android.com, paul.burton@mips.com,
 mingo@redhat.com, bp@alien8.de, luto@kernel.org, tglx@linutronix.de,
 pcc@google.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Replace linux/elf.h with UAPI equivalent in elfnote.h to make the header
suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/elfnote.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/linux/elfnote.h b/include/linux/elfnote.h
index f236f5b931b2..594d4e78654f 100644
--- a/include/linux/elfnote.h
+++ b/include/linux/elfnote.h
@@ -59,7 +59,7 @@
 	ELFNOTE_END
 
 #else	/* !__ASSEMBLER__ */
-#include <linux/elf.h>
+#include <uapi/linux/elf.h>
 /*
  * Use an anonymous structure which matches the shape of
  * Elf{32,64}_Nhdr, but includes the name and desc data.  The size and
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
