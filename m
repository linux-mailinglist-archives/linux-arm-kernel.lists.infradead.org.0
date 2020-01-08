Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CF821339A1
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 04:25:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9NWDlc6S/yyqwYFOr+a6U8wopQxolOGGS6N3Vv+doMo=; b=g8+RzbYgBvj7U2Dc00FH3UN6mo
	YAO8kmVGY2GDl/e3tFh+BTFaSjsQy0UF0dSOmytaQNL/CWsQuDE84brIhcgq9DNovO9oj99EwJ+/n
	6Q64KphWxol/0ekMXelW72eoH23r0YQT47trnUKeSzumgo6PGSgg34kg7ZGRjjIslGU1POJ4nLbwP
	9Z/8jjEOZWVAf7B28NQ2rX3xHj+douj56N6bUetpQi/vxwFwbWG7vCMIiHRlXtXxeI7BTlhkx0FsC
	YH/Fk/kQcE6DfNprfUClyeD23KEHOdZwYkw7KdmBq0sniR2i/lnm/IabucbFQuyC3lMm92tilHZPS
	q3lKuACQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ip1y8-0005Ok-Vx; Wed, 08 Jan 2020 03:25:16 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ip1x9-0004lI-JD
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 03:24:17 +0000
Received: by mail-pj1-x1044.google.com with SMTP id bg7so449252pjb.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 19:24:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=lK0hzpi7lOKx/+vwwnIUmfL08coFZ79d+GQbKJpzbuw=;
 b=kCaReHFA/2m4OEHT4jLNp5pVtd/t9O5G9JwqiJ9+UasprWNPIFZUCmMOvsTtwblCZy
 BLFANaRq6BoJXO5M9gMEMwZE9QeERUxmzCV4qePVIyDEpeI6rq/wKc1JndkKLkHdQyz7
 hEWRhfORw2kWqCwEPOoxoE87VSxmB9c1PBOmwOjKTUlXcaTZErdZEKImufCRM1rMYjw1
 242c6PO2wGpRhUz4RFm+B5mp6KEjdzG/3LVq49PTdSSISIczQ99tN122UCiW8EhJux8D
 FVsDzdwYQE3IIgBXx+Qaul/MeyXhAOjtKWroaViiEZ3emMHIlnf8YZDLqhNjK25uPJp7
 M+mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=lK0hzpi7lOKx/+vwwnIUmfL08coFZ79d+GQbKJpzbuw=;
 b=QqQ/xRctods3i7riAWEEt0lZmyiwTSX5b/oV4ssvHDMozAgMEeP6o019iGQ8FaMXq3
 tPDjUl+KIAB1ibukEm2BEl8PnSPftNB68my0ASEy8W0p6uSgu7Y8zOpb0manTa94cGaM
 wJHr0XEv3B8LLXdAC7+XiD2UFmn+MKmsIKn0twmJzDNLARcfRbvbqNve4Qdxd919WCx4
 7BuuerdpvB63Av6vHhs9iPEObkQ1jtSdM6ezCEHD/fok/Z5VXV44YpNEdkImzJTmV063
 W+aKZJRG+XTHfrRAuJbIQgJKoOpj29Gg4bFzcJ7IsOe/RbbtFp+yTBrJHeAjtrjfjy0+
 OD2Q==
X-Gm-Message-State: APjAAAXXj15wMc5Qd21TN/CygBT3iWdbQv3CdV/rlCmcyQapVwF1z/wR
 4vialGPy8LhYvuX/zMWr7zw=
X-Google-Smtp-Source: APXvYqyf1gLmB4hhnarUAfaBLruqzaaorl1nD7HJculUE1wIQqdTMKqw2LGQwDmGsTse2kht9lXJvQ==
X-Received: by 2002:a17:90a:8a12:: with SMTP id
 w18mr2028423pjn.68.1578453854183; 
 Tue, 07 Jan 2020 19:24:14 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id g7sm1077875pfq.33.2020.01.07.19.24.10
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 07 Jan 2020 19:24:13 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH RESEND 3/3] hwspinlock: sirf: Use devm_hwspin_lock_register()
 to register hwlock controller
Date: Wed,  8 Jan 2020 11:23:46 +0800
Message-Id: <8f94e67b5f9af20a93418a2fc9cc71b194f1285c.1578453662.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1578453662.git.baolin.wang7@gmail.com>
References: <cover.1578453662.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_192415_650252_8B6B19D3 
X-CRM114-Status: GOOD (  13.18  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: baolin.wang7@gmail.com, linux-remoteproc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use devm_hwspin_lock_register() to register the hwlock controller instead of
unregistering the hwlock controller explicitly when removing the device.

Signed-off-by: Baolin Wang <baolin.wang7@gmail.com>
---
 drivers/hwspinlock/sirf_hwspinlock.c |   21 +++------------------
 1 file changed, 3 insertions(+), 18 deletions(-)

diff --git a/drivers/hwspinlock/sirf_hwspinlock.c b/drivers/hwspinlock/sirf_hwspinlock.c
index d62462e..823d3c4 100644
--- a/drivers/hwspinlock/sirf_hwspinlock.c
+++ b/drivers/hwspinlock/sirf_hwspinlock.c
@@ -79,23 +79,9 @@ static int sirf_hwspinlock_probe(struct platform_device *pdev)
 
 	platform_set_drvdata(pdev, hwspin);
 
-	return hwspin_lock_register(&hwspin->bank, &pdev->dev,
-				    &sirf_hwspinlock_ops, 0,
-				    HW_SPINLOCK_NUMBER);
-}
-
-static int sirf_hwspinlock_remove(struct platform_device *pdev)
-{
-	struct sirf_hwspinlock *hwspin = platform_get_drvdata(pdev);
-	int ret;
-
-	ret = hwspin_lock_unregister(&hwspin->bank);
-	if (ret) {
-		dev_err(&pdev->dev, "%s failed: %d\n", __func__, ret);
-		return ret;
-	}
-
-	return 0;
+	return devm_hwspin_lock_register(&pdev->dev, &hwspin->bank,
+					 &sirf_hwspinlock_ops, 0,
+					 HW_SPINLOCK_NUMBER);
 }
 
 static const struct of_device_id sirf_hwpinlock_ids[] = {
@@ -106,7 +92,6 @@ static int sirf_hwspinlock_remove(struct platform_device *pdev)
 
 static struct platform_driver sirf_hwspinlock_driver = {
 	.probe = sirf_hwspinlock_probe,
-	.remove = sirf_hwspinlock_remove,
 	.driver = {
 		.name = "atlas7_hwspinlock",
 		.of_match_table = of_match_ptr(sirf_hwpinlock_ids),
-- 
1.7.9.5


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
