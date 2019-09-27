Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ED673C0126
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Sep 2019 10:29:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=u1I/genQF7CdN2YAK025u/1e9Rnpn2YFXerLSNRImvk=; b=dlBaNuZxwCVtgcUe+M5J2Gc8ex
	dCP1jaGgWFsvvf6EIUutfBjpI5bzTiFJMnvnAgKI2SdIpIcE72TNs/tAL/FezrdLtA/bO9a0fmySM
	RE9cfn7sDVP/DOheLeqQOADsrzhdp4P90FyFz1QZDYpJU9dgfNAPGg081xVmURxQNjc+ZLgQZgAnL
	tuiw2ieo1cHN9y4fz1CKvE7kJH7OJvz/czt/ofzh10WoT6ryjUfh7DrfwbNoj6sP0KiQKzrivADry
	OU9z59d7oqsWgG9Wg2Z7lz+VosBiS2dTzjkqQe474PkllXq25z3AgGFHoccp2NHV5DThRGPJtNYVK
	2S7E9RTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDlcZ-0008IP-Vx; Fri, 27 Sep 2019 08:28:59 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDlbs-0007tA-CT
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Sep 2019 08:28:17 +0000
Received: by mail-pl1-x643.google.com with SMTP id q15so780682pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Sep 2019 01:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=nZvAywOUGdc+nGEJgKwNfZF/qVh73K5ZWBaGt6yR3wY=;
 b=g9A2VhoKoQRJQ8A/yxKiLRnba6H4pummdVWULOO9J5NHWXt5KisX96YWWyo1QvzxPp
 UpeqQbf4GpP1ehd/+rQcixZniIXYm0qCyx8tAhvNGMt0HWYdpt458yK1U/fA4F/3DGHM
 MK7AS60vGn54vJKXzjidUoX6MaIA/acYx5Ya8Z92bH0isTldnqytXSrSDm9imHmGX8jh
 L3tAvsTKvYHO8gQ6Zz3FnkS5FHWMEDWed+eScwvqYi6KPhlzIpSrcK1RumZRNOyPp9FY
 TyCty9tp9SwH+sJMcYKdKFs67f6yoEWcBjY7w0R4WgDjpkljQ801OL58ghqXXr2jcebj
 mOEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=nZvAywOUGdc+nGEJgKwNfZF/qVh73K5ZWBaGt6yR3wY=;
 b=Ii1NvMhHE0EDe3M6zix/RqRssfR2BWMwzLssM/FnkE8AE11B+SpiVBgPy7zlCuux15
 VvbfTjt1Evuo5rVX4wMr/dqQHg0+KcILhz7RN1BLaajNMUpIJXQoQON0N78bhF2/e104
 NCn5ov68ce/2BMmjuiq0VKD9sL+wlU/96jbhO2sSVLP9NtZrtidj3oSEloKAOOnpLyWh
 9pdd6muUBize3aky8TQ7WDxNTiLZ5zCO52oazaNWQYiijgnmParPpNspJ9ppEX5lm32o
 HB0ZF9qlFo6d1E/DSo7nFvSPed5rszbbGFEGEz6eVXniLKggWj3MLlIJhuRagQrA96OO
 zrUQ==
X-Gm-Message-State: APjAAAUBc67R8G15leeroYpDL2OiRN1JBjsxXiqEB7loKE7Sj81r2Dlc
 odZAH/CbWXqZEyGdOJs/GmbX/g==
X-Google-Smtp-Source: APXvYqxYsH15T/gDxZi0i3gJliAlf/e2oUvzKKDi12hmwme2MB2Wn3J+nY/EfRcajagLVlzVyg9RuQ==
X-Received: by 2002:a17:902:b20a:: with SMTP id
 t10mr3218500plr.277.1569572895591; 
 Fri, 27 Sep 2019 01:28:15 -0700 (PDT)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id 6sm2043521pfa.162.2019.09.27.01.28.12
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 27 Sep 2019 01:28:14 -0700 (PDT)
From: Baolin Wang <baolin.wang@linaro.org>
To: linus.walleij@linaro.org,
	ohad@wizery.com,
	bjorn.andersson@linaro.org
Subject: [PATCH 3/3] hwspinlock: u8500_hsem: Use devm_hwspin_lock_register()
 to register hwlock controller
Date: Fri, 27 Sep 2019 16:27:43 +0800
Message-Id: <a6b18f17b995bceaf2fc0129866301dd8f46bee4.1569572448.git.baolin.wang@linaro.org>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
In-Reply-To: <cover.1569572448.git.baolin.wang@linaro.org>
References: <cover.1569572448.git.baolin.wang@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190927_012816_467954_A83A8F69 
X-CRM114-Status: GOOD (  11.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-remoteproc@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, baolin.wang@linaro.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_hwspin_lock_register() to register the hwlock controller instead of
unregistering the hwlock controller explicitly when removing the device.

Signed-off-by: Baolin Wang <baolin.wang@linaro.org>
---
 drivers/hwspinlock/u8500_hsem.c |   11 ++---------
 1 file changed, 2 insertions(+), 9 deletions(-)

diff --git a/drivers/hwspinlock/u8500_hsem.c b/drivers/hwspinlock/u8500_hsem.c
index 0e8d4ff..b31141a 100644
--- a/drivers/hwspinlock/u8500_hsem.c
+++ b/drivers/hwspinlock/u8500_hsem.c
@@ -119,8 +119,8 @@ static int u8500_hsem_probe(struct platform_device *pdev)
 	/* no pm needed for HSem but required to comply with hwspilock core */
 	pm_runtime_enable(&pdev->dev);
 
-	ret = hwspin_lock_register(bank, &pdev->dev, &u8500_hwspinlock_ops,
-						pdata->base_id, num_locks);
+	ret = devm_hwspin_lock_register(&pdev->dev, bank, &u8500_hwspinlock_ops,
+					pdata->base_id, num_locks);
 	if (ret) {
 		pm_runtime_disable(&pdev->dev);
 		return ret;
@@ -133,17 +133,10 @@ static int u8500_hsem_remove(struct platform_device *pdev)
 {
 	struct hwspinlock_device *bank = platform_get_drvdata(pdev);
 	void __iomem *io_base = bank->lock[0].priv - HSEM_REGISTER_OFFSET;
-	int ret;
 
 	/* clear all interrupts */
 	writel(0xFFFF, io_base + HSEM_ICRALL);
 
-	ret = hwspin_lock_unregister(bank);
-	if (ret) {
-		dev_err(&pdev->dev, "%s failed: %d\n", __func__, ret);
-		return ret;
-	}
-
 	pm_runtime_disable(&pdev->dev);
 
 	return 0;
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
