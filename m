Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB4E3E9190
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:15:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=etc8HhijoZ0CqZGZwpNJR1UMJFuzclMqPWd/Iha6CbI=; b=pTBh3aWP4V0Ox2JHphK2dJ56fx
	97T1DvN6NnQaxDhkwBwNckr0IDwjUib6V62HI06oqc6y4MYyYkVF0lkCUo1D3UeFHoPa7eWikV0KW
	aHvNo4o1aUH6j8HBoiC6yLwIgBuXsaxArRKNMEkZYUGQEWPFOjgt0vftw7gKyxkUCFoyNCaFqrh9q
	EcMmJd8OETd1ZhWZXQErWTGPqc4GplA0sa0QDxuvgFF9Z73xNVjoeMAEK6C2zLzJbeCZx03BrzAC7
	XcSDD2kK6JfR1R49KLucJwfTxHOiFFac+0PRoepVbdfI77L0Q5UzaBFMeKKtoOcPPjX4txvuo0ozy
	8JP+jL+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYpR-0004vD-5O; Tue, 29 Oct 2019 21:15:01 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoW-0004O8-9b
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:05 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so8320402plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JlR9HB+AtjkcOVkmTX2Eg2H+ZftC0HH+zvchdZkpMjY=;
 b=Vu+Cz3Bdr08FSpvurZE6wBEe8DPddNVCED4EbuBPLwaTYSq1C3hmodOBylEmeZ5fDF
 y1zF6hUioUHj4Jt94NznScqaHTONpB2VPrjf+1SWvp2je3tJCr6C8uetE+3Pf1UJpm+s
 lVZUPSKcsBhxaTrvaBH+v13ap8LI2UehQEeHs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JlR9HB+AtjkcOVkmTX2Eg2H+ZftC0HH+zvchdZkpMjY=;
 b=XiBq1yApc+JNeFTX7dZdP30YKv6NpVHNBJ7jC8T3d15uylRiwXsUaPbJXVxjoX4uXn
 XFhKRUz16ry5atCZAN7WipCNxqpKUOkZCSkiLMGHcz0l3FO5eVFdvE3vSyTfjtnQECmk
 Ux8+G526bn/9dDzxjM4PuIBzOOf3g0BftdvhYHfE+xmYGTH93jkM+r6OuxZ+S34ugE32
 dzOE4LIQv1F4CtSO8wrvr0dTbsSD5ddfh11aczEdggYGOslEtEpxcc9BQ9NpO7pqEjR+
 aCPy4cMjuSqZFCF7Gd/ykYVlsFGgd6+Ta2XhHMhzPj0GlNp9ooAV6x1sHB0tR/gMrear
 IcmA==
X-Gm-Message-State: APjAAAUX8eUSLd5wqabqEo6VmIM+I7kYgsceHHLRKIA5LPMgOHmoivVP
 Oz47DfE/HJ+h1sWT0m2Ow9/qPQ==
X-Google-Smtp-Source: APXvYqw+HrHYWhGYydF8kNZSKv8NuZ4R4TmpMJCE64dPlGrdUiNxIUpv7BIOTO3KxcC7XYK68jIPIA==
X-Received: by 2002:a17:902:9f81:: with SMTP id g1mr801835plq.82.1572383643666; 
 Tue, 29 Oct 2019 14:14:03 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id a8sm51854pff.5.2019.10.29.14.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 03/29] powerpc: Rename PT_LOAD identifier "kernel" to "text"
Date: Tue, 29 Oct 2019 14:13:25 -0700
Message-Id: <20191029211351.13243-4-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141404_333993_978DA7EA 
X-CRM114-Status: GOOD (  11.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

In preparation for moving NOTES into RO_DATA, rename the linker script
internal identifier for the PT_LOAD Program Header from "kernel" to
"text" to match other architectures.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Michael Ellerman <mpe@ellerman.id.au>
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
