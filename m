Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C9D61404CF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 09:04:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mNMJZ1O7sY7ebmPrQWTLmNPsYuOed3kN0XLlyNq/M9g=; b=MDl8+yqJr7tLUj
	lbqPeGBJrEjafj/Wg7psaC+LttJYas06aqPDoQ7LzJIxDO5ztjIPT9/SI+UvimBArwtXUPJ4tEk4R
	/apE7koJ8FhqoPrLTTmqryaYuEHC0q/CGDkY5BKsXFhF3xrQrXs9LoV7VRyER3L6NFynCBUXwTuzt
	zEPNz5wbqUNbQEaZ/uZCkx5jOqcCSqIgXPodn6e4H9TBvgTcUlqGGcGhR+C7hc+IKMKGxcMc7uRzT
	a6HlQsoeGWmRUy2zuf4X6enV24oZbXfbdbGSBVub202r5Ez4znfCq7QEMjQ1gguYP4TxiLX0wS9l1
	DXBtncqNbzteft5TJeIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isMc1-0007nj-R8; Fri, 17 Jan 2020 08:04:13 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isMbS-0007UJ-Bi
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 08:03:46 +0000
Received: by mail-wr1-x441.google.com with SMTP id y11so21692486wrt.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 Jan 2020 00:03:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0dxc8QtGQ0PTjujap7aKZ1LJY+erIVhDCOoHmhzPCX8=;
 b=Lfol5RQlR3KGOLzmjrmaD4btTKkwlxLirjdWy1fMTWxNPqnZsyb0NOd7gB1DJ+c78g
 gF8D8lqSDpb3r1K6LZFEATwaKrWbUKBBoiTIAFVg8GHKi1MNG3xtrVcGWy5QQppXfflX
 9SR65wlDDiu/cxOLVjoy5ZXOeninl5K6F6d/z+RNnhAGcPh61N54/d/z3PlIyPrkzJqa
 kejynOqCGEeEBoItKELgRLMSr7jkFE34Jx/8dgu9pRJXEfWNg+LtWz0c3y0K35VcZGMx
 +AfwMfiuOkfoKJ8gx7/Gt8zUgOZR4KHqYRBgHDW1Fz2iHs9rWnydYd+kJFwzoTWR5qyQ
 NifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:mime-version:content-transfer-encoding;
 bh=0dxc8QtGQ0PTjujap7aKZ1LJY+erIVhDCOoHmhzPCX8=;
 b=hn88esVJv463IcKevxzz1prBqWLMLRcE3FoYF8x7qohQr2m6NonhzHXlaLENdbdPUg
 9Jr2NI//kqtSqRLhZjFKnOHur7Haswboh+QQ1L2B0LnG4AgfFinh4LnkUE257WdsTNvx
 aSkVOtnuecwELsbADczBdXC39m37XLa7+6ADC/HRnfcwdb3YJe3VD7h1F2/4D/+Go0G3
 aitrIGqZ/Ca6YD8jxRZ0nvP6fGuDhJV5cLcJ92EDOAFp3EhIpl9r9evuGwqvkPuRDAkt
 4GOxaBRUj8+D2w0vCR8cw85/T1HrokfFqtNpl7DMX60jop+63gynRuH8jznw9fc6F0gm
 uWtw==
X-Gm-Message-State: APjAAAWxRr18Ih9NIjNvteJu2FI1q0Rr8eKn37ZNKqjEqt6R/QPN36Vf
 IxWErSdwA7gERlRwBDojG2RDGw==
X-Google-Smtp-Source: APXvYqyPIStCdr8O+woTvblUlJbT07zm348a3w9jixRcjfWMr8KNQCBHIGn8jgpPoYfAhE5mn3DrZg==
X-Received: by 2002:adf:ef49:: with SMTP id c9mr1770134wrp.292.1579248217005; 
 Fri, 17 Jan 2020 00:03:37 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id c195sm3477036wmd.45.2020.01.17.00.03.36
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 17 Jan 2020 00:03:36 -0800 (PST)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, Christoph Hellwig <hch@lst.de>
Subject: [PATCH v2 1/2] asm-generic: Make dma-contiguous.h a mandatory
 include/asm header
Date: Fri, 17 Jan 2020 09:03:31 +0100
Message-Id: <0274919c5e3b134df19d943f99cb7e84e5135ccd.1579248206.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <cover.1579248206.git.michal.simek@xilinx.com>
References: <cover.1579248206.git.michal.simek@xilinx.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_000338_396265_155664CA 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Kate Stewart <kstewart@linuxfoundation.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Heiko Carstens <heiko.carstens@de.ibm.com>, Max Filippov <jcmvbkbc@gmail.com>,
 Guo Ren <guoren@kernel.org>, Deepa Dinamani <deepa.kernel@gmail.com>,
 "H. Peter Anvin" <hpa@zytor.com>, linux-riscv@lists.infradead.org,
 Will Deacon <will@kernel.org>, linux-arch@vger.kernel.org,
 linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 Paul Burton <paulburton@kernel.org>, x86@kernel.org,
 Christoph Hellwig <hch@infradead.org>,
 Christian Borntraeger <borntraeger@de.ibm.com>, Ingo Molnar <mingo@redhat.com>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 Waiman Long <longman@redhat.com>, linux-xtensa@linux-xtensa.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Borislav Petkov <bp@alien8.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Chris Zankel <chris@zankel.net>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

