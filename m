Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A261FE918E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:14:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=f3tuYO0v6X+gu5qKrg+NmD+ch7rIbujYlS2MNmUOF7o=; b=Q7AusTHFk5S8HG3gH62Jzj11kS
	XuRKTl6mlG1xw1SgnAWfCUDnHGaOlWaAwjb193bEfdgzCtUAjkZ1CVvnXyIuMoF94YpDpu6Ypth6E
	sQO3BuJSoGIW9RKbCGTnab4fUgFJunBz/bvowZtMf1RCgwWUKWvd0mnS67Z2/JAZd4ucViE6Rblb3
	v+/wRKdtzia+gtvaHvGjKXkh9dWlzNIVM1BiKJb8FlNE+5c3rLIw1ZECjNpjw3QeGwvuRzgURuDaS
	HJmU/Cfs43xRrUbPkGWHDfljQgk2eiNnulwj3/iTikvvp9D3DrNedU87IEyexOZG2PZnw2eZXD9tj
	moRN1PYA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYp7-0004dr-NC; Tue, 29 Oct 2019 21:14:41 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoU-0004NM-Mu
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:04 +0000
Received: by mail-pl1-x643.google.com with SMTP id p5so3128247plr.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=UBMCQcUOloL4FNQm5udB+snIcmDdRxu45Na8ZXgn6j0=;
 b=kdVHFkWUWfSKoiPKPgWKbAsFTrcW5JNBQhTGTF4q2deleiY3/8n0BF6eoXBERPq8mq
 MXvnqxBYuL7FPHWZ/R6H0s/W1xjZNZPEiLHYArhnUWssmjQ9IekX8pDgbayL/8UyYSTb
 kH2PTazTZLVUdMFc2ETjXJ8rIdmfptOgLDOBM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=UBMCQcUOloL4FNQm5udB+snIcmDdRxu45Na8ZXgn6j0=;
 b=nnSTuPajbqPNbPcwcUbUL7qkLhuyo8a0taioNJAXqPvwxZ3CW4dUUeEFUc8aBdtA+8
 it2jikOrpgs+XHXCLpfM3BPAKqvNGV9ZFZEDc0GteXxd/qALq+4WznqUPlazN4qwXZ1i
 /70L242WZ6O8K8CJh9Tst1PKYakQWlwClC6ur6X6AZO4SumF5HoGaoXg3ON1S8r3YQKr
 I8RHxvSc5/leU3YfgtdYYs97uBE/IZneP8fna4oZ/jvvZjTNj2XqqaPycbJuLUCohcFv
 aNvF0NBHGA295o76QOQRzOWhNEZ5zXkLala2E7/ZWsjhp23Lop+dF5AwP6FXqca7Ab/K
 FbSA==
X-Gm-Message-State: APjAAAVR7/UH5OEFUTJdNVmkEln5FeYPavjBfhICefNrmuoEeYqnLwis
 hJ7nj+II5x+41KxpfUb8LeoTzg==
X-Google-Smtp-Source: APXvYqxEU/jPSR344Zm3qUnGnizPxb8rt1UkEG6PtKOdviXqXNGWzTbgn7h13zjGLZsYob22VLKUOQ==
X-Received: by 2002:a17:902:bb8d:: with SMTP id
 m13mr785919pls.29.1572383641856; 
 Tue, 29 Oct 2019 14:14:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id z9sm135208pgs.46.2019.10.29.14.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 01/29] powerpc: Rename "notes" PT_NOTE to "note"
Date: Tue, 29 Oct 2019 14:13:23 -0700
Message-Id: <20191029211351.13243-2-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141402_743582_92A66475 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
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

The Program Header identifiers are internal to the linker scripts. In
preparation for moving the NOTES segment declaration into RO_DATA,
standardize the identifier for the PT_NOTE entry to "note" as used by
all other architectures that emit PT_NOTE.

Note that there was discussion about changing all architectures to use
"notes" instead, but I prefer to avoid that at this time. Changing only
powerpc is the smallest change to standardize the entire kernel. And
while this standardization does use singular "note" for a section that
has more than one note in it, this is just an internal identifier. It
matches the ELF "PT_NOTE", and is 4 characters (like "text", and "data")
for pretty alignment. The more exposed macro, "NOTES", use the more
sensible plural wording.

Signed-off-by: Kees Cook <keescook@chromium.org>
Acked-by: Michael Ellerman <mpe@ellerman.id.au>
---
 arch/powerpc/kernel/vmlinux.lds.S | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/powerpc/kernel/vmlinux.lds.S b/arch/powerpc/kernel/vmlinux.lds.S
index 060a1acd7c6d..81e672654789 100644
--- a/arch/powerpc/kernel/vmlinux.lds.S
+++ b/arch/powerpc/kernel/vmlinux.lds.S
@@ -19,7 +19,7 @@ ENTRY(_stext)
 
 PHDRS {
 	kernel PT_LOAD FLAGS(7); /* RWX */
-	notes PT_NOTE FLAGS(0);
+	note PT_NOTE FLAGS(0);
 	dummy PT_NOTE FLAGS(0);
 
 	/* binutils < 2.18 has a bug that makes it misbehave when taking an
@@ -177,7 +177,7 @@ SECTIONS
 #endif
 	EXCEPTION_TABLE(0)
 
-	NOTES :kernel :notes
+	NOTES :kernel :note
 
 	/* The dummy segment contents for the bug workaround mentioned above
 	   near PHDRS.  */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
