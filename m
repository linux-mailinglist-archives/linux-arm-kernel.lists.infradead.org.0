Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A148834624
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:05:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:From:Subject:Mime-Version:Message-Id
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OIHlsAlT6FZD2UMoSnjEKPwQJVrNg1Dtwct/GEBSSU8=; b=G4OcrNHIKSFV8T
	8llEht5XJrshQNKa8+TPQzto1X4SJsI3JzF18k1QK2P+jfH5TkSaXiXp24OjFsda7O1KRpJlRCqvF
	FnZNnaF8oB2EHbHNUGc0nuhnh5Cm63huTYW4AYqrb5uM70z61Ll0a9mf5N/EFZ2WNoZfG1rcN2Qzb
	/eTogHb+jMyEJXLj8/5qSf40n1qwmW+lFGyGKZtm/pPM8TSEy247e/+cd/VdvcyM3+32RNs/Cacmp
	qH/S0GwmJvDLgl+MRJbdtjxrEi4lauAnEL/Rum4BlhOxlO0P5NH5bTgXXfNbO3JwfjPe+JQkxXEzX
	ibAFOOjzi921XNCobusA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8BY-0007TW-02; Tue, 04 Jun 2019 12:05:00 +0000
Received: from mail-vs1-xe4a.google.com ([2607:f8b0:4864:20::e4a])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8BR-0007Sr-Cv
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:04:54 +0000
Received: by mail-vs1-xe4a.google.com with SMTP id x140so1643219vsc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 05:04:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=20161025;
 h=date:message-id:mime-version:subject:from:to:cc;
 bh=jQ4jdowRSjR3urFOBjyFZklSNNoQ/ud0fhl6APbdVCA=;
 b=GowLAStz/2F1T2+1l2LwgSfjTKRmMNBrNNCBZBil5igL4JQyaWlnxhbbmWCoX861Oi
 B/gqgNlu7CEqXMP2+z7kELt1QAkywzQ/4/CBIgoztk4jhPS0IDaW6f2xT62bZyvCkGPW
 ChaaC18egrJWcY5tXKS1tu+1ggnllHfRVAt4dSrOhgYxZTnaC50stPSrxwS8K7gbAyLN
 UjDTA5LQ+N55Gnmek72ZITAekTqyE/lF715JE4SsnddL1vL3d3tMoF9CBM84jFEXZ+Fi
 /tVHki2lXZ2QdEK7Q+gvSqDXWwBEJ/eJ981jOBPiAFjG2vVRecZEHKzlptA4WkyhnZzl
 0RUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc;
 bh=jQ4jdowRSjR3urFOBjyFZklSNNoQ/ud0fhl6APbdVCA=;
 b=RJdSH4eDU1HnIfPk2Ri9GVrhucPuNHhnL0AKztNMCQlwpwUA+z9HZX/qELDU+WU4GM
 7rOSLz0Z6adEDwVi+wsJvbctap9ojbKBSvGxz07gLbhigc6bpIlxDUuSGRVORdVDeQ2w
 xshzWMwOYSVo0Fw2/zBTT5+nozyLva5pEp+6mLDER+Qf5eI0PCaZr2mxE5HygBjRH+7y
 wtmKPl5HkIEJzb0xqHUBvkbzA0CO8PWcyv5/vp6g2XPNK2xmNyHoj2Xd7ik9dgHupvTW
 nlurzPkfYoYkXOOLzLvbCjIi9X5LqkME9htNE1DFXYG2YxMeZrU6igDbO/Bvw60itNdu
 gmgQ==
X-Gm-Message-State: APjAAAV70ieD1luRZBUB8QPZDmn8ucaU1FQc+Ejy9eMR5EiqnOECyA01
 1cO+YktPYRe6Qg2kb0L5x+MHrsxrgpP2R2nv
X-Google-Smtp-Source: APXvYqzbAGU8OQBoy9uHFFBvYRcfDQrSEKOseigLTkDo7YUO7FMQDDHLZj47ajW7+eNrCdw8uM2m21YgNxpjq+Kq
X-Received: by 2002:ab0:184e:: with SMTP id j14mr15665222uag.91.1559649891290; 
 Tue, 04 Jun 2019 05:04:51 -0700 (PDT)
Date: Tue,  4 Jun 2019 14:04:47 +0200
Message-Id: <c8311f9b759e254308a8e57d9f6eb17728a686a7.1559649879.git.andreyknvl@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
Subject: [PATCH v2] uaccess: add noop untagged_addr definition
From: Andrey Konovalov <andreyknvl@google.com>
To: Linus Torvalds <torvalds@linux-foundation.org>,
 linux-arm-kernel@lists.infradead.org, 
 sparclinux@vger.kernel.org, linux-mm@kvack.org, linux-kernel@vger.kernel.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_050453_465087_D24D7571 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -7.7 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e4a listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -7.5 USER_IN_DEF_DKIM_WL    From: address is in the default DKIM
 white-list
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid -0.0 T_DKIMWL_WL_MED        DKIMwl.org - Medium sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, Szabolcs Nagy <Szabolcs.Nagy@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Kostya Serebryany <kcc@google.com>, Khalid Aziz <khalid.aziz@oracle.com>,
 Felix Kuehling <Felix.Kuehling@amd.com>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Jacob Bramley <Jacob.Bramley@arm.com>, Leon Romanovsky <leon@kernel.org>,
 Christoph Hellwig <hch@infradead.org>, Jason Gunthorpe <jgg@ziepe.ca>,
 Dave Martin <Dave.Martin@arm.com>, Evgeniy Stepanov <eugenis@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, Kees Cook <keescook@chromium.org>,
 Ruben Ayrapetyan <Ruben.Ayrapetyan@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Ramana Radhakrishnan <Ramana.Radhakrishnan@arm.com>,
 Alex Williamson <alex.williamson@redhat.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Dmitry Vyukov <dvyukov@google.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Yishai Hadas <yishaih@mellanox.com>,
 Jens Wiklander <jens.wiklander@linaro.org>, Lee Smith <Lee.Smith@arm.com>,
 Alexander Deucher <Alexander.Deucher@amd.com>,
 Andrew Morton <akpm@linux-foundation.org>, enh <enh@google.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Christian Koenig <Christian.Koenig@amd.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Architectures that support memory tagging have a need to perform untagging
(stripping the tag) in various parts of the kernel. This patch adds an
untagged_addr() macro, which is defined as noop for architectures that do
not support memory tagging. The oncoming patch series will define it at
least for sparc64 and arm64.

Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Reviewed-by: Khalid Aziz <khalid.aziz@oracle.com>
Signed-off-by: Andrey Konovalov <andreyknvl@google.com>
---
 include/linux/mm.h | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/include/linux/mm.h b/include/linux/mm.h
index 0e8834ac32b7..dd0b5f4e1e45 100644
--- a/include/linux/mm.h
+++ b/include/linux/mm.h
@@ -99,6 +99,17 @@ extern int mmap_rnd_compat_bits __read_mostly;
 #include <asm/pgtable.h>
 #include <asm/processor.h>
 
+/*
+ * Architectures that support memory tagging (assigning tags to memory regions,
+ * embedding these tags into addresses that point to these memory regions, and
+ * checking that the memory and the pointer tags match on memory accesses)
+ * redefine this macro to strip tags from pointers.
+ * It's defined as noop for arcitectures that don't support memory tagging.
+ */
+#ifndef untagged_addr
+#define untagged_addr(addr) (addr)
+#endif
+
 #ifndef __pa_symbol
 #define __pa_symbol(x)  __pa(RELOC_HIDE((unsigned long)(x), 0))
 #endif
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
