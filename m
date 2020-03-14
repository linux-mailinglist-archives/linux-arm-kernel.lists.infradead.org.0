Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8276185520
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 14 Mar 2020 09:13:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KTIxSdnlSvKTfuaDwrx2okMN3V07czADKRJcykb6CoI=; b=Ha7Zgc1Ej4tIHr
	nQ5AeISqGj6hXQnrYcLWnMpckyF6KcAJy3CE9zkVNocEEM3fcOHboPVmdZ7hJM4Q7RRau+3bpInn7
	jhZsY4rZWmyiV53XoqdS5oYDI1ugUxOmQUOr2bTlQ04b0A8AqOk/+24DB5lXrE6J90/x3kt5eDLYv
	LD0uJJblzWraweFtfKmCcV85+T+ySFtR5NkNKYFelSxbxf533aMDAgOJPXI1S/2oIqY9fizK5OxeV
	tIh9EqmI+/OhLl47W8HXo3pE0yUUuMwUg/mQoCDZuwfVJ8G4C3h8/ArKAqZO5jkOf3xn19GPFUfFH
	4aWISZVWOfmQbOycO4Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jD1v9-0004vx-HX; Sat, 14 Mar 2020 08:13:23 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jD1v3-0004ve-5o
 for linux-arm-kernel@lists.infradead.org; Sat, 14 Mar 2020 08:13:18 +0000
Received: by mail-pl1-x644.google.com with SMTP id t3so5419677plz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 14 Mar 2020 01:13:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=+pYPykgLXS7lxStFlyLTUgaTilQs/yGzdQnPq1WqMOI=;
 b=TIvWcuhMIrnaPQnzkECzSlL8knE56EKLaAKfOTf/HwzEeFRjhcoRXJWhflgOIidecR
 IUajaTML/QMRK/LGCRXEFaF4wl2Sy1mrI6DpLJHKtTn/QfyXP8BfnFBI4sf7j8seJqF2
 AEvoUHNTUKOknkxBY1UjkcAz6qJ3FCAnQCycfgCF09yxsfJxWzUqrIPYJWZqwPitRuWs
 U4qRUlnmsqQYK5BTC8epGvRyIPwT9e9xVGDWnVeouv4LBu3YTjKFr5ZBtobVVoSLpa7s
 EIH2BVh7unJcClzcc50iDtSfe/JOq4MehqOoBIb1k43+7FpsbQLc9Zsh9Iue9yNZfiHt
 7iYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=+pYPykgLXS7lxStFlyLTUgaTilQs/yGzdQnPq1WqMOI=;
 b=kvhqZCCXgOaeKlwKLJlXiduckXh7I32fX1xA9eGynenUIlXoMPTjEU8NR2WHWU3Nem
 sOuIxdwcmQVKSAudCV0Fsv4T1xN6Lt13tnP3d+kAJilMyiHSVbN57l93Cp0OztKMaHh7
 rmGP/t3/+2UgM2N5m0Qj27vDHEQAfi7kIzlyVOY9SDhxQkXt8Ljs7GQJeBxUwumw3hps
 wpirvxaiHprxxHMw+ZOzeWVhA7fy7ptNMhS19RbXA6fzn4pSy2hqPKOHoUw5WHraAQPn
 SXpJd8MbXrSFqqJvCvwC1Q5c1uHVPIamC9MwXxoJtuvzfJBK1qSgF+Om3Ula5pLz9csQ
 A9/w==
X-Gm-Message-State: ANhLgQ2VSa9vD3dVCPRXHNob7y1M9WPcjB7gX+IRnntJl8L49tVLiDNg
 ZDSwyH1qSYMtcTdHAC0AZkQ=
X-Google-Smtp-Source: ADFU+vtQcLO7GbaBJMkQVIo+LdRKYw6YG03laQFpkC9O1/Sp9IEnoykCC/59zG6I0YYvZfLokauAMw==
X-Received: by 2002:a17:90b:30d3:: with SMTP id
 hi19mr8923662pjb.52.1584173595732; 
 Sat, 14 Mar 2020 01:13:15 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id my6sm15415916pjb.10.2020.03.14.01.13.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sat, 14 Mar 2020 01:13:14 -0700 (PDT)
