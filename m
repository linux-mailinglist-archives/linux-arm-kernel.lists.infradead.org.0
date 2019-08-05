Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8AE82051
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  5 Aug 2019 17:33:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sHe4fUmoIkNu7iSaeKaknKyAmMRlemv43ek9BFGOjkk=; b=c6EdRBTeuoE2aX
	iVSEf1XIBpQctXS3jQ4b2J4NcL63Vi5S/kFOGOGNOE7rERsqw60PfVjq+f6onG8gMK6JN3ji/u5x7
	GL3ESxMLPTaoGitntjrhv/bi5g1od+vJdwvKpeFrEbhlQ8isG1XbFkU1XJGh0YWxgESDoRhCbpamb
	UR8CQu0qcFttbjjBZjya6dfglShW9IPmlGkb6IEcE4BnTACBB1QEz1qwN++L6ZIUClHO5P8QFLgp8
	21m04dbtKOd0KFkILof2OFzVtDVe5RJl+ETKEbvUklIkhP010uKD9RsmpWkLKI4/5D5wkKv8z0tuM
	+Ku91vrLRS+APd9Yhi1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1huezc-0001Cy-Jj; Mon, 05 Aug 2019 15:33:48 +0000
Received: from mail-lj1-x241.google.com ([2a00:1450:4864:20::241])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huezR-00011Y-NJ
 for linux-arm-kernel@lists.infradead.org; Mon, 05 Aug 2019 15:33:39 +0000
Received: by mail-lj1-x241.google.com with SMTP id v18so79592990ljh.6
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 05 Aug 2019 08:33:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=MdJeprxlisYG8Xt385Sz+mmujOJvqAOkUH6DNb4w/D8=;
 b=B2Lhpbtr1RQ+61200Fmk9bx9MyVKDvEMyZ7/Sucu6j8pxDoI6avpjSje0laQDjRMYV
 VF1coVJgpdXAY89hZ2klNoOHN5jbuSkKkEmziApzwKR9b0+4dGSYq+0pML4qwwRoUkeZ
 cQAC6UiilaOZXiDSN8vOKYohnFIEwxtIr8QoKrzI/QGeD0IDaiDyhjah1Bch2ZDfLW/B
 tzhY0eJNcGYZFAD2KDbPILqRB7p2tkqIWuIhpwgCn16/EarR3t/SwJoTY01wVUePos+h
 1gX+EYq+wSM41n4sorJgO18a39v/T/lkZscOxu1KTm6dHMly2jmTSyg21btav+M/Gj+I
 TfIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=MdJeprxlisYG8Xt385Sz+mmujOJvqAOkUH6DNb4w/D8=;
 b=Ei1BLZFKjv0oW2fuXmOoDY/zvsRZIaSBFP8jDtL85oYnugDAe+XMwAqPSxHIaT+zNG
 Os75RAV7EtRQs5VYlP697z/LqFkU+XwEH9MN/pfhK4dVYpw2sTDPV0+5a6VFMAWJ7eaQ
 mX07YwQKi4/LF0fypz5Hk+DBK7+hU1RAVroM673LHDgtX07mUdSWRYCaZWJBhBzIxtk5
 RB5TKfFWm/VXWToYjEgZpRixWFYgVp1zpMGEftmet74iGylxBIiIc1S5YxGAIWFPlZUg
 n3kJAjpCouuNNDvUzZMM63Fuy/7XOe7W73gHvhs+VsF+DoSqkFXL25lfWwSITKVMDZPG
 Vr4w==
X-Gm-Message-State: APjAAAWsxljj7QBWy5uTiOkmYy357Iy7Rbn5m1RnBj30Kq5sr2ufhN3K
 sJXOZQe54Lq22mOtV+VhlhDZXA==
X-Google-Smtp-Source: APXvYqztjooZSce4zqpF9/gHXvgtQ0+44a+NSVLzEfRyM2p2N1elaBB8l4bVhR8hOcA4WY6jJHvlGw==
X-Received: by 2002:a2e:534a:: with SMTP id t10mr39316085ljd.109.1565019215224; 
 Mon, 05 Aug 2019 08:33:35 -0700 (PDT)
Received: from localhost.localdomain ([212.45.67.2])
 by smtp.googlemail.com with ESMTPSA id a15sm14969312lfl.44.2019.08.05.08.33.33
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 05 Aug 2019 08:33:34 -0700 (PDT)
From: Georgi Djakov <georgi.djakov@linaro.org>
To: linux-pm@vger.kernel.org, evgreen@chromium.org, daidavid1@codeaurora.org
Subject: [PATCH] interconnect: Add pre_aggregate() callback
Date: Mon,  5 Aug 2019 18:33:32 +0300
Message-Id: <20190805153332.10047-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <752aca6f-4f69-301d-81ef-ff29bc25b614@linaro.org>
References: <752aca6f-4f69-301d-81ef-ff29bc25b614@linaro.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190805_083337_795580_A55902AC 
X-CRM114-Status: GOOD (  13.19  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:241 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: seansw@qti.qualcomm.com, linux-arm-msm@vger.kernel.org,
 linux-kernel@vger.kernel.org, amit.kucheria@linaro.org, dianders@chromium.org,
 bjorn.andersson@linaro.org, Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel@lists.infradead.org
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
index 4ee19fd41568..fd42bd19302d 100644
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
+	int (*pre_aggregate)(struct icc_node *node);
 	struct icc_node* (*xlate)(struct of_phandle_args *spec, void *data);
 	struct device		*dev;
 	int			users;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