dma-continuguous.h is generic for all architectures except arm32 which has
its own version.

Similar change was done for msi.h by commit a1b39bae16a6
("asm-generic: Make msi.h a mandatory include/asm header")

Suggested-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2:
- New patch suggested by Christoph

 arch/arm64/include/asm/Kbuild  | 1 -
 arch/csky/include/asm/Kbuild   | 1 -
 arch/mips/include/asm/Kbuild   | 1 -
 arch/riscv/include/asm/Kbuild  | 1 -
 arch/s390/include/asm/Kbuild   | 1 -
 arch/x86/include/asm/Kbuild    | 1 -
 arch/xtensa/include/asm/Kbuild | 1 -
 include/asm-generic/Kbuild     | 1 +
 8 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
index bd23f87d6c55..d3077c991962 100644
--- a/arch/arm64/include/asm/Kbuild
+++ b/arch/arm64/include/asm/Kbuild
@@ -3,7 +3,6 @@ generic-y += bugs.h
 generic-y += delay.h
 generic-y += div64.h
 generic-y += dma.h
-generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
 generic-y += early_ioremap.h
 generic-y += emergency-restart.h
diff --git a/arch/csky/include/asm/Kbuild b/arch/csky/include/asm/Kbuild
index 4d4754e6bf89..bc15a26c782f 100644
--- a/arch/csky/include/asm/Kbuild
+++ b/arch/csky/include/asm/Kbuild
@@ -7,7 +7,6 @@ generic-y += delay.h
 generic-y += device.h
 generic-y += div64.h
 generic-y += dma.h
-generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
 generic-y += emergency-restart.h
 generic-y += exec.h
diff --git a/arch/mips/include/asm/Kbuild b/arch/mips/include/asm/Kbuild
index 61b0fc2026e6..179403ae5837 100644
--- a/arch/mips/include/asm/Kbuild
+++ b/arch/mips/include/asm/Kbuild
@@ -6,7 +6,6 @@ generated-y += syscall_table_64_n64.h
 generated-y += syscall_table_64_o32.h
 generic-y += current.h
 generic-y += device.h
-generic-y += dma-contiguous.h
 generic-y += emergency-restart.h
 generic-y += export.h
 generic-y += irq_work.h
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 1efaeddf1e4b..ec0ca8c6ab64 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -7,7 +7,6 @@ generic-y += div64.h
 generic-y += extable.h
 generic-y += flat.h
 generic-y += dma.h
-generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
 generic-y += emergency-restart.h
 generic-y += exec.h
diff --git a/arch/s390/include/asm/Kbuild b/arch/s390/include/asm/Kbuild
index 2531f673f099..1832ae6442ef 100644
--- a/arch/s390/include/asm/Kbuild
+++ b/arch/s390/include/asm/Kbuild
@@ -7,7 +7,6 @@ generated-y += unistd_nr.h
 generic-y += asm-offsets.h
 generic-y += cacheflush.h
 generic-y += device.h
-generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
 generic-y += div64.h
 generic-y += emergency-restart.h
diff --git a/arch/x86/include/asm/Kbuild b/arch/x86/include/asm/Kbuild
index 8b52bc5ddf69..ea34464d6221 100644
--- a/arch/x86/include/asm/Kbuild
+++ b/arch/x86/include/asm/Kbuild
@@ -7,7 +7,6 @@ generated-y += unistd_32_ia32.h
 generated-y += unistd_64_x32.h
 generated-y += xen-hypercalls.h
 
-generic-y += dma-contiguous.h
 generic-y += early_ioremap.h
 generic-y += export.h
 generic-y += mcs_spinlock.h
diff --git a/arch/xtensa/include/asm/Kbuild b/arch/xtensa/include/asm/Kbuild
index 3acc31e55e02..271917c24b7f 100644
--- a/arch/xtensa/include/asm/Kbuild
+++ b/arch/xtensa/include/asm/Kbuild
@@ -4,7 +4,6 @@ generic-y += bug.h
 generic-y += compat.h
 generic-y += device.h
 generic-y += div64.h
-generic-y += dma-contiguous.h
 generic-y += dma-mapping.h
 generic-y += emergency-restart.h
 generic-y += exec.h
diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
index ddfee1bd9dc1..cd17d50697cc 100644
--- a/include/asm-generic/Kbuild
+++ b/include/asm-generic/Kbuild
@@ -4,5 +4,6 @@
 # (This file is not included when SRCARCH=um since UML borrows several
 # asm headers from the host architecutre.)
 
+mandatory-y += dma-contiguous.h
 mandatory-y += msi.h
 mandatory-y += simd.h
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
