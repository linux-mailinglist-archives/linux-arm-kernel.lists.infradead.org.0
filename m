Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74EE9D793B
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:53:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2LWfrI5e81PqM761kKfI9fvXJ7dLMrsCmzX18cqU1kA=; b=lBPPzuDEy6/vbF
	sqD5I5fdpKO1r/eAJW8eucLyuS4TkSNl7MON60I5XjLZss4jtG+L2WYwJIKt+RxFFtmz/voxU+v8D
	txWk7aVBxaOIetD7EPRQyWMCEr/yw6kQKq4+T3xSKZ+Ol2Xc9TEyydnpLKW+JhuPtp5eJIm7JrXZz
	VeJPuCWJdWuPxvRS+G75+cZAc+j3UV4FUsDfjM311um+Vz4JYBiy/y0eqLECFzMC+FO/pJrhm/NLq
	4EkHYs5G9FJDR7wCWaDSMybAAZfGIUYfnyj/An96RbdB1l4NcsGOtIOhsyG6GxkAP6AQbtiw790Nq
	2/5JquXWPzCgKP2opJ2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOCe-0003TA-WB; Tue, 15 Oct 2019 14:53:37 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOBD-0002IZ-H1
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:52:09 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so24277126wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:52:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=RPFfIsUzztDTg5YJoInm2ijzJI5IXTRMvl5P10kjmeg=;
 b=jsHwC6naQ5OuX54RSY+JJuYPK14+nigXz2HztsdprGqMfWYb9QmazRRVkibp0y9Lel
 bcIiIPU6RKwHbrNCiGloBmwIrHIF2UVGRn70Kgii4VC1cdPy4GCjwm18mO+1Xk5ERt12
 D06tPHqW7exAlyJQ1YnLk8kfBKHkVNuUN5e4pqhyWMpQwZXKmvyX20GVmPm5Q4OkwrSM
 /3WyxRnOAhC0cUvsICMi9KBjGNqM4Y1bfFwlj1bnWoYdew3sWgg4FRbInUzHbNQfDbr4
 R0Lj34korClWN8dwDzCoAm+Of5tkiPxZ1+NWasJm7xKDTvC6l69fDGHEzi3qDLd5qQvN
 QevA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=RPFfIsUzztDTg5YJoInm2ijzJI5IXTRMvl5P10kjmeg=;
 b=OWAn64nNQTPZWRBVUeKpXDWx4qTRzS/BwW39ixkuvLGNTVRoOK2QHcrAAGjUIMYKUQ
 2Gql5ptMuadcika8SdRKeKkZpTw9mDDSFDmckKXGM1g2Z12gHde7kGgfcXB5da/50e1n
 Q6yHbj2Im5VS+kGwqpcomEw186iSkeVwf5DbJoe1YyIi7pQZqCPfx4RyL4A6ZJvJsUAa
 Z0ABAfimUmWn+mOh0rkUvgJmjUzZ5+gYcAb5pF/QundHll/o7YWj0C5mrfj3aj1TSlOr
 GeRQKp9yIpiM+ICDG93WUIc8GBoLZfrg3CnnWrrNFdm2eR1KOXfzSzcexZNExSc5eqH+
 pdyQ==
X-Gm-Message-State: APjAAAU/Nd2wplITYrNprOig2uymBbEgGlQLaRLj3I++UrWrT4eLV7rY
 Dl9xz1eq9gj5As9qs0UybvQ=
X-Google-Smtp-Source: APXvYqx6B/AkW6uHHqhBbtnHKOlMAiP2BhuoLGzI382W7+pRlx+dKDoKs6XGsxHH1Asvk4JHIsTrTg==
X-Received: by 2002:a5d:4a87:: with SMTP id o7mr5082013wrq.374.1571151125302; 
 Tue, 15 Oct 2019 07:52:05 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id r7sm20592001wrt.28.2019.10.15.07.52.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:52:04 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 6/6] ARM: Remove arm_pm_restart()
Date: Tue, 15 Oct 2019 16:51:47 +0200
Message-Id: <20191015145147.1106247-7-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075207_688557_D2F68F09 
X-CRM114-Status: GOOD (  13.56  )
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
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/include/asm/system_misc.h | 1 -
 arch/arm/kernel/reboot.c           | 6 +-----
 2 files changed, 1 insertion(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/system_misc.h b/arch/arm/include/asm/system_misc.h
index 66f6a3ae68d2..98b37340376b 100644
--- a/arch/arm/include/asm/system_misc.h
+++ b/arch/arm/include/asm/system_misc.h
@@ -13,7 +13,6 @@
 extern void cpu_init(void);
 
 void soft_restart(unsigned long);
-extern void (*arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
 extern void (*arm_pm_idle)(void);
 
 #ifdef CONFIG_HARDEN_BRANCH_PREDICTOR
diff --git a/arch/arm/kernel/reboot.c b/arch/arm/kernel/reboot.c
index bb18ed0539f4..1076b26aa699 100644
--- a/arch/arm/kernel/reboot.c
+++ b/arch/arm/kernel/reboot.c
@@ -18,7 +18,6 @@ typedef void (*phys_reset_t)(unsigned long, bool);
 /*
  * Function pointers to optional machine specific functions
  */
-void (*arm_pm_restart)(enum reboot_mode reboot_mode, const char *cmd);
 void (*pm_power_off)(void);
 EXPORT_SYMBOL(pm_power_off);
 
@@ -138,10 +137,7 @@ void machine_restart(char *cmd)
 	local_irq_disable();
 	smp_send_stop();
 
-	if (arm_pm_restart)
-		arm_pm_restart(reboot_mode, cmd);
-	else
-		do_kernel_restart(cmd);
+	do_kernel_restart(cmd);
 
 	/* Give a grace period for failure to restart of 1s */
 	mdelay(1000);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
