Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E06F172D2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 01:24:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Keg8txVrezjfnaKgbShxK8SpF8K4WLWJNE2pmnBxWI=; b=JW6v+/+DjPbmwm
	xx6rAmGGJvwvKHoCh4XMAhDV8wRnNBXIC76o4LGcWq5LpSAl1QVK3f3PiBdDlQSiDrnHoKdDejnfG
	H4I7a97EP6Bvi6XsbVesMEFdBMcp7Vxs995qg+44naOjqB3YJ9zasjgb8tlwiMS8eXbro0cvjO9ng
	Ke5Has/mg7r3ItRYrQ/FOnKow4D7hkZwbZyFOuCfoZEAdgwgcL1TcMv9kqvVDZCDcWaWPkvmHyF3v
	8QuZ7icfyx43VNVMWFrSozooqdAd+iHmIg3TKLXxfzW4659zwa5muDBaZFgWMmvd9qHbL2fKUbeay
	48nI14oQjmPkNiNRLd/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7TRZ-0001by-KR; Fri, 28 Feb 2020 00:23:53 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7TQZ-0000zu-84
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Feb 2020 00:22:53 +0000
Received: by mail-pg1-x541.google.com with SMTP id 6so558451pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 16:22:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=uceCceIOG2DmkN987H8EhCgiSZQG4q+SFGBRris4xG0=;
 b=aprtzyrZ60FGeJNkJNjVIQbc99c/fsdw9OKOw87YzHK/0SfhsWmA8PcyTPqZq9ptEL
 0CNjt4bV3uQWUOlnulxZY8ZKsGjdFr3XpcUK9eN4hf7vx57s1iHQvbosRZGY9/LJNRxo
 MYhTtklU93oiIUE0nKY046nfAGvZw6E1IkunM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=uceCceIOG2DmkN987H8EhCgiSZQG4q+SFGBRris4xG0=;
 b=jIAq8ugZmi5FaipuWGAJCWamnZ4PladI3/ns/yJOVi/RU0+YzPmw1CC5fVM0ilQN2t
 NebrS6lZhurIU86KxnTUS+L0V5KTovrX5AmqmZQ93eAtcqV3+csLja/amtdzQiF47L0J
 9hi061/PJB8T+noSfQtyEFzgpwaK7wKjmXKM93DbncVAYVNHkF07TzIq81fYQoNVZ7Vb
 baO1Ohpl21jrq3D4rs6cPzdSsZ0MLMw/WGrD4dQtwdSpRQLbyMj9D/+CvyiuD6+7c6TB
 vadZ9hQo4yniNMt7m0pq5j9P+t45zhjJTS7XGeEJGOv1dQW9OPTPOwTi+/ybD0ARwY0A
 O/MA==
X-Gm-Message-State: APjAAAWC22g7s4pFEPRz9RBMV8K43f/NOVrHPxhy3QJBBWKJsvWpbZd3
 4bCIyDQ0Bf6e6yE+M4PU8EMfWg==
X-Google-Smtp-Source: APXvYqyjOck/5wJSSqU+VYB+XqwXzBg0gQ0/fmVPRW162tG0JSVUcNPf0a5ewRShW9E52SJeL0B9Pg==
X-Received: by 2002:aa7:9f90:: with SMTP id z16mr1671592pfr.161.1582849370382; 
 Thu, 27 Feb 2020 16:22:50 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j12sm3646141pjd.4.2020.02.27.16.22.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 27 Feb 2020 16:22:48 -0800 (PST)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@suse.de>
Subject: [PATCH 3/9] x86/build: Warn on orphan section placement
Date: Thu, 27 Feb 2020 16:22:38 -0800
Message-Id: <20200228002244.15240-4-keescook@chromium.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200228002244.15240-1-keescook@chromium.org>
References: <20200228002244.15240-1-keescook@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_162251_282829_AC6CBDD5 
X-CRM114-Status: GOOD (  11.30  )
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

We don't want to depend on the linker's orphan section placement
heuristics as these can vary between linkers, and may change between
versions. All sections need to be explicitly named in the linker
script.

Discards the unused rela, plt, and got sections that are not needed
in the final vmlinux, and enable orphan section warnings.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/Makefile             | 4 ++++
 arch/x86/kernel/vmlinux.lds.S | 6 ++++++
 2 files changed, 10 insertions(+)

diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 94df0868804b..b2c8becadce5 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -51,6 +51,10 @@ ifdef CONFIG_X86_NEED_RELOCS
         LDFLAGS_vmlinux := --emit-relocs --discard-none
 endif
 
+# We never want expected sections to be placed heuristically by the
+# linker. All sections should be explicitly named in the linker script.
+LDFLAGS_vmlinux += --orphan-handling=warn
+
 #
 # Prevent GCC from generating any FP code by mistake.
 #
diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index 5cab3a29adcb..1e345f302a46 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -412,6 +412,12 @@ SECTIONS
 	DWARF_DEBUG
 
 	DISCARDS
+	/DISCARD/ : {
+		*(.rela.*) *(.rela_*)
+		*(.rel.*) *(.rel_*)
+		*(.got) *(.got.*)
+		*(.igot.*) *(.iplt)
+	}
 }
 
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
