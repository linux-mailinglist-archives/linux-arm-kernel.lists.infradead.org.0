Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 87F9AE2E83
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 12:14:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+1c7vArUXeGf5hFcZxNd2ec6J+iZYb9L4MO+WjsyMvg=; b=SwD5p5wHnuJ2pGSuKvV4iqU3JL
	kISkhgKXi6KNXoX9I+o873iDDDEp5F4l7UZKeVGWXuVHyR7wfQcIpTUf1ONdE4UM0mvPKbTni0ZKt
	QeNevgMwgLm0hR5/j6c6aZX9sCYwVc6mWgQPQzEq3VFaOVBgf2JG/8XfHwyLJB6Em+ZMFjAyVP09x
	MzpANlDABJXVvoW5a1n4yfP6X1AtsMS32bSh5wHryobA6CVqGjtbmwAypok4706YyFQm1hpt7CVA2
	hCTlGn/R24AYuBV0g+VgUuY6TrKIeC4TcYhyxvuEzNuiSt7PslrOnlTNiz9faBHp5vyqGzZ4d4wEN
	ZScgnuoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNa7t-0004eB-5d; Thu, 24 Oct 2019 10:13:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNa7P-0004Nr-Nt
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 10:13:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id w18so24861410wrt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 03:13:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=E0Qq1lNGBY9K/n1HNDcbzQvafIKVtTjxua78199y0Ag=;
 b=OtTWbUvVOM2iwHQpoOwwI1UnAhJtD/y62mQMVMkoYZ3ww+sDiC0C3IVG9ZscaJrkgn
 NiBnR4njWxQei6rPGKV8+iiYVsHt2ZkE68QaPZeRekFJJQspWgxtS6/IwwKIn6NsCN8J
 dUAjvOWvpMN1FNiWpaIKhxe/aCKbqfL7L5fzqvitsDciXZIG0QmnNnfhZyca12TzIUwo
 S6yOHYEz+joDlgRS8h3Z15r3Gm3TikUIL52QNvB4841Y3Wzp9yWt6P821bKvL3wfbr42
 jxs0VqvaNcXG3yGTN28xAxP+cFltZXNyUMq9olcO2XQ03AfofbVSElP2koxuww1GtWEQ
 cesw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=E0Qq1lNGBY9K/n1HNDcbzQvafIKVtTjxua78199y0Ag=;
 b=jqvBc9iviD7CDSz8nClRqwEEls4jrP/BRs1c03CXjvTGlx8qBpxaFclryQQIjyi3Zk
 dNhSlYePpImajanyr0CJlqXjMXUhGan5YVZBnTPSaFIMCvfl6jQuIyBX3ws4bTwIANu3
 4IhvKME1gtqUfOYEMT0W6xlvgIZv0sF0Gr5kqTcY76u5bt4qF5Dvdq9ZhehRxlS18xZ2
 4rvQIb8jLvLxGm3mNB1WNWI+qjFuOnfG/fyQAzb9APjBfRcQUqddHNf/YPLe45q/4Ee3
 lJGGju3L88JyDIY5T0ri0o812pejS/8arRND39aWm68mulJQSTeO5/QT1Vz+Zk/TNIG3
 JwqA==
X-Gm-Message-State: APjAAAUCfyim/Y7PxFvvIhMI6z47K0w1men5CqnxfcVJQwbnqo8cPuAG
 I54BxZ9beehplPOGzddeLXiRpQ==
X-Google-Smtp-Source: APXvYqwsbNByeVpgsdT7AP1vJKjq5FS1kvH+EeS+2LruajwpjBeA7AqFH480WTXQmfmey1xz1ZMgAw==
X-Received: by 2002:adf:fd8a:: with SMTP id d10mr2894178wrr.368.1571912000848; 
 Thu, 24 Oct 2019 03:13:20 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id f204sm1273607wmf.32.2019.10.24.03.13.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 03:13:20 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, palmer@sifive.com, hch@infradead.org, longman@redhat.com,
 helgaas@kernel.org
