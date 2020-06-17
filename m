Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E0D101FD0E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 17:27:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=dzkl961VyrXcKPN/435A3gUMcy7VS/98J4DDo/ugiyY=; b=RDKkv1ye1KeqE+
	7gp/TpiDrE9ZpUsqT+JqytVEYy26+jOEl1O0jj8VBRK0Acnc3honjdbjTqMox9skzPGvoF5vEatM3
	UgINWt2VithCWivmFCK25shKkFbVf8D7L21VH3eFTjux/XzdOk7p0Um+KNdJ7Tj8PFOtr0F9i0lNy
	sPy0QM2BbZqTtfFnbCIohz+nQOwKaMoxe8QCXEfliER7Y+L6txfx1YHy+OeOIGKUHeC4SkqdXVndE
	vlAO7Vo79oJPKs+5yXZvsGWiR/dQDSZ7GbGIL7JVYkZa3aL2hwineac+IY47wbij/TNWGFgVMsTpH
	IrJmHJTxYvec02LCBeVw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlZyG-0005bF-MJ; Wed, 17 Jun 2020 15:27:24 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlZy8-0005ai-BZ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 15:27:17 +0000
Received: from kozik-lap.mshome.net (unknown [194.230.155.126])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id B4D5F2089D;
 Wed, 17 Jun 2020 15:27:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592407635;
 bh=/X4RakAnjpaIbDFNGYOyhDIZuK7NZ/bC8ERbSOpBkvA=;
 h=From:To:Subject:Date:From;
 b=OwHTIF92HeRZSfkFxh2WikBaYElmr2tOOHq+wczjC8w+D4cMV7CFDdFe54ko9h8Cw
 Dhr2M4C7wCI7EcZ9CEkTPhLmWM1Wedkos9O0Vik5o4HG4GwngeltE7d/KUfN3bqXRQ
 2rxoLcoesbWfe5ZQwBS67fBoqoopB4p9q/EdA9WM=
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, linux-media@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org
Subject: [PATCH RESEND v2] media: samsung: Rename Samsung and Exynos to
 lowercase
Date: Wed, 17 Jun 2020 17:27:09 +0200
Message-Id: <20200617152709.17756-1-krzk@kernel.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_082716_436488_31748641 
X-CRM114-Status: GOOD (  11.81  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix up inconsistent usage of upper and lowercase letters in "Samsung"
and "Exynos" names.

"SAMSUNG" and "EXYNOS" are not abbreviations but regular trademarked
names.  Therefore they should be written with lowercase letters starting
with capital letter.

The lowercase "Exynos" name is promoted by its manufacturer Samsung
Electronics Co., Ltd., in advertisement materials and on website.

Although advertisement materials usually use uppercase "SAMSUNG", the
lowercase version is used in all legal aspects (e.g. on Wikipedia and in
privacy/legal statements on
https://www.samsung.com/semiconductor/privacy-global/).

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

---

Changes since v1:
1. Move bindings change to separate patch.
---
 Documentation/admin-guide/media/fimc.rst          | 6 +++---
 Documentation/driver-api/media/drivers/tuners.rst | 2 +-
 drivers/media/platform/exynos4-is/media-dev.c     | 2 +-
 drivers/media/platform/s3c-camif/camif-core.c     | 2 +-
 4 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/Documentation/admin-guide/media/fimc.rst b/Documentation/admin-guide/media/fimc.rst
index 0b8ddc4a3008..56b149d9a527 100644
--- a/Documentation/admin-guide/media/fimc.rst
+++ b/Documentation/admin-guide/media/fimc.rst
@@ -2,7 +2,7 @@
 
 .. include:: <isonum.txt>
 
-The Samsung S5P/EXYNOS4 FIMC driver
+The Samsung S5P/Exynos4 FIMC driver
 ===================================
 
 Copyright |copy| 2012 - 2013 Samsung Electronics Co., Ltd.
@@ -19,7 +19,7 @@ drivers/media/platform/exynos4-is directory.
 Supported SoCs
 --------------
 
-S5PC100 (mem-to-mem only), S5PV210, EXYNOS4210
+S5PC100 (mem-to-mem only), S5PV210, Exynos4210
 
 Supported features
 ------------------
@@ -45,7 +45,7 @@ Media device interface
 ~~~~~~~~~~~~~~~~~~~~~~
 
 The driver supports Media Controller API as defined at :ref:`media_controller`.
-The media device driver name is "SAMSUNG S5P FIMC".
+The media device driver name is "Samsung S5P FIMC".
 
 The purpose of this interface is to allow changing assignment of FIMC instances
 to the SoC peripheral camera input at runtime and optionally to control internal
diff --git a/Documentation/driver-api/media/drivers/tuners.rst b/Documentation/driver-api/media/drivers/tuners.rst
index 7509be888909..d7924141c544 100644
--- a/Documentation/driver-api/media/drivers/tuners.rst
+++ b/Documentation/driver-api/media/drivers/tuners.rst
@@ -18,7 +18,7 @@ These differ mainly by the bandswitch byte.
 Tuner Manufacturers
 -------------------
 
-- SAMSUNG Tuner identification: (e.g. TCPM9091PD27)
+- Samsung Tuner identification: (e.g. TCPM9091PD27)
 
 .. code-block:: none
 
diff --git a/drivers/media/platform/exynos4-is/media-dev.c b/drivers/media/platform/exynos4-is/media-dev.c
index 9aaf3b8060d5..96e336b19cc3 100644
--- a/drivers/media/platform/exynos4-is/media-dev.c
+++ b/drivers/media/platform/exynos4-is/media-dev.c
@@ -1439,7 +1439,7 @@ static int fimc_md_probe(struct platform_device *pdev)
 	INIT_LIST_HEAD(&fmd->pipelines);
 	fmd->pdev = pdev;
 
-	strscpy(fmd->media_dev.model, "SAMSUNG S5P FIMC",
+	strscpy(fmd->media_dev.model, "Samsung S5P FIMC",
 		sizeof(fmd->media_dev.model));
 	fmd->media_dev.ops = &fimc_md_ops;
 	fmd->media_dev.dev = dev;
diff --git a/drivers/media/platform/s3c-camif/camif-core.c b/drivers/media/platform/s3c-camif/camif-core.c
index c6fbcd7036d6..92f43c0cbc0c 100644
--- a/drivers/media/platform/s3c-camif/camif-core.c
+++ b/drivers/media/platform/s3c-camif/camif-core.c
@@ -304,7 +304,7 @@ static int camif_media_dev_init(struct camif_dev *camif)
 	int ret;
 
 	memset(md, 0, sizeof(*md));
-	snprintf(md->model, sizeof(md->model), "SAMSUNG S3C%s CAMIF",
+	snprintf(md->model, sizeof(md->model), "Samsung S3C%s CAMIF",
 		 ip_rev == S3C6410_CAMIF_IP_REV ? "6410" : "244X");
 	strscpy(md->bus_info, "platform", sizeof(md->bus_info));
 	md->hw_revision = ip_rev;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
