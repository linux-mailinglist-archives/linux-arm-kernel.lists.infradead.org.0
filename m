Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 261DE8798F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  9 Aug 2019 14:14:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/L6B9YmgWm6dJqWOjVXv393bL5JlY3zCAf6vtgJLH3Q=; b=DIncuaBLVSzOLg
	cmmk4mtMHZIrcMcGxo36IHVC0fWyzqEUrO6WxWGZfZxFEmfROF2Iz8Xy1eLw6BfB3WATvfFvovInv
	gF7Fj0kP+9f23oylWziuymWAPbye+cA8sWM6t+3ZNOHcx908eaKOcUbCgeGRrqYqdOVkYPATIElZZ
	QZEZh0XxnNdEFwhX9SrbhohJ8Bk05kAnoT1uf2kyehiLRTCvhxhdHGK4Rea1jWEKPhBOZo/zhc8VB
	fmm3FKwegDqXoDZaOvVWOKdT4QGi+vinhUud9pCIPwPzKm+gMUlt7OU8gUTD2NTwhy5eLrNfnGN5F
	wilKjh4LUiquEmbZHoxw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hw3mf-0000kW-LW; Fri, 09 Aug 2019 12:14:13 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hw3m0-0000J3-QL
 for linux-arm-kernel@lists.infradead.org; Fri, 09 Aug 2019 12:13:34 +0000
Received: by mail-lj1-x243.google.com with SMTP id t3so3344573ljj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 09 Aug 2019 05:13:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9/m5+Lvxb2TAhFuurt0ORxYfrBK3bQPTy/lNoBXYuYY=;
 b=qp403boUGXWedc1L9So92iR1TKVoaZ+Li/QQNx+ELKQjcc7ccXWhNnr1RE881sB3PW
 c/ETqcZin8+fdJmg0gruZsRWFZqhTTfgUx/b6tKTTWUluB6i28C2tZdNIWNu+m1IwYD/
 W+4iVYtCZBkj8JXjIQZIyNZpB+ZK3xqHoABOjN2BWe5VlLdqFWLyAv0OhH/XIqtUjOFo
 HMYPqLdCTvyhxT2p5S2ZOr/tqttaWIFcVq+KD6VZb6jKjNXFk/xN2OuxjgqjuSrGv7fX
 3Bqj3WF3I93zF606ljMXz7Z3rfN6GWY6VvHVi+v1I37pu4msuMWZTIExnq4mzSZ4mfDx
 m7rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9/m5+Lvxb2TAhFuurt0ORxYfrBK3bQPTy/lNoBXYuYY=;
 b=Kz24h9Nb9kOp5LdwF72tkyaAL6Umu+Llxl/u8XR41fGygS72ipZm2AwGvluij9zMT9
 dQK/rrLOKxouchEfPtUsB6lSuGnIxVUZScZpl7UxFteKt6umkYYDH8SlDBvWmnorD1st
 TxFy8aGfIXH6XVV2pbZlKY/IX/iOytFPaK/RbqQegFbgTxFHpkjI9f0b4q7yqH7xH2Cs
 Nl60jSyvYWg5a27gsraZwxvFSO4mPh9md8wUh0ZsQKLUHiOfsxpQ3neMxFN1z8hcyagL
 1oU0zBx4twS6Gl9tgBvRvLm5WfQEhtnfBqRwfKI9rrmIicotg3/tFqPwQvkKxFC3z+2C
 3Axw==
X-Gm-Message-State: APjAAAXNe0vYFvBZxK0mawYY7HP3Z//Bo4A5e/d9heNsQY7xIkt8KjZB
 mIvvkPQUGTiRm9PUtsC2Ocd/ZQ==
X-Google-Smtp-Source: APXvYqyZ9z7aZuPewm0m3QURUCbtSxS7l9qpfomeaDOrdWY3ycCmxVeHjtts6q5bl73+WCfAOqGTQQ==
X-Received: by 2002:a2e:55db:: with SMTP id g88mr2449978lje.27.1565352811117; 
 Fri, 09 Aug 2019 05:13:31 -0700 (PDT)
Received: from localhost.localdomain ([37.157.136.206])
 by smtp.googlemail.com with ESMTPSA id f23sm1083425lfc.25.2019.08.09.05.13.29
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 09 Aug 2019 05:13:30 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org,
	evgreen@chromium.org
Subject: [PATCH v3 2/3] interconnect: Add pre_aggregate() callback
Date: Fri,  9 Aug 2019 15:13:24 +0300
Message-Id: <20190809121325.8138-3-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190809121325.8138-1-georgi.djakov@linaro.org>
References: <20190809121325.8138-1-georgi.djakov@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190809_051332_849725_02F97F5D 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: seansw@qti.qualcomm.com, linux-kernel@vger.kernel.org,
 daidavid1@codeaurora.org, dianders@chromium.org, amit.kucheria@linaro.org,
 bjorn.andersson@linaro.org, linux-arm-msm@vger.kernel.org,
 georgi.djakov@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Introduce an optional callback in interconnect provider drivers. It can be
used for implementing actions, that need to be executed before the actual
aggregation of the bandwidth requests has started.

The benefit of this for now is that it will significantly simplify the code
in provider drivers.

Suggested-by: Evan Green <evgreen@chromium.org>
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 drivers/interconnect/core.c           | 3 +++
 include/linux/interconnect-provider.h | 3 +++
 2 files changed, 6 insertions(+)

diff --git a/drivers/interconnect/core.c b/drivers/interconnect/core.c
index 251354bb7fdc..7b971228df38 100644
--- a/drivers/interconnect/core.c
+++ b/drivers/interconnect/core.c
@@ -205,6 +205,9 @@ static int aggregate_requests(struct icc_node *node)
 	node->avg_bw = 0;
 	node->peak_bw = 0;
 
+	if (p->pre_aggregate)
+		p->pre_aggregate(node);
+
 	hlist_for_each_entry(r, &node->req_list, req_node)
 		p->aggregate(node, r->tag, r->avg_bw, r->peak_bw,
 			     &node->avg_bw, &node->peak_bw);
diff --git a/include/linux/interconnect-provider.h b/include/linux/interconnect-provider.h
index 4ee19fd41568..b16f9effa555 100644
--- a/include/linux/interconnect-provider.h
+++ b/include/linux/interconnect-provider.h
@@ -36,6 +36,8 @@ struct icc_node *of_icc_xlate_onecell(struct of_phandle_args *spec,
  * @nodes: internal list of the interconnect provider nodes
  * @set: pointer to device specific set operation function
  * @aggregate: pointer to device specific aggregate operation function
+ * @pre_aggregate: pointer to device specific function that is called
+ *		   before the aggregation begins (optional)
  * @xlate: provider-specific callback for mapping nodes from phandle arguments
  * @dev: the device this interconnect provider belongs to
  * @users: count of active users
@@ -47,6 +49,7 @@ struct icc_provider {
 	int (*set)(struct icc_node *src, struct icc_node *dst);
 	int (*aggregate)(struct icc_node *node, u32 tag, u32 avg_bw,
 			 u32 peak_bw, u32 *agg_avg, u32 *agg_peak);
+	void (*pre_aggregate)(struct icc_node *node);
 	struct icc_node* (*xlate)(struct of_phandle_args *spec, void *data);
 	struct device		*dev;
 	int			users;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
