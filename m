Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D999D1B2E64
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 21 Apr 2020 19:37:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qc3PQMbOM8p0aUKtuKFM1CH6U4kty2Fh9mdXw63MQeg=; b=KL5Bv2UAgG0NpN
	7DC9EiJfq+9L0s+peHFlceZDAFkP2yfBsbQ1afBbd3o+xOqYytcSAWy4jakvNiVDbUS3whYndBro1
	7AlOMJQriW2GzrZoW0h2LA/IfG8de2T34BuZ8fxj8CVICxF7LBoSzbLYMYHZU8IHh2DO7s3TUc8J+
	tVdM1CiQScHGg249KlEu1cAuFsN4AYqGJOX/F1fYeJPgWfJwkolkuFOO/NUi9l0lJocQ02kcudTAG
	EebevObE9uhVrblUWolUrFmQF0DmPZh4T/72sotWwVhgDK7342Kvu/sCaQRjB7k7OfHs5BZoz4Bnk
	SdmyVXrZgIYUnEhDzFkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jQwq3-00069F-A0; Tue, 21 Apr 2020 17:37:39 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jQwpr-00068a-Vy
 for linux-arm-kernel@lists.infradead.org; Tue, 21 Apr 2020 17:37:29 +0000
Received: by mail-pf1-x443.google.com with SMTP id r14so6914357pfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 21 Apr 2020 10:37:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=n8qVaalIidRR7pGSEV5tyf0PxDkGEOKDNCWi4IECU3E=;
 b=b12RD4Q+/eDpJ8K5uxx3pSY6Me2Hr6dzy4utDsv6A8bko7a9tF6XKrl99Wyd+r4v3o
 1FAauDl8St//AMNITUY9tZsFBfgz4ftqbQ5fB/3kktoonbKWQzk/vXiB1dcZbXwJvuLJ
 zbDi3tQ0Rc6Ux2LTauqIwmKTuwL3s74n3e448+IuMamMvRriWHwJe4zvddNeMa6JE8kc
 +xh4hvApNt+Ua8yeyeEQFSucdlfWVlGCQCBshWSoSJoywVwaM4kiy+MkepoFbfsD3GDU
 j4tyuKol3YM4UXG2E/dS1MwkuMKRwxjnLP/tDidFfAhnLOR/FQDb3VtUQ2OADDBJeJ5q
 LvFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=n8qVaalIidRR7pGSEV5tyf0PxDkGEOKDNCWi4IECU3E=;
 b=XgM2JYYfVTdgu4Gr5V4y/+cJl/3K6vcBs0V4DSZgDttMi1pEiBv72qcxTR5Rpukh79
 SYd6I5zoV/szItfFgrJ9dD8R6pIYwc8qKyL6jAAHqGFD34M9SMsvnoLx6MSYz/+O2s0c
 sIivB2vNxeAwfp0HsPrxqsHtNqbizB0kQvq2GLDwsv+vsVMrqJfwmzekDPk30PYY6H6U
 bGWhciRYWZUbshVl2eoLDnqc5nDSzNuGzzU2wPcAJNmyJzGrM1hDf188yqBbhJlrLQr/
 WMSMH8f9J+PJ490cORzz8QxraWCNKVtKUAmXWZOiZqfhk6NqT9uALwTRwYwEJ4x6MEwM
 2ldw==
X-Gm-Message-State: AGi0PuZUPsMAUHIZrkFvyP9wBXpzhIuwr1XjtI6LxEkBpzbktdsvjuQl
 WaYhmHnyccDju28MaZ/iN0Y=
X-Google-Smtp-Source: APiQypJtnl2nLcMt15nfPhna9D5nM3tB9NS63SlG2E8fT8j/LMpRKnWzfOwcDbTwgitenufmufCvGQ==
X-Received: by 2002:aa7:8593:: with SMTP id w19mr22839905pfn.97.1587490646870; 
 Tue, 21 Apr 2020 10:37:26 -0700 (PDT)
Received: from debian.net.fpt ([42.119.230.166])
 by smtp.gmail.com with ESMTPSA id h197sm55386pfe.208.2020.04.21.10.37.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 21 Apr 2020 10:37:26 -0700 (PDT)
From: Phong Tran <tranmanphong@gmail.com>
To: mark.rutland@arm.com, steve.capper@arm.com, steven.price@arm.com,
 will@kernel.org, keescook@chromium.org, greg@kroah.com
