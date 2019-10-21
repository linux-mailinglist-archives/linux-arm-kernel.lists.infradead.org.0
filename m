Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56E4DDEA4C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 13:00:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=3ozwEcxAUdo0iHYBtBO0VKk8uh3GVYEn9VrJa/xMvw4=; b=MGuwPnUjT2Rf3lTQx3I11WJDAI
	sMQrWTLY9Nuq4KgKK8H5CKwx4PqlRczkVhyLqUmFk1bKagJo/eDPAt22eNiVL5TN9CptTiAa0C2yL
	RhPoo+k7/c9/wcuEqofFNwvwwKsC4BsaNKfGkyp73eDStgnz9+k/VFMTpyELXUmuiL4LwAkDYtTd1
	m+Ix2pdkMbLaBKoIQInb7YaKwZTiDWetr4Y6Oyhcc93qah9aqML46ps2FbdUE2sk8x04sg3rBVEjX
	oi3OynghFKQp3bZHwcp3KuXYyWyABncLwAdG9bzd6zhJ8cCyEo4YUTj6l5z+TOLTL/92hS/ijraNI
	w+8jAlUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMVQd-0003Of-JE; Mon, 21 Oct 2019 11:00:47 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMVOW-0000KW-KQ
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 10:58:38 +0000
Received: by mail-wr1-x444.google.com with SMTP id c2so8177945wrr.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 21 Oct 2019 03:58:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=aRIsIrxJRG4WGhOzej9X0cMyz5OqcLFYkbUiKyLomGE=;
 b=cTeiB4QcI/9D1UCeh1hzV+1od3PVVBhQlL72xj03bVUzMnwFnJarkT3Uqedx1NfBAs
 VYsdVW/U+jL6mmMApxUm7s8EdbLDQ34lDiQMVyO9e5xbSkHQ92Y3/3wKHbOlES7D+Q9a
 AKRv2JAi+ZPKpEzpS6yO7Nf7cRoCEXJebv27MfESjaxI9K2IO1OZJRf3ShNdo2GSHebK
 6VZoPHGPCibQycGVei+Ls5x1pYadk/6OK3pre7jjZbewtrAt0cEbQ59GI1uCS7ri9dRb
 foXS/X1MFU+gZDuV21M+EN9A04hTB6AvIaaOWnpSGeDfWgQNuXi0Xg3Ned6IUGuMXaRC
 bjtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=aRIsIrxJRG4WGhOzej9X0cMyz5OqcLFYkbUiKyLomGE=;
 b=lUlzaiPSk9aTJSEBp/UIkj5M94oVxIk+TEHpgUYZnqPrHc+GWBx3ST8fEsaHR9py0y
 ZalCxfJY8Dg5NLGDXVi5QvVzxvTBGTvUV52t+YpGv+GXGsizHf6wt3q2vjvfTjfJG9/F
 yDvudTQ+TlAs21RnLRWjlugo2bz6XEWFrAmqKEFMRb0MlUeCjks0V4GwBzUlWvcDi3GX
 V03s4IwfooCVWHzMIblLmh1MTQTQ9/HWAdiQv8ZcR31WdgLBV2bLErSB9Z/B4eC7l9jS
 vc6eDqgsy8y5PH1jt6WYIijePxTGY9aYIVJJZrJbiXeeDXJmSyUtylPVXbJepvFokyCa
 qO6A==
X-Gm-Message-State: APjAAAVrwp2nbwN5wjXXUIStKwCdayZdef5bnFfcKysdiZxripkFqU7Z
 SPndonZeb6hUYh5i/0TrTgC5Uw==
X-Google-Smtp-Source: APXvYqwoMZ0Xrjo13bXEBEaHCm4InAmzMPniweiB+Wqxda5ESkJaOgUQJn/z4SYHvFyxum1/utelgg==
X-Received: by 2002:a5d:5401:: with SMTP id g1mr9448965wrv.54.1571655514185;
 Mon, 21 Oct 2019 03:58:34 -0700 (PDT)
Received: from localhost.localdomain ([95.149.164.99])
 by smtp.gmail.com with ESMTPSA id q22sm12544289wmj.31.2019.10.21.03.58.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 21 Oct 2019 03:58:33 -0700 (PDT)
From: Lee Jones <lee.jones@linaro.org>
To: daniel.thompson@linaro.org, arnd@arndb.de, broonie@kernel.org,
 linus.walleij@linaro.org
Subject: [PATCH v2 9/9] mfd: mfd-core: Move pdev->mfd_cell creation back into
 mfd_add_device()
Date: Mon, 21 Oct 2019 11:58:22 +0100
Message-Id: <20191021105822.20271-10-lee.jones@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191021105822.20271-1-lee.jones@linaro.org>
References: <20191021105822.20271-1-lee.jones@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_035836_863907_84C7E678 
X-CRM114-Status: GOOD (  13.31  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
index 5d56015baeeb..849dbe3798b0 100644
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