Date: Sat, 14 Mar 2020 13:43:12 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH v2] MIPS: pass non-NULL dev_id on shared request_irq()
Message-ID: <20200314081312.GA4948@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
 <20200311131210.GA5115@afzalpc>
 <20200311160307.GA15464@alpha.franken.de>
 <20200311163249.GA4984@afzalpc> <20200313121138.GA5985@afzalpc>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200313121138.GA5985@afzalpc>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200314_011317_245169_4999779E 
X-CRM114-Status: GOOD (  14.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Nathan Chancellor <natechancellor@gmail.com>,
 Keguang Zhang <keguang.zhang@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Recently all usages of setup_irq() was replaced by request_irq().
request_irq() does a few sanity checks that were not done in
setup_irq(), if they fail irq registration will fail. One of the check
is to ensure that non-NULL dev_id is passed in the case of shared irq.
This caused malta on qemu to hang.

Fix it by passing handler as dev_id to all request_irq()'s that are
shared. For sni, instead of passing non-NULL dev_id, remove shared irq
flags.

Fixes: ac8fd122e070 ("MIPS: Replace setup_irq() by request_irq()")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Suggested-by: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

v2:
 * use handler for dev_id
 * remove shared irq flags for sni

 arch/mips/dec/setup.c                 | 2 +-
 arch/mips/kernel/cevt-r4k.c           | 3 ++-
 arch/mips/loongson2ef/lemote-2f/irq.c | 2 +-
 arch/mips/pmcs-msp71xx/msp_time.c     | 2 +-
 arch/mips/sni/a20r.c                  | 4 ++--
 arch/mips/sni/pcit.c                  | 8 ++++----
 arch/mips/sni/rm200.c                 | 6 +++---
 7 files changed, 14 insertions(+), 13 deletions(-)

diff --git a/arch/mips/dec/setup.c b/arch/mips/dec/setup.c
index c8bbac0c5051..d4e868b828e5 100644
--- a/arch/mips/dec/setup.c
+++ b/arch/mips/dec/setup.c
@@ -758,7 +758,7 @@ void __init arch_init_irq(void)
 	/* Register the bus error interrupt. */
 	if (dec_interrupt[DEC_IRQ_BUS] >= 0 && busirq_handler) {
 		if (request_irq(dec_interrupt[DEC_IRQ_BUS], busirq_handler,
-				busirq_flags, "bus error", NULL))
+				busirq_flags, "bus error", busirq_handler))
 			pr_err("Failed to register bus error interrupt\n");
 	}
 	/* Register the HALT interrupt. */
diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
index 64e917dfe6b2..17a9cbb8b3df 100644
--- a/arch/mips/kernel/cevt-r4k.c
+++ b/arch/mips/kernel/cevt-r4k.c
@@ -292,7 +292,8 @@ int r4k_clockevent_init(void)
 
 	cp0_timer_irq_installed = 1;
 
-	if (request_irq(irq, c0_compare_interrupt, flags, "timer", NULL))
+	if (request_irq(irq, c0_compare_interrupt, flags, "timer",
+			c0_compare_interrupt))
 		pr_err("Failed to request irq %d (timer)\n", irq);
 
 	return 0;
