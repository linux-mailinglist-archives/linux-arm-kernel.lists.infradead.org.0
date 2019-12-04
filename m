Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A8011128A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:55:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=9NWDlc6S/yyqwYFOr+a6U8wopQxolOGGS6N3Vv+doMo=; b=TIeCUluH4OjpnDZNnkZtU2iobR
	iwpDJYrfk+tKxGwN8b0bZaQktnDr+4t/CAYHVUHMJQxo33Dl5kfIyt3Dw6/RGjvt5ZrrPfJBexPwD
	LgaYNTEpOcn4UC1KFIzMz74ZgN7ITeTk4qk75Gs2aFkdglIsyDdGfnM3iz5ueP7QAaTEJRDOXMHsQ
	p13leRHl0NX6N5RQak74e6yG5o2HkiEiMKgHquh2Eji0B37A3ARG16SYc9jE9mI9BNJJYe/is6g8I
	F8AzehQ7ZzvVHEtHJF5peghdwlPNLBjhpsJpbExkE+01MAxcQVOqLPwp1XXRFZhQvSGCqYdbYhF2B
	FRnCkuWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icRNP-0004vZ-HF; Wed, 04 Dec 2019 09:55:19 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icRMY-00042Z-7T
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:54:27 +0000
Received: by mail-pf1-x441.google.com with SMTP id x185so3390602pfc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:54:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :in-reply-to:references;
 bh=lK0hzpi7lOKx/+vwwnIUmfL08coFZ79d+GQbKJpzbuw=;
 b=CqEjAqBZI2DYUBa0fTauRtHIY9p7Cyi3RlaTmg430JUBYj9ae2a90oUMiq04AsaKEb
 FJ/CvBZHMW0we9ND+ppTbh7a8jhOz8Ce6oowvzKhqXBTYcof1eDT4TYvV1G14vfnU+oF
 jWagkHpYSNVBn0HFZNE778WdHRIYPIlM+zUQScXvOKqTc0LHMnjd+rP6uT/B5i6b6Rhx
 vMlG2tNtuQ6idKDd4XOKTw2O42qnCff69KiICKuapSSsFi/5VciM+9Q1nVq5ui1yrKUg
 D9hy4Ir9b3g/x/F8rpLcOagASOykjRa8emkQGiy02pA7bc+cTS9mGUHt8pcCXl1ZztgS
 sydg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:in-reply-to:references;
 bh=lK0hzpi7lOKx/+vwwnIUmfL08coFZ79d+GQbKJpzbuw=;
 b=PgTNc7DMRElp/orGEl5hchji1/4QpmT9KY7UZ1JDBdVpQz2dlTGtOkEAcyRYWJDyzd
 a0Kxj0P1X5g1ZQoYyU+Pd4PQmIhVz2AqeSdzskgurCizrRSDi9z01CrZvK52KigzeEoo
 1CXIMtQ63t5tvxWaL6CzVcGLGcx7qB/p++4nWXRSNDl8s1YXzwbKmnLIn+FtsJrvKj4y
 Nq+SqyaCE4PZh3IGtpOmhPzlGLyEglhmDi5gkw0+et+gaC3gNe2f2uPjwXNCY0sRDG05
 dlYWQmX57NpBWYK6NMHwwPdAMfLc1gOdT7zxb+T/2RrWY4x1HSOpugoI8GycixxtVf54
 TVPg==
X-Gm-Message-State: APjAAAXLd86ioFox6WZ/OJLn4M7EOBTW6Gdj1CLXrJP2exEKLpxzVBoq
 I9c/Egf7GJ0fymD/OXWBAZU=
X-Google-Smtp-Source: APXvYqwj9EAIod5rI0TjevWy7FOFw+DSgYt6tnRhZdS6CK05vlUb7uUJci/Lp8NvAuIprbHSMdUe1Q==
X-Received: by 2002:a63:7d6:: with SMTP id 205mr2613550pgh.131.1575453264820; 
 Wed, 04 Dec 2019 01:54:24 -0800 (PST)
Received: from baolinwangubtpc.spreadtrum.com ([117.18.48.82])
 by smtp.gmail.com with ESMTPSA id k101sm5941687pjb.5.2019.12.04.01.54.22
 (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 04 Dec 2019 01:54:24 -0800 (PST)
From: Baolin Wang <baolin.wang7@gmail.com>
To: ohad@wizery.com,
	bjorn.andersson@linaro.org,
	baohua@kernel.org
Subject: [PATCH 3/3] hwspinlock: sirf: Use devm_hwspin_lock_register() to
 register hwlock controller
Date: Wed,  4 Dec 2019 17:53:33 +0800
Message-Id: <caedf84ddfe1d552af78ad84c6effc792838b1fa.1575452516.git.baolin.wang7@gmail.com>
X-Mailer: git-send-email 1.7.9.5
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
In-Reply-To: <cover.1575452516.git.baolin.wang7@gmail.com>
References: <cover.1575452516.git.baolin.wang7@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_015426_428065_8817320A 
X-CRM114-Status: GOOD (  12.84  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (baolin.wang7[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (baolin.wang7[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
