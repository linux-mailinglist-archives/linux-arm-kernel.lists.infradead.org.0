Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 732E3829EB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  6 Aug 2019 05:08:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xvKK7RiE812Ns59ZD8om5cwkkTRQDNWnXI88vgOsRNQ=; b=HFO0bttoQuCkm3
	JeFF26wUuONdtBU2/q0AdTq0my8YeMvRHGp+NPsBOxSYZ/k+G8/BzWJW4peZ++E45k6Gvu0n2Kw+/
	6FxxFgb2rEgu5NrIDWrRn9tHlEUW72iQk/I5pHk91TCwhLoX+6Sz4ETarCBeDsQUM6O6PToZ6WdhV
	uJU6S7zX6CQjEzglValmOgcHH/T4EEIe7zBdigpEz8+aNQh2qarkbX8JewqpFv4CB+Q2x7i3tpoB/
	ujEqbR4qRdBO6eN6+rGiUf2Qo6htf/ZOGaV16LgrO7Y+YT6nmxO7H2dmk3XwXB/NNGFkireyDBHWa
	/G5sp1qnTZz1fY23F/ww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huppr-0004El-Ko; Tue, 06 Aug 2019 03:08:27 +0000
Received: from mail-vk1-xa42.google.com ([2607:f8b0:4864:20::a42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huppZ-000457-R1
 for linux-arm-kernel@lists.infradead.org; Tue, 06 Aug 2019 03:08:11 +0000
Received: by mail-vk1-xa42.google.com with SMTP id y130so17107490vkc.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 20:08:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+qUM9EyfPNq2M7gA+PSnVqo/pTJqSgIuBxaIciINGpo=;
 b=FPk5zpwQyjWszkhHLErDdhfgFxvQvRNJZz6lyLYMy3j0yAPZJ01R4a4qB3d/ifzsno
 FRM/Tqi9kSnf3oCMNFuWSFeh3wjqMjX0MzGHj85aCmYp4YxOjxrqPakpy90IMQjUP3VR
 vrqqmxHM3oP7+tXY06MPUIILvgLDXAZtmHL+W6rgGP3AeVRUXii91s/RkBXpUlOh1drO
 iA9oXI+0V1P7UKfAA41OZC6awsy1pk7nvVvWikrMbsuTh1vkbx26l98h/ievsCzPQhR8
 cfGULkT+9/9CwJtlGBFux0Fd5Qr9Hg9+Fi1PfphhbKtezm/TTUBuU6LUrX62I4I5X0ae
 ZJZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+qUM9EyfPNq2M7gA+PSnVqo/pTJqSgIuBxaIciINGpo=;
 b=rQsWLrNiYUKy1BYcrcVPhvjlabU4y0fvJaNTM9E+hRUnTnAmzRsSJVLXo61LpwQxzu
 8Ra6LsBFYleybFpvWq8BrIcKlmHSkZhX6/IwSrLv8UQqlx0+yv+K5JvQnldLQbv3UaoN
 hcG15KEzu1MjiOt5kMDNA7PEhEtjx/84nfhy4VSL2vppf3Tu7vIYaezzVZ8/0iLQIjZT
 fRKFkIDl97ouf+3CqfCE/4w3iAvK8mhoQTDBcNYIm9upJpGu6LkeVvgpSCEwyqy8/LEd
 t/2LTykEe1SlF+FFZmTWOpcyfi4+BenNG5nLWpQhke9WSTc2eV46jtobljnauA25Rh4V
 4zuA==
X-Gm-Message-State: APjAAAUzkDhyFIU7FvpFQjaynVx5HimEULt4wOxcUK8/5WoWOaF8WxIb
 bOliCtsaHR8/52lcU9bsXLM=
X-Google-Smtp-Source: APXvYqzpZjOH4z8+B+VY6CHxesR3IrgEInsXZojfemjLqREXXsCAimavEtIWjbL/xdGCLL56YwkGEw==
X-Received: by 2002:a1f:d1c3:: with SMTP id i186mr357136vkg.26.1565060888692; 
 Mon, 05 Aug 2019 20:08:08 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.46.249])
 by smtp.gmail.com with ESMTPSA id v190sm22683156vkd.37.2019.08.05.20.08.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Mon, 05 Aug 2019 20:08:08 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH 1/2] ARM: zynq: support smp in thumb mode
Date: Mon,  5 Aug 2019 23:07:17 -0400
Message-Id: <20190806030718.29048-2-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190806030718.29048-1-luaraneda@gmail.com>
References: <20190806030718.29048-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_200809_869706_79E46E74 
X-CRM114-Status: GOOD (  12.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:a42 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Luis Araneda <luaraneda@gmail.com>, linux-arm-kernel@lists.infradead.org,
 stable@vger.kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add .arm directive to headsmp.S to ensure that the
CPU starts in 32-bit ARM mode and the correct code
size is copied on smp bring-up

Additionally, start secondary CPUs on secondary_startup_arm
to automatically switch from ARM to thumb on a thumb kernel

Suggested-by: Michal Simek <michal.simek@xilinx.com>
Signed-off-by: Luis Araneda <luaraneda@gmail.com>
---
 arch/arm/mach-zynq/headsmp.S | 2 ++
 arch/arm/mach-zynq/platsmp.c | 2 +-
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynq/headsmp.S b/arch/arm/mach-zynq/headsmp.S
index ab85003cf9ad..3449e0d1f990 100644
--- a/arch/arm/mach-zynq/headsmp.S
+++ b/arch/arm/mach-zynq/headsmp.S
@@ -7,6 +7,8 @@
 #include <linux/init.h>
 #include <asm/assembler.h>
 
+	.arm
+
 ENTRY(zynq_secondary_trampoline)
 ARM_BE8(setend	be)				@ ensure we are in BE8 mode
 	ldr	r0, zynq_secondary_trampoline_jump
diff --git a/arch/arm/mach-zynq/platsmp.c b/arch/arm/mach-zynq/platsmp.c
index a7cfe07156f4..38728badabd4 100644
--- a/arch/arm/mach-zynq/platsmp.c
+++ b/arch/arm/mach-zynq/platsmp.c
@@ -81,7 +81,7 @@ EXPORT_SYMBOL(zynq_cpun_start);
 
 static int zynq_boot_secondary(unsigned int cpu, struct task_struct *idle)
 {
-	return zynq_cpun_start(__pa_symbol(secondary_startup), cpu);
+	return zynq_cpun_start(__pa_symbol(secondary_startup_arm), cpu);
 }
 
 /*
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
