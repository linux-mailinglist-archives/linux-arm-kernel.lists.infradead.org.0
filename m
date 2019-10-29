Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 491B2E91A3
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:17:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FHYEPfowEET14HZnaGn8K7+zASZ25X0zbhitQOHPoZk=; b=KPIGUjTDzd+6baZ08RYpxbiQli
	GrMIeHpxtuflrYCWcSxxfzJWXKc6IQZtjDviRk8S9Hn2OHk64HlBXqRpweyBOWMMNKsyBIAjO563u
	Yb1Vbf+eo2PcKsrU4cA4O4SiCEhXWDNO+poHICwIx1GA7XZ8k4StysPSQgAiCGV56qf5CJFBDyYd8
	deYv/dv8fic/Wva/1UfX9EflhWGtJ007V+Q/d4jgsXrm838NMJa+VKCvmN4gXDu4k+V1QltxBiYvX
	pUP2g8LAsi7EUI+4Sk5TO57slaqQLj+gBdhFTV+foS9694fAxDI0SfTKBZfyMZUBpT9GEdsEpeAoc
	J/DtnaRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYri-0007v6-Ga; Tue, 29 Oct 2019 21:17:22 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoc-0004UH-OC
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:12 +0000
Received: by mail-pl1-x643.google.com with SMTP id t10so8300055plr.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=/BlCq1vuoPK6b90i9+3dEN0gsbsUxI5XzRVDtU+Y9n4=;
 b=M3a1uKeinpfYILyOgto01x3Z0/Do7xHci3ACE83vFIz62Z9cDjf3QuJSqLQlVdoz5I
 0rW3KKzQ7S0KkakxOpNlTmyhieiHv+YebhpWX4iC97xSOcSmbsnsoy8a6PUwi+eJhllx
 qwaZZ60pVF22RF1UdIfw2PTFkL9ZBlI7t+Doc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=/BlCq1vuoPK6b90i9+3dEN0gsbsUxI5XzRVDtU+Y9n4=;
 b=JRWY8yOHlt/rgY7PJuE3S77nQ8UIHVz72kzjBUFqmXjpsFQS8Va9Z7JafvC6Y9TEq+
 eJ0dSCcwLSjcZIi8hRFYh+GPgcud1YIxODFrsxwLjZPCMZPeApx9X3af8MqnrQ0P3y1D
 Un+ROpmY1gmfnA/OBk1XlCMIiOQVbBMbI+w7xh8G05QrKzfokHkYfykGjokBCVrWNzgb
 aOgAqoEzjWZDkUsY871I7MaBUwpujkcNdZIcyhjpJiMQhd+N/FHIhlh119OFkHWfz7oT
 pkYCNVknsbt7U3ewr4iFUc1gsBqMTk4YcJpiDLibv4uO1X5ZpXmq7wcsFJaaBYYzNrB5
 xfxQ==
X-Gm-Message-State: APjAAAV5XUzzXtIvMwxwz90mPDRuEOVPWoO8swC+7pP0ZSdCyPStiHxG
 HCQ+lBLsYxVB6KAj2a6NR7BmSQ==
X-Google-Smtp-Source: APXvYqwBlr/dG9EoHmIzcD/284bTMRVUng+VSZNVn2USM8IUIAoIBLGaDuOHmKUNb6KZndWlR52IoQ==
X-Received: by 2002:a17:902:ab82:: with SMTP id f2mr774907plr.39.1572383649691; 
 Tue, 29 Oct 2019 14:14:09 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z25sm41774pfa.88.2019.10.29.14.14.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:04 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 07/29] x86: Restore "text" Program Header with dummy section
Date: Tue, 29 Oct 2019 14:13:29 -0700
Message-Id: <20191029211351.13243-8-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141410_892227_14187C95 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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

In a linker script, if once places a section in one or more segments using
":PHDR", then the linker will place all subsequent allocatable sections,
which do not specify ":PHDR", into the same segments. In order to have
the NOTES section in both PT_LOAD (":text") and PT_NOTE (":note"), both
segments are marked, and the only way to to undo this to keep subsequent
sections out of PT_NOTE is to mark the following section with just the
single desired PT_LOAD (":text").

In preparation for having a common NOTES macro, perform the segment
assignment use a dummy section (as done by other architectures).

Signed-off-by: Kees Cook <keescook@chromium.org>
---
 arch/x86/kernel/vmlinux.lds.S | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/x86/kernel/vmlinux.lds.S b/arch/x86/kernel/vmlinux.lds.S
index e2feacf921a0..788e78978030 100644
--- a/arch/x86/kernel/vmlinux.lds.S
+++ b/arch/x86/kernel/vmlinux.lds.S
@@ -147,8 +147,9 @@ SECTIONS
 	} :text = 0x9090
 
 	NOTES :text :note
+	.dummy : { *(.dummy) } :text
 
-	EXCEPTION_TABLE(16) :text = 0x9090
+	EXCEPTION_TABLE(16)
 
 	/* .text should occupy whole number of pages */
 	. = ALIGN(PAGE_SIZE);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
