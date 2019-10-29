Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D05ACE918D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 22:14:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kF99M32f5ai8H6vNoNsfnkrybMiBNCtES5cP7r9/HMg=; b=cBr9X1l5qvom2cyMoUifZ36S1d
	EvB+LM682XOhsSBBYr0UBn0MO1NDOizVtfKez+0hbY/nNLvunV93/91KztoKTfKGZzKzlM8D/0o0m
	yCbj2gRaUc/TlH+xlieGCUv8SblsmGLrxCZ+pD3WMPvDeLP0Ks4ckU1UO2FIvfHkq426aYovcsAYM
	RcjcuxgXzxHYFRJRQRzi+/nB/pcI/EjdHWODxMckLKQ9AtWi0//Zvx9GpCmGwGdi4ybM1mlNttKrv
	UQpTTNUPRwy5eEghEIKbs0rLNss830O5LHqPa5i8plMLp3Bsh7w5qqkj9TnAFfrXQFsIfjVqZtqKG
	HE/OaIAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPYoj-0004P4-Ez; Tue, 29 Oct 2019 21:14:17 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPYoU-0004NK-Fc
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 21:14:03 +0000
Received: by mail-pg1-x542.google.com with SMTP id r1so10484767pgj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 14:14:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=7MxClQbH59XRrbTRajW1Gh8uACzcU2+htsVcXyM7D1g=;
 b=LQy1OlzqoHregmX7oWg1J+GCiPB+DnhcNeAFzNXO6O9s9wLhpCBsF0jSKzXlK9lP/k
 SDnj0o9+xZ39dyE9cCQWqZxyjuoHNyl3rdCu/xiTRCFpDNUVVX7tFk5VZETqdUPMammV
 NH8kU7Tb11dukK+QDn0fvxLsZMYk5M8Ahi8aU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=7MxClQbH59XRrbTRajW1Gh8uACzcU2+htsVcXyM7D1g=;
 b=ppInn+VHjh1EBEzz0Nt2yNDeDjYMCLc2/Wv7ei1bwVQ06MsoalKW6t0BUTzqJfB0C0
 srqsr7KLewmNzb0gknoEdAzfeBmhAKbrN+KpiK1dTr4+dTmDKob07veSGms4FWguE0yT
 KLX82oWVWyb9iPUAnQm4QCqkGACQBL3/9NPI9obfquTtY0QTsQUsFYHHxfMhsXERpNoE
 awvSmQHXgv4y7rYhhx50eNKq3+IQlQOZODHEJzOniWWf7pp9CecYfRG2TqoUG4oV7pwD
 gEuklRskvK8K6h6zG5Yw73dszz9c7P19y8/L/skUlp2dVM0fQsfw+ZhZzEXbZkN/cNvI
 HM4Q==
X-Gm-Message-State: APjAAAW2BqvnukMflljdUsnr8Afvu/LY7VLvUtigvAbC7ElUmQ9SA4ad
 bPq3UFRUYmccITHz59R/PV0cAQ==
X-Google-Smtp-Source: APXvYqzb5TnssM+4Kax/lIY7+ocxpNqcjOJlOJ6nd7kpeZ9S4qL0Qt7FLOUhwi50TM1MUY+x1dQPhQ==
X-Received: by 2002:a63:3f8e:: with SMTP id
 m136mr30665411pga.213.1572383641052; 
 Tue, 29 Oct 2019 14:14:01 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id i126sm47757pfc.29.2019.10.29.14.13.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 29 Oct 2019 14:14:00 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Borislav Petkov <bp@alien8.de>
Subject: [PATCH v3 04/29] alpha: Rename PT_LOAD identifier "kernel" to "text"
Date: Tue, 29 Oct 2019 14:13:26 -0700
Message-Id: <20191029211351.13243-5-keescook@chromium.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191029211351.13243-1-keescook@chromium.org>
References: <20191029211351.13243-1-keescook@chromium.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_141402_550196_920220D8 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
---
 arch/alpha/kernel/vmlinux.lds.S | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/alpha/kernel/vmlinux.lds.S b/arch/alpha/kernel/vmlinux.lds.S
index c4b5ceceab52..781090cacc96 100644
--- a/arch/alpha/kernel/vmlinux.lds.S
+++ b/arch/alpha/kernel/vmlinux.lds.S
@@ -8,7 +8,7 @@
 OUTPUT_FORMAT("elf64-alpha")
 OUTPUT_ARCH(alpha)
 ENTRY(__start)
-PHDRS { kernel PT_LOAD; note PT_NOTE; }
+PHDRS { text PT_LOAD; note PT_NOTE; }
 jiffies = jiffies_64;
 SECTIONS
 {
@@ -27,14 +27,14 @@ SECTIONS
 		LOCK_TEXT
 		*(.fixup)
 		*(.gnu.warning)
-	} :kernel
+	} :text
 	swapper_pg_dir = SWAPPER_PGD;
 	_etext = .;	/* End of text section */
 
-	NOTES :kernel :note
+	NOTES :text :note
 	.dummy : {
 		*(.dummy)
-	} :kernel
+	} :text
 
 	RODATA
 	EXCEPTION_TABLE(16)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
