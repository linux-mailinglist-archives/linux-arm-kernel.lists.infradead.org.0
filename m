Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAEE32E1C
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 12:58:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fIetZvn1CNYZIQwzjt3hJI3e2T7Xl36wMkug1Wij9J4=; b=TbQWh2tUfmgzq+vOy/WP6rtaGT
	CIOls67AN2W+tngD6zZfaMzEOTw8dwNo+inut8mYLSXt1WMgO8tAT9b4Tb9P3BFcbfKoBbOJh0fFL
	UlC6apcPZ4f3CaO2fNZylqbZYRUPlPXpiIrfP2KnaHsV33DtNM3py+bVrVCGe79d4gosftPB75q9/
	xFzzFQ6kaiF8mU3TLDeKumMI1J4X4eJHvKPdHqELvsgMwAW3MnqdTNWY38Or6si1Gkg/SUxJiQfDM
	IWIPFo6HOXVMyvsTAY5esMVYvQvXZ0c0xBfCkS2m40ci7Dt/wCP4pfTV9tjhi6VCnN7LKS8zEBR1Y
	uaH0DqlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXkfu-0004E1-NS; Mon, 03 Jun 2019 10:58:46 +0000
Received: from mx1.tq-group.com ([62.157.118.193])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXkff-00045k-Fe
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 10:58:33 +0000
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665932"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
 by mx1-pgp.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from mx1.tq-group.com ([192.168.6.7])
 by tq-pgp-pr1.tq-net.de (PGP Universal service);
 Mon, 03 Jun 2019 12:58:12 +0200
X-PGP-Universal: processed;
 by tq-pgp-pr1.tq-net.de on Mon, 03 Jun 2019 12:58:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
 t=1559559491; x=1591095491;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=ts5LC/RvHzgs2W6xsbaqMxcECartTZCimeTJSzte1xI=;
 b=geU3Y913XpTWmF+Sa4xYUSpKeGsVtAk0wDtNeV1/ymRejadKSf4WUjrs
 103VgINyi/Q0i67fxF1jRzMh9nTQV9aU6/VpR6phZXXEfJKiPyaSlBa7/
 52RMJWKq8B8jFNIRPHzUj9yg7UGgy+UGM7ZB/3RujWqjd5xlGSqyAMCrP
 saTl8baRYZnb0Sh+5Olvvb0Wimb0ztDudzv/J2PAHR8ff3sssrSw+fPw9
 FZv3zKRgYaYGFZ+wC0wRCqElmTxZlq0kJ25zq2zKc/To5UpeTEfuwS/o/
 0hbFiDNgzak/9oW6wfMIjJt7ZfL6/QBhwFjJl7/DWUTrckDvOrxDLiBMF A==;
X-IronPort-AV: E=Sophos;i="5.60,546,1549926000"; 
   d="scan'208";a="7665931"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
 by mx1.tq-group.com with ESMTP; 03 Jun 2019 12:58:11 +0200
Received: from schifferm-ubuntu4.tq-net.de (schifferm-ubuntu4.tq-net.de
 [10.117.49.26])
 by vtuxmail01.tq-net.de (Postfix) with ESMTPA id 801C9280075;
 Mon,  3 Jun 2019 12:58:15 +0200 (CEST)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Russell King <linux@armlinux.org.uk>,
	Jessica Yu <jeyu@kernel.org>
Subject: [PATCH modules 1/2] module: allow arch overrides for .exit section
 names
Date: Mon,  3 Jun 2019 12:57:25 +0200
Message-Id: <20190603105726.22436-2-matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
References: <20190603105726.22436-1-matthias.schiffer@ew.tq-group.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_035831_841821_C9231BC3 
X-CRM114-Status: GOOD (  12.05  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [62.157.118.193 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 include/linux/moduleloader.h | 8 ++++++++
 kernel/module.c              | 2 +-
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/include/linux/moduleloader.h b/include/linux/moduleloader.h
index 31013c2effd3..cddbd85fb659 100644
--- a/include/linux/moduleloader.h
+++ b/include/linux/moduleloader.h
@@ -5,6 +5,7 @@
 
 #include <linux/module.h>
 #include <linux/elf.h>
+#include <linux/string.h>
 
 /* These may be implemented by architectures that need to hook into the
  * module loader code.  Architectures that don't need to do anything special
@@ -93,4 +94,11 @@ void module_arch_freeing_init(struct module *mod);
 #define MODULE_ALIGN PAGE_SIZE
 #endif
 
+#ifndef HAVE_ARCH_MODULE_EXIT_SECTION
+static inline bool module_exit_section(const char *name)
+{
+	return strstarts(name, ".exit");
+}
+#endif
+
 #endif
diff --git a/kernel/module.c b/kernel/module.c
index 6e6712b3aaf5..e8e4cd0a471f 100644
--- a/kernel/module.c
+++ b/kernel/module.c
@@ -2924,7 +2924,7 @@ static int rewrite_section_headers(struct load_info *info, int flags)
 
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
