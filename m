Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 02A1BE434C
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 08:11:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=cNlQ29DZ6jm6ec0+wnNXxB5pn/lMNHyMZQfWu0/bDxg=; b=rRYxwQpo3dGZdreTQIBJ+E6+fw
	Wo7EB93Zm1pnJQydTNWUzGWoLIFMm1IaWMpqPn3zv8ZNZmHAR2saSCLSSiBrjmO2VcTJG7j2pioAq
	MpzZlBZE890bUCmzXQav+bGiU+x8/tgG8XUEhmRddIhIoKmfo+CO2jEItAm14GBwrDCTGQVITnpDs
	HaAdO25FX70yANf7U9pEKKoaiocMRVtahs4+VEcw+sUz92RY/nxJBUj+3urrla6CUHAC1tRidHADr
	vIxhLOuTBr6G+h+K8aVW6T+eYFL4XDP1hgYCoOpjKOsOUUrL50LuKaknLvlHS3jXYX/CXlB99qNsZ
	ZbEZx2qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNsoV-00059c-QF; Fri, 25 Oct 2019 06:11:07 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNsoC-00057B-PG
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 06:10:51 +0000
Received: by mail-wm1-x341.google.com with SMTP id g24so693042wmh.5
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 23:10:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=monstr-eu.20150623.gappssmtp.com; s=20150623;
 h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=uWiWxErdRMMLHHjR/c8XGPvGCm/y5XCfMYSfjIKUt48=;
 b=zzYtYLOAGTmLrDjZxVJ1oV68o9MLxYIKpQIwjjNho8In9CqNa+RBmFqt6WJS5VH6ky
 0E3fmVeX0tHtaIK8Kzcog+3iF8frzP/x07IOH/VmeUCy1cBRdIotHeVKhX4kKv2DZn5G
 6zW9PMgSXPROB1g09pOK+67a75srYkh4BaKqhdf/HifoLhifkTMBUYzU70CsVh1k1SH/
 knjEIKzmVbCdTLV5AOPBtwAFm35DvKJtFVAvirWZbUZEI4HbgOzGNjgZEFsqgPZCWltI
 21fHJTPW/emVJgb/BdwXBSmvEw4oC9SGnMe20xYYtn9pNyGJPZNz1q6P7uRBp5sefFNq
 +CrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :in-reply-to:references:in-reply-to:references;
 bh=uWiWxErdRMMLHHjR/c8XGPvGCm/y5XCfMYSfjIKUt48=;
 b=DSNr4vBXl4aVC+BrQcMnDxqjNsS67YYBYh0Q+m9LopSB5W6hja9CVeXkguBqaGymiw
 p4jXvLQFus97IC285ft2nYQj6MUmR0o0ku5IfO1pxJWJkJ1tfL1ptyayvDUYjqkfcKnX
 dAF6lXhe24bB+gkBfQUex/KDfqRTQrDzM6rFm2+YBr7uP/lr/YCpJAOZRatOwH37J2rr
 gQIHnhRFT2iXrihoCneA9FJQwB7Ijo5Y/K7smOZiW9/4yLd1W37EZm5khsAGZaG4qBFX
 hPe2YrOwvxIKxhYGIbaakt5I3MDu6xGvWW0pYprGSNfZ2gbL6TqvGJxVD3l5c3PQjqRW
 NWlQ==
X-Gm-Message-State: APjAAAXaDBXwMzaDZfCUZv2tyej3AnovKFFMZ0/H87OEuAdyjHe9AH6N
 peHT21bdTOKnA7uV4gMig+NbOg==
X-Google-Smtp-Source: APXvYqwgxAXHmre1oWEJ/a7vzytaYe1IDcJD7hrzF5+5MuN10Is+qMeW/NqxeqeZZL+RLDdsD2vnXw==
X-Received: by 2002:a7b:c208:: with SMTP id x8mr1552381wmi.87.1571983846536;
 Thu, 24 Oct 2019 23:10:46 -0700 (PDT)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
 by smtp.gmail.com with ESMTPSA id f6sm1436717wrm.61.2019.10.24.23.10.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 24 Oct 2019 23:10:45 -0700 (PDT)
From: Michal Simek <michal.simek@xilinx.com>
To: linux-kernel@vger.kernel.org, monstr@monstr.eu, michal.simek@xilinx.com,
 git@xilinx.com, palmer@sifive.com, hch@infradead.org, longman@redhat.com,
 helgaas@kernel.org
Subject: [PATCH v2 1/2] asm-generic: Make msi.h a mandatory include/asm header
Date: Fri, 25 Oct 2019 08:10:37 +0200
Message-Id: <c991669e29a79b1a8e28c3b4b3a125801a693de8.1571983829.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1571983829.git.michal.simek@xilinx.com>
References: <cover.1571983829.git.michal.simek@xilinx.com>
In-Reply-To: <cover.1571983829.git.michal.simek@xilinx.com>
References: <cover.1571983829.git.michal.simek@xilinx.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_231048_961307_41B53633 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
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
 Greg Ungerer <gerg@linux-m68k.org>, linux-arch@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 Michael Ellerman <mpe@ellerman.id.au>, Jackie Liu <liuyun01@kylinos.cn>,
 Russell King <linux@armlinux.org.uk>, Ingo Molnar <mingo@kernel.org>,
 Firoz Khan <firoz.khan@linaro.org>, Wesley Terpstra <wesley@sifive.com>,
 James Hogan <jhogan@kernel.org>, linux-snps-arc@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, Arnd Bergmann <arnd@arndb.de>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-arm-kernel@lists.infradead.org,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, Paul Burton <paul.burton@mips.com>,
 Vineet Gupta <vgupta@synopsys.com>, linuxppc-dev@lists.ozlabs.org,
 "David S. Miller" <davem@davemloft.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

msi.h is generic for all architectures except of x86 which has own version.
Enabling MSI by including msi.h to architecture Kbuild is just additional
step which doesn't need to be done.
The patch was created based on request to enable MSI for Microblaze.

Suggested-by: Christoph Hellwig <hch@infradead.org>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
Acked-by: Waiman Long <longman@redhat.com>
Acked-by: Paul Walmsley <paul.walmsley@sifive.com> # arch/riscv
Tested-by: Paul Walmsley <paul.walmsley@sifive.com> # build only, rv32/rv64
Reviewed-by: Masahiro Yamada <yamada.masahiro@socionext.com>
---

Changes in v2:
- Fix typo in commit message s/expect/except/ - Reported-by: Masahiro

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