Subject: [PATCH v2] arm64: add check_wx_pages debugfs for CHECK_WX
Date: Wed, 22 Apr 2020 00:35:58 +0700
Message-Id: <20200421173557.10817-1-tranmanphong@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200307093926.27145-1-tranmanphong@gmail.com>
References: <20200307093926.27145-1-tranmanphong@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200421_103728_054028_3B9052A8 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [tranmanphong[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: kernel-hardening@lists.openwall.com, Phong Tran <tranmanphong@gmail.com>,
 linux-kernel@vger.kernel.org, alexios.zavras@intel.com, broonie@kernel.org,
 akpm@linux-foundation.org, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

follow the suggestion from
https://github.com/KSPP/linux/issues/35

Signed-off-by: Phong Tran <tranmanphong@gmail.com>
---
Change since v1:
- Update the Kconfig help text
- Don't check the return value of debugfs_create_file()
- Tested on QEMU aarch64
root@qemuarm64:~# zcat /proc/config.gz | grep PTDUMP
CONFIG_GENERIC_PTDUMP=y
CONFIG_PTDUMP_CORE=y
CONFIG_PTDUMP_DEBUGFS=y
root@qemuarm64:~# uname -a
Linux qemuarm64 5.7.0-rc2-00001-g20ddb383c313 #3 SMP PREEMPT Tue Apr 21 23:18:56 +07 2020 aarch64 GNU/Linux
root@qemuarm64:~# echo 1 > /sys/kernel/debug/check_wx_pages
[   63.261868] Checked W+X mappings: passed, no W+X pages found
---
 arch/arm64/Kconfig.debug        |  5 ++++-
 arch/arm64/include/asm/ptdump.h |  2 ++
 arch/arm64/mm/dump.c            |  1 +
 arch/arm64/mm/ptdump_debugfs.c  | 18 ++++++++++++++++++
 4 files changed, 25 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/Kconfig.debug b/arch/arm64/Kconfig.debug
index a1efa246c9ed..cd82c9d3664a 100644
--- a/arch/arm64/Kconfig.debug
+++ b/arch/arm64/Kconfig.debug
@@ -48,7 +48,10 @@ config DEBUG_WX
 	  of other unfixed kernel bugs easier.
 
 	  There is no runtime or memory usage effect of this option
-	  once the kernel has booted up - it's a one time check.
+	  once the kernel has booted up - it's a one time check at
+	  boot, and can also be triggered at runtime by echo "1" to
+	  "check_wx_pages". The "check_wx_pages" is available only with
+	  CONFIG_PTDUMP_DEBUGFS is enabled.
 
 	  If in doubt, say "Y".
 
diff --git a/arch/arm64/include/asm/ptdump.h b/arch/arm64/include/asm/ptdump.h
index 38187f74e089..c90a6ec6f59b 100644
--- a/arch/arm64/include/asm/ptdump.h
+++ b/arch/arm64/include/asm/ptdump.h
@@ -24,9 +24,11 @@ struct ptdump_info {
 void ptdump_walk(struct seq_file *s, struct ptdump_info *info);
 #ifdef CONFIG_PTDUMP_DEBUGFS
 void ptdump_debugfs_register(struct ptdump_info *info, const char *name);
+void ptdump_check_wx_init(void);
 #else
 static inline void ptdump_debugfs_register(struct ptdump_info *info,
 					   const char *name) { }
+static inline void ptdump_check_wx_init(void) { }
 #endif
 void ptdump_check_wx(void);
 #endif /* CONFIG_PTDUMP_CORE */
diff --git a/arch/arm64/mm/dump.c b/arch/arm64/mm/dump.c
index 860c00ec8bd3..60c99a047763 100644
--- a/arch/arm64/mm/dump.c
+++ b/arch/arm64/mm/dump.c
@@ -378,6 +378,7 @@ static int ptdump_init(void)
 #endif
 	ptdump_initialize();
 	ptdump_debugfs_register(&kernel_ptdump_info, "kernel_page_tables");
+	ptdump_check_wx_init();
 	return 0;
 }
 device_initcall(ptdump_init);
diff --git a/arch/arm64/mm/ptdump_debugfs.c b/arch/arm64/mm/ptdump_debugfs.c
index d29d722ec3ec..6b0aa16cb17b 100644
--- a/arch/arm64/mm/ptdump_debugfs.c
+++ b/arch/arm64/mm/ptdump_debugfs.c
@@ -20,3 +20,21 @@ void ptdump_debugfs_register(struct ptdump_info *info, const char *name)
 {
 	debugfs_create_file(name, 0400, NULL, info, &ptdump_fops);
 }
+
+static int check_wx_debugfs_set(void *data, u64 val)
+{
+	if (val != 1ULL)
+		return -EINVAL;
+
+	ptdump_check_wx();
+
+	return 0;
+}
+
+DEFINE_SIMPLE_ATTRIBUTE(check_wx_fops, NULL, check_wx_debugfs_set, "%llu\n");
+
+void ptdump_check_wx_init(void)
+{
+	debugfs_create_file("check_wx_pages", 0200, NULL,
+			NULL, &check_wx_fops) ? 0 : -ENOMEM;
+}
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
