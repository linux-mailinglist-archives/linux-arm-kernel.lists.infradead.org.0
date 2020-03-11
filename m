Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A262181C4E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 16:28:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NcARg9r5Jk3J2BovI/XLXrQwB6d0NuerbyKRQQKLpYc=; b=L3rE1LFxzrpv8E
	lmdYMI87Ugmrl3FatFqLtYlv7bO6KbmVSsOvqbcQB1viYtd+QF8w7So28lkDdlLgpafkWAqQRfOmY
	OGXd/pLyKHRcO+1AXH8zERFsiLBfSH8nCsXRMNb8b248p1R8XZpDNfT6km6OdhZOjNxYRJ39VI4z8
	2uc7iz334w55CjY7Nrhv/+ECRBg88r5h3brLcHLr9Gib6QqbtQ3z/+3npjd/CYoVeD11fvhiAeWOI
	vSroSN5x/TUesBFjaaxfvjJ5GGB3S3eNn0eH1m0XyipIba6Sik4b6s90SWW4xqYKdUecWwmK6ZQX6
	LdDETTyn+zQFaGV0hqSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jC3HC-00066Q-UP; Wed, 11 Mar 2020 15:28:06 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jC3H0-00065X-MY
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 15:27:56 +0000
Received: by mail-pj1-x1041.google.com with SMTP id ca13so1214414pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 08:27:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BBmDoHFVj+Gc+1PrvILGXE/BCI3WgpsNmxZix3RaPvA=;
 b=lgYkHSPma4nxmW5rORwqs5N9D2c79MUAz/kx4CbPSpHAGhuWbTw3f3YyfLHNP+28oe
 DRui6tcOzwllTO+BmxT82lNMWvJmP+ScJ9sLLf3z9knKbFFza4ES/UsD+vBpctl64XKW
 Z6wOg6QjzUzLiDBhCIL8/QQRDm5XIfWujqLZhTwbKtRDakaZxCQwJfAQT4DUcKCf0G5D
 5EAzjyHFEGAifik6nzSSA8/cz7DGFPgH6yiVnty+/owxR31ZVdBC+MYXfFLK+7kVuFpR
 ISbswIzgTa9zEC99E4aUDFoF3AfaNFC+v0eFWbpzHskwqrH43ANpwoj49vEQaxtlPcjb
 QfGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BBmDoHFVj+Gc+1PrvILGXE/BCI3WgpsNmxZix3RaPvA=;
 b=OC9TKH8E/zP8Mv1s2F0VenW7omNhDUxDTPdu3Fg9phZO7e+dKtwIOtHK2QCtmncJCX
 reG/ptDC9xi9LXPiy7FXFWQD1Za2+lU5rwJM5oxCYGPA/h+GHXDSnc8Z9KQgFN5qBlIE
 6zdl/wjEWw8HOlPbrz8Xc+CEuJrEaV1+46dYNpfAgQv5zJagQZ6YeRO5+AIsTaos0eRB
 UmauRkEUz2IG0S1zsIX6MbzcoP+uhPPftBxQpElgoqHPAlUnzNugUDczCJSYkz+gAbTV
 3k+yUvA6PcBdRCIW7xSGLPwBFbtgJYiFEEww6PD/zNgKKZ3gBACICNDTiC9kS+J8XwXZ
 kCrA==
X-Gm-Message-State: ANhLgQ1kYEQzJgH8A137g+J/qKKwcfnf5KoqIcf2+ZalhA/sH9K6mHrO
 HPT8Ld2WILyoCFp+NIZkRYM=
X-Google-Smtp-Source: ADFU+vseRa4e3hlV42VFz+pm4X7xdcCuMAmw8/kO2/4oz8roq7JOz4b5R9sSwF4PI2iw6dJzjhKLYA==
X-Received: by 2002:a17:90a:1a51:: with SMTP id
 17mr3919053pjl.118.1583940473556; 
 Wed, 11 Mar 2020 08:27:53 -0700 (PDT)
Received: from localhost ([106.51.232.35])
 by smtp.gmail.com with ESMTPSA id z2sm31512215pfq.50.2020.03.11.08.27.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Mar 2020 08:27:53 -0700 (PDT)
Date: Wed, 11 Mar 2020 20:57:51 +0530
From: afzal mohammed <afzal.mohd.ma@gmail.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>
Subject: [PATCH] MIPS: pass non-NULL dev_id on shared request_irq()
Message-ID: <20200311152751.GA5044@afzalpc>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
 <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
 <20200311090308.GA5060@afzalpc>
 <20200311104217.GA10615@alpha.franken.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200311104217.GA10615@alpha.franken.de>
