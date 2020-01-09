Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A46D0135D87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 17:05:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=059XBshiyFRPDEZxOBR0D36HXUZI4CFs0qgM9JVhDrs=; b=HYwr1VeEF0LTTe
	OC1YPfE1Eymy0UvV3zFeMUJ4RPj3k0oMXlnPNhsTF0LTwc7nWovNhkaE/aeemwrJPyV7utA2jhXUm
	VtSKQ0JRwy4u0JWHDrH+k2y1ACrrspGmRqApJF1yXrM1f444CmL2tcIxiZ4iqRO59Gd+SdehS+xFc
	U2+WH6Ge+9jsQJy2pQEwlKCO1Dw328q0VRbnK/j3eAVj6LZ6gDPrrt47+CxFr13maOMmBhILapwyo
	cjhUr57S70di4LcuVtSSc97ERUFUFg5A0WgEodTLMwL/bdJADNwlWKJFyvAFAKVLJFKufl68jnV90
	xWQSTtRtsZyR+dCt5CDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipaJQ-0006vk-Lh; Thu, 09 Jan 2020 16:05:32 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIK-0004xG-6T
 for linux-arm-kernel@bombadil.infradead.org; Thu, 09 Jan 2020 16:04:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:Content-Type:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
 Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:
 List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=iD5ekURTlh+pgwRxx2gUCDMyCmbRJV+KeqCXMr7mSSA=; b=Q88wb/tdghmRb3o6onb/tCcdyw
 letOvP18Kv0U6o7S/TxnWIJ3s/Jn/009yxJUXTA4zhKL3m82WF2ZuxWHbNAwG9i87iskmEZZ68aDU
 s9dBd1HitVTyjF8C6eiwc+e5A8w6uDd0Hzx96CwPrdYmWZV9uCbRoQoEO/XjqkIjJm5IG+dXZxKr5
 j0+OeC3/2yZmU8q3773EmThA/DqsIMNc3qMz9rsrR5KiGE+7uGqYAlJWu4IDPcKE3M4Jia3jPhaup
 xnYoK2a2fn/byoFUbkNrcbqxDzasczGgXxZ1kTxZBVoFe1ORUZFP48dpWFLVlUlI4Fj8JMaH6lfyi
 8Fap4WPg==;
Received: from us-smtp-delivery-1.mimecast.com ([205.139.110.120]
 helo=us-smtp-1.mimecast.com)
 by casper.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipaIg-0007jj-0i
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 16:04:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1578585836;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=iD5ekURTlh+pgwRxx2gUCDMyCmbRJV+KeqCXMr7mSSA=;
 b=N+kdxI3lFheoMVufTRdjeBiWSvyP95c1y5SQn58CyTwlyNAsKRyVbVz++l0t8QReNgegIs
 6zpzaBaAFeH69BY+2jMGunc8rL7nXqpDntV8RiMDJpvTEs/aiQhMiM9G4wzElsOrbv3fFJ
 oDmm9y064Fhmr/+4FGGs5L/P/A6M2tY=
