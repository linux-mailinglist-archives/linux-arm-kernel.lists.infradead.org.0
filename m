Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 537D6104F25
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 21 Nov 2019 10:25:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=pH9Xzt+dd8JG7boIXy4W0zW/8SzXRZAF207/LTaAIZU=; b=laujp3/ax02so5
	7vzalF3kD+oqBkaq3V7QaZY/kTSvo86zQ8u3YObZju7SBz1g+xik01mD00T72qZcc6voSkJ5atWVL
	UmfyAeFCYboWpgcieaiHU+SWPCkzpBXnMoRFAQP+X6W5bBTJfv9FafuMQ0MtjDd3QkZ40YWOgIc1G
	XQNJMHYL8Ljyqp9+OaDA+mhXPSGeTOkNU1U01xL4QyxIg88O2X3ehblYC4+lGpPfsekFTs4Ug7WnB
	hUyU2WPmyBo1eNuO2bKaJuPYOqt5w1pc9hgr2kk2/9ZhFfsRKO7CQN0ISp3iDcbPHEqaEwwIdTlEX
	GWMX8uVXLJLPvPQVocYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXiiQ-0001oV-S5; Thu, 21 Nov 2019 09:25:30 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXiiI-0001nm-0d
 for linux-arm-kernel@lists.infradead.org; Thu, 21 Nov 2019 09:25:24 +0000
Received: by mail-lj1-x244.google.com with SMTP id q2so2392040ljg.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 21 Nov 2019 01:25:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=rasmusvillemoes.dk; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A8TNMtKysU8OhPZLPcM8qBUTWWfHEoNwu7bf36UMtpE=;
 b=BQF46w0R7bKeo8aGuiJhk8yd7hcIFPifuqrbWwLFEM+H9Yduy9FYqJqaQY+n7WUnr2
 BeKreIFKdGXCm0+9ADQBjIUhS1LgQYWGpwuymfb2yM1fL/4CWR9gCinIVz1V3EWkf9UX
 nrhSgrB6qcfu6Qvarw/bNpX/EFXjkkmpPjCNI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=A8TNMtKysU8OhPZLPcM8qBUTWWfHEoNwu7bf36UMtpE=;
 b=q185bigCU/g1HYWRdYPE+rO2xURyioxfQxvVA3YEJ+q9+7eP9+q8dN33V27PqUUnDN
 ZNAYepoBunHNE1cy6P/kV+7SzVTID1qXT4k4xoish+jhyRZh2gxuKTYMI0fTHXQGrj90
 StPjYekws5VbG7EKg9tQa3Z3fDI7F9BSIsadBBRtxEhT9uDOlQvdxxbDMZ0buS0rCF6n
 rM8DKPEhliPGTl5rW23zEgSj+bSdycJfhHFf/jWpo9CccLN83iUntrncalCNGMkD55BG
 q7WUt7gnGAJ6tNY4AIaotBSDDIGQ2+0QH270yfOuvVwsAt9Fo3YQnA3AAyyzj929QM6W
 I+pA==
X-Gm-Message-State: APjAAAXXTzu30WlQgsZ+q6JRc8UxRn5SeFHI231QUihtmv52ieGB1Ka7
 pbbWdPuKrczx20BiW0ny/PU6vg==
X-Google-Smtp-Source: APXvYqxU4JX0Lg3kpsOZ/sjcMhY6/3D7Q/uMmzY0TOSCqFe5D3VN1zYpFj3qRhe87kzoQQajoEJgOQ==
X-Received: by 2002:a2e:93d7:: with SMTP id p23mr6455581ljh.102.1574328319727; 
 Thu, 21 Nov 2019 01:25:19 -0800 (PST)
Received: from prevas-ravi.prevas.se ([81.216.59.226])
 by smtp.gmail.com with ESMTPSA id y18sm924730lja.12.2019.11.21.01.25.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 01:25:19 -0800 (PST)
From: Rasmus Villemoes <linux@rasmusvillemoes.dk>
To: Russell King <linux@armlinux.org.uk>
Subject: [PATCH] arm: avoid cpumask_t typedef in arch_trigger_cpumask_backtrace
Date: Thu, 21 Nov 2019 10:25:16 +0100
Message-Id: <20191121092516.9041-1-linux@rasmusvillemoes.dk>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_012522_054532_EED3F1CA 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kbuild test robot <lkp@intel.com>, Marc Zyngier <maz@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Li Yang <leoyang.li@nxp.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

I was trying to enable a previously PPC-only driver for ARM. That
driver happens to include asm/irq.h without some previous header
recursively pulling in linux/cpumask.h, resulting in kbuild kindly
informing me [1]

   In file included from drivers/soc/fsl/qe/ucc.c:18:0:
>> arch/arm/include/asm/irq.h:34:50: error: unknown type name 'cpumask_t'
    extern void arch_trigger_cpumask_backtrace(const cpumask_t *mask,

Instead of including linux/cpumask.h from asm/irq.h just for the
cpumask_t typedef, use the spelling "struct cpumask" and add a
forward declaration of that. For consistency, update the definition of
the function accordingly.

No functional change.

[1] https://lore.kernel.org/lkml/201911210258.dfd8HF9z%25lkp@intel.com/

Reported-by: kbuild test robot <lkp@intel.com>
Signed-off-by: Rasmus Villemoes <linux@rasmusvillemoes.dk>
---
We're past -rc8, so I probably can't hope for this to make it into
5.4. However, it currently blocks a rather large series of mine from
being picked up and getting time in -next. Would it be ok with the ARM
maintainers if I ask Li Yang to carry this as part of that large
series?

 arch/arm/include/asm/irq.h | 3 ++-
 arch/arm/kernel/smp.c      | 3 ++-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/include/asm/irq.h b/arch/arm/include/asm/irq.h
index 46d41140df27..d8deb81bc8ce 100644
--- a/arch/arm/include/asm/irq.h
+++ b/arch/arm/include/asm/irq.h
@@ -31,7 +31,8 @@ void handle_IRQ(unsigned int, struct pt_regs *);
 void init_IRQ(void);
 
 #ifdef CONFIG_SMP
-extern void arch_trigger_cpumask_backtrace(const cpumask_t *mask,
+struct cpumask;
+extern void arch_trigger_cpumask_backtrace(const struct cpumask *mask,
 					   bool exclude_self);
 #define arch_trigger_cpumask_backtrace arch_trigger_cpumask_backtrace
 #endif
diff --git a/arch/arm/kernel/smp.c b/arch/arm/kernel/smp.c
index 4b0bab2607e4..b096200c7436 100644
--- a/arch/arm/kernel/smp.c
+++ b/arch/arm/kernel/smp.c
@@ -806,7 +806,8 @@ static void raise_nmi(cpumask_t *mask)
 	__smp_cross_call(mask, IPI_CPU_BACKTRACE);
 }
 
-void arch_trigger_cpumask_backtrace(const cpumask_t *mask, bool exclude_self)
+void arch_trigger_cpumask_backtrace(const struct cpumask *mask,
+				    bool exclude_self)
 {
 	nmi_trigger_cpumask_backtrace(mask, exclude_self, raise_nmi);
 }
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
