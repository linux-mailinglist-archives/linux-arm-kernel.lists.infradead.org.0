Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B1FF9D0EB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 15:45:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j+vAaGZZb7eA6JviPOGHOdQ3GXUwyBqrJOh7LHKuiKY=; b=t6vtcrGwzgyjL7vanNZt5H37S9
	h9EYlOObw1+JuE2zarnBqabWi7HvmaXwffmIA0QzFpwMqk3ecQ7Qa5ihaSVRG9Zp7I5/8f/ycyPbv
	+W1cSEKx4l798k4GMziM4kLRekRx4EWeaECXAum3Pz7dDog5VsAy+9mBFnfADgdJ2X6yDI9GOIA37
	aeuZT7YJZM6VYBDH3QYSeeK/QdWi/SnnWmLIeW7iEwAtYadHnw7t3NcSrjVIg8tIJnM/Uy0MhHoe2
	YKSwG7QVUqin02NRv6N2h27aKBF7w3DoXEZwcO91vtfD+ui8RNGAU3Whvh5yyamIuooWlmVsjN8z9
	NByKSuAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2FJ9-0007WF-V6; Mon, 26 Aug 2019 13:45:20 +0000
Received: from inva021.nxp.com ([92.121.34.21])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2FIW-0007Tl-Rm
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 13:44:42 +0000
Received: from inva021.nxp.com (localhost [127.0.0.1])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id CE81D200241;
 Mon, 26 Aug 2019 15:44:37 +0200 (CEST)
Received: from inva024.eu-rdc02.nxp.com (inva024.eu-rdc02.nxp.com
 [134.27.226.22])
 by inva021.eu-rdc02.nxp.com (Postfix) with ESMTP id BFAFE20000C;
 Mon, 26 Aug 2019 15:44:37 +0200 (CEST)
Received: from fsr-ub1864-112.ea.freescale.net
 (fsr-ub1864-112.ea.freescale.net [10.171.82.98])
 by inva024.eu-rdc02.nxp.com (Postfix) with ESMTP id 3597420605;
 Mon, 26 Aug 2019 15:44:37 +0200 (CEST)
From: Leonard Crestez <leonard.crestez@nxp.com>
To: Chanwoo Choi <cw00.choi@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>
Subject: [PATCH v4 2/6] PM / devfreq: Add to devfreq_list immediately after
 registration
Date: Mon, 26 Aug 2019 16:44:29 +0300
Message-Id: <29f4c0442344f0d1f333c5fbbcb9e60a4ffe3200.1566826075.git.leonard.crestez@nxp.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1566826075.git.leonard.crestez@nxp.com>
References: <cover.1566826075.git.leonard.crestez@nxp.com>
In-Reply-To: <cover.1566826075.git.leonard.crestez@nxp.com>
References: <cover.1566826075.git.leonard.crestez@nxp.com>
X-Virus-Scanned: ClamAV using ClamSMTP
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_064441_041454_EC9F7921 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [92.121.34.21 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: =?UTF-8?q?Artur=20=C5=9Awigo=C5=84?= <a.swigon@partner.samsung.com>,
 Abel Vesa <abel.vesa@nxp.com>, Saravana Kannan <saravanak@google.com>,
 linux-pm@vger.kernel.org, Viresh Kumar <viresh.kumar@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 Alexandre Bailon <abailon@baylibre.com>,
 Georgi Djakov <georgi.djakov@linaro.org>, linux-arm-kernel@lists.infradead.org,
 Jacky Bai <ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

After the devfreq->dev is registered all error cleanup paths call
devfreq_dev_release which fails if the devfreq instance is not in the
global devfreq_list.

Fix by adding to the list immediately after registration.

Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>
---
 drivers/devfreq/devfreq.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

Alternatively we could make devfreq_dev_release accept devfreq instance
not in the list.

diff --git a/drivers/devfreq/devfreq.c b/drivers/devfreq/devfreq.c
index 15270293bea9..9b3bf64dc37d 100644
--- a/drivers/devfreq/devfreq.c
+++ b/drivers/devfreq/devfreq.c
@@ -677,10 +677,15 @@ struct devfreq *devfreq_add_device(struct device *dev,
 	if (err) {
 		put_device(&devfreq->dev);
 		goto err_out;
 	}
 
+	/* Add to global list of devfreq instances */
+	mutex_lock(&devfreq_list_lock);
+	list_add(&devfreq->node, &devfreq_list);
+	mutex_unlock(&devfreq_list_lock);
+
 	devfreq->trans_table = devm_kzalloc(&devfreq->dev,
 			array3_size(sizeof(unsigned int),
 				    devfreq->profile->max_state,
 				    devfreq->profile->max_state),
 			GFP_KERNEL);
@@ -719,12 +724,10 @@ struct devfreq *devfreq_add_device(struct device *dev,
 		dev_err(dev, "%s: Unable to start governor for the device\n",
 			__func__);
 		goto err_init;
 	}
 
-	list_add(&devfreq->node, &devfreq_list);
-
 	mutex_unlock(&devfreq_list_lock);
 
 	return devfreq;
 
 err_init:
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
