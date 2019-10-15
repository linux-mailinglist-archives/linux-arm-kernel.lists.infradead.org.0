Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30B9FD7931
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 15 Oct 2019 16:52:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=t0LHXyPESSrdQ/umlGvdfqIxudW4rWntbAxRdaqg6Hk=; b=BbZe/39dT+viCg
	+s7FQL/ORvlG1b9cKZoG5RBsWti47/f/vuYgFR3c9w3ne/pOYil0ZeBhvrnhEYky9aPIxWWmwW4GN
	FCWxK0jqJcJDMep4kTg5uZqgMIrIesJmaaUvMsaj/S1tkJGHfD1ylc4z5fbuJ3gd/NunqLqsEIW79
	FOHR8HQ310Q+FK3biYnxCcexG89VRwXrzoW62WkJUHAhq3hLDGVLFbVEpaRSgF+ly88rdJQlmkCKN
	fBg0xFrmo7Jr6HVBvrNZGKW8FBRS5DpGJtgBz/6QXSOdHWMKqbKAozyCiVJNUZMJWAIpUqNhs3PLC
	NobbPgKf0E8e8wV734tw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKOBk-0002ZI-6D; Tue, 15 Oct 2019 14:52:40 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKOB3-00027d-EA
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 14:51:58 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so24276527wrs.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 07:51:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HVU/godtoQv4DaTv3SteCyrdF1xeYmNG3gGjlOL2mBY=;
 b=je+bnMh2iMgS8RPyMgkQZFclubihcMqnvxo7F9+r8I5QkRFOV4XODNkmLpjkmgBW86
 qbfMe8B4hwFU3dD7OtnrJchUzMPBRoUug5/nt+ulQAgqZHkPeI8AS2toLFd6uR63EKwY
 wJzr/UxIQGuH/Y62uIk2LtXSgcYNqtc/kQlCiTZQKrcIEaRv7ov5O7tFCaxGXjLBFxGf
 2r4a3rpNdGCSb0j+FwnIlToL5XZQ0qcRKnEV0LiMJi3rbWevOQvGFSkFuFlSzvh/S4tn
 /gFhFHOUsjym8CGJGmoWUFhn1WJRJt1CXnq9L0h9ZpD3J1BTL+jEBT7pJr1P0d1YWhop
 vDLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HVU/godtoQv4DaTv3SteCyrdF1xeYmNG3gGjlOL2mBY=;
 b=RVmqcAnIJBAMEBYWsYmITVdTvTFMn1m4jlXMOtxdpn91knyFSI5ZU1V7MMw5rNkeHp
 sQdFafE3yZks8WHSTraYuuJAUm7DOu+suJexwPW2LeATgkXO2lqy7X6xUs+Wr+MzmsCR
 p+Ne1p81jCi0fYn3oRwpxks2K6IcXqbF1nojYZ6GfItKmdJrU7xuiM1KInA+v54Z2dfJ
 OviuHgddeRLKOh87CMEIdNpoBNJ2B+SNEh6KaVO1fIbCp6HqNqbcN0oqKjGoH+AwBY8v
 x/kp9bxcYixrp4divahvdR4puqty8Sg3+2nUpvARvslUrjiyR/wEC3MPlwY1GhicQOlb
 IItw==
X-Gm-Message-State: APjAAAVealMFZz0MGz7WQdd4AEuKYn7xM8/0sMR7xz7/6IpNLYmtxNV3
 VtIOl8aB0QQs/BEBlAjaZIY=
X-Google-Smtp-Source: APXvYqzxyrmF8m6jp6CA2DOs+xMZnw2mPPE30sPyfOc1/Lkdhzai01UBp+PivWAtSTN8LV4o8dciYA==
X-Received: by 2002:adf:eb0f:: with SMTP id s15mr29275926wrn.97.1571151115705; 
 Tue, 15 Oct 2019 07:51:55 -0700 (PDT)
Received: from localhost (p2E5BE2CE.dip0.t-ipconnect.de. [46.91.226.206])
 by smtp.gmail.com with ESMTPSA id c21sm15940495wmb.46.2019.10.15.07.51.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 07:51:53 -0700 (PDT)
From: Thierry Reding <thierry.reding@gmail.com>
To: Russell King <linux@armlinux.org.uk>,
	arm@kernel.org
Subject: [PATCH 2/6] ARM: xen: Register with kernel restart handler
Date: Tue, 15 Oct 2019 16:51:43 +0200
Message-Id: <20191015145147.1106247-3-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191015145147.1106247-1-thierry.reding@gmail.com>
References: <20191015145147.1106247-1-thierry.reding@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_075157_487716_E203B571 
X-CRM114-Status: GOOD (  15.48  )
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

Register with kernel restart handler instead of setting arm_pm_restart
directly.

Select a high priority of 192 to ensure that default restart handlers
are replaced if Xen is running.

Acked-by: Arnd Bergmann <arnd@arndb.de>
Reviewed-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
Reviewed-by: Stefano Stabellini <stefano.stabellini@eu.citrix.com>
Signed-off-by: Guenter Roeck <linux@roeck-us.net>
Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 arch/arm/xen/enlighten.c | 12 ++++++++++--
 1 file changed, 10 insertions(+), 2 deletions(-)

diff --git a/arch/arm/xen/enlighten.c b/arch/arm/xen/enlighten.c
index 1e57692552d9..eb0a0edb9909 100644
--- a/arch/arm/xen/enlighten.c
+++ b/arch/arm/xen/enlighten.c
@@ -30,6 +30,7 @@
 #include <linux/cpu.h>
 #include <linux/console.h>
 #include <linux/pvclock_gtod.h>
+#include <linux/reboot.h>
 #include <linux/time64.h>
 #include <linux/timekeeping.h>
 #include <linux/timekeeper_internal.h>
@@ -181,11 +182,18 @@ void xen_reboot(int reason)
 	BUG_ON(rc);
 }
 
-static void xen_restart(enum reboot_mode reboot_mode, const char *cmd)
+static int xen_restart(struct notifier_block *nb, unsigned long action,
+		       void *data)
 {
 	xen_reboot(SHUTDOWN_reboot);
+
+	return NOTIFY_DONE;
 }
 
+static struct notifier_block xen_restart_nb = {
+	.notifier_call = xen_restart,
+	.priority = 192,
+};
 
 static void xen_power_off(void)
 {
@@ -406,7 +414,7 @@ static int __init xen_pm_init(void)
 		return -ENODEV;
 
 	pm_power_off = xen_power_off;
-	arm_pm_restart = xen_restart;
+	register_restart_handler(&xen_restart_nb);
 	if (!xen_initial_domain()) {
 		struct timespec64 ts;
 		xen_read_wallclock(&ts);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
