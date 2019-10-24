Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B564DE3854
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:41:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=kiOZ3cpUhuXEXJFJU//kjDheVJAtB1AY2akDhIr9PGQ=; b=M3+f+1hT1UsbgMRiPKmbk6Tdpp
	R+FeDlqCNy7QLXV20UDUrHRrqNUYBrfi5AqvloaB1daPxC3NhTiJ2nzSsKuYm+al9/vrvM8DqxTcK
	Ytr0jm91Yx07lH7JP7psqVJhabw2H1ngADaRIMZc3qcTBAVZ3WhLbhfje+gIQk84gJhjVKzoTwT2g
	FGEQ/CjjIdzmnSq7Hx63A8RCL8yJp/cxUIkkd+bxPmE70eAvLHoDubdLvazJ4R5/hdZ+357TJ9Qp7
	t0N+xqfW0iPpu/ctoS550s3ez/sAp62KMWUcVJuop9OiJOdFqTttl5Lr/fmSudTJ9qyDTedU90fHN
	EHkdm2YA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgAW-0008RM-2X; Thu, 24 Oct 2019 16:41:00 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8J-0005Nc-UZ
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:45 +0000
Received: by mail-wr1-x443.google.com with SMTP id p4so26845256wrm.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=J8DxW1d6v2NWJpBGtpmglXzzbNqCWfH+E3Y1OAoSPDQ=;
 b=TocT4wWJl8/oyox28PzGdGFVTCR25Etd7BhP7Qc2cT5lzmEIZQi4tVOoNnf+I+jzVG
 jH7I9TaqB1wIT4XzmJhJOBEWcNaJ5ICg+n0N50/AVxig+aa7g/rFuKqHScLtkHqD1DAp
 eh/o1FgmMvGXskWwY+tBnjWvoGtX5TFg3g4wy3Nm/0yL0A2lDLBM7gWPHzm7PYmnZEeB
 e/QOnIvS51dRheVYG+4wU+2vpucvGzRotxn7/Ub5aur/FiB+/VYXGyqTEAV2Gql4ncro
 faX5qcVVEkPX+IqaJDgtdfJVRys2rkt+pKna51QOy+7bQEu5rfElCk68o3c1diDOkQen
 hv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=J8DxW1d6v2NWJpBGtpmglXzzbNqCWfH+E3Y1OAoSPDQ=;
 b=GMulvImKGPFrChT/oRTypJemdrqm96Vjd73iNVUL+PfTJB5hkTzeWtX8Vi76O/Lt9b
 pLCdPCOI5Xhayt3EwkTZVl+tkJuPhQHzOnv1+qbsUizN6kyOoPAdaq8RM5P6Ta0s34kq
 OTSR0F6MKJKmQo1aiTDGL0ZTeR9pTN+ND/+sswaoQZfbxtOtxHF8vUWNpGWvHV64sPu7
 kuLtMeminerAGYjl2z+ZreeOmQsmGiWYXttOBw1zRfEojyL3BvGAa4qmVXN7rCV1yhK9
 u+wfCjyql2OqfpvDCyZO4FKWKvNin5tlEbyIrzxPkMlYlZhdJYE+BED+8XIxbN7Via8N
 NYdg==
X-Gm-Message-State: APjAAAWulChq82cjD1IdHO21AGqVANqzQvqbQ2Y5VzTPiSf1e8uFlR3F
 B+1IPUEMEi4N6M2SBc/ib4610g==
X-Google-Smtp-Source: APXvYqzqEEkHDBCb4DZUQVidIpkiui9GSpU76/wGElNi8aPtzMHnP5x265jbONW6aIDcRe7IUqFl4A==
X-Received: by 2002:adf:8103:: with SMTP id 3mr5023528wrm.194.1571935122686;
 Thu, 24 Oct 2019 09:38:42 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:41 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 06/10] x86: olpc-xo1-pm: Remove invocation of MFD's
 .enable()/.disable() call-backs
Date: Thu, 24 Oct 2019 17:38:28 +0100
Message-Id: <20191024163832.31326-7-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093843_989687_5D87468D 
X-CRM114-Status: GOOD (  11.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Lee Jones <lee.jones@linaro.org>, baohua@kernel.org, stephan@gerhold.net,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

IO regions are now requested and released by this device's parent.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
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
