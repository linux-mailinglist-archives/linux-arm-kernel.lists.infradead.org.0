Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2263172D2C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:24:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ksKgkqzxA5zf180XAxdSMmbr+l7XsQDzqDuBUxSgMUs=; b=OsQ+52c2wgRccW
	5B82TMeN1QMgqAJ9MpvCY0whPaSb7QR9i5/GpywKuHjBcOkcquIEOEHoL+NLE9UAP625ZpOf6N4ik
	mSjDLCvxFKomlhCaBwyG2numBTkxquPsD4eTLwAKDoNvoX6RGNiAlZVr7deY91ACFw7QmX2vk+O25
	jpdlJr5qfXz5bx47Q6NBfxRqrNhOZCVi0GetJ4Pg9mNSYSZ2qIar3PRnyOW5pw45cmNIcSOyx0IgJ
	H6vpZ7HKjT3dVPx8GJ/s7855+uGHm59F22p3KxfueXdpb9Z2EyYrrj1+COYHkGnM9/e1lIwZ2HbQS
	THIxLLtQqAE8cOWepPCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TS5-00023e-0B; Fri, 28 Feb 2020 00:24:25 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQa-00010f-Dq
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:53 +0000
Received: by mail-pf1-x442.google.com with SMTP id l7so727522pff.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=6fHzEreEHEKZLIitB5E8ew7g5jiGLQoDWIhz+OknFf0=;
 b=GkeoYAU8e8z3RjiVy/lNoEzHu3xfZdCSskh8kGhFyVvHqzRnbnRbxbrn4TM4McSa26
 b5dJvQCjoNTHztfI/3Yk8649TLr/Dejr2bVo8DdGFJbM/WkYGZ0CJ7NMkfa4SauXTXqM
 Nv+INQ8nhKoWxsj1wa0sdOVKRnF3rnDP62/0w=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=6fHzEreEHEKZLIitB5E8ew7g5jiGLQoDWIhz+OknFf0=;
 b=a6mU7vm4c9LbuCbyygUzHVy8/8Y3qyGCwpsN39cTo8G3599UbaK8RInCn4u+657BYW
 c9dECjg1EHYJ6YwsZjIsNucpRKScWUeL/XbGaD7OlDkXb1ZWhXGnUeWgu67Rb6fSw/K9
 vZFgjiPkkwGUmie54VFEHu35uk+3RaAit7TWc54c74CB5mbA8gXhyhLIChUiYlf1ac4O
 FS465ssoYXzS3T4VfOIcQ647TZn24UFxFV5k9yAJ+IU+v89JW1DwnzgFPUf7dqONgbyV
 mNko64CImi1La68Nsmkd/5Pq6FCyUGFPzer8Ocf/Wf1S3nsdItgGxMRjVzC0zABgTZZy
 PURw==
X-Gm-Message-State: APjAAAUeGf/VamKZn+PUV3FZq9K3tuEOq0i+NvR0+7PdG/ySg0QXo+eU
 waT7MTEQWdTrm75RNKR99wla3A==
X-Google-Smtp-Source: APXvYqznb6YTTAlhNn7JqjD0ERUnnj6NxCnvI3DxIeFfKY/2l5deXUBraE5hW9O+0SqGg2RsiPTeNw==
X-Received: by 2002:aa7:9891:: with SMTP id r17mr1670426pfl.205.1582849372029; 
 Thu, 27 Feb 2020 16:22:52 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z30sm8485301pff.131.2020.02.27.16.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 2/9] vmlinux.lds.h: Add .gnu.version* to DISCARDS
Date: Thu, 27 Feb 2020 16:22:37 -0800
Message-Id: <20200228002244.15240-3-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162252_463263_A8197CFB 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

For vmlinux linking, no architecture uses the .gnu.version* section,
so remove it via the common DISCARDS macro in preparation for adding
--orphan-handling=warn more widely.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 include/asm-generic/vmlinux.lds.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
index e00f41aa8ec4..303597e51396 100644
--- a/include/asm-generic/vmlinux.lds.h
+++ b/include/asm-generic/vmlinux.lds.h
@@ -902,6 +902,7 @@
 	*(.discard)							\
 	*(.discard.*)							\
 	*(.modinfo)							\
+	*(.gnu.version*)						\
 	}
 
 /**
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
