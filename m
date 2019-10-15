Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B83B8D7936
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:53:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fAPBfL+M/ynb4Ibc3f90du+JikdLf51aXrYHFHQ1s4I=; b=rIMJ+9IvXUCBx+
	BVMXHZdSexpxRxaFVhT1SqzQ7uPEq6H8fR2mhDbmIN2g9rejDDggp+KSpIvNcsV9qFkVo63EgsTDV
	Ow8ZSVVj3ADSRD6ZLNAHZnTBqfOZ2zQ+1SZvNl6WR1AO3GtHyw/eb0NoPqJU5y6FKP6x0KNO5LYFp
	cbpm9tXEp1eHB57MXo4RsO5EBqlNGp+iy9zQj2oOn1YTrGeoh7Xf8Tank/7OPRxq+sQpVXefTxWq1
	O2hLCrMIH8E1yI/AFifr71/KVBqIycjPzV/GSw6uXvQ2c8dNksDaWXSsyXI3FKeq+3WcUQpr/4XBh
	F4BsGNphcWHx2scxBmMg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOCD-00030g-8Z; Tue, 15 Oct 2019 14:53:09 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOBB-0002Gf-ID
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:52:07 +0000
Received: by mail-wr1-x441.google.com with SMTP id y18so14797892wrn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:52:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=VAVoEu24xaohbwzafdzyJGlubUQKQUGPXTLnsYm65Y8=;
 b=bwzp0QANI9ZAtq8ebhpNJc/C77CZR6FTzH+/cfmEERClacgLvpuSHHtyidwDPuvey7
 2+srWChtSJ08u/VocrpNHSezMmgEXrfg73hmVJ5V6I/IX8cmSHM9mweDVIYm3IFNz0Dm
 AXDFxGntAmh8J/NR1hmE1LCeCRUbmf+sdpB01ElSB8Jq5+afFFPUYW1h/xor3y9tPXst
 nSBA5TwwZP8lGioiDP7Ika8JxvuIsNcGTVQb5E6x7U7uP4c1vFKfl2Xh1Xf95g/yEsDs
 72MZ32zM32bT+1Th+LMSK/H6r6ntFyZHVKe+GNZZsPnQrIU0czOC4kLlz5uGvZqufrcD
 6/+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=VAVoEu24xaohbwzafdzyJGlubUQKQUGPXTLnsYm65Y8=;
 b=PUG1tv2S4hmOS1KknJ8DNIarUAH0de5eFZkwSP5Go//7//xXuyBtYzIWHULID9ubnq
 iowtS2cbP8A4FQD5ZyPIHQ95ZPD0Azu6vaKQQwlLifg1dp0gZXSXmDuaOLhxYjUQOPCF
 P6+WE0LosJBZU5XsD5GFWPpQB0lv/D/Zi2n3pBxGZSfa9rtLlRGASkzCBXjjLXNGaFnE
 svI24ou59Gbd+ba+4q5pDOHSh+8N5Yq91G3XJxf8ui1iwzR5FoDwqrVgejqNBoiwiCRi
 IMyAm6giOJ6MbLFtr9kJXOkoLQBzIrR91zpuJSOHCz4I6FeRgf6NT8lml2E+WSNlzQX3
 mFHA==
X-Gm-Message-State: APjAAAUdwFEbCw9t1C5u4o+mG8+9+RpYCEVg+KlCidrrPnI2I/fQJQIK
 GJyUy3RdKu5L29qCQBpzveCgvnqH
X-Google-Smtp-Source: APXvYqxhVxHqqgJpZEbxh6+QhqKe7xvgm6z1kpI/OiC4NTY0obJUmvAeKLRYIWZ9KloWkVuO1upBRw==
X-Received: by 2002:adf:ea07:: with SMTP id q7mr14227941wrm.102.1571151123439; 
 Tue, 15 Oct 2019 07:52:03 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id u11sm20954003wmd.32.2019.10.15.07.52.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:52:02 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 5/6] ARM64: Remove arm_pm_restart()
Date: Tue, 15 Oct 2019 16:51:46 +0200
Message-Id: <20191015145147.1106247-6-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075206_088384_B4597068 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (thierry.reding[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Arnd Bergmann <arnd@arndb.de>,
 Stefano Stabellini <stefano.stabellini@eu.citrix.com>,
 Catalin Marinas <catalin.marinas@arm.com>, linux-kernel@vger.kernel.org,
 Stefan Agner <stefan@agner.ch>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 linux-arm-kernel@lists.infradead.org, Olof Johansson <olof@lixom.net>,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Guenter Roeck <linux@roeck-us.net>

All users of arm_pm_restart() have been converted to use the kernel
restart handler.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Tested-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Acked-by: Catalin Marinas <catalin.marinas@arm.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm64/include/asm/system_misc.h | 2 --
 arch/arm64/kernel/process.c          | 7 +------
 2 files changed, 1 insertion(+), 8 deletions(-)

diff --git a/arch/arm64/include/asm/system_misc.h b/arch/arm64/include/asm/system_misc.h
index 1ab63cfbbaf1..d02c5e5ea015 100644
--- a/arch/arm64/include/asm/system_misc.h
+++ b/arch/arm64/include/asm/system_misc.h
@@ -32,8 +32,6 @@ void hook_debug_fault_code(int nr, int (*fn)(unsigned long, unsigned int,
 struct mm_struct;
 extern void __show_regs(struct pt_regs *);
 
-extern void (*arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
-
 #endif	/* __ASSEMBLY__ */
 
 #endif	/* __ASM_SYSTEM_MISC_H */
diff --git a/arch/arm64/kernel/process.c b/arch/arm64/kernel/process.c
index a47462def04b..f11d2b261b4e 100644
--- a/arch/arm64/kernel/process.c
+++ b/arch/arm64/kernel/process.c
@@ -64,8 +64,6 @@ EXPORT_SYMBOL(__stack_chk_guard);
 void (*pm_power_off)(void);
 EXPORT_SYMBOL_GPL(pm_power_off);
 
-void (*arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
-
 static void __cpu_do_idle(void)
 {
 	dsb(sy);
@@ -195,10 +193,7 @@ void machine_restart(char *cmd)
 		efi_reboot(reboot_mode, NULL);
 
 	/* Now call the architecture specific reboot code. */
-	if (arm_pm_restart)
-		arm_pm_restart(reboot_mode, cmd);
-	else
-		do_kernel_restart(cmd);
+	do_kernel_restart(cmd);
 
 	/*
 	 * Whoops - the architecture was unable to reboot.
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
