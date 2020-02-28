Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 99239172D2D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:24:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NzzdDTl9kuMSRASJEuP9IBHii1ynnl67gMEGpWzla08=; b=foxf5LizJyEtZ/
	2bH0IR9Jfacec1J3EFC3v9KKdCwwKuEvUHuCFKuDqqOr3uUHknHYWZUBmwCpetCqurYohlj0QoFwf
	8foxMSMCplpFa1cAHLDgXWjw+PxCEAvxyIO5WeGMuCA/XwdGt/CRO1YWf8qbhZsbc3NQw4GAOeAiB
	Jzx0FeJ2TrKiXQ5UdAvOPYm84mcBq5hm60jp3u6mhgSVe9ntyaFNUkpVAiU9xVOHuVE5wQdy1IGo4
	UA8FetMlR0A79tI99CJmARcoZ+6R/ZMPAbIcyTa0ULwipLv2OstAQ7ts+W3VtVLqsmLQv8kzQtInt
	hTSQO7l5RD3oz5JvH/MQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TSJ-0002Ho-0j; Fri, 28 Feb 2020 00:24:39 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQc-000131-GY
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:56 +0000
Received: by mail-pg1-x541.google.com with SMTP id y30so523600pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=njo/Fx4CsF+NQ0G1u7AY1RWSg6ZNLRJXLnHS1KzoDiw=;
 b=V36B51rI6uTfIFQ393op65AYhJqQDQrYEJ6cMpkwv1fytwIQq5RcV2b2ckkCtE1sw0
 YM1LYtZD4DrhdU/Ea540khr3HPTpC+38/5GLj40jxxNahTYQDym9BttSb/i6IQdZFITg
 acSRiJiho/Jbfz/18SE8Y1nmC78EHYUE05Ibw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=njo/Fx4CsF+NQ0G1u7AY1RWSg6ZNLRJXLnHS1KzoDiw=;
 b=R+p3xXzcGq5Lh3G3TbDau+tkmyoEL1vkByHzaYiViPopo6E6gsqYoUC1PzQCPZa8XK
 rF1o3A006OTABaGX4HlPQ3G6XlAhRkChcIZGA5JhpIX+Y4l7haUqpAz+QGx9P90UlGtv
 hybWaFKv9r9tAwX8QeY7NBI4I35qFISFn/KwsNZir8g+fPYu3Vrn3JGgIcPlsoa0Ra3s
 2cYWrEbGUqPTc12LWUOSbWv9DRv8G3gEserelg1wk9CitUK9X2niLNOzLDs+o/Mkk7cU
 FdEz7kJ1sMgTKk+bHFUQRIvVufPPMBw6n+oEojzfhrLGeNc99up1SauaulmqJQJsa5pi
 Q2Dg==
X-Gm-Message-State: APjAAAWuvhn56GECUhEHbpuu8pRpAdhvyGkkeG9p8M470tepmmmuTp8V
 c6sit7k8VnkRJF4XGXqb+qleOg==
X-Google-Smtp-Source: APXvYqx0VisnNsuBsLs1eNzqbgYv6zuOJyCgm5lqaZQuPJuf7INJygLV6ti12PFdMfz+LSKcLevlLw==
X-Received: by 2002:a63:f403:: with SMTP id g3mr1948825pgi.62.1582849373921;
 Thu, 27 Feb 2020 16:22:53 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id g14sm4184582pfo.154.2020.02.27.16.22.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 6/9] arm64/build: Use common DISCARDS in linker script
Date: Thu, 27 Feb 2020 16:22:41 -0800
Message-Id: <20200228002244.15240-7-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162254_637341_4942A96F 
X-CRM114-Status: GOOD (  11.86  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, "H.J. Lu" <hjl.tools@gmail.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-kbuild@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, x86@kernel.org,
 Russell King <linux@armlinux.org.uk>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, James Morse <james.morse@arm.com>,
 linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the common DISCARDS rule for the linker script in an effort to
regularize the linker script to prepare for warning on orphaned
sections.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/arm64/kernel/vmlinux.lds.S | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/kernel/vmlinux.lds.S b/arch/arm64/kernel/vmlinux.lds.S
index 497f9675071d..c61d9ab3211c 100644
--- a/arch/arm64/kernel/vmlinux.lds.S
+++ b/arch/arm64/kernel/vmlinux.lds.S
@@ -6,6 +6,7 @@
  */
 
 #define RO_EXCEPTION_TABLE_ALIGN	8
+#define RUNTIME_DISCARD_EXIT
 
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/cache.h>
@@ -19,7 +20,6 @@
 
 /* .exit.text needed in case of alternative patching */
 #define ARM_EXIT_KEEP(x)	x
-#define ARM_EXIT_DISCARD(x)
 
 OUTPUT_ARCH(aarch64)
 ENTRY(_text)
@@ -94,12 +94,8 @@ SECTIONS
 	 * matching the same input section name.  There is no documented
 	 * order of matching.
 	 */
+	DISCARDS
 	/DISCARD/ : {
-		ARM_EXIT_DISCARD(EXIT_TEXT)
-		ARM_EXIT_DISCARD(EXIT_DATA)
-		EXIT_CALL
-		*(.discard)
-		*(.discard.*)
 		*(.interp .dynamic)
 		*(.dynsym .dynstr .hash .gnu.hash)
 		*(.eh_frame)
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
