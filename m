Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 26D00135D88
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:05:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Tv+xpmvarkmzIKCxcqjj6IJ3HGy92bgZ7KNUkSgY6kg=; b=CCd3+qzCSaAqek
	uOVzwaah42KLWZLdG5XLDCkqQkQamuN9QkgMj8HDU7TmQv+pWpGUtv/IvtA/h+g2zS9PS//myW3TR
	yli5N5RwHNSi8rSf6PVc2n4ah0jl/CKDVzVMM4qt97HeowzUXPOHtMzve2lDcoUtsb2t0mDo3RGgU
	ULyUIajieXgsNKZGqskxlkG/ovLnEUnE77B/QnWkoKrzKvwyz7GK3qEO99kbKeOAr1Pl1l8H+qOsE
	IDzbR4gyxaUsSs9Vzc87BtcKciuHzQI+LM5er5c3aj7Il1sVnqOG/y9goLns4XqhEqIETNqRbCc5u
	8Bwq43PY6CKxZeDdOmiw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaJh-0007BW-3G; Thu, 09 Jan 2020 16:05:49 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIN-00051S-P3
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Jan 2020 16:04:27 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=h7WOWw3CmbI4FYhjgRf2tNAW2ZSsJGxLjWzDUCTQoZ0=; b=Pt8HAPnAMYctA1AuihAsu9G0AO
 xUXq9whZ3IfrXBu7Oh4Z2us+ipf6tL4S4YQovybFVJD9+CnJ+myyxoxz6tmJiOl3nyJBNaS4Kbw3g
 53hZhLQLQv/JNty2SDUKKBanNL2fChekHrMKAuZ1Kmj/sx1vsSJV6coSCKG60LnTlhbeGOk023MPZ
 s935VLv1JYgSkPhF4TEAtvp9wQB9/YlzNsbmV7AVKLG8/cyPFSgHxRp/5plv+XeUSN2B0OueKaNQ5
 IAjI4uLu+zV4gkqpr4BM/Be91A2lbTmEVDLeTDvgnBMqyOecijFmN0Tei0tX8qBTJzbt7Cxaj1QPv
 +T5t4V1A==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIl-0007ku-D7
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585838;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=h7WOWw3CmbI4FYhjgRf2tNAW2ZSsJGxLjWzDUCTQoZ0=;
 b=Athg2/mf0NuxDCp217uDtUtlifae1WQeu3Sqdy4wmgAvcg3g3KCywTFDO2LLfbSifmUjvX
 peLBOBT2aRfhjyG8+KY9sHO0zNzFIm8L62423YZp5NiKpvv+Y1WFusxz4TLekG18VzR7qJ
 qZHzJ5vu8fO66GbiGgCa3FAY3Hrj8Nk=
Received: from mail-wr1-f72.google.com (mail-wr1-f72.google.com
 [209.85.221.72]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-Bk6daoRpN1K9gEjcx6DA8Q-1; Thu, 09 Jan 2020 11:03:54 -0500
Received: by mail-wr1-f72.google.com with SMTP id u12so3042999wrt.15
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+ZWC3NYwPtgLE6SG36C3VaKcOwxxIR92Oe8t166+ozo=;
 b=WMqM/zYqvCsHcPxD6+WwavdyPdNdtF0dw1tsVcpzRTaDuI8kjVmSzTCjzQVfH9dpEx
 tQOV/WV8tgeQj9iTtL7s8EUy2qN/v9DRDuoTsSZXpZpTaJzwPPPywYp0zJXBXA+4G4+e
 1hWeR7n0O1GTHmeGdaGzJPr2ukJI3Wf3s3ShhSn0/KLB/ocU9SiNWylDVGbgatL06c4r
 BV9ZXw5UaWjbHiOyck53Fsy4Ea/5sKj6QbC4lqSViVDS1AqVZISdhciVJGYyMVpe8Jvu
 V/XiUEaf4nBEAEEL7VHioNTY5X+bvOhdHrkiQrKgxRucBBLHp1zNpNpbKgnZb6rMotym
 yBzQ==
X-Gm-Message-State: APjAAAWLDbRbhSgcownqJr04UHZ0cD5HnlpIN72ugBnvON7xWSsKSAH5
 5YU9WwkjkwwM28usE3HG4tYNItToLArcd8JyMaaRjkTljhDIH0VQuRYVMgQcDjhDLs+Z2bxo2Ot
 O8No0jlLfompBP388wLG8fMl4+ee4yYMVRNE=
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr5714903wmh.35.1578585832545; 
 Thu, 09 Jan 2020 08:03:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqz3K422AcRc43kA+7KXUEORNfUwnc+dzxIyEmAHwHDVmV1yK+mA2HEhXQ9YIN/yRwLx6UmfRA==
X-Received: by 2002:a1c:4d18:: with SMTP id o24mr5714878wmh.35.1578585832351; 
 Thu, 09 Jan 2020 08:03:52 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m126sm3321546wmf.7.2020.01.09.08.03.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:51 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 08/57] objtool: Make ORC support optional