User-Agent: Mutt/1.9.3 (2018-01-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_082754_745437_F8DD6454 
X-CRM114-Status: GOOD (  13.13  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1041 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [afzal.mohd.ma[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
setup_irq(), if they fail irq registration will fail. One of the check is
to ensure that non-NULL dev_id is passed in the case of shared irq. This
caused malta on qemu to hang.

Fix it by passing a dev_id to all request_irq()'s that are shared.

Fixes: ac8fd122e070 ("MIPS: Replace setup_irq() by request_irq()")
Reported-by: Nathan Chancellor <natechancellor@gmail.com>
Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>
---

Hi Thomas,

i am assuming your next tree is immutable, hence referring to the SHA-ID
of the original commit in your tree. Else if you prefer a fixup'ed
patch, let me know, i will send v5 with this fixup over v4.

REgards
afzal

 arch/mips/dec/setup.c                 | 2 +-
 arch/mips/kernel/cevt-r4k.c           | 2 +-
 arch/mips/loongson2ef/lemote-2f/irq.c | 2 +-
 arch/mips/pmcs-msp71xx/msp_time.c     | 2 +-
 arch/mips/sni/a20r.c                  | 2 +-
 arch/mips/sni/pcit.c                  | 4 ++--
 arch/mips/sni/rm200.c                 | 4 ++--
 7 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/arch/mips/dec/setup.c b/arch/mips/dec/setup.c
index c8bbac0c5051..cbbb27fbab19 100644
--- a/arch/mips/dec/setup.c
+++ b/arch/mips/dec/setup.c
@@ -758,7 +758,7 @@ void __init arch_init_irq(void)
 	/* Register the bus error interrupt. */
 	if (dec_interrupt[DEC_IRQ_BUS] >= 0 && busirq_handler) {
 		if (request_irq(dec_interrupt[DEC_IRQ_BUS], busirq_handler,
-				busirq_flags, "bus error", NULL))
+				busirq_flags, "bus error", "bus error"))
 			pr_err("Failed to register bus error interrupt\n");
 	}
 	/* Register the HALT interrupt. */
diff --git a/arch/mips/kernel/cevt-r4k.c b/arch/mips/kernel/cevt-r4k.c
index 64e917dfe6b2..4b19810c67d4 100644
--- a/arch/mips/kernel/cevt-r4k.c
+++ b/arch/mips/kernel/cevt-r4k.c
@@ -292,7 +292,7 @@ int r4k_clockevent_init(void)
 
 	cp0_timer_irq_installed = 1;
 
-	if (request_irq(irq, c0_compare_interrupt, flags, "timer", NULL))
+	if (request_irq(irq, c0_compare_interrupt, flags, "timer", cd))
 		pr_err("Failed to request irq %d (timer)\n", irq);
 
 	return 0;
diff --git a/arch/mips/loongson2ef/lemote-2f/irq.c b/arch/mips/loongson2ef/lemote-2f/irq.c
index 34e15e8b7a8f..1c99e83cabae 100644
--- a/arch/mips/loongson2ef/lemote-2f/irq.c
+++ b/arch/mips/loongson2ef/lemote-2f/irq.c
@@ -109,7 +109,7 @@ void __init mach_init_irq(void)
 
 	/* setup north bridge irq (bonito) */
 	if (request_irq(LOONGSON_NORTH_BRIDGE_IRQ, ip6_action,
-			IRQF_SHARED | IRQF_NO_THREAD, "cascade", NULL))
+			IRQF_SHARED | IRQF_NO_THREAD, "cascade", "cascade"))
 		pr_err("Failed to register north bridge cascade interrupt\n");
 	/* setup source bridge irq (i8259) */
 	if (request_irq(LOONGSON_SOUTH_BRIDGE_IRQ, no_action,
diff --git a/arch/mips/pmcs-msp71xx/msp_time.c b/arch/mips/pmcs-msp71xx/msp_time.c
index baf0da8b4c98..0601a3f7f8f6 100644
--- a/arch/mips/pmcs-msp71xx/msp_time.c
+++ b/arch/mips/pmcs-msp71xx/msp_time.c
@@ -81,7 +81,7 @@ unsigned int get_c0_compare_int(void)
 	/* MIPS_MT modes may want timer for second VPE */
 	if ((get_current_vpe()) && !tim_installed) {
 		if (request_irq(MSP_INT_VPE1_TIMER, c0_compare_interrupt, flags,
-				"timer", NULL))
+				"timer", "timer"))
 			pr_err("Failed to register timer interrupt\n");
 		tim_installed++;
 	}
diff --git a/arch/mips/sni/a20r.c b/arch/mips/sni/a20r.c
index ba966d62fb4b..1bfea4aae124 100644
--- a/arch/mips/sni/a20r.c
+++ b/arch/mips/sni/a20r.c
@@ -223,7 +223,7 @@ void __init sni_a20r_irq_init(void)
 	sni_hwint = a20r_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(SNI_A20R_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/pcit.c b/arch/mips/sni/pcit.c
index 4a850ab03398..15080155cc9a 100644
--- a/arch/mips/sni/pcit.c
+++ b/arch/mips/sni/pcit.c
@@ -245,7 +245,7 @@ void __init sni_pcit_irq_init(void)
 	sni_hwint = sni_pcit_hwint;
 	change_c0_status(ST0_IM, IE_IRQ1);
 	if (request_irq(SNI_PCIT_INT_START + 6, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
@@ -260,7 +260,7 @@ void __init sni_pcit_cplus_irq_init(void)
 	sni_hwint = sni_pcit_hwint_cplus;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(MIPS_CPU_IRQ_BASE + 3, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
diff --git a/arch/mips/sni/rm200.c b/arch/mips/sni/rm200.c
index ba1f2fc6a43e..2b4a6448b428 100644
--- a/arch/mips/sni/rm200.c
+++ b/arch/mips/sni/rm200.c
@@ -473,10 +473,10 @@ void __init sni_rm200_irq_init(void)
 	sni_hwint = sni_rm200_hwint;
 	change_c0_status(ST0_IM, IE_IRQ0);
 	if (request_irq(SNI_RM200_INT_START + 0, sni_rm200_i8259A_irq_handler,
-			IRQF_SHARED, "onboard ISA", NULL))
+			IRQF_SHARED, "onboard ISA", "onboard ISA"))
 		pr_err("Failed to register onboard ISA interrupt\n");
 	if (request_irq(SNI_RM200_INT_START + 1, sni_isa_irq_handler,
-			IRQF_SHARED, "ISA", NULL))
+			IRQF_SHARED, "ISA", "ISA"))
 		pr_err("Failed to register ISA interrupt\n");
 }
 
-- 
2.18.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
