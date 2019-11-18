Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B47F0100BDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 Nov 2019 19:52:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Dv/F4FZvsOMRjrlAYJTUiPaTmkkggzlFY2SYklH6h0A=; b=bV8jHYrZ89PqEDlOFovAVMpnAN
	BXLCbgCvjiJ+oyDLrUf6Lq3F33AJsp8nbIqytvsLWQ9XsdK0jr/3h0wO5HdOj/VUtKM9NHUcCLDYQ
	oTg1gVc8dsU9qM/KxR51/FMDD7TvBE3JBC2xp8xMiOPHvEBfMXPSxHUCmO6aFhhIXrXjpu7OXYqOx
	SRSmfxvAJNEwOA5dMtLwG1hBC9ShPuJaOEYT+Drxa/8RCXHM/fN/V+POjL9srHdfp536dLceD4QVy
	kiGX4ra0muc/llNXNSUjzCgk7rPRXaBfOu19fvvJ2dLPjdhyc/rCIl540W5ZJj5avGyCtftU4SglG
	e1PGTnUA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iWm8q-0001wo-Og; Mon, 18 Nov 2019 18:52:52 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iWm8C-0001Ur-Ew
 for linux-arm-kernel@lists.infradead.org; Mon, 18 Nov 2019 18:52:13 +0000
Received: by mail-pj1-x1041.google.com with SMTP id f3so1747707pjg.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 Nov 2019 10:52:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=uSTPqpXCkdIz0Ys9ZLE2MJ6RpXCWxgbm8ltsUhdFuaA=;
 b=X2Qv3IxFUWevF27cjY8aXXrQI2siYVe73dYgkiMeUtD/JEU7etfRh0B7TwpGyJ4dG6
 jy0fqJ/P9lbHqOib0wPfWSFcfjZVDpP7MWNTjayCixoBsM55AtghsA8jB2GsDcvQOZi0
 Us6IssUiDvQAGIkruSf/mIDKvpH+JaKyL13YjPV2CI6+Sb+IFf22B9AbrdOhh+f2VfQU
 x5Ky+GqrN4UPOKZu7xBcsGsGNtsH0j1aHNS9G6wpjVzMc9usP1PIdfmNuFn8nYUz6pDL
 m19ojjf5y5iB2iDEXA61IiX8bUDRh0lvu1letC5Lej5L0ZaDvofGQDca93txuvzzp+1K
 zp6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=uSTPqpXCkdIz0Ys9ZLE2MJ6RpXCWxgbm8ltsUhdFuaA=;
 b=s2dppYE4FhoRwUCHpap9CvaZsZkHsXUIQ8xWiLkkKwGQCGvxn5Gb3p4107hs3k9def
 rAw+O5pijY+CmZ2V4MeSNa42iSLnt+q9BySFiirY9aL5CUC6aeyNWxtd9k1Txuk82Y12
 g00d5f9JbgwALcDutUwdrMmQjvCgw+qEkms6uzC2fBTPRywyhjYK2PaxEgemg/eSJ7bB
 nGm3ntiq/0+SZK4jkABzZZIZ11uHU9niIut04qvqT/hImWRxNqJ/wshgIaw5beKiWKQU
 7nI9bCcWyjoH7HhB1o/ahsRYNmGOmhvXdQIVuZzXe6FKqpnmJex67OSbjbO2G1urHDF7
 cMTg==
X-Gm-Message-State: APjAAAXEu/f+RkIe7Wmc/PwLKn/bdcusKrpIeBm9ql8nnfbWhVI8L181
 9yBNvbhHK8PKPR/KnkzTx0zuyA==
X-Google-Smtp-Source: APXvYqzzItYreBeWBbFqrWCtFJCzpea9kEtD7ao2jmO1F22pYdxUyW2dEdPzqkra62qpmsk0ZQLzEg==
X-Received: by 2002:a17:902:9a04:: with SMTP id
 v4mr4924119plp.192.1574103131601; 
 Mon, 18 Nov 2019 10:52:11 -0800 (PST)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id r10sm19878910pgn.68.2019.11.18.10.52.10
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 18 Nov 2019 10:52:10 -0800 (PST)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 2/2] coresight: replicator: Fix missing spin_lock_init()
Date: Mon, 18 Nov 2019 11:52:07 -0700
Message-Id: <20191118185207.30441-3-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20191118185207.30441-1-mathieu.poirier@linaro.org>
References: <20191118185207.30441-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191118_105212_498820_41C94EF0 
X-CRM114-Status: GOOD (  11.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
 drivers/hwtracing/coresight/coresight-replicator.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-replicator.c b/drivers/hwtracing/coresight/coresight-replicator.c
index 43304196a1a6..e7dc1c31d20d 100644
--- a/drivers/hwtracing/coresight/coresight-replicator.c
+++ b/drivers/hwtracing/coresight/coresight-replicator.c
@@ -248,6 +248,7 @@ static int replicator_probe(struct device *dev, struct resource *res)
 	}
 	dev->platform_data = pdata;
 
+	spin_lock_init(&drvdata->spinlock);
 	desc.type = CORESIGHT_DEV_TYPE_LINK;
 	desc.subtype.link_subtype = CORESIGHT_DEV_SUBTYPE_LINK_SPLIT;
 	desc.ops = &replicator_cs_ops;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
