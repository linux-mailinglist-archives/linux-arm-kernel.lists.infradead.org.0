Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DC7F46B2B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:43:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtg7JHU3Xb/l5we36pyZWoOvc0+yoiaAFW+eaiVuxBU=; b=AXZVtdXGoVSTeQ
	dt5JQ1FjDMeRrTN1jVxasXZcFkm9lr08mNndZVpr4SIeoX+06TGwOtFjSSdEzuTkeV2JCJOmewJtw
	zaJg21Q6dRUOfsJQ7yjnkHWCbtiREzv5JiT0MPrAjtQatMs0ZVMnM7SZYVkmAbLuart03hEr0doGV
	RZ9I/hh3OLwSuwoQk9nG+RVKIoSlyGRpdhQSGKO2llYpIXNjEIkCkgohKmu12NwuoU5bdbM0tpvT/
	sYSPC8u6+PTrcOXpHPmG/UJzOQBqCLuzZI5g8AyZJVQoGRT0XX95aMgqP4DnSMh6x6oN0C2LmCKPp
	BsublYH8+Ey9G+FPtg7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt2K-0001x8-Ix; Fri, 14 Jun 2019 20:43:00 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbswu-0004Mi-BD
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:34 +0000
Received: by mail-pg1-x543.google.com with SMTP id 83so2152586pgg.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
 b=OLPYBKcTI+78/S0FOVJMy9P3vw12j1xgEFVW/Zh4gP7hfjAUxnZ/FizK29hQocZGeB
 2VpJiAbbc9MRZmfY6iqA6wq4sqz/DCAzWfkPb3oBtXfVwHvMeiqwUEbDqYQklOTGGTb+
 Mt95Re9HEDvxMcRC3XaQjslmVZQNgfybwBtYQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
 b=d0zaVkq5Rg7fsm54VmwrRQc3g0TgmOm9dq4y83YA06c1fAPm503hJ1duBbV1EeNpU5
 MdLPUzij5CT0xSeOkLiodGjvjOYaxJC6GPnwhmY1pPWkM8E6+5IUIFLAtMRgkbwh7BX+
 YSAbWqvX+CJRzAYv+pNZPFDTiRDUPFEv/UlMEHwShkEF/xExTaf7CP6+yK9ANJ8zea6M
 nFcH0rpinBYrtv1TbvHXI46fyAHlUR4jXxcDNKj3xoRPA+fOkRuXc5LFdCX/t2pTDBrM
 /zjTGA50mj8Qla8kBtEk+QNppA9W2YWER3/qFGbXg1IlXeWG0vCtStsqTfqi4YX6d7ea
 NcJw==
X-Gm-Message-State: APjAAAWxeAec22Cp2Q8NtO1QEoA95YL2q+MUritGir4Zom3RSGu0E2Ko
 oP1aBjbcyOqqRiSEvHFL55XXWQ==
X-Google-Smtp-Source: APXvYqyh8elsGc5/c/L5iwGKta5WBR5tLdN1CqyHJTufMS/UgZnVCWVLvirzqoh1gd6Gf0IQIIbSKw==
X-Received: by 2002:a17:90a:d14a:: with SMTP id
 t10mr13015629pjw.85.1560544643851; 
 Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.22
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:23 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 5/5] soc: qcom: cmd-db: Map with read-only mappings
Date: Fri, 14 Jun 2019 13:37:17 -0700
Message-Id: <20190614203717.75479-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133724_422380_06C1DD9D 
X-CRM114-Status: GOOD (  14.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, linux-kernel@vger.kernel.org,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The command DB is read-only already to the kernel because everything is
const marked once we map it. Let's go one step further and try to map
the memory as read-only in the page tables. This should make it harder
for random code to corrupt the database and change the contents.

Cc: Evan Green <evgreen@chromium.org>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Bjorn Andersson <bjorn.andersson@linaro.org>
Cc: Andy Gross <agross@kernel.org>
Cc: Will Deacon <will.deacon@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Dan Williams <dan.j.williams@intel.com>
Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
Signed-off-by: Stephen Boyd <swboyd@chromium.org>
---
 drivers/soc/qcom/cmd-db.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
index 10a34d26b753..6365e8260282 100644
--- a/drivers/soc/qcom/cmd-db.c
+++ b/drivers/soc/qcom/cmd-db.c
@@ -240,7 +240,8 @@ static int cmd_db_dev_probe(struct platform_device *pdev)
 {
 	int ret = 0;
 
-	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
+	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev,
+						   MEMREMAP_RO | MEMREMAP_WB);
 	if (IS_ERR(cmd_db_header)) {
 		ret = PTR_ERR(cmd_db_header);
 		cmd_db_header = NULL;
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
