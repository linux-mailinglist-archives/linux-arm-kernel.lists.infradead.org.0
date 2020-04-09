Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ACDB1A3CD8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 01:29:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Afu7o0rTcISiBhr/rkQ4T76yr9bzvIOmGlZEN4Dzyr8=; b=W9DH8qY2O3g1Lg
	CmNzZZeH9BSy5fbcWloc8LiXb0FYzIv3k5GhyCZVebBRCA36ZmkToAj7LoRounuS40NIOKlyEr6LR
	cfsTec7hqQWenLn0uTLiDYsN383C7QPKFP833nj0rLwVy6Z59k/+QeFz41UvTr90ZqLVjXR+1C1/6
	PJEnVP+AVe5YSvVxNIKtymqB0C0XH+sFk8yYBnxAxBjXejLmXkvtntL9zyg1lNUxZgHS0koNtzwNX
	1ZjEM7nEPEbz/tc59HlgHcWoZfuHXGj0g01fIUqQKjdNO99BFaizSTKjspil15Eau0pCEodYADRKj
	OCSI2e9lTGf9fHwpHQMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMgbY-0004kD-P0; Thu, 09 Apr 2020 23:29:04 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMgbS-0004ji-PB
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Apr 2020 23:29:00 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ng8so130014pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 09 Apr 2020 16:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j6nOAWhXcgV50dfI2kOZff7IGheVzW2uE0Ud7W3fojM=;
 b=B0EmNRpPG3qUZ3ki1VFuqMMc+PMOwSxu3W+99zScDTZqHZppWGVrXFypjNErcBcb7d
 8su+rPppfd83ZmBiUPytOLnl4gEM7gf33O3I8Ox05Jc8EA3H3wCkqZ0HPDXom1Q4thVt
 pRDSrZyUBqUTZ9sj4BnDE9pQO98BL1sBxGVaKQtHSUFFOIBQ0lcWLJvYjaNZrfq0q5O6
 2BRBR3aKkqsYP9A0vqHGPHwx5TI2udc0xKgTFmNUMIvvB28/T85dkLmsEZGmM83SZPFC
 zrGpQpiU+eYkjZ2k0+JOJQBWmrAqUaPcdCQ1lt7JzgrhfsFK5O3nQgRI9MEFtwWrlMfl
 O/Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=j6nOAWhXcgV50dfI2kOZff7IGheVzW2uE0Ud7W3fojM=;
 b=CVmpPWKgR96hDeo4KO3cVdg5pKT65/M0GwtbLD3IoMedl+ajlT+snGY0ydDTMSldTo
 OqOCEKE2zDgDQN0cjEqSN6iE2iDg9h7dLoBK5vttTP1s5hNF5yo125CExe3uZRwklBRF
 WIIbMljvC0HrdSHJuldyiWjjrv5I2D/OwhaTnBPkrfSMtrJkWjdWmj5og9wLNm0nl7KC
 MSbZaK0gMNDLfjYh6IR72fk4yltzgpQZ4uNk0m4NTz8P+RTKLRAAUUNZmHCK00EJ/zXt
 jgTZd+6rF4f6N7QLBMn7jMT8IPYdLFcJ6Xeyza2RZSDCn3wZR6PTTVZY4lu5Sql1zL3i
 ZvXw==
X-Gm-Message-State: AGi0PuZRHo2NRertGl61gkvE7FzcLMfRCD24+h4uDMu15bp4ifQZIp/1
 /rzLPylcjBTcxAWIJ/hGtx8=
X-Google-Smtp-Source: APiQypJkOAJgzdjrZ5GN/MIDJIBjwRM9IlRGCSU88exDh+QlIZEQ6V2hqaTExMrzbHebhtP4DehuRw==
X-Received: by 2002:a17:90b:3585:: with SMTP id
 mm5mr2132232pjb.168.1586474936962; 
 Thu, 09 Apr 2020 16:28:56 -0700 (PDT)
Received: from jiancai.svl.corp.google.com
 ([2620:15c:2ce:0:b7ed:16a3:9dc0:21bb])
 by smtp.googlemail.com with ESMTPSA id e14sm238783pjg.0.2020.04.09.16.28.55
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 09 Apr 2020 16:28:56 -0700 (PDT)
From: Jian Cai <caij2003@gmail.com>
To: 
Subject: [PATCH] ARM: do not assemble iwmmxt.S with LLVM toolchain
Date: Thu,  9 Apr 2020 16:27:26 -0700
Message-Id: <20200409232728.231527-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.26.0.110.g2183baf09c-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200409_162858_841231_B397E1D9 
X-CRM114-Status: GOOD (  13.60  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [caij2003[at]gmail.com]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [caij2003[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Linus Walleij <linus.walleij@linaro.org>, Peter.Smith@arm.com,
 stefan@agner.ch, David Howells <dhowells@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>, manojgupta@google.com,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 "Joel Fernandes \(Google\)" <joel@joelfernandes.org>, caij2003@gmail.com,
 clang-built-linux@googlegroups.com, ilie.halip@gmail.com,
 Masahiro Yamada <masahiroy@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>, samitolvanen@google.com,
 "Eric W. Biederman" <ebiederm@xmission.com>, Arnd Bergmann <arnd@arndb.de>,
 "Steven Rostedt \(VMware\)" <rostedt@goodmis.org>, jiancai@google.com,
 Doug Anderson <armlinux@m.disordat.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, Patrick Bellasi <patrick.bellasi@arm.com>,
 Masami Hiramatsu <mhiramat@kernel.org>, Tejun Heo <tj@kernel.org>,
 Andrew Morton <akpm@linux-foundation.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

iwmmxt.S contains XScale instructions LLVM ARM backend does not support.
Skip this file if LLVM integrated assemmbler or LLD is used to build ARM
kernel.

Signed-off-by: Jian Cai <caij2003@gmail.com>
---
 arch/arm/Kconfig | 2 +-
 init/Kconfig     | 6 ++++++
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 66a04f6f4775..39de8fc64a73 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -804,7 +804,7 @@ source "arch/arm/mm/Kconfig"
 
 config IWMMXT
 	bool "Enable iWMMXt support"
-	depends on CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B
+	depends on !AS_IS_CLANG && !LD_IS_LLD && (CPU_XSCALE || CPU_XSC3 || CPU_MOHAWK || CPU_PJ4 || CPU_PJ4B)
 	default y if PXA27x || PXA3xx || ARCH_MMP || CPU_PJ4 || CPU_PJ4B
 	help
 	  Enable support for iWMMXt context switching at run time if
diff --git a/init/Kconfig b/init/Kconfig
index 1c12059e0f7e..b0ab3271e900 100644
--- a/init/Kconfig
+++ b/init/Kconfig
@@ -19,6 +19,12 @@ config GCC_VERSION
 config CC_IS_CLANG
 	def_bool $(success,$(CC) --version | head -n 1 | grep -q clang)
 
+config AS_IS_CLANG
+	def_bool $(success,$(AS) --version | head -n 1 | grep -q clang)
+
+config LD_IS_LLD
+	def_bool $(success,$(LD) --version | head -n 1 | grep -q LLD)
+
 config CLANG_VERSION
 	int
 	default $(shell,$(srctree)/scripts/clang-version.sh $(CC))
-- 
2.26.0.110.g2183baf09c-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