Date: Thu,  9 Jan 2020 16:02:11 +0000
Message-Id: <20200109160300.26150-9-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: Bk6daoRpN1K9gEjcx6DA8Q-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_160451_527823_9F7230E7 
X-CRM114-Status: GOOD (  13.62  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on casper.infradead.org summary:
 Content analysis details:   (-0.2 points, 5.0 required)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Julien Thierry <jthierry@redhat.com>, peterz@infradead.org,
 catalin.marinas@arm.com, raphael.gault@arm.com, jpoimboe@redhat.com,
 will@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Currently, only x86 supports ORC. To simplify the addition of other
supported architectures to objtool 'check' command, make the 'orc'
objtool command optional to implement for a given architecture.

Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/Build     |  2 +-
 tools/objtool/Makefile  | 10 +++++++++-
 tools/objtool/check.c   |  4 ++++
 tools/objtool/objtool.c |  2 ++
 tools/objtool/orc.h     | 33 +++++++++++++++++++++++++++++++--
 5 files changed, 47 insertions(+), 4 deletions(-)

diff --git a/tools/objtool/Build b/tools/objtool/Build
index d069d26d97fa..6e7163f9522a 100644
--- a/tools/objtool/Build
+++ b/tools/objtool/Build
@@ -1,6 +1,6 @@
 objtool-y += arch/$(SRCARCH)/
 objtool-y += builtin-check.o
-objtool-y += builtin-orc.o
+objtool-$(OBJTOOL_ORC) += builtin-orc.o
 objtool-y += check.o
 objtool-y += elf.o
 objtool-y += special.o
diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
index d2a19b0bc05a..24d653e0b6ec 100644
--- a/tools/objtool/Makefile
+++ b/tools/objtool/Makefile
@@ -6,6 +6,10 @@ ifeq ($(ARCH),x86_64)
 ARCH := x86
 endif
 
+ifeq ($(ARCH),x86)
+OBJTOOL_ORC := y
+endif
+
 # always use the host compiler
 HOSTAR	?= ar
 HOSTCC	?= gcc
@@ -42,8 +46,12 @@ LDFLAGS  += $(LIBELF_LIBS) $(LIBSUBCMD) $(KBUILD_HOSTLDFLAGS)
 elfshdr := $(shell echo '$(pound)include <libelf.h>' | $(CC) $(CFLAGS) -x c -E - | grep elf_getshdr)
 CFLAGS += $(if $(elfshdr),,-DLIBELF_USE_DEPRECATED)
 
+ifeq ($(OBJTOOL_ORC),y)
+CFLAGS	+= -DOBJTOOL_ORC
+endif
+
 AWK = awk
-export srctree OUTPUT CFLAGS SRCARCH AWK
+export srctree OUTPUT CFLAGS SRCARCH AWK OBJTOOL_ORC
 include $(srctree)/tools/build/Makefile.include
 
 $(OBJTOOL_IN): fixdep FORCE
diff --git a/tools/objtool/check.c b/tools/objtool/check.c
index 2c5ccf61510a..8f2ff030936d 100644
--- a/tools/objtool/check.c
+++ b/tools/objtool/check.c
@@ -1317,6 +1317,7 @@ static bool has_valid_stack_frame(struct insn_state *state)
 	return false;
 }
 
+#ifdef OBJTOOL_ORC
 static int update_insn_state_regs(struct instruction *insn, struct insn_state *state)
 {
 	struct cfi_reg *cfa = &state->cfa;
@@ -1340,6 +1341,7 @@ static int update_insn_state_regs(struct instruction *insn, struct insn_state *s
 
 	return 0;
 }
+#endif
 
 static void save_reg(struct insn_state *state, unsigned char reg, int base,
 		     int offset)
@@ -1425,8 +1427,10 @@ static int update_insn_state(struct instruction *insn, struct insn_state *state)
 		return 0;
 	}
 
+#ifdef OBJTOOL_ORC
 	if (state->type == ORC_TYPE_REGS || state->type == ORC_TYPE_REGS_IRET)
 		return update_insn_state_regs(insn, state);
+#endif
 
 	switch (op->dest.type) {
 
diff --git a/tools/objtool/objtool.c b/tools/objtool/objtool.c
index 0b3528f05053..8db7139b72cd 100644
--- a/tools/objtool/objtool.c
+++ b/tools/objtool/objtool.c
@@ -34,7 +34,9 @@ static const char objtool_usage_string[] =
 
 static struct cmd_struct objtool_cmds[] = {
 	{"check",	cmd_check,	"Perform stack metadata validation on an object file" },
+#ifdef OBJTOOL_ORC
 	{"orc",		cmd_orc,	"Generate in-place ORC unwind tables for an object file" },
+#endif
 };
 
 bool help;
diff --git a/tools/objtool/orc.h b/tools/objtool/orc.h
index ffda072cf4ad..f5303b8264e3 100644
--- a/tools/objtool/orc.h
+++ b/tools/objtool/orc.h
@@ -6,14 +6,43 @@
 #ifndef _ORC_H
 #define _ORC_H
 
-#include <asm/orc_types.h>
-
 struct objtool_file;
 
+#ifdef OBJTOOL_ORC
+
+#include <asm/orc_types.h>
+
 int arch_orc_init(struct objtool_file *file);
 int arch_orc_create_sections(struct objtool_file *file);
 int arch_orc_read_unwind_hints(struct objtool_file *file);
 
 int orc_dump(const char *objname);
 
+#else
+
+struct orc_entry {
+};
+
+static inline int arch_orc_init(struct objtool_file *file)
+{
+	return 0;
+}
+
+static inline int arch_orc_create_sections(struct objtool_file *file)
+{
+	return 0;
+}
+
+static inline int arch_orc_read_unwind_hints(struct objtool_file *file)
+{
+	return 0;
+}
+
+static inline int orc_dump(const char *objname)
+{
+	return 0;
+}
+
+#endif /* OBJTOOL_ORC */
+
 #endif /* _ORC_H */
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