Received: from mail-wr1-f71.google.com (mail-wr1-f71.google.com
 [209.85.221.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-2-y8BQ9QgKNkOGWfkfx6KPNA-1; Thu, 09 Jan 2020 11:03:55 -0500
Received: by mail-wr1-f71.google.com with SMTP id o6so3035909wrp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Jan 2020 08:03:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Qr2r3mp7rftEmxfhLDidcKbFbCYdpKuq3T+a5+/CCqE=;
 b=i8e+go1WE/dwKNt+8xSx1uNtejo4DkNRAp8o2c0GDhPZLoSm1EyOTjtCaUKJa7mSlI
 H7hbBAvvRA2Dmq0boG1ad7KxDjA9VA/BgGHaDdkTpYabaDytMVfYrlCZ5d7awmuv64uQ
 9lxeBODiB8XgL2VD+JeAGCYDFW/GSzw93Bz/aX8qQoqbPpEKL8XLq7k6R+i/3CtFGWGK
 wkwr8y31LH5rtKGISpmM4RuZZlKvKGP0edvHwmfKzjS/pHTX4PETJVI6trCSvFLQvVoF
 VfhwudoS0KGI0ZWtgpzDb/+3mDuFpAETMjHGOEhNRrcL+qZ0F4VWxm8PkyhpsuOUJuoF
 7iFQ==
X-Gm-Message-State: APjAAAVs5rIRPmftmVKsnEVS/kt6PcRPrXGC0QpA8mFegqWDusyJi2//
 KQ1xbCIONlp8I5pcF4w9un26ybxugLvpXqvs/ez8va323izj9TXLpk/aYGhfwkDm7XZwVgxje1w
 RGF3JZ7tWpdF5kzt3GHduR6AuZ+cyy+TEFv0=
X-Received: by 2002:a7b:cb0a:: with SMTP id u10mr5598165wmj.165.1578585834089; 
 Thu, 09 Jan 2020 08:03:54 -0800 (PST)
X-Google-Smtp-Source: APXvYqxxPpfZ8umi6fB7ZYKrURHzWQS31pfkUOU6pTbSf04Fo9JFmyXHY0aoMxvY+j4DAs5z8sDE5A==
X-Received: by 2002:a7b:cb0a:: with SMTP id u10mr5598133wmj.165.1578585833874; 
 Thu, 09 Jan 2020 08:03:53 -0800 (PST)
Received: from redfedo.redhat.com
 (host81-140-166-164.range81-140.btcentralplus.com. [81.140.166.164])
 by smtp.gmail.com with ESMTPSA id m126sm3321546wmf.7.2020.01.09.08.03.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Jan 2020 08:03:53 -0800 (PST)
From: Julien Thierry <jthierry@redhat.com>
To: linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Subject: [RFC v5 09/57] objtool: Move registers and control flow to
 arch-dependent code
Date: Thu,  9 Jan 2020 16:02:12 +0000
Message-Id: <20200109160300.26150-10-jthierry@redhat.com>
X-Mailer: git-send-email 2.21.1
In-Reply-To: <20200109160300.26150-1-jthierry@redhat.com>
References: <20200109160300.26150-1-jthierry@redhat.com>
MIME-Version: 1.0
X-MC-Unique: y8BQ9QgKNkOGWfkfx6KPNA-1
X-Mimecast-Spam-Score: 0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200109_160446_173104_9596004B 
X-CRM114-Status: GOOD (  13.44  )
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

From: Raphael Gault <raphael.gault@arm.com>

The control flow information and register macro definitions were based on
the x86_64 architecture but should be abstract so that each architecture
can define the correct values for the registers, especially the registers
related to the stack frame (Frame Pointer, Stack Pointer and possibly
Return Address).

Signed-off-by: Raphael Gault <raphael.gault@arm.com>
[J.T. : Added objtool arch specific include to build flags,
        Use SPDX identifier for new header]
Signed-off-by: Julien Thierry <jthierry@redhat.com>
---
 tools/objtool/Makefile                        |  3 ++-
 tools/objtool/arch/x86/include/arch_special.h | 23 +++++++++++++++++++
 tools/objtool/{ => arch/x86/include}/cfi.h    |  0
 tools/objtool/check.h                         |  1 +
 tools/objtool/special.c                       | 19 +--------------
 5 files changed, 27 insertions(+), 19 deletions(-)
 create mode 100644 tools/objtool/arch/x86/include/arch_special.h
 rename tools/objtool/{ => arch/x86/include}/cfi.h (100%)

diff --git a/tools/objtool/Makefile b/tools/objtool/Makefile
index 24d653e0b6ec..be735e4f27f5 100644
--- a/tools/objtool/Makefile
+++ b/tools/objtool/Makefile
@@ -37,7 +37,8 @@ all: $(OBJTOOL)
 
 INCLUDES := -I$(srctree)/tools/include \
 	    -I$(srctree)/tools/arch/$(HOSTARCH)/include/uapi \
-	    -I$(srctree)/tools/arch/$(ARCH)/include
+	    -I$(srctree)/tools/arch/$(ARCH)/include \
+	    -I$(srctree)/tools/objtool/arch/$(ARCH)/include
 WARNINGS := $(EXTRA_WARNINGS) -Wno-switch-default -Wno-switch-enum -Wno-packed
 CFLAGS   := -Werror $(WARNINGS) $(KBUILD_HOSTCFLAGS) -g $(INCLUDES) $(LIBELF_FLAGS)
 LDFLAGS  += $(LIBELF_LIBS) $(LIBSUBCMD) $(KBUILD_HOSTLDFLAGS)
diff --git a/tools/objtool/arch/x86/include/arch_special.h b/tools/objtool/arch/x86/include/arch_special.h
new file mode 100644
index 000000000000..426178d504a8
--- /dev/null
+++ b/tools/objtool/arch/x86/include/arch_special.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef _X86_ARCH_SPECIAL_H
+#define _X86_ARCH_SPECIAL_H
+
+#define EX_ENTRY_SIZE		12
+#define EX_ORIG_OFFSET		0
+#define EX_NEW_OFFSET		4
+
+#define JUMP_ENTRY_SIZE		16
+#define JUMP_ORIG_OFFSET	0
+#define JUMP_NEW_OFFSET		4
+
+#define ALT_ENTRY_SIZE		13
+#define ALT_ORIG_OFFSET		0
+#define ALT_NEW_OFFSET		4
+#define ALT_FEATURE_OFFSET	8
+#define ALT_ORIG_LEN_OFFSET	10
+#define ALT_NEW_LEN_OFFSET	11
+
+#define X86_FEATURE_POPCNT (4 * 32 + 23)
+#define X86_FEATURE_SMAP   (9 * 32 + 20)
+
+#endif /* _X86_ARCH_SPECIAL_H */
diff --git a/tools/objtool/cfi.h b/tools/objtool/arch/x86/include/cfi.h
similarity index 100%
rename from tools/objtool/cfi.h
rename to tools/objtool/arch/x86/include/cfi.h
diff --git a/tools/objtool/check.h b/tools/objtool/check.h
index 6d875ca6fce0..af87b55db454 100644
--- a/tools/objtool/check.h
+++ b/tools/objtool/check.h
@@ -11,6 +11,7 @@
 #include "cfi.h"
 #include "arch.h"
 #include "orc.h"
+#include "arch_special.h"
 #include <linux/hashtable.h>
 
 struct insn_state {
diff --git a/tools/objtool/special.c b/tools/objtool/special.c
index fdbaa611146d..b8ccee1b5382 100644
--- a/tools/objtool/special.c
+++ b/tools/objtool/special.c
@@ -14,24 +14,7 @@
 #include "builtin.h"
 #include "special.h"
 #include "warn.h"
-
-#define EX_ENTRY_SIZE		12
-#define EX_ORIG_OFFSET		0
-#define EX_NEW_OFFSET		4
-
-#define JUMP_ENTRY_SIZE		16
-#define JUMP_ORIG_OFFSET	0
-#define JUMP_NEW_OFFSET		4
-
-#define ALT_ENTRY_SIZE		13
-#define ALT_ORIG_OFFSET		0
-#define ALT_NEW_OFFSET		4
-#define ALT_FEATURE_OFFSET	8
-#define ALT_ORIG_LEN_OFFSET	10
-#define ALT_NEW_LEN_OFFSET	11
-
-#define X86_FEATURE_POPCNT (4*32+23)
-#define X86_FEATURE_SMAP   (9*32+20)
+#include "arch_special.h"
 
 struct special_entry {
 	const char *sec;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
