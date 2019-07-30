Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF237B15F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 20:16:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q8a0LzUpKg4/t3SRMk7ETIapOY0NH+ob93Ab8vv7wJ0=; b=qwrm46gHJ4nNYn
	7o0pdOl8C/WjzaO79YrIVK2V+4MLopWTgMPn7taZZPbsTcdh8T/1W2mw47jMt7iGPikbde0KiB1JU
	tjOD+v67MS0ZF3cvfK33Qdz3XuZckedXvqHT2xl/v+E9csBJ9RLcqriwDsb0ZLIDNl5qVVsnlv5UO
	dG7da7Gd7lWfTYlUjXgsf/vRRxgljHgHlCk/94MBKvzwVx+Zqd54wkyLw9UwnxjZP1Kv/vPj5ec9g
	fktY54/Mlk3dY0Lb68ZeQbsDequVDCdV/AYHZq93yZ1eeYvx2JguEjISWrOgWql53lf/qWEsCwU5l
	L+Ur1npQ9ZlPZ5y7jrEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsWfw-0001q8-Bs; Tue, 30 Jul 2019 18:16:40 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsWfi-0001n5-3u
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 18:16:29 +0000
Received: by mail-pl1-x643.google.com with SMTP id k8so29230036plt.3
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 11:16:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=AZvanaYGQHCeCe8d2+RSzqNKocPRl2CR5zzefJtoMkI=;
 b=HF5OnRSmMh2mz0tcIzJD/fB71owMPCZLGeTM1w0J44yIRKz6ezQnukLhlUbQs54QH0
 VcTZU85lRduHS+pPoNoiI/1gOtnVnUcym28dtLh/iqXnU3l60s9c85wMcauQgZQgPQLQ
 hjYmYUEvujlBiprv/pluRVkJKsrv1XJGt7f0Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=AZvanaYGQHCeCe8d2+RSzqNKocPRl2CR5zzefJtoMkI=;
 b=dVKWINNJlcjP94zTtkx/+DMoeqbgEjyUQu5LCoxvXhxFg0mtEmoSNEg+TQA+na0ay0
 DXZyUnpw8GEEZsqot78OFUR4p2QvepF+ld+ARFVG5XmqX55fK0d4YlGwOxn4fOEeSnL9
 mn+TKdUFdYutdIJRBSx6nb8miU/OLAm8fHbcyxekI3j2XmIoiiIJo05iRqiFYPpWZWhX
 jJHg9vHqPenO6hw6Y9o82Nc498bOOLRfFQefj6NnsO4rw0ywoBcQiHEzZ3h0+AxUvYMl
 WRQlJdShfVRrtJ1rs0/Kl0R3EwCrbakJ+bl7Qs54QEhQSqw8iG30kme2EOw7DWl+pkQX
 yH7Q==
X-Gm-Message-State: APjAAAXS/e1Pd+nT24/XWvcnr9ZAwvIdW5ajTnVopjuGDqMByzZYxi4t
 kje2y572yyByn0xi7g4RVe07fw==
