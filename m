Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 263B327399
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 May 2019 02:57:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ebipAnBPKUfcZ0R+ChhvOUgJHxEdylA7tmxxRDHvY3w=; b=oVN9j0PFt9AzFM
	4hbxukFs/sv0BVHXPHkn4Yy3FKeBucNfn+uC5Q0a5IeMGRmhQAwah0Z7Tb03HRH/iM/cpXNfOgDNn
	Sg8VqsXhVxkseXyQ26Ebw60+uWzwK51BQr41Cya9NlZoSqNWh3C4rAYycQJSAoZK/6hnP0GdCHxzt
	z2iTHbe/f7tjn7V3lk9y8vyWxJNinWoAtj408V1ujSEdaSV8JEFi8+bygx806wW4YZhH/ypgXlLQ2
	gQleLOsUPXTIAUW4q1K3CnoWlMxOzU5hkbwXWkApkOsUcisaftBZQLZA1xLpuuOuGe3wvm2S/eClb
	b01rA1NPvQrYjzD6TVXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTc2w-0008Sh-0Y; Thu, 23 May 2019 00:57:26 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTc2p-0008SG-Sn
 for linux-arm-kernel@lists.infradead.org; Thu, 23 May 2019 00:57:21 +0000
Received: by mail-pf1-x444.google.com with SMTP id q17so2227476pfq.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 17:57:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=android.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OCcxFZ8u217pCLU2+Z7QXQBb4BZSJxt773aXmFVctu0=;
 b=lrXxW/5uiapy3w5HtMfhyB3Bk6NFY9FVuWaL71RTtfJPQMsRDPNUJ7ipQQta880l5N
 8GpHNpjXdvqbRNY+BQ07w0p05xblGT3W5Ka+LFkYA2Huk3F0A6Ztn4p1oSeVkpdpoxLE
 LdAXKWYp/K9oGn3cDvAwA1Fr6ekNdwdeBAKUtMMSxb+WkpnKgkxcqTZODoWSQJfA9tUs
 cpYaq0PTzWmljBUSbDbC3aXbPRLGwxCP3t3uxoTq5tZxmd7gMpoPfBTAovC8hsRFxImI
 3WUaej/Bo6ywL+QHNzw0QifPZAJ1sdx+u8r/4xhLepgfejmyLaTGb6mA+w27EglaPq0x
 CWVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=OCcxFZ8u217pCLU2+Z7QXQBb4BZSJxt773aXmFVctu0=;
 b=aEdabyXCrT4vucZfY2sg4S3U/0iVXK70pahB9A//ocuGlaKU/Xn1EcxMTevmoclPzV
 2oTQO/Rtv6TeUo5JPIKfMN9WIr8V3O5R83fDFExRfE/mO0CtdcBHQW6wlwNYZ6nW7YxS
 qqtIgTfcpsJ+oxQ3m0RLoPWUEuc+T+PVob0BrHPjtLrvqCtQSKZTFFfqxlrI7NLqWKU4
 LpmdQ7SDkxrIkDQDf3XKsE9ifoQH6qyq3g7UTKdmVhCBEu3AhI7Juki2XbPBNlFNSEeC
 wzl1rK7Jo4TaXaSOqQPMWNUy378A24bsDKctFLETe0oUaNrpRQ7aJM8FnsCrZyPs+RDb
 F/9g==
X-Gm-Message-State: APjAAAW/qAVYw/ENDK+op8iOtcaMJAu8QyPPil/gVZRBtVa6I+GZjk0A
 4Ce03yM51R2G/3/drMa4aJRJRg==
X-Google-Smtp-Source: APXvYqzmvaIMZDp1UqMAki93ZF1pRBJmeuDwiABNRTGvkxZYkz5jfP7bem/APo11T1JcRZhC4F5UYQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr100964441pfw.172.1558573038480; 
 Wed, 22 May 2019 17:57:18 -0700 (PDT)
Received: from trong0.mtv.corp.google.com
 ([2620:0:1000:1601:acd:159c:264f:41eb])
 by smtp.gmail.com with ESMTPSA id d13sm23716909pfh.113.2019.05.22.17.57.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 22 May 2019 17:57:17 -0700 (PDT)
From: Tri Vo <trong@android.com>
To: linux@armlinux.org.uk,
	yamada.masahiro@socionext.com
Subject: [PATCH] ARM: disable FUNCTION_TRACER when building with Clang
Date: Wed, 22 May 2019 17:56:57 -0700
Message-Id: <20190523005657.170008-1-trong@android.com>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_175719_955325_C78CE351 
X-CRM114-Status: GOOD (  12.20  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: linux-arm-kernel@lists.infradead.org, ndesaulniers@google.com,
 linux-kernel@vger.kernel.org, stefan@agner.ch, Tri Vo <trong@android.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Clang needs "-meabi gnu" flag to emit calls to "__gnu_mcount_nc".
Otherwise, it inserts calls to undefined "mcount".

  kernel/softirq.o: In function `_local_bh_enable':
  ...
  undefined reference to `mcount'

"-meabi gnu" resolves link failures.  However, Clang does not implement
calls to "__gnu_mcount_nc" correctly.  It does not save the link
register on the stack, which corrupts the stack.  The resulting kernel
does not boot.

Disable FUNCTION_TRACER support when building with Clang.

Link: https://github.com/ClangBuiltLinux/linux/issues/35
Suggested-by: Stefan Agner <stefan@agner.ch>
Signed-off-by: Tri Vo <trong@android.com>
---
 arch/arm/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index 8869742a85df..7a1804392795 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -75,7 +75,7 @@ config ARM
 	select HAVE_EXIT_THREAD
 	select HAVE_FTRACE_MCOUNT_RECORD if !XIP_KERNEL
 	select HAVE_FUNCTION_GRAPH_TRACER if !THUMB2_KERNEL && !CC_IS_CLANG
-	select HAVE_FUNCTION_TRACER if !XIP_KERNEL
+	select HAVE_FUNCTION_TRACER if !XIP_KERNEL && !CC_IS_CLANG
 	select HAVE_GCC_PLUGINS
 	select HAVE_HW_BREAKPOINT if PERF_EVENTS && (CPU_V6 || CPU_V6K || CPU_V7)
 	select HAVE_IDE if PCI || ISA || PCMCIA
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
