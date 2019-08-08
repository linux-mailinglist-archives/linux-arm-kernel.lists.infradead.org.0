Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B4886257
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  8 Aug 2019 14:54:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1v8904wpXO6j8vONA9NPJB99EftdGLGy/oSbSVNlwCc=; b=egh6XiZl18Jj2L
	UmvDRbsgbJjHODB2iP0hHboN3Zua3XKLRmsO62ZXbWkpKsWh1SRJWEeKPfAVYnjbWy/RxOxQPK3m8
	H2heUiVGSYFReFaS1roIJKQ8ZmUo/Yxx6kcj1wuC1yKK4Syt2x4ipMqgdw3AwlDSiYCoelK4Jhf6K
	lWjXQzcSadZnuCs8S1Agrc8DhP4dQLmxRdfzlRS1opfYAxuUG84Lpl09DJH1FeyB2kZ6jIVvyjqP+
	EzsTp+OsqjGXYT0WOeOn/nvsRaC5hbyYTF3hC7Uc/PD0G9YFjIgmHrjsAbgjObWwF2YlwkZderyds
	4QW+E40l6dLmq0bKV2ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvhwB-0003Ep-9H; Thu, 08 Aug 2019 12:54:35 +0000
Received: from mail-ua1-x941.google.com ([2607:f8b0:4864:20::941])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvhvl-00033d-AI
 for linux-arm-kernel@lists.infradead.org; Thu, 08 Aug 2019 12:54:10 +0000
Received: by mail-ua1-x941.google.com with SMTP id 8so36350318uaz.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 08 Aug 2019 05:54:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=GW4A3C1/4qWDt5LBlXwXuni4NJquarin7tqfcXTVjvA=;
 b=lfH0Guq7PuuNdAstn4QvxA1WDWXEF3ZxoZMxUurXLdQB0K1b8QuLdXm2RUBdqBkzjw
 nbHOEKeJ9d2HszCaaGiYFnL67LCAcQQUu1X41qjlxyKlZEUkINo2nyce8/wG5u/eXAEh
 KoITeRYbzKBbwlBtfBNxPixbvmO3FEDl6fu+uZepjSR+VHrgZZ0ikN9zeDm3uC7Q/+xg
 5kOLVIOwx+rBBafuahCEcDUrg7fzRmu0ba9qOPREpDwEFYUqfw7e1i5PO/dcm8O7vfYl
 +Nbkeg991B9T7Fibad/cb1gjMXj2lYJe1eCam3pzY8q/qUq5SRKA01XEeXCdfg3WhtNH
 m/hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=GW4A3C1/4qWDt5LBlXwXuni4NJquarin7tqfcXTVjvA=;
 b=lylqTIJlrd2+iSvGBniND/Foxn+L58tDD6wIQjtswkb7/LNl3UO1Qsph1UJ76pIpA6
 mjMYSIrXM7zW6MdL9u5VvYQQIu2qNzOmP1izIjI3a0OuiNlSB6IGxCyaFT8gOZgAUEtW
 l530FeK7aSfSOqyG3myWY49y1rUwhO115tX8W4INOfk/hHSHzbz+DRzCR6XY/6HZfCgM
 0CMVqTZmHJUopGT7zvy8jmvNOKGF9TGrIFRe25HP8p5w9TAalIJDQp6N1gvdTV+skI6i
 4zROwGbeKxE4NDt/vkfCTDtKaFwHDYqqninYXattiOLZ6zpIsCZECwkTerDvu+3rgOx1
 AltQ==
X-Gm-Message-State: APjAAAW2XOcEt6NNbeG9c3kAbKurmoG7lu111RWypWwMgXs0C4PUINhJ
 cNghxwc4Mas5RF96tFSK6Gc=
X-Google-Smtp-Source: APXvYqxA8ql4HsS90B4Em4+N++thda+fqBtapHgDdeZqhSEKF1hyxafxxEBRNkzfdHs9nDqOh9ekGA==
X-Received: by 2002:ab0:2906:: with SMTP id v6mr9065083uap.96.1565268848111;
 Thu, 08 Aug 2019 05:54:08 -0700 (PDT)
Received: from asus-S451LA.lan ([190.22.21.218])
 by smtp.gmail.com with ESMTPSA id r190sm26961692vkr.8.2019.08.08.05.54.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 08 Aug 2019 05:54:07 -0700 (PDT)
From: Luis Araneda <luaraneda@gmail.com>
To: linux@armlinux.org.uk,
	michal.simek@xilinx.com
Subject: [PATCH v2 1/2] ARM: zynq: support smp in thumb mode
Date: Thu,  8 Aug 2019 08:52:42 -0400
Message-Id: <20190808125243.31046-2-luaraneda@gmail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190808125243.31046-1-luaraneda@gmail.com>
References: <20190808125243.31046-1-luaraneda@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_055409_355995_39839D94 
X-CRM114-Status: GOOD (  12.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:941 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (luaraneda[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Luis Araneda <luaraneda@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add .arm directive to headsmp.S to ensure that the
CPU starts in 32-bit ARM mode and the correct code
size is copied on smp bring-up.
This is related to the fix applied to SoCFPGA by
commit 5616f36713ea
("ARM: SoCFPGA: Fix secondary CPU startup in thumb2 kernel")

Additionally, start secondary CPUs on secondary_startup_arm
to automatically switch from ARM to thumb on a thumb kernel

Signed-off-by: Luis Araneda <luaraneda@gmail.com>
Suggested-by: Michal Simek <michal.simek@xilinx.com>
---
Changes:
v1 -> v2:
- Reword commit message to include related commits
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