X-Google-Smtp-Source: APXvYqzp3gdb8JqpjQ0n3ss05I71VUq27CGUDkIsctzC6HmCCofvpLMH1Tg0Gl+4gJbHgu+hPLZPew==
X-Received: by 2002:a17:902:ac87:: with SMTP id
 h7mr120307087plr.36.1564510585537; 
 Tue, 30 Jul 2019 11:16:25 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id g1sm106744083pgg.27.2019.07.30.11.16.24
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 30 Jul 2019 11:16:24 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v6 32/57] perf: Remove dev_err() usage after platform_get_irq()
Date: Tue, 30 Jul 2019 11:15:32 -0700
Message-Id: <20190730181557.90391-33-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
In-Reply-To: <20190730181557.90391-1-swboyd@chromium.org>
References: <20190730181557.90391-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_111626_169485_3FC40AF0 
X-CRM114-Status: GOOD (  11.66  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't need dev_err() messages when platform_get_irq() fails now that
platform_get_irq() prints an error message itself when something goes
wrong. Let's remove these prints with a simple semantic patch.

// <smpl>
@@
expression ret;
struct platform_device *E;
@@

ret =
(
platform_get_irq(E, ...)
|
platform_get_irq_byname(E, ...)
);

if ( \( ret < 0 \| ret <= 0 \) )
{
(
-if (ret != -EPROBE_DEFER)
-{ ...
-dev_err(...);
-... }
|
...
-dev_err(...);
)
...
}
// </smpl>

While we're here, remove braces on if statements that only have one
statement (manually).

Cc: Will Deacon <will@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---

Please apply directly to subsystem trees

 drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c | 4 +---
 drivers/perf/hisilicon/hisi_uncore_hha_pmu.c  | 4 +---
 drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c  | 4 +---
 drivers/perf/qcom_l2_pmu.c                    | 6 +-----
 drivers/perf/xgene_pmu.c                      | 4 +---
 5 files changed, 5 insertions(+), 17 deletions(-)

diff --git a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
index 6ad0823bcf23..e42d4464c2cf 100644
--- a/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_ddrc_pmu.c
@@ -217,10 +217,8 @@ static int hisi_ddrc_pmu_init_irq(struct hisi_pmu *ddrc_pmu,
 
 	/* Read and init IRQ */
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "DDRC PMU get irq fail; irq:%d\n", irq);
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_irq(&pdev->dev, irq, hisi_ddrc_pmu_isr,
 			       IRQF_NOBALANCING | IRQF_NO_THREAD,
diff --git a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
index 4f2917f3e25e..f28063873e11 100644
--- a/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_hha_pmu.c
@@ -207,10 +207,8 @@ static int hisi_hha_pmu_init_irq(struct hisi_pmu *hha_pmu,
 
 	/* Read and init IRQ */
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "HHA PMU get irq fail; irq:%d\n", irq);
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_irq(&pdev->dev, irq, hisi_hha_pmu_isr,
 			      IRQF_NOBALANCING | IRQF_NO_THREAD,
diff --git a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
index 9153e093f9df..078b8dc57250 100644
--- a/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
+++ b/drivers/perf/hisilicon/hisi_uncore_l3c_pmu.c
@@ -206,10 +206,8 @@ static int hisi_l3c_pmu_init_irq(struct hisi_pmu *l3c_pmu,
 
 	/* Read and init IRQ */
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "L3C PMU get irq fail; irq:%d\n", irq);
+	if (irq < 0)
 		return irq;
-	}
 
 	ret = devm_request_irq(&pdev->dev, irq, hisi_l3c_pmu_isr,
 			       IRQF_NOBALANCING | IRQF_NO_THREAD,
diff --git a/drivers/perf/qcom_l2_pmu.c b/drivers/perf/qcom_l2_pmu.c
index d06182fe14b8..21d6991dbe0b 100644
--- a/drivers/perf/qcom_l2_pmu.c
+++ b/drivers/perf/qcom_l2_pmu.c
@@ -909,12 +909,8 @@ static int l2_cache_pmu_probe_cluster(struct device *dev, void *data)
 	cluster->cluster_id = fw_cluster_id;
 
 	irq = platform_get_irq(sdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev,
-			"Failed to get valid irq for cluster %ld\n",
-			fw_cluster_id);
+	if (irq < 0)
 		return irq;
-	}
 	irq_set_status_flags(irq, IRQ_NOAUTOEN);
 	cluster->irq = irq;
 
diff --git a/drivers/perf/xgene_pmu.c b/drivers/perf/xgene_pmu.c
index 3259e2ebeb39..7e328d6385c3 100644
--- a/drivers/perf/xgene_pmu.c
+++ b/drivers/perf/xgene_pmu.c
@@ -1901,10 +1901,8 @@ static int xgene_pmu_probe(struct platform_device *pdev)
 	}
 
 	irq = platform_get_irq(pdev, 0);
-	if (irq < 0) {
-		dev_err(&pdev->dev, "No IRQ resource\n");
+	if (irq < 0)
 		return -EINVAL;
-	}
 
 	rc = devm_request_irq(&pdev->dev, irq, xgene_pmu_isr,
 				IRQF_NOBALANCING | IRQF_NO_THREAD,
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
