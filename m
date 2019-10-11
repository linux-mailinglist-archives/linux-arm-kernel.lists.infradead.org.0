Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A6A5D34D4
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 02:06:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gPXpte/eLuMehVuOyzpUe0Z7JNyx7IhMP8l3XDaktVg=; b=j4JbJueXqsGqnyilMiQYtpcnpn
	0Uj7qftqCRa7+/a9Zg9ocCOv9355RSp9b510Wmh+I6mCkAlFm1K4L+wDyYIBSHCYLIckxyYZmHRVw
	o61hrm8k/QXx5cOC/HJ6JkMagLQlj8/r3Cvv1Pm1w1f5cGlp7yjTph1zpSJTN+BQDhyxbFDaVoi7e
	MfJ981QjV2Wxe4tFEEHUHHOxjE86jkd/TOr7hzvV6ZeRI1FwTvXZyOKalPiHqsLjDgnRFGluJhktA
	icut8o4rqZbnucaPfpqjTXTluWF/Ix6/2SH1CyW0k6tJ5lUKdo3Vio+Gc54ShvZ6pv4yAnvtSFVnK
	EsUvcBWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIiS6-0003WX-O2; Fri, 11 Oct 2019 00:06:38 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIiRq-0003Vi-8K
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 00:06:23 +0000
Received: by mail-pg1-x544.google.com with SMTP id b8so4670227pgm.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 10 Oct 2019 17:06:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7dmckIaKuL5uoyVhYLyxQgvD7laB8s0ddXfS7YNycCU=;
 b=Zkm/RKe8e+Liv+qZ7ZPm9kwWeSr+NIaspEW7t3lmnI5dNpUpSo6dTzux6vNvY1O0iZ
 mXmbpcaYzINbphQms11pCzDFWcPo5ulCRYCfFRW5DOq8KNnHUZoPg9cYONZAaxdOzKmE
 WYECp/MY1nFT0o4uteh9HzWwnmK7DhrJcJDFU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7dmckIaKuL5uoyVhYLyxQgvD7laB8s0ddXfS7YNycCU=;
 b=RaI+IUo2w0sJMy4l2kIQuVzpd1wg4TrUA0up9/Nk1q6YEXkdFCjhFtT1xaVWEJFTk6
 WRCTmM+3ySs3Pusqm6oDVflrdd7xRISE7FCnZvDtACXBaOxusQ48hzG7ACjoip+80cOC
 wZ0uiovWltQAd5tXGeOjspTdc7OKowk/UaNW1n4C205W5dEcIEN5ubZwGhPd0kKEky7r
 RDgZgdtrsfN+SJYvSgzHZ4nyurq5aLVUV8dvXtApa5daYUocCEEVoTd67Fy31g4y/Iyn
 NAYpfxbNKYeiWqEJ08DvUfCrv5HDtzg6Sl9p8FXKm787eXylPB2Cg/BT5bdcYB0CvVqw
 ICBQ==
X-Gm-Message-State: APjAAAVxJlNoL6i4tn7AOR/tXuFaD2WJWsPaxDez123sEb0bgIPQrVo8
 GCHWQCP8RqZ7rD/iiF5y2uN7cQ==
X-Google-Smtp-Source: APXvYqy8lBsu/lNnf25rns+8k/zkBM8oQHwDv9L6rfwj03NX/IG4fGJ+vORVfGqdbtbZOe/1C8n/Lw==
X-Received: by 2002:a63:554b:: with SMTP id f11mr13613094pgm.151.1570752381593; 
 Thu, 10 Oct 2019 17:06:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id o42sm12777771pjo.32.2019.10.10.17.06.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 10 Oct 2019 17:06:20 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v2 02/29] powerpc: Remove PT_NOTE workaround
Date: Thu, 10 Oct 2019 17:05:42 -0700
Message-Id: <20191011000609.29728-3-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191011000609.29728-1-keescook@chromium.org>
References: <20191011000609.29728-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191010_170622_320365_8104F0F2 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
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

In preparation for moving NOTES into RO_DATA, remove the PT_NOTE
workaround since the kernel requires at least gcc 4.6 now.

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/powerpc/kernel/vmlinux.lds.S | 24 ++----------------------
 1 file changed, 2 insertions(+), 22 deletions(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 81e672654789..a3c8492b2b19 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -20,20 +20,6 @@ ENTRY(_stext)
 PHDRS {
 	kernel PT_LOAD FLAGS(7); /* RWX */
 	note PT_NOTE FLAGS(0);
-	dummy PT_NOTE FLAGS(0);
-
-	/* binutils < 2.18 has a bug that makes it misbehave when taking an
-	   ELF file with all segments at load address 0 as input.  This
-	   happens when running "strip" on vmlinux, because of the AT() magic
-	   in this linker script.  People using GCC >= 4.2 won't run into
-	   this problem, because the "build-id" support will put some data
-	   into the "notes" segment (at a non-zero load address).
-
-	   To work around this, we force some data into both the "dummy"
-	   segment and the kernel segment, so the dummy segment will get a
-	   non-zero load address.  It's not enough to always create the
-	   "notes" segment, since if nothing gets assigned to it, its load
-	   address will be zero.  */
 }
 
 #ifdef CONFIG_PPC64
@@ -178,14 +164,8 @@ SECTIONS
 	EXCEPTION_TABLE(0)
 
 	NOTES :kernel :note
-
-	/* The dummy segment contents for the bug workaround mentioned above
-	   near PHDRS.  */
-	.dummy : AT(ADDR(.dummy) - LOAD_OFFSET) {
-		LONG(0)
-		LONG(0)
-		LONG(0)
-	} :kernel :dummy
+	/* Restore program header away from PT_NOTE. */
+	.dummy : { *(.dummy) } :kernel
 
 /*
  * Init sections discarded at runtime
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
