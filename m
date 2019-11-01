Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0AD5EBEA5
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 Nov 2019 08:47:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6+goT4HjXtznIOmwmreYeG1Mwh4J4Hoj84KuJadyIt8=; b=IJGKAIoJQ4fUtSi6/ucMEez1U/
	ERPDAk4ed2w0mnnrdazM+DAxrT6E/oR5/xLN2dgxDqmL/1ICRl7nrvITzmT1FczI1J7dPkMHUNo6L
	MlGGE6hmKP72yI/9kECa4xmqh40tIdXC73KKy+yCjE8alZWZRyv3C8xnGs0opIznA3bbfsTfIC6b6
	HCEQRgRwwGWDeSG/68RroGF4/dpGY+x1UqgH2FM1Mm+Y2Hno5JPKQkmFsWSvg3+5fg96Dbg9i+tBi
	zNwCwTgbpfp6A7JXQiNBPJuBhRuvWu0j8EXCdUQ/KSyTK/ZCDfzbhbg9G5Oz8tCGHDzBbHXjOE4xy
	7naZusaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQRez-0001nC-BR; Fri, 01 Nov 2019 07:47:53 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQRcj-0008B2-Pm
 for linux-arm-kernel@lists.infradead.org; Fri, 01 Nov 2019 07:45:35 +0000
Received: by mail-wr1-x444.google.com with SMTP id o28so8790705wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 01 Nov 2019 00:45:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=L3ntFqp0Br65sFjkR6CV5W+v78yDN2My2Y/1a4PurZc=;
 b=dnSa6iYhiNbdnjJmZ64ci22Ch8sTiVytWPZwp/hjW4bZZj9bX8HlNOYpLoAJtK5QAW
 Mjqohe0lpiN6BwInpgNQwBaMm48MYcx6CmBAjKRAXH7Ehq5xE64nuEyjgqn6s/vuwoo3
 6vTfUBcQyK5pt++HyFRgz/y4lBQg0/NNs+GOae3rK+gMX+/aEsXaOOuk5NyQs2YoEchD
 flDohJEiKxDyuUWk6L+KAxXWJNP/GlaHVI+5rw7gBmd8ms7/mvM0CdudoEcElp7d6Lu+
 9C0eNZNkHRPYs0IIF5MtPX0dISfIH/38IYa/Ffo67/O4qa1tko1zJQn9o7W9W4rlmvFw
 VKSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=L3ntFqp0Br65sFjkR6CV5W+v78yDN2My2Y/1a4PurZc=;
 b=sF/boBkgZ3Cx0fD6/rajr69xvaA/+IKGfeVY47tbxmnyKh3aHhzI3C1hCl30/m/MJP
 4L37+JAE1yMjhImlX0mp9URWBGoBHOmPe9w0xDiro+B8MiZsyH0VXAjKS41y31xe58qN
 wbBnnox+iyoC7/PhYitJ87Sf7dCjOgFGEg7aCTsF9rUtU6Q85hK18YNZZXQr5Mdqx5ar
 kU1obH3k0iO3CIhsXvEZ+MaNJPffwEZjuNse9aBz/DBbqz62fmsxf1BrXXGLTXiD4Q6m
 QdRLKT098/qfbD0UW9EnD4LELCdqUD+6Pl+tRPahSCpOLSKIc8G++jm4Xa1HqdQItkxh
 tuBw==
X-Gm-Message-State: APjAAAVD9i1abgB9YIZBa1WxKHoqvtfKIzKtVnBaZ1FkWb834IdUi5kx
 bjijDhWlr+Ns+bvV80OZnzIIF3PHGMM=
X-Google-Smtp-Source: APXvYqx/1+hZC5UBRjfU3f5D4vrBgNt9VxnDiNvcvjWAc0qKrIRAMx9kJKRvXpI1bvbFhPWOGkmUqQ==
X-Received: by 2002:adf:9799:: with SMTP id s25mr9477755wrb.390.1572594332397; 
 Fri, 01 Nov 2019 00:45:32 -0700 (PDT)
Received: from localhost.localdomain ([2.31.163.64])
 by smtp.gmail.com with ESMTPSA id b1sm576215wrw.77.2019.11.01.00.45.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 01 Nov 2019 00:45:31 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org,
	broonie@kernel.org
Subject: [PATCH v4 10/10] mfd: mfd-core: Move pdev->mfd_cell creation back
 into mfd_add_device()
Date: Fri,  1 Nov 2019 07:45:18 +0000
Message-Id: <20191101074518.26228-11-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191101074518.26228-1-lee.jones@linaro.org>
References: <20191101074518.26228-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191101_004533_923342_F85E8B15 
X-CRM114-Status: GOOD (  12.73  )
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

Most of the complexity of mfd_platform_add_cell() has been removed. The
only functionality left duplicates cell memory into the child's platform
device. Since it's only a few lines, moving it to the main thread and
removing the superfluous function makes sense.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>
Reviewed-by: Mark Brown <broonie@kernel.org>
---
 drivers/mfd/mfd-core.c | 21 ++++-----------------
 1 file changed, 4 insertions(+), 17 deletions(-)

diff --git a/drivers/mfd/mfd-core.c b/drivers/mfd/mfd-core.c
index 2535dd3605c0..cb3e0a14bbdd 100644
--- a/drivers/mfd/mfd-core.c
+++ b/drivers/mfd/mfd-core.c
@@ -49,19 +49,6 @@ int mfd_cell_disable(struct platform_device *pdev)
 }
 EXPORT_SYMBOL(mfd_cell_disable);
 
-static int mfd_platform_add_cell(struct platform_device *pdev,
-				 const struct mfd_cell *cell)
-{
-	if (!cell)
-		return 0;
-
-	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
-	if (!pdev->mfd_cell)
-		return -ENOMEM;
-
-	return 0;
-}
-
 #if IS_ENABLED(CONFIG_ACPI)
 static void mfd_acpi_add_device(const struct mfd_cell *cell,
 				struct platform_device *pdev)
@@ -141,6 +128,10 @@ static int mfd_add_device(struct device *parent, int id,
 	if (!pdev)
 		goto fail_alloc;
 
+	pdev->mfd_cell = kmemdup(cell, sizeof(*cell), GFP_KERNEL);
+	if (!pdev->mfd_cell)
+		goto fail_device;
+
 	res = kcalloc(cell->num_resources, sizeof(*res), GFP_KERNEL);
 	if (!res)
 		goto fail_device;
@@ -183,10 +174,6 @@ static int mfd_add_device(struct device *parent, int id,
 			goto fail_alias;
 	}
 
-	ret = mfd_platform_add_cell(pdev, cell);
-	if (ret)
-		goto fail_alias;
-
 	for (r = 0; r < cell->num_resources; r++) {
 		res[r].name = cell->resources[r].name;
 		res[r].flags = cell->resources[r].flags;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
