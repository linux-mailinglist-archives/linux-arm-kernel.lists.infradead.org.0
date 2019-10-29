Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A9C70E91FA
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:23:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=r/SAx91T8UuKZZXYtV6jp3eOeLKN32bUsQnGOaZw8v8=; b=o0fwciq3Aa8kHCmLgkz03BARGu
	B9hDzthnvSun6cBhyQOfcbsGlI9CDXmrp4dD6brcDS3U2lFxmNtIpKyg6GGmAnM62EC4O9RnIK1IH
	ZbV2CahkO8f1uMo/1HcTGzBezjNCrt3FTw58rrXGpaENu9BBTJ7AxnFyYlD55HIyfxoLi2+SkQGJl
	nbi3SfzzYCKZehHxdAfa0s/7mGKtmrGJ5E1wzZ2UB00oc87BH5WxadT9gNFegeRWWORHdVHvuPCMs
	qRt2GlPjjEmh3l1cPRNjOZnNKNDhOv6lpGcl4rNHRI6G0N5wLLGf9cMGzHq3Rc5hfXovWQWpdcIZM
	UqTR+q/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYxS-0005f9-Hm; Tue, 29 Oct 2019 21:23:18 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYux-0003qW-Ch
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:20:46 +0000
Received: by mail-pg1-x544.google.com with SMTP id 15so10522613pgt.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:20:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=bvYKnL/TaFkIaenIAvKRMlAb1gjfrMgYQ33pk+cyLNw=;
 b=eUd4sJyuTxgb840F9yzQhnhrVaW7UlInFUEaGLHC1o+XiNP1nT/Ur++05DeF2BOEy1
 B62m8k8aGhQzoIv1kV+qUa/1jSYvGM+XuBBi2YZI/Sqw728eeJNak1/uE8PFXjImt3OF
 0AKvdtizmmUcAZkSIZCgqYnSyMgJK/Tq10Dl8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=bvYKnL/TaFkIaenIAvKRMlAb1gjfrMgYQ33pk+cyLNw=;
 b=egFr59rCwmuGCf3MTzsKHAObQYxxrgEoPvyhF9pXVuhsZa2aJl7eCWB/LpIZbEdZQz
 2XVl3tRRenwElv6GplYkxIJVmanjS406qW65oaQCqipVjJb1NIuHz7WuyGR3ZVv3zUW9
 gQtRy9wGAMyeLjA7Ug2FM0gpTlhs1s0uMcAzWiF95g9b2RA1u4Yie/3LnX3sIVaIKqxK
 9o2YBx3hcZWF/x9FvKY0eFejLyiX9E4rVVk4wuQ5aK/NJLP5t6oSU18yX0A0zxvLcB2R
 ObgIB98t0jKXK69phmKbkDrebI7c2NJlYAb0331uWcr5w8fdKpdwhlw4FU6N4ANB3qMz
 1frQ==
X-Gm-Message-State: APjAAAUTJ5poUcri4CTxFF5t8Nm4ZxkaHfweIsWvmeboirduDDzoihEw
 ZQNS31v0oMmYlnNeufKVTfvQKw==
X-Google-Smtp-Source: APXvYqwwc1LDGwYBzq0oCKE2jPQZSBhTqIM79blAEpYmjFxE7wS/lF6/Gpxpu2EeXpX55BTOzgQThA==
X-Received: by 2002:a63:29c1:: with SMTP id
 p184mr25932369pgp.174.1572384041825; 
 Tue, 29 Oct 2019 14:20:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id c66sm55210pfb.25.2019.10.29.14.20.34
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:20:38 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 22/29] microblaze: Move EXCEPTION_TABLE to RO_DATA segment
Date: Tue, 29 Oct 2019 14:13:44 -0700
Message-Id: <20191029211351.13243-23-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_142043_443558_5B2961ED 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arch@vger.kernel.org, linux-s390@vger.kernel.org,
 Michal Simek <monstr@monstr.eu>, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Segher Boessenkool <segher@kernel.crashing.org>, linuxppc-dev@lists.ozlabs.org,
 Heiko Carstens <heiko.carstens@de.ibm.com>,
 Yoshinori Sato <ysato@users.sourceforge.jp>, Andy Lutomirski <luto@kernel.org>,
 linux-alpha@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since the EXCEPTION_TABLE is read-only, collapse it into RO_DATA.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/microblaze/kernel/vmlinux.lds.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/microblaze/kernel/vmlinux.lds.S b/arch/microblaze/kernel/vmlinux.lds.S
index b8efb08204a1..760cac41cbfe 100644
--- a/arch/microblaze/kernel/vmlinux.lds.S
+++ b/arch/microblaze/kernel/vmlinux.lds.S
@@ -11,6 +11,8 @@
 OUTPUT_ARCH(microblaze)
 ENTRY(microblaze_start)
 
+#define RO_EXCEPTION_TABLE_ALIGN	16
+
 #include <asm/page.h>
 #include <asm-generic/vmlinux.lds.h>
 #include <asm/thread_info.h>
@@ -52,7 +54,6 @@ SECTIONS {
 
 	. = ALIGN(16);
 	RO_DATA(4096)
-	EXCEPTION_TABLE(16)
 
 	/*
 	 * sdata2 section can go anywhere, but must be word aligned
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
