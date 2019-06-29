Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 332FA5AB42
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 29 Jun 2019 15:02:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2/SFEevH1LrryxKqS0X2wJRJo0UU34YSZ7K0nHWWJr8=; b=QuYkHLnDfnD+Jl
	W7M6jBJRzymioe1p+NUsGJ7cq91uPlpfWfMjlaXsnT1YOca3wN77PIosNFAI0M7h8Gc4AO6ArVZQI
	EtR718lRWvMC8DOmaSZVDA2sea9xMFaMTtwFm2ngNo2mdIJBxF39FYcJZd3XzO6EvVMDfL8SBfaXC
	F8cCackNqgNQX09tQLUVXGc/0xqrv03ITTfeuaUO1zNUyO5g6YFA+W3nKJ++C40AI1AREN2E4+RIj
	l+yQgBgvEtnFrAuWAsDVkFN9hs5BvmmdySwHenXenzT4+tFnJX5EmmRG84/UwE073lU3hvu4nkEDx
	QfUgCGNrV2ORw1fk3qHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhCzb-0004hk-PP; Sat, 29 Jun 2019 13:02:11 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhCzN-0004gv-Rb
 for linux-arm-kernel@lists.infradead.org; Sat, 29 Jun 2019 13:01:59 +0000
Received: by mail-lf1-x144.google.com with SMTP id a25so5773698lfg.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 29 Jun 2019 06:01:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AJIo1pqQ+aFujHuHdql1oLAKsZ6dcOAKCD+S+KrStQg=;
 b=zQR54iAbGadX7yH6kb/W+A9Ev+FFwoc/g484x0VCE13ChTt4OVnLxuK03gAMFIhnUl
 a2s9RA8N93ziUXqxC4ZQbtiqRFq5+YrhUohrwTtL4UjNSSpUwjpJVTsnP5ztF+7mGcoD
 MaLZSwY/+wrc+Mrx1HIJcScmiCGvWqe6rIh6byJLfnq4HXzuuJHQwbH2tIrOgDiQcz99
 WHgvK5QzlgPMcFkkbQyB3iRjkDA2stc0/LSp4lugHsNtNHuQ4txm7SxP3GBg7pAGpzfw
 p4YL7ENLxHbwJB3rq3EQNAMUYHxs7zQQYNqFGvNcxySTPkzYoXSaECdplNiqhLg377rK
 dzeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AJIo1pqQ+aFujHuHdql1oLAKsZ6dcOAKCD+S+KrStQg=;
 b=LcvhTJEnJ1fMHaUCqfr/zfs59b7TmOqM3AHyhFaxotUe7Jt0DrGUgl3D0GA2rK00vU
 C+BltRdyXawirKtRUXXgT4iNXHJHyNmYpzda0bFhAkfIRq5wD8BH/qUq681d1Bn5gHVv
 qOzbwnfH1GC4yZtBuR6tjLmamAlMzGiMgcR/bpdzMebDF0gIKoYzqQbeYrBs2+n2fuWv
 F5nmfYJ/4nc6CSnquAFUtnxp5g23frXZo7Gb0Kd12JwQCkSOBrV4KkVtzoTvMxvjVyG1
 0f/zVwJ/sLULY9sfQNDCl9acpNHzDqSVO75EyCgUO61JjistTptLEryk2+EHjdyQEGQZ
 3Eng==
X-Gm-Message-State: APjAAAUF2sXwj/BZbNJ9LsmiKO5XPBypECwbEA6l8Dch8RdrzXYCR326
 +4MHw0+ujsaPcKO8abm55qNi/g==
X-Google-Smtp-Source: APXvYqxvXt6L2Ml1QCW1/zH7Sv4F1tQcoxTHgqupuETmPxNbTlWyt0OHygO+Xy9Hh1ch7/orM4lZPw==
X-Received: by 2002:ac2:4c29:: with SMTP id u9mr7457510lfq.100.1561813316205; 
 Sat, 29 Jun 2019 06:01:56 -0700 (PDT)
Received: from localhost.localdomain
 (c-22cd225c.014-348-6c756e10.bbcust.telenor.se. [92.34.205.34])
 by smtp.gmail.com with ESMTPSA id v2sm1354500lfi.52.2019.06.29.06.01.54
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 29 Jun 2019 06:01:55 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
To: dri-devel@lists.freedesktop.org,
 Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
 Maxime Ripard <maxime.ripard@bootlin.com>, Sean Paul <sean@poorly.run>
Subject: [PATCH 2/7] drm/msm/dsi: Drop unused GPIO includes
Date: Sat, 29 Jun 2019 14:59:28 +0200
Message-Id: <20190629125933.679-2-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190629125933.679-1-linus.walleij@linaro.org>
References: <20190629125933.679-1-linus.walleij@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190629_060157_890279_B1A7D9B9 
X-CRM114-Status: GOOD (  10.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-msm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 freedreno@lists.freedesktop.org, Rob Clark <robdclark@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This DSI driver uses the new descriptor API so these old
GPIO API includes are surplus.

Cc: Rob Clark <robdclark@gmail.com>
Cc: Sean Paul <sean@poorly.run>
Cc: linux-arm-msm@vger.kernel.org
Cc: freedreno@lists.freedesktop.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 drivers/gpu/drm/msm/dsi/dsi_host.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
index 610183db1daf..d44bad13cbaf 100644
--- a/drivers/gpu/drm/msm/dsi/dsi_host.c
+++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
@@ -14,11 +14,9 @@
 #include <linux/clk.h>
 #include <linux/delay.h>
 #include <linux/err.h>
-#include <linux/gpio.h>
 #include <linux/gpio/consumer.h>
 #include <linux/interrupt.h>
 #include <linux/of_device.h>
-#include <linux/of_gpio.h>
 #include <linux/of_irq.h>
 #include <linux/pinctrl/consumer.h>
 #include <linux/of_graph.h>
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
