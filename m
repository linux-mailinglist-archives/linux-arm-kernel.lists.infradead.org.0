Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B62B4DD54
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 00:14:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=fmG1+7DlPifeCB6dY+OcT42IV0YdYeTiR2lVCr03k1A=; b=ePynD2P3tQZ++UN+eq/VT2Tbp/
	zWbcCmOaVmbfZ3hwIfAsxW2ibK4Y6bZcoiN7LkstPznhOTd4ZNsW93jvbd8b9U4kMBXBoC79y0Bkk
	wWqXQfLfkBnhY/nGh4Mf3ATZM3Y7KvyFZTrn3sGDHO21Im5OY3XaMBwUq0jhPfK5fXSKHX7OObOWx
	422O11UJOReh1GdQFr2gQvRo+hSnGSs5vtolRdgLXy7hUrx/hfFsoUrQpMCZHWKGFUWApDLXvjIn0
	B/GB0XJafrIOqKKyeuBl+1JnxeKLlNgMJhaAI8iihQ693ujbWsu1aWqGGEoPOahaoaFGEtyzSY7zU
	BkIhY5cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1he5K2-0002gs-DV; Thu, 20 Jun 2019 22:14:22 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1he5IY-0001PA-BV
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 22:12:51 +0000
Received: by mail-pg1-x541.google.com with SMTP id m4so1693301pgk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 15:12:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=8MyASeb2pq1GJMfZxC7yx2+Bj3AJzIxnxH61a4huhDc=;
 b=XrN3HU9izdd2Sp+S3438jh8C2VSDKv7g0b3Mqmwoir/dPFn7Miu1I0sUirGMWc5eMm
 dxhV3RJtWXAOrBiw/+ggiqgb0yx25zlSfSIiVUpC/PydlbuX8Q/QTSVO87qTGUBOttxk
 Gm9vcsZT5umuozCGcGuj0422PivlfEEbuY354gRosgVBQWqH+X3NjCKCb1WmGgNrBB0J
 WXrA3W8ann+Jq1QuZImPORxWUKD4tncngVYQKQ0bdgLKZ+FVnNddlQID++yF1VFvvF0h
 J+H1vcOcCO6uNr6qEl8PDzWqxbzMJs3FVOvf7UiKGte5ztcQyaHDBYOA1yE4iEOET7O3
 17nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=8MyASeb2pq1GJMfZxC7yx2+Bj3AJzIxnxH61a4huhDc=;
 b=uZqd3P6TknUJR8Wxrfw+5gXpm70nip5nN+35uTvKh4K6nAXLx7EuL5AOEt5/zEGu2Z
 z28+rJsJ2U2JpjH9pFbn5GqMhCb5U53eyslgL1oAUEI0FKOzDDoe+fcg/IG/oN6y44Ty
 bI3WBx6l2L1laH1jCZE123jl1a6EZ+yT1LlySEXEUR+z6jY7FRxbEwCl7OcoI9eWyR+n
 hC7ebqC1kQdNp//KDCBcU0icue9oEpI+RMaUEU4/5XZkcPcxX6GWO9rAlh2pfs4kEUBu
 vk6700CaiHkHaQsdlF2wnjRdhaMpGJEZWhQwMsUntjzVj6ISzUme9XtF2fjxokvoqBDz
 rcPg==
X-Gm-Message-State: APjAAAXMALcwUt+qcjEN/CPXmCcP5Qno2Ui4DvQyqGzeNP3pYrhW/FsO
 7EI0PuAdt7tr/JktPWJ5dzQ0PA==
X-Google-Smtp-Source: APXvYqxxSDzac9zXrBTJvjPo1TwxzRO4032QR4BB6l/8YhaZ65OcHnnp+rf15FhLYkj3elOV3/55HA==
X-Received: by 2002:aa7:8106:: with SMTP id b6mr60711746pfi.5.1561068764781;
 Thu, 20 Jun 2019 15:12:44 -0700 (PDT)
Received: from xps15.cg.shawcable.net (S0106002369de4dac.cg.shawcable.net.
 [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id x25sm450636pfm.48.2019.06.20.15.12.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 20 Jun 2019 15:12:42 -0700 (PDT)
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: gregkh@linuxfoundation.org
Subject: [PATCH 5/5] coresight: Potential uninitialized variable in probe()
Date: Thu, 20 Jun 2019 16:12:37 -0600
Message-Id: <20190620221237.3536-6-mathieu.poirier@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190620221237.3536-1-mathieu.poirier@linaro.org>
References: <20190620221237.3536-1-mathieu.poirier@linaro.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_151250_436522_53156DA5 
X-CRM114-Status: GOOD (  12.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Dan Carpenter <dan.carpenter@oracle.com>

The "drvdata->atclk" clock is optional, but if it gets set to an error
pointer then we're accidentally return an uninitialized variable instead
of success.

Fixes: 78e6427b4e7b ("coresight: funnel: Support static funnel")
Signed-off-by: Dan Carpenter <dan.carpenter@oracle.com>
Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
---
 drivers/hwtracing/coresight/coresight-funnel.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/hwtracing/coresight/coresight-funnel.c b/drivers/hwtracing/coresight/coresight-funnel.c
index 16b0c0e1e43a..ad6e16c96263 100644
--- a/drivers/hwtracing/coresight/coresight-funnel.c
+++ b/drivers/hwtracing/coresight/coresight-funnel.c
@@ -241,6 +241,7 @@ static int funnel_probe(struct device *dev, struct resource *res)
 	}
 
 	pm_runtime_put(dev);
+	ret = 0;
 
 out_disable_clk:
 	if (ret && !IS_ERR_OR_NULL(drvdata->atclk))
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
