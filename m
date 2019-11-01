Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE84AEBEA2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:47:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=hLNo1lDkTM85gOGUk5JoS/eQN+C6AiUazePNGnyEMK4=; b=e2SCVdX41V0RADmK/Qa5Y2S+gq
	ugZbjY5QhHXwTE4a2PtlRKP/U/yeEk7+AQBQgOT6z3DCIIHklrBSwupT0XjJyqrOpYjl3XPVq36Yl
	0Zf7X5HMBTCjweC02HcSVcAU4Dybqq4bxkmPYvaq5plmDyncwVpKj/S8a0aGUm7wEGdqqSE0I96hk
	1ursfj3QYsHYPQcOnyne6oGS1HkQLDVE5PasDHw2c9aAx/XSK+FTlmrNjgJ8MVCGajIUpHpC0ZTHs
	qwv7IIbItdei6TVnClHe3tHq8VixRx6VPoMKyFlYzUI8DWetQcU6tcnYNimwDb0GPI8NMHFnkAmmU
	rGG5QrbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQReN-0001Gw-L6; Fri, 01 Nov 2019 07:47:15 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRch-00087p-D8
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:32 +0000
Received: by mail-wr1-x444.google.com with SMTP id e6so6972125wrw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=I+jRYJ+sv8PSuO5nB4vni872MPFD94JrjqUMD7lrsKg=;
 b=SWoRZn1TJzuIfLyY1vbC2tQKk7pxk2GocVuGBSqprOkpeT/3QhldJootnOYUFiUoCW
 gffwSB1PUQOvQUhc2IycslRcwMVtl0OGCyKY0JVj/7TY2tCwLsJ7NLKuo6qX/6e99LH+
 EpUyQKZrmnfU0fxcYD5J8438Ap+OkYn1pfEIt4AwNc+nu+Q+JDNuETpOqdH/IO3Frftf
 AX0sEGoxCggCDq9ru0P8HsrzgbWjCYKktoN/oIUKG9DUzGDxeiSFH565yAseyidSK+s4
 MdmyH8jZckm8ulA1RFijtPeSaxbpDU+Kk56RJq5tAF/riUxZchUB1MBrz1uJdPhjr6wh
 e+cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=I+jRYJ+sv8PSuO5nB4vni872MPFD94JrjqUMD7lrsKg=;
 b=meJku22wMobGo0tL7oIu63n1WeTloyYmZV8dzglVoxuNEv40edYsFjFJrSHfWF2tBI
 S1N2TK/tzFsvhMIp1bYClm79JVBH+NqL3U6NmZj8hloQrDKE23SCL7G3zSXANrh19mYI
 NCt7wW+vF3z4gwBHPd43YbNxTbCdV63ipmLUc3n1j8IRg2j5MWLzUBoP4EqfDUh2ad9n
 dAht994CKPnr1wfTUdPvmM8jgpnaoqahoTegjz2nfC9PMGNKnX9HC7a3+Rhq1V9pC70z
 g+qx+M8m/LHperL7PRMCb4Ha3aHi328s4Fn8RCUR06/o3g3y9nObAn3ttW32jnptl+/Z
 iqtA==
X-Gm-Message-State: APjAAAWi/iHJz0IXL7WizCzOIiue1M72LUMHLRrjlUayDkJbQQJIo4VE
 5T8zERHuxSEWulH+Hv9vxjUsMQ==
X-Google-Smtp-Source: APXvYqxrCw7zoPnntyf1vR3z7pJtOfHwiCDB2D5feX67g3arLBjDWeXDbRLO8m4RaC53pOLD3sb7Bw==
X-Received: by 2002:adf:9dca:: with SMTP id q10mr9394442wre.183.1572594329634; 
 Fri, 01 Nov 2019 00:45:29 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:29 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 07/10] x86: olpc-xo1-pm: Remove invocation of MFD's
 .enable()/.disable() call-backs
Date: Fri,  1 Nov 2019 07:45:15 +0000
Message-Id: <20191101074518.26228-8-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004531_455396_F614C0AA 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: baohua@kernel.org, stephan@gerhold.net, arnd@arndb.de,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 Lee Jones <lee.jones@linaro.org>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IO regions are now requested and released by this device's parent.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
---
 arch/x86/platform/olpc/olpc-xo1-pm.c | 8 --------
 1 file changed, 8 deletions(-)

diff --git a/arch/x86/platform/olpc/olpc-xo1-pm.c b/arch/x86/platform/olpc/olpc-xo1-pm.c
index e1a32062a375..f067ac780ba7 100644
--- a/arch/x86/platform/olpc/olpc-xo1-pm.c
+++ b/arch/x86/platform/olpc/olpc-xo1-pm.c
@@ -12,7 +12,6 @@
 #include <linux/platform_device.h>
 #include <linux/export.h>
 #include <linux/pm.h>
-#include <linux/mfd/core.h>
 #include <linux/suspend.h>
 #include <linux/olpc-ec.h>
 
@@ -120,16 +119,11 @@ static const struct platform_suspend_ops xo1_suspend_ops = {
 static int xo1_pm_probe(struct platform_device *pdev)
 {
 	struct resource *res;
-	int err;
 
 	/* don't run on non-XOs */
 	if (!machine_is_olpc())
 		return -ENODEV;
 
-	err = mfd_cell_enable(pdev);
-	if (err)
-		return err;
-
 	res = platform_get_resource(pdev, IORESOURCE_IO, 0);
 	if (!res) {
 		dev_err(&pdev->dev, "can't fetch device resource info\n");
@@ -152,8 +146,6 @@ static int xo1_pm_probe(struct platform_device *pdev)
 
 static int xo1_pm_remove(struct platform_device *pdev)
 {
-	mfd_cell_disable(pdev);
-
 	if (strcmp(pdev->name, "cs5535-pms") == 0)
 		pms_base = 0;
 	else if (strcmp(pdev->name, "olpc-xo1-pm-acpi") == 0)
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
