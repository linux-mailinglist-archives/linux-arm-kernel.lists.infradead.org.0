Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85BAEE3861
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 18:42:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Wdfdpam8kCJcZzr+cNB5sdexO5vf9VHtZyyOa7bPx3g=; b=uZ4wpkh+9ZH0WqihTtGUrZtvGc
	hl4Ldc5h2MuAHWTJrFhFWK+72GGmT9SfTTqfiI9DkvXVJhqX49pHk+GGhuWwSL8foytSKveoY2Gch
	GS0vt9HcYr7bhq+hgkYeWCpqWCg8rEt8r/XO0WkJICUynuFe5qwASO32apM5t0DKAxUXzYWoKVYCX
	Cfp1SDu3D1vjq6jFzcry/70eMnHKMm8ZPFlnEs/uJESwq+MtQm+Cuu43Ob86QeWQiJ/sU0BrqpGiS
	3IrjjJNwV6Z0Ipjz/pjRcpX8P0pnarnjGSvhd3TFTmtVP8J9RXqmzSft6y2cpnPS06PdqPLazD3XX
	AbfFQwfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNgBV-0000yB-Ca; Thu, 24 Oct 2019 16:42:01 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNg8O-0005RU-C8
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 16:38:50 +0000
Received: by mail-wr1-x443.google.com with SMTP id o28so26822195wro.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 24 Oct 2019 09:38:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=LHOyXu4LqYDTcB2MwV67QciReuGA+gSIbqPrvF1Pvm4=;
 b=exAyRgPo0tbJRTibAfJNkRf5NqiS7Ggg8h7mHvZ93UuWH2HxFLfuM+W2DRhuQ3qGGe
 873Cwjby6hyu8499QtMvCUQtoiPQlnls1+CUQAl+qaV3cPMqI6WRcvL+uk/WNtrf1f3O
 V63sZiuElS1jIMoYNlFn6Qaif3JuuBTrukVtupm8yy0kK3BYvzaoaayGklWl7Nmj7bfQ
 MPKHe5ssUy6qZEWe0Lk2q1Zyo8YuhhrVyzXNbOU8foIv9fitdgPO/Cq580RJgByiKLik
 r4GpUfpfyrc3VEJqT5q86Px1YIobxXVM+oEi/sdSo1Q8HcJpmdMlS+V23XpuIu3ixY4x
 9Ywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=LHOyXu4LqYDTcB2MwV67QciReuGA+gSIbqPrvF1Pvm4=;
 b=hh1jDNt9hDXn43uziawqVFnufYgZijZQWmtBx74WxK6uiI2gzpqnQzl2EnEua7K0BA
 HulGuInyTS29cna6cu332jzWstj/xvTqAgIZPAqUor96ER8V6+T/YkqYCDicpZT3vnzn
 RyAeVhmXvnVkbwknfi3lBp7/ejMA1Z9Y0MS1isozGV2U8xYsjmLdZbc0bQn8bnzjbkW7
 TLJPrlJHXlxMRkAF130AFUoBByBR49OCGRcqarUjMC/6QX3NFEHT1OPhvcQzFhtBzbZA
 ZIwJV+c6DSXR/WwG+2Gm52XiG6jJ8p1E/A0wvgJc+A5Ze6haPz/rBLRWVirVHASWg1Ea
 fszg==
X-Gm-Message-State: APjAAAXFfpVLQHuzhubBezVWhTazABTj4k5gWYLncyLHDT0jjBuqBLOI
 nwLU/uuPbnnnlUd9hLdAhJkiWQ==
X-Google-Smtp-Source: APXvYqyubqgTBkJNQdyGVV4VJV2DqZXlnmzjNcJeg7aDjQ/q/fgUBOQsdJ+wi1CWkaW+OCsEsKoEzw==
X-Received: by 2002:adf:e50a:: with SMTP id j10mr4493921wrm.352.1571935126970; 
 Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id 6sm3446175wmd.36.2019.10.24.09.38.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 24 Oct 2019 09:38:46 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v3 10/10] mfd: mfd-core: Move pdev->mfd_cell creation back
 into mfd_add_device()
Date: Thu, 24 Oct 2019 17:38:32 +0100
Message-Id: <20191024163832.31326-11-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191024163832.31326-1-lee.jones@linaro.org>
References: <20191024163832.31326-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191024_093848_488693_C118E390 
X-CRM114-Status: GOOD (  13.22  )
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

Most of the complexity of mfd_platform_add_cell() has been removed. The
only functionality left duplicates cell memory into the child's platform
device. Since it's only a few lines, moving it to the main thread and
removing the superfluous function makes sense.

Signed-off-by: Lee Jones <lee.jones@linaro.org>
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