diff --git a/arch/mips/loongson2ef/lemote-2f/irq.c b/arch/mips/loongson2ef/lemote-2f/irq.c
index 34e15e8b7a8f..6f00579971a3 100644
--- a/arch/mips/loongson2ef/lemote-2f/irq.c
+++ b/arch/mips/loongson2ef/lemote-2f/irq.c
@@ -109,7 +109,7 @@ void __init mach_init_irq(void)
 
 	/* setup north bridge irq (bonito) */
 	if (request_irq(LOONGSON_NORTH_BRIDGE_IRQ, ip6_action,
-			IRQF_SHARED | IRQF_NO_THREAD, "cascade", NULL))
+			IRQF_SHARED | IRQF_NO_THREAD, "cascade", ip6_action))
 		pr_err("Failed to register north bridge cascade interrupt\n");
 	/* setup source bridge irq (i8259) */
 	if (request_irq(LOONGSON_SOUTH_BRIDGE_IRQ, no_action,
diff --git a/arch/mips/pmcs-msp71xx/msp_time.c b/arch/mips/pmcs-msp71xx/msp_time.c
index baf0da8b4c98..9c629829f447 100644
--- a/arch/mips/pmcs-msp71xx/msp_time.c
+++ b/arch/mips/pmcs-msp71xx/msp_time.c
@@ -81,7 +81,7 @@ unsigned int get_c0_compare_int(void)
 	/* MIPS_MT modes may want timer for second VPE */
 	if ((get_current_vpe()) && !tim_installed) {
 		if (request_irq(MSP_INT_VPE1_TIMER, c0_compare_interrupt, flags,
-				"timer", NULL))
+				"timer", c0_compare_interrupt))
 			pr_err("Failed to register timer interrupt\n");
 		tim_installed++;
 	}
diff --git a/arch/mips/sni/a20r.c b/arch/mips/sni/a20r.c
index ba966d62fb4b..0ecffb65fd6d 100644
--- a/arch/mips/sni/a20r.c
+++ b/arch/mips/sni/a20r.c
@@ -222,8 +222,8 @@ void __init sni_a20r_irq_init(void)
 		irq_set_chip_and_handler(i, &a20r_irq_type, handle_level_irq);
 	sni_hwint = a20r_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
-	if (request_irq(SNI_A20R_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+	if (request_irq(SNI_A20R_IRQ_BASE + 3, sni_isa_irq_handler, 0, "ISA",
+			NULL))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/pcit.c b/arch/mips/sni/pcit.c
index 4a850ab03398..b331fe22c529 100644
--- a/arch/mips/sni/pcit.c
+++ b/arch/mips/sni/pcit.c
@@ -244,8 +244,8 @@ void __init sni_pcit_irq_init(void)
 	*(volatile u32 *)SNI_PCIT_INT_REG = 0;
 	sni_hwint = sni_pcit_hwint;
 	change_c0_status(ST0_IM, IE_IRQ1);
-	if (request_irq(SNI_PCIT_INT_START + 6, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+	if (request_irq(SNI_PCIT_INT_START + 6, sni_isa_irq_handler, 0, "ISA",
+			NULL))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
@@ -259,8 +259,8 @@ void __init sni_pcit_cplus_irq_init(void)
 	*(volatile u32 *)SNI_PCIT_INT_REG = 0x40000000;
 	sni_hwint = sni_pcit_hwint_cplus;
 	change_c0_status(ST0_IM, IE_IRQ0);
-	if (request_irq(MIPS_CPU_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+	if (request_irq(MIPS_CPU_IRQ_BASE + 3, sni_isa_irq_handler, 0, "ISA",
+			NULL))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/rm200.c b/arch/mips/sni/rm200.c
index ba1f2fc6a43e..d84744ca871d 100644
--- a/arch/mips/sni/rm200.c
+++ b/arch/mips/sni/rm200.c
@@ -473,10 +473,10 @@ void __init sni_rm200_irq_init(void)
 	sni_hwint = sni_rm200_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(SNI_RM200_INT_START + 0, sni_rm200_i8259A_irq_handler,
-			IRQF_SHARED, "onboard ISA", NULL))
+			0, "onboard ISA", NULL))
 		pr_err("Failed to register onboard ISA interrupt\n");
-	if (request_irq(SNI_RM200_INT_START + 1, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+	if (request_irq(SNI_RM200_INT_START + 1, sni_isa_irq_handler, 0, "ISA",
+			NULL))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