Subject: [PATCH 1/2] asm-generic: Make msi.h a mandatory include/asm header
Date: Thu, 24 Oct 2019 12:13:11 +0200
Message-Id: <a021f232968cfffe3f2d838da47214c6bbdeeedb.1571911976.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571911976.git.michal.simek@xilinx.com>
References: <cover.1571911976.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1571911976.git.michal.simek@xilinx.com>
References: <cover.1571911976.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_031323_778941_1AFE1900 
X-CRM114-Status: GOOD (  13.41  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Eric Biggers <ebiggers@google.com>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Masahiro Yamada <yamada.masahiro@socionext.com>,
 Paul Mackerras <paulus@samba.org>, sparclinux@vger.kernel.org,
 linux-riscv@lists.infradead.org, Will Deacon <will@kernel.org>,
 Ingo Molnar <mingo@kernel.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, Firoz Khan <firoz.khan@linaro.org>,
 Wesley Terpstra <wesley@sifive.com>, James Hogan <jhogan@kernel.org>,
 linux-snps-arc@lists.infradead.org, Albert Ou <aou@eecs.berkeley.edu>,
 Arnd Bergmann <arnd@arndb.de>, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Cornelia Huck <cohuck@redhat.com>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Vineet Gupta <vgupta@synopsys.com>, Paolo Bonzini <pbonzini@redhat.com>,
 linuxppc-dev@lists.ozlabs.org, "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

msi.h is generic for all architectures expect of x86 which has own version.
Enabling MSI by including msi.h to architecture Kbuild is just additional
step which doesn't need to be done.
The patch was created based on request to enable MSI for Microblaze.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

https://lore.kernel.org/linux-riscv/20191008154604.GA7903@infradead.org/
---
 arch/arc/include/asm/Kbuild     | 1 -
 arch/arm/include/asm/Kbuild     | 1 -
 arch/arm64/include/asm/Kbuild   | 1 -
 arch/mips/include/asm/Kbuild    | 1 -
 arch/powerpc/include/asm/Kbuild | 1 -
 arch/riscv/include/asm/Kbuild   | 1 -
 arch/sparc/include/asm/Kbuild   | 1 -
 include/asm-generic/Kbuild      | 1 +
 8 files changed, 1 insertion(+), 7 deletions(-)

diff --git a/arch/arc/include/asm/Kbuild b/arch/arc/include/asm/Kbuild
index 393d4f5e1450..1b505694691e 100644
--- a/arch/arc/include/asm/Kbuild
+++ b/arch/arc/include/asm/Kbuild
@@ -17,7 +17,6 @@ generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
-generic-y += msi.h
 generic-y += parport.h
 generic-y += percpu.h
 generic-y += preempt.h
diff --git a/arch/arm/include/asm/Kbuild b/arch/arm/include/asm/Kbuild
index 68ca86f85eb7..fa579b23b4df 100644
--- a/arch/arm/include/asm/Kbuild
+++ b/arch/arm/include/asm/Kbuild
@@ -12,7 +12,6 @@ generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
-generic-y += msi.h
 generic-y += parport.h
 generic-y += preempt.h
 generic-y += seccomp.h
diff --git a/arch/arm64/include/asm/Kbuild b/arch/arm64/include/asm/Kbuild
index 98a5405c8558..bd23f87d6c55 100644
--- a/arch/arm64/include/asm/Kbuild
+++ b/arch/arm64/include/asm/Kbuild
@@ -16,7 +16,6 @@ generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
-generic-y += msi.h
 generic-y += qrwlock.h
 generic-y += qspinlock.h
 generic-y += serial.h
diff --git a/arch/mips/include/asm/Kbuild b/arch/mips/include/asm/Kbuild
index c8b595c60910..61b0fc2026e6 100644
--- a/arch/mips/include/asm/Kbuild
+++ b/arch/mips/include/asm/Kbuild
@@ -13,7 +13,6 @@ generic-y += irq_work.h
 generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
-generic-y += msi.h
 generic-y += parport.h
 generic-y += percpu.h
 generic-y += preempt.h
diff --git a/arch/powerpc/include/asm/Kbuild b/arch/powerpc/include/asm/Kbuild
index 64870c7be4a3..17726f2e46de 100644
--- a/arch/powerpc/include/asm/Kbuild
+++ b/arch/powerpc/include/asm/Kbuild
@@ -10,4 +10,3 @@ generic-y += local64.h
 generic-y += mcs_spinlock.h
 generic-y += preempt.h
 generic-y += vtime.h
-generic-y += msi.h
diff --git a/arch/riscv/include/asm/Kbuild b/arch/riscv/include/asm/Kbuild
index 16970f246860..1efaeddf1e4b 100644
--- a/arch/riscv/include/asm/Kbuild
+++ b/arch/riscv/include/asm/Kbuild
@@ -22,7 +22,6 @@ generic-y += kvm_para.h
 generic-y += local.h
 generic-y += local64.h
 generic-y += mm-arch-hooks.h
-generic-y += msi.h
 generic-y += percpu.h
 generic-y += preempt.h
 generic-y += sections.h
diff --git a/arch/sparc/include/asm/Kbuild b/arch/sparc/include/asm/Kbuild
index b6212164847b..62de2eb2773d 100644
--- a/arch/sparc/include/asm/Kbuild
+++ b/arch/sparc/include/asm/Kbuild
@@ -18,7 +18,6 @@ generic-y += mcs_spinlock.h
 generic-y += mm-arch-hooks.h
 generic-y += mmiowb.h
 generic-y += module.h
-generic-y += msi.h
 generic-y += preempt.h
 generic-y += serial.h
 generic-y += trace_clock.h
diff --git a/include/asm-generic/Kbuild b/include/asm-generic/Kbuild
index adff14fcb8e4..ddfee1bd9dc1 100644
--- a/include/asm-generic/Kbuild
+++ b/include/asm-generic/Kbuild
@@ -4,4 +4,5 @@
 # (This file is not included when SRCARCH=um since UML borrows several
 # asm headers from the host architecutre.)
 
+mandatory-y += msi.h
 mandatory-y += simd.h
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
