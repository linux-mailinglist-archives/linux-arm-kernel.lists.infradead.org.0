Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A131EA33E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 30 Oct 2019 19:23:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=6i+7Lc96oEbUeWEofkT0ufUXCIKNC9oyLPy+GlhIFqQ=; b=FVxqkO+c+AEF4PVNagjZRG6TkA
	5W8XYEWAiJsA4MDOZ4lxH9SZsPibrl584gYJCEYbN5aGvPyYnYy+rO9nzMHwU2098mVlKbSe4v5gB
	OhGsoUaq55gXDdq564me9PYnYpdV8vf5J252Z/3KS1L90cvxyUQl2oBJaX1uk6mdXdmBhrueFdUE7
	sVtlZBSuSYewRg6wzrO+LUrKnGh0BPTBwxbBUcakeTYMQgXfU8KcoLce0I+PQU36L0Ko8XZzfJC8e
	kItW/Bwhmoc9jRD8/9Z0T+tFOrNcW2jYUESx6mARQTxjn7lchfhBvOCyFgjqqDJp6Tf6iQC3d4/Me
	U2hbxp3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPscj-0004yM-Dy; Wed, 30 Oct 2019 18:23:13 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPsbo-0004Kc-Ll
 for linux-arm-kernel@lists.infradead.org; Wed, 30 Oct 2019 18:22:19 +0000
Received: by mail-pg1-x544.google.com with SMTP id j22so2025592pgh.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 30 Oct 2019 11:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=otlqAInALZr2P9dty8XUUL6zB6HI1wPTVfKnXgrgDz0=;
 b=pEEW2f30nRHch1s2EgqqRpTUyvDRjLA9w9GBytO7Iw7WGg74ykAWtVnXm+1cP6BNtm
 1mZF181hfY9IbKuci1v4a3VeACfmv4FpXcXMcwSypF1tBsNJWotuP7sN+4Wdojq3NzFM
 lkGzXXf5YVCclaf7qH/X2d2FAFMTbvvJD7hCPoZnx6o8FzriL3hBjpsiEO1a/bXJKcG+
 s5kFzBta7vgBbyXUtBcw2om6ScDUWrSGvn2l+eKVoMlBYEg+OVu9h30wNIM2EdTZq1Vw
 ISn/w/OD8N0iGySp/i2MduBFT/UipcSQXv80fKEpxchF7keX0MXQ7ricV0tlvH5gyYmd
 mdpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=otlqAInALZr2P9dty8XUUL6zB6HI1wPTVfKnXgrgDz0=;
 b=Gv2FL3mQpt85lYPyMD6U2orcT/B6oRmFi6aVBvWqU+wsBvUDyqkPe+JUeHBZXxfEq2
 1+b6/rt6ERpu5CWnbLYWbFMLoyv7BP+EuPjThEUPf485rRqmk5qyLv2aBYCwvC3EZijB
 H8Cc8bl6xfIUAtPerK2ckTujWSLpVkm038Qg8cEeHI0j/rVNrLS/7Sb15ubGIUnlDgz6
 itc2m/yJLYADuYpwBGuwwEwCB6kK+FyXCovyC6b3ADnaeuqStXSatXN+cgyO50XfjhD3
 I4vGD/1nPj9Rl3WrHCxFEmLTASWV0YOAm8HAfxAaFytutRybrrMRgDe36pIOD7aypm3n
 P2Lg==
X-Gm-Message-State: APjAAAU5k3N00EsmZc7UKyrmWEskLV+lkM09ZJcTHUfPG25jX0dNT5u7
 LHXRpLPR+Sp7o+e2mfeoq2w=
X-Google-Smtp-Source: APXvYqxk/HB2PwWsDYa2sz7k6NPxepTRZ9yjvxvqoyqYJW22soLktVzEJMlRx6lO+FPLQKHqV+cFoQ==
X-Received: by 2002:a63:4081:: with SMTP id n123mr888165pga.444.1572459735810; 
 Wed, 30 Oct 2019 11:22:15 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id z5sm521637pgi.19.2019.10.30.11.22.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 30 Oct 2019 11:22:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 5/6] thermal: brcmstb_thermal: Restructure interrupt
 registration
Date: Wed, 30 Oct 2019 11:21:31 -0700
Message-Id: <20191030182132.25763-6-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191030182132.25763-1-f.fainelli@gmail.com>
References: <20191030182132.25763-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191030_112216_844979_4581A23A 
X-CRM114-Status: GOOD (  14.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Amit Kucheria <amit.kucheria@verdurent.com>,
 Florian Fainelli <f.fainelli@gmail.com>,
 "open list:BROADCOM STB AVS TMON DRIVER" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Eduardo Valentin <edubezval@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 "maintainer:BROADCOM STB AVS TMON DRIVER"
 <bcm-kernel-feedback-list@broadcom.com>, Markus Mayer <mmayer@broadcom.com>,
 Zhang Rui <rui.zhang@intel.com>,
 "moderated list:BROADCOM BCM7XXX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If we are successful grabbing the interrupt resource, then register an
interrupt handler, this makes it easier to support the interrupt as
being optional, which is it for 7216.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/thermal/broadcom/brcmstb_thermal.c | 19 +++++++++----------
 1 file changed, 9 insertions(+), 10 deletions(-)

diff --git a/drivers/thermal/broadcom/brcmstb_thermal.c b/drivers/thermal/broadcom/brcmstb_thermal.c
index 41d4a142707c..64f715053ce9 100644
--- a/drivers/thermal/broadcom/brcmstb_thermal.c
+++ b/drivers/thermal/broadcom/brcmstb_thermal.c
@@ -339,16 +339,15 @@ static int brcmstb_thermal_probe(struct platform_device *pdev)
 	priv->thermal = thermal;
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "could not get IRQ\n");
-		return irq;
-	}
-	ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
-					brcmstb_tmon_irq_thread, IRQF_ONESHOT,
-					DRV_NAME, priv);
-	if (ret < 0) {
-		dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
-		return ret;
+	if (irq >= 0) {
+		ret = devm_request_threaded_irq(&pdev->dev, irq, NULL,
+						brcmstb_tmon_irq_thread,
+						IRQF_ONESHOT,
+						DRV_NAME, priv);
+		if (ret < 0) {
+			dev_err(&pdev->dev, "could not request IRQ: %d\n", ret);
+			return ret;
+		}
 	}
 
 	dev_info(&pdev->dev, "registered AVS TMON of-sensor driver\n");
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
