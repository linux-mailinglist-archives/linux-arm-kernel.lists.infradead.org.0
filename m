Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DE2C71D70B8
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 08:09:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Nc88+s6e5HqtH1IeOOansncQ/7w45y4GefQo+2NH6yU=; b=MZLTyG+7Zi71i5
	kshkf9BcJeuC1IROOT+JSukBkT1eTkAJc9mJ2wSGHAa4MKAQ8sDhFNpfXVME6TLzKx0qnQqo+WRh0
	zzmxQ/S6LwS3iHpjXOFaQrpZTSPEbiHZvlzLsn8m1vTkGqQ2bqDCU2mBY0rigrDDpmj7LiGKZ2zaa
	PmeXUianksSbJfJFYOYh7ieQnIi7pXHa3hw+1+3i7PEiT7OvzCXryUrN0Eu/u+alJ4D3mwPkza0CI
	FIEsvcZdrG9FJ8YtA3GZqFGqK9d4bMgLPVPPl18MnPQP3X7sGHJkoRheo2TN365CFZVEosloEihJk
	nxl/g24JhfL/FiGCfEww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jaYxU-0006hF-NO; Mon, 18 May 2020 06:09:04 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jaYxB-0006b3-5A; Mon, 18 May 2020 06:08:46 +0000
Received: by mail-wm1-x343.google.com with SMTP id z4so6807314wmi.2;
 Sun, 17 May 2020 23:08:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gzDmmSRgID/AAT9U9NADJh+Q7oTNQ3LSGXH6EEbMns0=;
 b=s3WBzOtQG0ZljGSteUJ2eRPFU1efr1bExm1oTwdqFkxMXumhLyZ2lZVMFcsVD0Ogw4
 6oGpVTwLaDHkoO6WCqexPfswEoaAK8HpgI+TJI5uj7WIXHCAf9lE017pHW3WE4l4IcBZ
 Apbb1thutl/X57y+xux0VVIHQ4N+eglWBDjSeKzFoD0XlWBcZ5lCj6OULveC0hfKSgBi
 aEaWNYQfScsjCUzYeAlCR+Qu70cDDpOV7oNE9hECvpH1t2fzMslk0c03S3QaCWy+FNro
 Mgm2YA1uKMteGjkXRqX6xdAiIMDRKGDVbfnh8QkNXbMO8D9vxPPi+IzyvhkAoJo3AKRe
 Bh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=gzDmmSRgID/AAT9U9NADJh+Q7oTNQ3LSGXH6EEbMns0=;
 b=GxTgrivszvbKT8ijjLrcpTDK+lGwrfJg1uOnNuq13PUsIlr1SIX1z+WSoqFnRuKvJ4
 5FYNSNtSzRleX7ycx/hMrm7NpA2cPwOa1FTgYZZMvZXmSyc9iZCci/LFOTKt3D4B94L2
 UV+Qje0DS4XxlaapMBcvApey/6WWVNuMdJYzY81wd2JXkrmpMUET7Ztj/C0q+5r+DST2
 YXzir6GUxkm9a9YqM530CuP23GGxhSENL4jUMGuBMYNHrdB7MK4asgybsVvrgi7JxuQw
 QxDuWQF0b7xRnGSzo3o6Z/Chz0iurCxRA491H341cPsYpuUtb2TqPNa4yWP7uKIEPtes
 OBpQ==
X-Gm-Message-State: AOAM531xAE0tvhmvIxueKiCnFWu5YwbNMT/pO6GFXgJ3ebNlNx6CBKIV
 PzkIeRiG15/M8yzPyxEzLPs=
X-Google-Smtp-Source: ABdhPJxHHbeWWsbf/7SLYQQSyy4HAmj400J9BP8xOtLUkcaJuTQaA8l4sft05aKFWuA6QJi4ZtJBCg==
X-Received: by 2002:a05:600c:2dd0:: with SMTP id
 e16mr18593643wmh.121.1589782123183; 
 Sun, 17 May 2020 23:08:43 -0700 (PDT)
Received: from localhost.localdomain
 (p200300f137132e00428d5cfffeb99db8.dip0.t-ipconnect.de.
 [2003:f1:3713:2e00:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id b19sm16120469wmd.26.2020.05.17.23.08.42
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 17 May 2020 23:08:42 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: ulf.hansson@linaro.org, linux-mmc@vger.kernel.org,
 linux-amlogic@lists.infradead.org
Subject: [PATCH] mmc: host: meson-mx-sdhc: fix building with
 CONFIG_MMC_MESON_MX_SDHC=m
Date: Mon, 18 May 2020 08:08:11 +0200
Message-Id: <20200518060811.1499962-1-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200517_230845_226088_F5C20CA3 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [martin.blumenstingl[at]googlemail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Stephen Rothwell <sfr@canb.auug.org.au>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

For an x86_64 allmodconfig build Stephen reports that building
meson-mx-sdhc-clkc.o warns that MODULE_LICENSE is missing and when
linking meson_mx_sdhc_register_clkc cannot be found.

Compile the MMC controller driver together with the build-in clock
controller driver into one module rather than using two separate
modules to fix these issues.

Fixes: 53ded1b676d199 ("mmc: host: meson-mx-sdhc: new driver for the Amlogic Meson SDHC host")
Reported-by: Stephen Rothwell <sfr@canb.auug.org.au>
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 drivers/mmc/host/Makefile                                 | 3 ++-
 drivers/mmc/host/{meson-mx-sdhc.c => meson-mx-sdhc-mmc.c} | 0
 2 files changed, 2 insertions(+), 1 deletion(-)
 rename drivers/mmc/host/{meson-mx-sdhc.c => meson-mx-sdhc-mmc.c} (100%)

diff --git a/drivers/mmc/host/Makefile b/drivers/mmc/host/Makefile
index 8bcb420e071c..8f459259181e 100644
--- a/drivers/mmc/host/Makefile
+++ b/drivers/mmc/host/Makefile
@@ -68,7 +68,8 @@ obj-$(CONFIG_MMC_VUB300)	+= vub300.o
 obj-$(CONFIG_MMC_USHC)		+= ushc.o
 obj-$(CONFIG_MMC_WMT)		+= wmt-sdmmc.o
 obj-$(CONFIG_MMC_MESON_GX)	+= meson-gx-mmc.o
-obj-$(CONFIG_MMC_MESON_MX_SDHC)	+= meson-mx-sdhc-clkc.o meson-mx-sdhc.o
+meson-mx-sdhc-objs 		:= meson-mx-sdhc-clkc.o meson-mx-sdhc-mmc.o
+obj-$(CONFIG_MMC_MESON_MX_SDHC)	+= meson-mx-sdhc.o
 obj-$(CONFIG_MMC_MESON_MX_SDIO)	+= meson-mx-sdio.o
 obj-$(CONFIG_MMC_MOXART)	+= moxart-mmc.o
 obj-$(CONFIG_MMC_SUNXI)		+= sunxi-mmc.o
diff --git a/drivers/mmc/host/meson-mx-sdhc.c b/drivers/mmc/host/meson-mx-sdhc-mmc.c
similarity index 100%
rename from drivers/mmc/host/meson-mx-sdhc.c
rename to drivers/mmc/host/meson-mx-sdhc-mmc.c
-- 
2.26.2


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
