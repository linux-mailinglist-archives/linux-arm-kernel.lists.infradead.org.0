Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71EE1AEF44
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 18:10:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dtg7JHU3Xb/l5we36pyZWoOvc0+yoiaAFW+eaiVuxBU=; b=ZimvuVskAhWPyi
	OFE7V1MeFD0l0n+dyul179y0uWbJ253gYqV5x695XWLsWINuiJ/Qs2hwRfzvf7tSyhtqZtYVXvH8Y
	tT+AprYQlbDn/4dhDgMP3aFvc0NsIaZbGoxuqYnryQku8+O3cClNtQmJZ63TtGUY5tg81BCVLBklO
	XwAnPqJN5bwB8r0JB9FNfSrqJL3F3CjQtLCE7ID6M5Ry7SfWjYodvSRmYNq8auvS+V/sVqUm8bWbH
	CEhMeR0tX6wLkDjQO8jo0yhA8T0XcFkXJIKnmrQ3ZWoFvaxjTLkLv+hmEUsK7MJyL8fGWiN54u0yT
	57vD1GB9b2XC8P3BjiBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7iip-0006hJ-EE; Tue, 10 Sep 2019 16:10:27 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7ihZ-0004Mk-W7
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 16:09:12 +0000
Received: by mail-pf1-x444.google.com with SMTP id q5so11774795pfg.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 09:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
 b=mdVQsy1cW0AfygbqRfmRAt0xnJVqMTwwmQzqbSnqPGSYkZ06kclM5ECyrWQBKM25dT
 XL8xTcMiEkNA0dzblEd5R9eboXRJ4QoJnyMa6iPUIWJ03wldonWCEuP7hRY3Hr/JSrhO
 EJ+7hQx8IJ/x/dHNQIuUT96b7SjMfakjzK7co=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=lsF1y/LAf5L+2wQLGdeHEaRtoQrXQNuhBq52QCwbapo=;
 b=aRswQf1emUjciIgZictGNP1Cv+w4tP8Ch7OkUfdfxY9SwPIiIu+WZDwVvQFZ21VvKd
 /SBep5BXx8XiR4gfzZkPFpInBU392WzzI7X0ydfGu+dB6oE7iwNB7yyKxRpntgKOazbL
 QgLB28nJmA3V189TBxyUaxD/SMI5/8uaQNb6MvLynhJXO2IYcJlC7CzbDolrnIocJw4p
 qRI7UAtOhK/EU2i9Xzi7v0cOa8sGCTb6506dfog3mpZha1FKKEZF1Bzb7cCHi1kM+9Nx
 MPhbEw07fmJma+/QTkvL9VrdhkeXV/eODbPfgd2110TRhb+SBf7ZgUZ1gvyEccvYp3Tv
 5mLQ==
X-Gm-Message-State: APjAAAUxWBl7XMUfn12dDGJoNBuR9pnQvZgCh7FuRyDPfQesgXqhixBR
 tFc091LphEze4Y3KiY9/wtbhcg==
X-Google-Smtp-Source: APXvYqwMeJoUoF1ubTQIVEULDLnsWvGfVPpOgjlnCF8F46XKd3UOlxCsPsfc2H79TqI9334Revht/w==
X-Received: by 2002:a17:90a:a002:: with SMTP id q2mr257538pjp.69.1568131749136; 
 Tue, 10 Sep 2019 09:09:09 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id em21sm106088pjb.31.2019.09.10.09.09.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Sep 2019 09:09:08 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v3 5/5] soc: qcom: cmd-db: Map with read-only mappings
Date: Tue, 10 Sep 2019 09:09:03 -0700
Message-Id: <20190910160903.65694-6-swboyd@chromium.org>
X-Mailer: git-send-email 2.23.0.162.g0b9fbb3734-goog
In-Reply-To: <20190910160903.65694-1-swboyd@chromium.org>
References: <20190910160903.65694-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_090910_044122_6511D6AA 
X-CRM114-Status: GOOD (  14.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
