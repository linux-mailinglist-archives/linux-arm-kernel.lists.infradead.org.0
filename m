Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 993148588F
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 05:30:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=91SdTLf5of7uoUAVzBHg74jFrU1sd4He5zhltSi4hXQ=; b=hUKeDyTE7Zi3Yr
	++6S5Dm3++zj/AOvU8CbTNiX1c+UhsTOFxeREfaJFu2SyomWAgQ12/ZFe+iB6bvwUW0CALZmFx50D
	aUEV4wGWyIyHbfMENITWNBFROHnHVBxVOk+w9GD4EjPP7WGII7x63zZfM5676lVsQxDL70ixuGxoY
	gEs7SJfqhzUeJ9ExnXzdeiurr0+yZ2epLR8YhIF2rX3zGthVrjpHxZ85xoINZ0JspFFSMiQqcXZQ7
	CnirIagZsH3bLWT1NXCy7vV/z5WjTDWyG5F5YElhFXG0t6IyxkRiTt05N6P8XTX8yPd0RR1KftgE1
	L8NoavsAyyuayguql+kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvZ80-0004pS-9y; Thu, 08 Aug 2019 03:30:12 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvZ7e-0004ok-Bc
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 03:29:51 +0000
Received: by mail-qk1-x741.google.com with SMTP id s22so67744332qkj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 07 Aug 2019 20:29:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=lca.pw; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1wKcnipXNqNm/RJ8fKQegUpgi0jV6GjqcI6lqswIMYM=;
 b=d02u9ahPx43NTrP7AXSn+RdH+k6rfbwOFMrvioM9PezpWYcOD77uZZWhAghObWX0Yr
 y+PzChz9Gjo2xPk3gO9MNhM35RRWnG0k8cOyeclZyizD67jPejudSBgo5U4e135ByFOH
 /Xs2vYw6MPoRj3/6emHYUO9nJv2vm8nlxkaouSxWMfv6APkynkSVkgm/UlvcqpqyJIi1
 +FhLMnlYNBiN6sa6n3L1FivozK3WRZhVOOJ43xrmYUb2UPHdFBoqz+qBsBpEwo/CQvS1
 GdcimICgHzn15gkg/f7FweRGm/+MM7+rPCb37ooSIecXRp4okwI5tvu5ozJmBrfqtUJT
 KCFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=1wKcnipXNqNm/RJ8fKQegUpgi0jV6GjqcI6lqswIMYM=;
 b=GxUVEQBspUuU0U9WftvtwIJeiAijv63g6ebSATa3ZjG1qg0ljDvOv7UJwFMEWMmdUp
 nCt04S5yifap+0xAGc7vO+7HZSOjOIMXiop4omXeFOvNklHlsoR8N6X+O3lhXcaGjo0L
 i65FBJkwxurbqdNFv+bGgDcxxsu7Lmm46uuZA/xYAhY7jPYnPtuWATQv/kQW7qm5VRMe
 DbJHqCJb/FfW9wNbFA0SoEuqPVwjxAnOIXepypmwBeLRWIUn777EORlcZEZI03jFrdQM
 qGmS2Uw7m5cd28eSoqhXeCMPtHRCCnsgdQ9U1vvi+8MpRrmr5oeB9l398z0swgGKJlMd
 Gb5A==
X-Gm-Message-State: APjAAAUajESO0+RUGypwjX0NxAkLBziAqL81LbBfobg8+oKs4ivBJVsm
 9zPmNw3vVUuc08/dMzAjY/GbBQ==
X-Google-Smtp-Source: APXvYqwujP4p2qNPudtVv0M+LihtsXDG8THeXxk3R/d5qPWADqDjvX33f8rA/TpbUjyWFmtGbU6sKQ==
X-Received: by 2002:a37:4043:: with SMTP id n64mr11669115qka.392.1565234984850; 
 Wed, 07 Aug 2019 20:29:44 -0700 (PDT)
Received: from ovpn-120-247.rdu2.redhat.com
 (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
 by smtp.gmail.com with ESMTPSA id c5sm42466663qkb.41.2019.08.07.20.29.43
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 07 Aug 2019 20:29:44 -0700 (PDT)
From: Qian Cai <cai@lca.pw>
To: will@kernel.org,
	catalin.marinas@arm.com
Subject: [PATCH] arm64/cache: silence -Woverride-init warnings
Date: Wed,  7 Aug 2019 23:29:16 -0400
Message-Id: <20190808032916.879-1-cai@lca.pw>
X-Mailer: git-send-email 2.20.1 (Apple Git-117)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190807_202950_399923_4D089ECE 
X-CRM114-Status: UNSURE (   8.60  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, clang-built-linux@googlegroups.com,
 Qian Cai <cai@lca.pw>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The commit 155433cb365e ("arm64: cache: Remove support for ASID-tagged
VIVT I-caches") introduced some compiation warnings from GCC (and
Clang) with -Winitializer-overrides),

arch/arm64/kernel/cpuinfo.c:38:26: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_VIPT]  = "VIPT",
                        ^~~~~~
arch/arm64/kernel/cpuinfo.c:38:26: note: (near initialization for
'icache_policy_str[2]')
arch/arm64/kernel/cpuinfo.c:39:26: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_PIPT]  = "PIPT",
                        ^~~~~~
arch/arm64/kernel/cpuinfo.c:39:26: note: (near initialization for
'icache_policy_str[3]')
arch/arm64/kernel/cpuinfo.c:40:27: warning: initialized field
overwritten [-Woverride-init]
[ICACHE_POLICY_VPIPT]  = "VPIPT",
                         ^~~~~~~
arch/arm64/kernel/cpuinfo.c:40:27: note: (near initialization for
'icache_policy_str[0]')

because it initializes icache_policy_str[0 ... 3] twice. Since
arm64 developers are keen to keep the style of initializing a static
array with a non-zero pattern first, just disable those warnings for
both GCC and Clang of this file.

Fixes: 155433cb365e ("arm64: cache: Remove support for ASID-tagged VIVT I-caches")
Signed-off-by: Qian Cai <cai@lca.pw>
---
 arch/arm64/kernel/Makefile | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/kernel/Makefile b/arch/arm64/kernel/Makefile
index 478491f07b4f..397ed5f7be1e 100644
--- a/arch/arm64/kernel/Makefile
+++ b/arch/arm64/kernel/Makefile
@@ -11,6 +11,9 @@ CFLAGS_REMOVE_ftrace.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_insn.o = $(CC_FLAGS_FTRACE)
 CFLAGS_REMOVE_return_address.o = $(CC_FLAGS_FTRACE)
 
+CFLAGS_cpuinfo.o += $(call cc-disable-warning, override-init)
+CFLAGS_cpuinfo.o += $(call cc-disable-warning, initializer-overrides)
+
 # Object file lists.
 obj-y			:= debug-monitors.o entry.o irq.o fpsimd.o		\
 			   entry-fpsimd.o process.o ptrace.o setup.o signal.o	\
-- 
2.20.1 (Apple Git-117)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
