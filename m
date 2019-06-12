Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 622334278E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 15:30:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=A5E94UX+LBtY9n40PKFKHHyfaCcUw5/CGyP9nNwsgZQ=; b=fBZNoBsEQ+Gs1I
	uTdhCxfhxrn3p6G4Fj3O17iHWximTfciKUCPID841/MYzNRoHr44w2ouhfxq0So6rMZB+K2nBwGjp
	jVq/usommxxw1QKbqHJCCOGyqPwPN21RLlkiBuxsOMk/xjpIgSr1Sei1/pkglArV/IXV82/kV9/8e
	pW0Gs2bSskjFdknsnHRCuM0J5FelTL3MaI1EEziyQHo1sIUOsZvRS+xWZij9WLwqHavj2qoT66xpW
	xrjixTpTdkAGTbHize1E1EHunMhaM1TS9saatW2qaS9yZLqVjQUJLk0uNUTe25T0RH5ru/Fi29i/n
	6eMza28oTiNLC1rWXBkA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb3L5-0006QS-HB; Wed, 12 Jun 2019 13:30:55 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hb3Kv-0006Pk-TK
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 13:30:47 +0000
Received: by mail-lj1-x244.google.com with SMTP id t28so15094024lje.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Jun 2019 06:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zOJC9llcXSmmT03g3kIZ1KIg2eqxtvX5nA/fmUTxK9s=;
 b=rAEPeMUC7ZuZ7okUYsti/xIXf6d6flBHRMfTsFDmmOZEUfVJ4UiZDK4KDWJuvY8D/r
 p8noSLNhV6qd7pNWG/zMW7TEdOI3sonyLu9h5I0PccbsZsVw5bemsnky9K2PTLF65BHA
 EJtnoYBJsSvk2YSG1G0NpuEvnlm+oWyl4q/hTQqKXzWJIl1JoSEa7iffC8TodKtbv9ZC
 ZeKQOs21741JBOGTjLslQxx/Hm2/4uxc70tKAxdpdZ08k608tNvKeriV+7U98A2m7smw
 ML1rhsHfpGwPxSGZcgtgnzTLkusUWdE3kWkpjVxGLS6XSSUzyr7GHE+cKvA8dOha7RJP
 0kRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=zOJC9llcXSmmT03g3kIZ1KIg2eqxtvX5nA/fmUTxK9s=;
 b=k95nsGT4B0MJWldf5PzYp3VwC0OVNaDTdceYhuetPZCuFEijak6XYFURSjX+i9awJg
 Jx6yQecw2/11ICyGnjt39ITGzvSGJG8OFVljL780lGtt9jh8ZgvWD9P5c1g09YXBdClQ
 MthHyj+4ccwr8E5Dwz+G/jX3ud/6v+CgEU23rti1TmmbV7/s7c8GjtlPzcXV/QlZzzcp
 Bumt/DsKyq5Zz5wQB1WRUCYbHmUhPUp6Y5gJ9X/M2OZ027lS7xPa3+s8kvMGBnWmXOR3
 3xjvlDgySxc9imDAwzWdbK6gT9phiy3TyjfU4xRi6qIxKtpEMpwJaURF/QBjQzYMaAaI
 7nvA==
X-Gm-Message-State: APjAAAUSJF/zWwPL2XxugzOKbB7ZPUyQM8BG4S6xlopovy9M7m7ctXRa
 woH+v9bQKnItVptelppSTFyVXA==
X-Google-Smtp-Source: APXvYqwX6KxgL33+MY/QH9VsU3hPzaj5iVpor7Fy2bFkBvnkwyJisL6ZNoC76MU1vXUBK45OUO6IJQ==
X-Received: by 2002:a2e:894a:: with SMTP id b10mr12543185ljk.99.1560346243732; 
 Wed, 12 Jun 2019 06:30:43 -0700 (PDT)
Received: from genomnajs.ideon.se ([85.235.10.227])
 by smtp.gmail.com with ESMTPSA id w1sm3923261ljm.81.2019.06.12.06.30.42
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 12 Jun 2019 06:30:42 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH] drm/mcde: Fix uninitialized variable
Date: Wed, 12 Jun 2019 15:30:38 +0200
Message-Id: <20190612133038.5522-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_063045_959990_95DD508E 
X-CRM114-Status: UNSURE (   9.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linus Walleij <linus.walleij@linaro.org>,
 Dan Carpenter <dan.carpenter@oracle.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We need to handle the case when of_drm_find_bridge() returns
NULL.

Reported-by: Dan Carpenter <dan.carpenter@oracle.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/mcde/mcde_drv.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/mcde/mcde_drv.c b/drivers/gpu/drm/mcde/mcde_drv.c
index baf63fb6850a..bc11c446e594 100644
--- a/drivers/gpu/drm/mcde/mcde_drv.c
+++ b/drivers/gpu/drm/mcde/mcde_drv.c
@@ -319,7 +319,7 @@ static int mcde_probe(struct platform_device *pdev)
 	struct device *dev = &pdev->dev;
 	struct drm_device *drm;
 	struct mcde *mcde;
-	struct component_match *match;
+	struct component_match *match = NULL;
 	struct resource *res;
 	u32 pid;
 	u32 val;
@@ -485,7 +485,7 @@ static int mcde_probe(struct platform_device *pdev)
 		}
 		put_device(p);
 	}
-	if (IS_ERR(match)) {
+	if (IS_ERR_OR_NULL(match)) {
 		dev_err(dev, "could not create component match\n");
 		ret = PTR_ERR(match);
 		goto clk_disable;
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
