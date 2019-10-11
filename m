Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C081D352B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:07:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1KGnGHraQWBbxs1Ch1iG9NuWi8p1uddmOjdvHfQKuRo=; b=NUzWXHI2cK5+KO2+XThBqOJ+em
	xWpJFPSen2w3jYhUBLCFbqecrYpHcpIAvECTB95UUjXLghCXkk15WEA3Ij7JJEHlKJT35uQ+UH8WY
	nMaM8QFspqqmFXVJiPNOr3hoWiwGFX2njF9LCo1CIxVrVNA5Z7LqDUnCrX/EzZqbfsr5fXKqG4FgQ
	xrUgp8Hj6WRM402P4nvwJvrVDVpOwXzmOxf1Y762KXuIvBrQ1o8KDHqMzr+7egR26On/68jC8BXLD
	CBal8cRuAZZR0Lwa4/SNM3ObRsfy8uGi9vB4rHp2eeYuwunlVkjafE661Q6KkwfiAU1lLV3GmOR6Q
	WjGkytTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiTA-0004Pk-N0; Fri, 11 Oct 2019 00:07:44 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiRs-0003WY-KQ
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:26 +0000
Received: by mail-pf1-x444.google.com with SMTP id q12so4935734pff.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ObCdg+imqB9G1d842Lgck/VSTqVGl2xoAH4cm4FkKow=;
 b=crQ1Wv7yU8u6QDGlDwBktMC8ID6kd2jR2ktjlIEg9lNMaYkSGp+vVyfOhN5n/bbb4w
 tpNmt7wW87sAgB/gHBbhR1BwKIxx8HWLuqxVFsB9sj+yjEeBVLxwYKqP8+nT6ULOb4qs
 C5n7z+PSjnqWQlNXFQHms0qNFflOzMMUW6V2Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ObCdg+imqB9G1d842Lgck/VSTqVGl2xoAH4cm4FkKow=;
 b=j1/AkJmZPr+tBwAzbgcFqD8kxYejth/SzLou77dVbG07PaIzZMrPlNFrZmVfSkoh80
 X+FuE3oKXrST1wfu2r3siG5nkWY8weOboh6OJYwMLOgj6fyUpsweT1pRpTPQ5wmU4uTv
 lZTbdPehh+H1zRtIjfamsMkrfltINmvgJFVQpJjv8qx8Q2dtAPyl9FPHKLgh5DP/2SzP
 HEN5cusB+nOoouhEU5nH/vPlhMsG+fBHNWAxTXjbGYHjhFIjG+9UjPaMdSnULy7mg2mF
 UpPW5yOFlR4j0PsmqQKddLEY64xmikZoTdp7xr/NFFjkcqZRjVatwwdUWXtz0/9cwIRX
 lHyA==
X-Gm-Message-State: APjAAAWuSyM5E2TZhvtBXqJz2AOpFiDqWEYQe69zNugsoNPmVlhXuogK
 ZXigofgFDobaz1nB5nImT8fzIg==
X-Google-Smtp-Source: APXvYqx+lfPTpnvfcuRRBeqTz2GN8uCmPc7RnUYQGVmNn2nMH+aP0xZQtQocoZFSsUHXgigJlUoJog==
X-Received: by 2002:a63:fb0a:: with SMTP id o10mr13787560pgh.258.1570752382982; 
 Thu, 10 Oct 2019 17:06:22 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id k23sm9231444pgi.49.2019.10.10.17.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 03/29] powerpc: Rename PT_LOAD identifier "kernel" to "text"
Date: Thu, 10 Oct 2019 17:05:43 -0700
Message-Id: <20191011000609.29728-4-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170624_713397_147A617D 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Michal Simek <monstr@monstr.eu>, x86@kernel.org, linux-ia64@vger.kernel.org,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 linux-xtensa@linux-xtensa.org, Michael Ellerman <mpe@ellerman.id.au>,
 Dave Hansen <dave.hansen@linux.intel.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 Yoshinori Sato <ysato@users.sourceforge.jp>, linux-parisc@vger.kernel.org,
 Andy Lutomirski <luto@kernel.org>, linux-alpha@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rick Edgecombe <rick.p.edgecombe@intel.com>,
 Will Deacon <will@kernel.org>, linux-arm-kernel@lists.infradead.org,
 linux-c6x-dev@linux-c6x.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

In preparation for moving NOTES into RO_DATA, rename the linker script
internal identifier for the PT_LOAD Program Header from "kernel" to
"text" to match other architectures.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/kernel/vmlinux.lds.S | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index a3c8492b2b19..e184a63aa5b0 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -18,7 +18,7 @@
 ENTRY(_stext)
 
 PHDRS {
-	kernel PT_LOAD FLAGS(7); /* RWX */
+	text PT_LOAD FLAGS(7); /* RWX */
 	note PT_NOTE FLAGS(0);
 }
 
@@ -63,7 +63,7 @@ SECTIONS
 #else /* !CONFIG_PPC64 */
 		HEAD_TEXT
 #endif
-	} :kernel
+	} :text
 
 	__head_end = .;
 
@@ -112,7 +112,7 @@ SECTIONS
 		__got2_end = .;
 #endif /* CONFIG_PPC32 */
 
-	} :kernel
+	} :text
 
 	. = ALIGN(ETEXT_ALIGN_SIZE);
 	_etext = .;
@@ -163,9 +163,9 @@ SECTIONS
 #endif
 	EXCEPTION_TABLE(0)
 
-	NOTES :kernel :note
+	NOTES :text :note
 	/* Restore program header away from PT_NOTE. */
-	.dummy : { *(.dummy) } :kernel
+	.dummy : { *(.dummy) } :text
 
 /*
  * Init sections discarded at runtime
@@ -180,7 +180,7 @@ SECTIONS
 #ifdef CONFIG_PPC64
 		*(.tramp.ftrace.init);
 #endif
-	} :kernel
+	} :text
 
 	/* .exit.text is discarded at runtime, not link time,
 	 * to deal with references from __bug_table
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
