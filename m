Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0053EDAC7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 05:26:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=epNzwW+k09cbVWVKu3eKNkYL5T2qN0r+yjFoKPAVXLY=; b=bHKq7XBj3FsYFY
	m2Bi61prX8fm14gV7uul5eHOohA8DfPTY2Q62wt/y0Ns6/pePsknzkxlnP8rPGHCLRGx6t0rLEGDF
	bEn7uqPHg3MF041+MFvuDH+6Xwha7QryodeMcYqiqtx8qJq4/X24oGjbYoBkdrJIVhu24+rKRFfzN
	+3CsSLIDojKOgF7AqStiqaabvMnaDqD9/iOfENsd/wLUO8LkCfXDpetwwhM8NZvWR7e0pZ6+CsWc5
	8RhBYNm3p04LUmkQAxElB8thXoco2kNjwaghQsVrlSPh32EX3eBPmDZYbwSvvzUFEdDReOJ1TGZ0y
	vNQzU56PWcoaDWiegVXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hKww5-00056y-Rm; Mon, 29 Apr 2019 03:26:33 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hKwvh-0004mb-Sm
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 03:26:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id e67so4601529pfe.10
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 28 Apr 2019 20:26:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1t5XlT2MKDWHi6woYas868Il32PJ2FqSyI3/eucTk+M=;
 b=Y/5zs/kxPAO6IznP7l9z6tSm542jICmYfTeptX9Pgu6+SP/6pjsy+VlsKri0qNx3bW
 3CrDEh7MGVazLDHxtLnppmWeGBNx5qs9SjyrF8BGyDBmD5eGDy17qcfeFqswBBmiUIRW
 V78BmDvy9QIwm+aC9Xbe4TSHCO48cVQpBNwI4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1t5XlT2MKDWHi6woYas868Il32PJ2FqSyI3/eucTk+M=;
 b=JGwp4BIJYA5XIENw2XZ5ekbHtpJjW4X8giA7DjyzX5gGNf6pJhZi+JkL66xhUHZgHE
 42b2vFDFZvLA+6r+wUF7sCZ2xkRsMy3ujjjvODgPWy/+huXqup0xsiOAcltrlCcR0pdT
 44ntKNCdinL5RWYLZJrLpkWmWSGF9MBb3WJg2Ir4saFL73dW76h/3dgVjBkKzQll2CS4
 GbDutJrUoEbzdj97J8/uWvlUiBqk0qQMkSgk1m07RX0myBJD4UfMgD0ZLkNPIcrJYbf0
 Z6Tz4Lw7M/zmAzCD4RZNRG9Jj0Xx4ogUnY6ZX8Kme+xYJNW7UEBi+mTsg1UYK+7pS8is
 V46Q==
X-Gm-Message-State: APjAAAXqB+bGQHcgfmAIXdqFbnZIQ1Pw4ruB10fgVherOAYJBTVVN5ub
 EzxwI4f2f99ADtx4kwJPSvCy4w==
X-Google-Smtp-Source: APXvYqwcxJtRHeC+jJ4mkhX0VVM0VpONliBoEORgL2cg9CA+k0cwGAgIX09ALZvOAb8IaI6sFJjyLw==
X-Received: by 2002:a63:161d:: with SMTP id w29mr33985281pgl.395.1556508369048; 
 Sun, 28 Apr 2019 20:26:09 -0700 (PDT)
Received: from drinkcat2.tpe.corp.google.com
 ([2401:fa00:1:b:d8b7:33af:adcb:b648])
 by smtp.gmail.com with ESMTPSA id a10sm41364938pfc.21.2019.04.28.20.26.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 28 Apr 2019 20:26:08 -0700 (PDT)
From: Nicolas Boichat <drinkcat@chromium.org>
To: linux-mediatek@lists.infradead.org
Subject: [PATCH 1/2] pinctrl: mediatek: Add mtk_eint_pm_ops to common-v2
Date: Mon, 29 Apr 2019 11:25:50 +0800
Message-Id: <20190429032551.65975-2-drinkcat@chromium.org>
X-Mailer: git-send-email 2.21.0.593.g511ec345e18-goog
In-Reply-To: <20190429032551.65975-1-drinkcat@chromium.org>
References: <20190429032551.65975-1-drinkcat@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190428_202609_928295_E0DF3AA2 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Chuanjia Liu <Chuanjia.Liu@mediatek.com>,
 Linus Walleij <linus.walleij@linaro.org>, Sean Wang <sean.wang@kernel.org>,
 linux-kernel@vger.kernel.org, evgreen@chromium.org, swboyd@chromium.org,
 linux-gpio@vger.kernel.org, Matthias Brugger <matthias.bgg@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

pinctrl variants that include pinctrl-mtk-common-v2.h (and not
pinctrl-mtk-common.h) also need to use mtk_eint_pm_ops to setup
wake mask properly, so copy over the pm_ops to v2.

It is not easy to merge the 2 copies (or move
mtk_eint_suspend/resume to mtk-eint.c), as we need to
dereference pctrl->eint, and struct mtk_pinctrl *pctl has a
different structure definition for v1 and v2.

Signed-off-by: Nicolas Boichat <drinkcat@chromium.org>
Reviewed-by: Chuanjia Liu <Chuanjia.Liu@mediatek.com>
---
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.c  | 19 +++++++++++++++++++
 .../pinctrl/mediatek/pinctrl-mtk-common-v2.h  |  1 +
 2 files changed, 20 insertions(+)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
index 20e1c890e73b30c..7e19b5a4748eafe 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c
@@ -723,3 +723,22 @@ int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 
 	return 0;
 }
+
+static int mtk_eint_suspend(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_suspend(pctl->eint);
+}
+
+static int mtk_eint_resume(struct device *device)
+{
+	struct mtk_pinctrl *pctl = dev_get_drvdata(device);
+
+	return mtk_eint_do_resume(pctl->eint);
+}
+
+const struct dev_pm_ops mtk_eint_pm_ops = {
+	.suspend_noirq = mtk_eint_suspend,
+	.resume_noirq = mtk_eint_resume,
+};
diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
index 1b7da42aa1d53e4..e2048db5bb16671 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.h
@@ -299,4 +299,5 @@ int mtk_pinconf_adv_drive_set(struct mtk_pinctrl *hw,
 int mtk_pinconf_adv_drive_get(struct mtk_pinctrl *hw,
 			      const struct mtk_pin_desc *desc, u32 *val);
 
+extern const struct dev_pm_ops mtk_eint_pm_ops;
 #endif /* __PINCTRL_MTK_COMMON_V2_H */
-- 
2.21.0.593.g511ec345e18-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
