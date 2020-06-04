Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C69D31EE5E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jun 2020 15:52:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h8QjVDvJMZB1LGZH7lbwlQmggkpovJai6xMCM4hkr2o=; b=Ov6xGTUbZYa7Wu
	q+uCxc2vmoabidGGTKAJ28gA0CkTkn2Z1M73EN1CMlzfD4XV5t/I9Kz4mtPP7ksR7V1+cGSneSrFE
	dcQ6+NZJx1/mVFvGEExb60sgXnR4Q0pwrrI8HLSQtFQkdGJL/DyBfCluskLt3MHttKTgh09DI6UoC
	knELFbMxgdmZEgN2ohIL5/MFbq6ZfUwjo17sn5RFrWipIJn91eRCRYrO4QglhLk4D8HUTagY6n9e5
	WeU1wkz1rDfO56w60MpPrmaBNFZh7NII/GwGJaOGXOldCDz2PI+DNfXnam1adSLXn3ImYAQHVp/jX
	Ml753dVQLOo4hAm84otw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jgqI8-0008WD-Ge; Thu, 04 Jun 2020 13:52:20 +0000
Received: from mail-lf1-f65.google.com ([209.85.167.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jgqGz-0007Ok-8S
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jun 2020 13:51:11 +0000
Received: by mail-lf1-f65.google.com with SMTP id u16so3638748lfl.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 06:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JQF4gusMMse1t+P2Qqr0GcfguvDdOuRmX3WacGaJBcQ=;
 b=nlkrbOGgxtzFDuc7T3heLW1Yr7wK6myqj9xdX7srYbdUAX820I7ufHPPpnaU5FJlh1
 o3V6UEY4hJgNkCYh7M9W2Zofh3KlRjqV6dK/jWFlj0w6SL33Ng2KkWuB+eNFboFKmYVZ
 uqlCl4qN/cWaIBkvGVJS8ARsvINB4Mh4hno4dkZe7SvJFxKvrDqEmPOnG9f3Ms8u3I76
 1yliSm08VtQdIjC8sTfdrO8PJDi15l/dKMKwdtIhJRCxoeNGBUn/CP8/YPsvS11gyaoa
 hS9LNhBQy1POPXd7yH85yWt5sRz5i9o6+mwMEkpl5HqHQW993CHujQ9iIS4P3H/7lxTN
 uuQw==
X-Gm-Message-State: AOAM532ZgMLEJJpHL9+WnvQecXUtq8MXrmmShx4tlxhT3RYYTMbt0Wv+
 KBCkB2L8cPY35V6t+ZXAHrg=
X-Google-Smtp-Source: ABdhPJxGDD5ukdedXoxuQ27N5jKq1fSsreuCe9q3nAgk5mstTvN2pJQfkeE/l29dSTZfbBg2leMMKA==
X-Received: by 2002:a05:6512:3214:: with SMTP id
 d20mr2637853lfe.203.1591278666991; 
 Thu, 04 Jun 2020 06:51:06 -0700 (PDT)
Received: from localhost.localdomain ([185.248.161.177])
 by smtp.gmail.com with ESMTPSA id u16sm1202140lji.58.2020.06.04.06.51.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 06:51:06 -0700 (PDT)
From: Alexander Popov <alex.popov@linux.com>
To: Kees Cook <keescook@chromium.org>, Emese Revfy <re.emese@gmail.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Thiago Jung Bauermann <bauerman@linux.ibm.com>,
 Luis Chamberlain <mcgrof@kernel.org>, Jessica Yu <jeyu@kernel.org>,
 Sven Schnelle <svens@stackframe.org>, Iurii Zaikin <yzaikin@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>, Peter Collingbourne <pcc@google.com>,
 Naohiro Aota <naohiro.aota@wdc.com>,
 Alexander Monakov <amonakov@ispras.ru>,
 Mathias Krause <minipli@googlemail.com>, PaX Team <pageexec@freemail.hu>,
 Brad Spengler <spender@grsecurity.net>, Laura Abbott <labbott@redhat.com>,
 Florian Weimer <fweimer@redhat.com>,
 Alexander Popov <alex.popov@linux.com>,
 kernel-hardening@lists.openwall.com, linux-kbuild@vger.kernel.org,
 x86@kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, gcc@gcc.gnu.org
Subject: [PATCH 4/5] gcc-plugins/stackleak: Don't instrument itself
Date: Thu,  4 Jun 2020 16:49:56 +0300
Message-Id: <20200604134957.505389-5-alex.popov@linux.com>
X-Mailer: git-send-email 2.25.2
In-Reply-To: <20200604134957.505389-1-alex.popov@linux.com>
References: <20200604134957.505389-1-alex.popov@linux.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_065109_662670_AD3EF72D 
X-CRM114-Status: GOOD (  10.72  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.65 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [a13xp0p0v88[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [a13xp0p0v88[at]gmail.com]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: notify@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to try instrumenting functions in kernel/stackleak.c.
Otherwise that can cause issues if the cleanup pass of stackleak gcc plugin
is disabled.

Signed-off-by: Alexander Popov <alex.popov@linux.com>
---
 kernel/Makefile | 1 +
 1 file changed, 1 insertion(+)

diff --git a/kernel/Makefile b/kernel/Makefile
index 4cb4130ced32..d372134ac9ec 100644
--- a/kernel/Makefile
+++ b/kernel/Makefile
@@ -118,6 +118,7 @@ obj-$(CONFIG_RSEQ) += rseq.o
 
 obj-$(CONFIG_SYSCTL_KUNIT_TEST) += sysctl-test.o
 
+CFLAGS_stackleak.o += $(DISABLE_STACKLEAK_PLUGIN)
 obj-$(CONFIG_GCC_PLUGIN_STACKLEAK) += stackleak.o
 KASAN_SANITIZE_stackleak.o := n
 KCOV_INSTRUMENT_stackleak.o := n
-- 
2.25.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
