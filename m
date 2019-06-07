Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D28F3883F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 12:50:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Kn7Mop0Dgdrb5scUq10DnC7+LLiHjW53qgLWkZdL7K4=; b=EfcaHb3rBQV8eAZEGVFz1Ek+LD
	U+fPL9g5f20AdOSAp1uXqbl7860hOuCOBhKG60CkXqSqCz4TioCkAC+zDKJmHR/PZCBD0MRTG2mFb
	ft4lyvzNu1beXq82um+KlYk5Zv7cuRYXGk/3B2QXN0d0TgkO7TPOZaYGzmrN+a+gseGv6Xbhooa3W
	G8VqJnjeD7uXtB0ZrzvHLWM+0h63ND+7rHZY9VWsL2dLNsdW3pMKBCOnW2q3XUSKCmxBdLSjH7zH6
	ZpUsIm8lBM0N1k3OAaIls1u5/BtUSrmjwFHfcvFweIqaWnUNTSCrbAvPx0PFJdMvsFsUKVSpUhaVA
	6BLNoyMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZCRu-000118-Fs; Fri, 07 Jun 2019 10:50:18 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZCRT-0000qh-14
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 10:49:52 +0000
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741350"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 07 Jun 2019 12:49:39 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Fri, 07 Jun 2019 12:49:39 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Fri, 07 Jun 2019 12:49:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559904579; x=1591440579;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=fKg2mD/qwL/cmX0j2krbwJOZX3Iu3z3MEa+o5iUU+44=;
 b=DBwoQNWKuPzt9rGLL4dgvkecWPdqa/WmG7lsqMJ9xUabMGOucUf3q9Bf
 Cs0ltAZKpy2NzHybDGFLhOextb8ZaeI9Uq1EN2+EAPT2GPZT4xSMcjojr
 RJ8Yuqzl9cC08fJlxJHSO07rQ+a/sSNi9NMlaUTbFQc3C+wyzmzKR1sc4
 0NkKB1CMoljyIne2UBxcpQNmCRyoDKIvdLAJKx/W6WEZyhNXMsUt5aB78
 2vfql7zPufxPG6pJq+Cl0bLDNgDZxbarLxKo0S8K2MFL8I8JZ3Uk+zgzJ
 8yCdCbdNN51jYgRkJkTgxsr1HraJFraanXsIBdw5bsMB2t7WeT8W0AuTA g==;
X-IronPort-AV: E=Sophos;i="5.60,562,1549926000"; 
   d="scan'208";a="7741349"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 07 Jun 2019 12:49:39 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 5D9FA280074;
 Fri,  7 Jun 2019 12:49:46 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules v2 1/2] module: allow arch overrides for .exit section
 names
Date: Fri,  7 Jun 2019 12:49:11 +0200
Message-Id: <20190607104912.6252-2-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
References: <20190607104912.6252-1-matthias.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_034951_392226_0DFA0ECD 
X-CRM114-Status: GOOD (  11.11  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>,
 linux-ia64@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Some archs like ARM store unwind information for .exit.text in sections
with unusual names. As this unwind information refers to .exit.text, it
must not be loaded when .exit.text is not loaded (when CONFIG_MODULE_UNLOAD
is unset); otherwise, loading a module can fail due to relocation failures.

Signed-off-by: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
---
v2: Use __weak function as suggested by Jessica

 include/linux/moduleloader.h | 5 +++++
 kernel/module.c              | 7 ++++++-
 2 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
index 31013c2effd3..5229c18025e9 100644
--- a/include/linux/moduleloader.h
+++ b/include/linux/moduleloader.h
@@ -29,6 +29,11 @@ void *module_alloc(unsigned long size);
 /* Free memory returned from module_alloc. */
 void module_memfree(void *module_region);
 
+/* Determines if the section name is an exit section (that is only used during
+ * module unloading)
+ */
+bool module_exit_section(const char *name);
+
 /*
  * Apply the given relocation to the (simplified) ELF.  Return -error
  * or 0.
diff --git a/kernel/module.c b/kernel/module.c
index 6e6712b3aaf5..043c0f965be2 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2735,6 +2735,11 @@ void * __weak module_alloc(unsigned long size)
 	return vmalloc_exec(size);
 }
 
+bool __weak module_exit_section(const char *name)
+{
+	return strstarts(name, ".exit");
+}
+
 #ifdef CONFIG_DEBUG_KMEMLEAK
 static void kmemleak_load_module(const struct module *mod,
 				 const struct load_info *info)
@@ -2924,7 +2929,7 @@ static int rewrite_section_headers(struct load_info *info, int flags)
 
 #ifndef CONFIG_MODULE_UNLOAD
 		/* Don't load .exit sections */
-		if (strstarts(info->secstrings+shdr->sh_name, ".exit"))
+		if (module_exit_section(info->secstrings+shdr->sh_name))
 			shdr->sh_flags &= ~(unsigned long)SHF_ALLOC;
 #endif
 	}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
