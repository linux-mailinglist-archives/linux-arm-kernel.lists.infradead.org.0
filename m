Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 88BDA100BDD
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:52:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=PJLTKY2teD6/uhlkrS8vHCd8xHls0eQJseh3vYDw+Z0=; b=ZWdgy5kzrEq7scxOTWKBj4V8Zr
	rClLNAVkF/L8mXbafWxdQ1TvWrLG582GL/ZvkaWyrx53hhYrjcTGWDUx6bnqictTaeDRjtBNZ9rn7
	zC0/yES6r6rQm8bo7vcS5oZUQoFXbhkVLMFPYPHLwq3PwKuISJD5lvLudyDe/eE0Rjk9+uXqadFLU
	ERiMe6SY2c/f7nAIGZAPi6qDAZ5t69N06LzKUNFY7kQm4Z87Y86DNX6aXOAW0EpVPYyYr1nLkGUrT
	zhZ296r5bWKwE7/cBEu9T1OIZWr5IV7zCaZdjl7jsg6Il4DXWS/XJnv18emKc7dxH9LngkRLB/Y1w
	lDlbwsJw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWm8d-0001f6-L5; Mon, 18 Nov 2019 18:52:39 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm8A-0001UX-VQ
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:52:12 +0000
Received: by mail-pf1-x442.google.com with SMTP id b19so10819567pfd.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 10:52:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=GvV8oaMdUFkbGSdHfV8pM7qcL93fKWfHHP3kuX4k8Dc=;
 b=Xy3llRtkMWbJAqF37pj7ZbvTW5JPx0TK6JCyO/kUFREaNtf9yL7z+DnF1CFd87jF+A
 Ix8V5NDls+qIdu5roV8yAcJSQKjAaYD2orEGxYLdJ5XkLG+/f1Qe/4qkPSksksyUc+jv
 FiDl5EmYCJpfFyUBYj1zYpfSGgtVruXJdlPc07cULx88xll8/infS8udX7sIQQyWZwon
 cOXhi6jbP58g//iBmc75C1zYKKTFlDop1xk5ieCBcU4tIq5hGdoCsEZAiyU9w7LY0BDY
 rvRVgOUOtH9buQ55eygh+a107ECd+Zkg6twvPeXdahlRIV88/KAzF9h9kvJ2HI0ZibkJ
 i2fw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=GvV8oaMdUFkbGSdHfV8pM7qcL93fKWfHHP3kuX4k8Dc=;
 b=iaTo+bep/0ijMxOw5nFax6xG3FgL9R2bCuY1EKX+gyLv6Ao+b1kk5Uj11400QTuW3a
 buLvlKh6wnc+B5q3dMbk3lcecDBWcQhReAo8c0rDSd1ek7epXJOKe+Llcm3K06NUpjP9
 RZfCcdeOgdAqSUMid9OoevopiL4iyiIaU+3FU6nlRFjH1yUHHfiGZ8xGKLsov6s9StYw
 c7VBcEorJfw6vqZzim0DNxfwgOIwGFmHDiITne+qtO5cOfFamU56DQChG4vhwgj8UrYx
 EUrfbUxDhbrtUrTXJSNimTQ6/sphXgTwSZUurFE2y4U7nTDhKUxnZYR1BXahoZSjRVFP
 a01A==
X-Gm-Message-State: APjAAAUOK35DPvCe4w42VuWsWT6sXo1L5qT59Kt6Q9jHdXBrNonIqcF+
 jiowZoHbE4PPhNpw325mhk13iEGCpEg=
X-Google-Smtp-Source: APXvYqzjvR2ItnL7bBxTT1tfG6CN4pgDLv1y0/MiV10l9FWIy7QUTqs14NvQiKFrOv5HqoX8kK0bqg==
X-Received: by 2002:a63:201b:: with SMTP id g27mr866907pgg.56.1574103130166;
 Mon, 18 Nov 2019 10:52:10 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r10sm19878910pgn.68.2019.11.18.10.52.09
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 10:52:09 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 1/2] coresight: funnel: Fix missing spin_lock_init()
Date: Mon, 18 Nov 2019 11:52:06 -0700
Message-Id: <20191118185207.30441-2-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191118185207.30441-1-mathieu.poirier@linaro.org>
References: <20191118185207.30441-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_105211_013076_9ECDB533 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Wei Yongjun <weiyongjun1@huawei.com>

The driver allocates the spinlock but not initialize it.
Use spin_lock_init() on it to initialize it correctly.

This is detected by Coccinelle semantic patch.

Signed-off-by: Wei Yongjun <weiyongjun1@huawei.com>
Tested-by: Yabin Cui <yabinc@google.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index b605889b507a..900690a9f7f0 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -253,6 +253,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	}
 	dev->platform_data = pdata;
 
+	spin_lock_init(&drvdata->spinlock);
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_MERG;
 	desc.ops = &funnel_cs_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
