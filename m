Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A516246B2A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 22:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XLXXvj7n3hXQt+SIwTC2uh6ev9+CHz7+tlatL4dMT7I=; b=NR5IFme7S3DYiQ
	kpOv4TAi+sAm36C42UYxz3L+jniJ+Zu8fb5v7jUikI746w6f34ZMd+wtcbjt/uI3Giq+lxw2gTqy3
	gbY23vLJEOfVwg2nJN+q0TQWoJEWwOxR2t48MSFVItqmYzhkKn9oIHODeNxISfNoRd5OlVoX9g4YW
	BkG3zUgmAU7F5bgiE6VVmlsQR+3fxJs9/ZoRyGVSrmZMeweL4PE8H7cwPNqRTQYlUHX5AENqZ+Tux
	vLmtxBTrj+rK18AcrUmNfjpXqWmGZXtzVAIgH1FWkRWXH3YCwDtr520gHF6mhoxNEMfhTd5fC9UPC
	deDUDDky+XIFOtoWeJWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbt23-0001iB-QE; Fri, 14 Jun 2019 20:42:43 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbsws-0004Kc-6M
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 20:37:34 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so1454539pla.7
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=Xc2tEV/bPIimEWuq/mx6XQl4uW5E/9HmwBDqWANEBLQ=;
 b=f+xML+VchGG9yvxavXjNsjNVbK3VAFrVVcq6kWal4BvttG0orUQbFLW2olqgj7BMzy
 +G7z0QsC9mySDJXmWmhC1V4p5CHk3tZWZJj8CjbNwgDyIoLBSveQC5b6e6/iYESAFrgo
 B3JUcipxuBLgYl0hkupxbWFA7XeDaeSE05pCI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=Xc2tEV/bPIimEWuq/mx6XQl4uW5E/9HmwBDqWANEBLQ=;
 b=rX2DVSu1hUKHMSUpfaBo4dPxJLIr1tGGj2oOLkdiX5H+E0N9S7ElDHMzA21giD5ywM
 bWknMSmKNcI5MZaIqLSvQgOvelRqFcTMCxA+tAVtjB3sTh5zjod7a06h+gNEJUNK5W2S
 z6XF2n21wO5q+wpAAyA25/4jku83hf1Xet3x8WtWoI+MFkG+d3OaCnjLyJZktaHfJz0n
 AAaj18XJ1XURwTlgY7EBTN7u0qYeSxzDIF+6qXMdr11d29XR81ZvqBOz0dkXsa6TYrdL
 J7cOHbTTCYJagXj9w0iAJItdN7fHowxiTl63ThY/x4RULDY4DpXS8tIZGHt+gdg+XoGX
 FFmA==
X-Gm-Message-State: APjAAAUvpXYl0uLFy4rJ5o65ki3xgqQ/G+ga6cGd3CpYsgtViVV9fITK
 4AQU3gqi9mdpY70JFUS8XlyGAQ==
X-Google-Smtp-Source: APXvYqzGtL2Jtymma+e1JFXRy/AlOyyMqpctXtRvu9IkvOp5322GgCYlv2vgbvWRfDVD3ZikBHfDrg==
X-Received: by 2002:a17:902:2ae6:: with SMTP id
 j93mr97791257plb.130.1560544641087; 
 Fri, 14 Jun 2019 13:37:21 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id x5sm3673187pjp.21.2019.06.14.13.37.20
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 14 Jun 2019 13:37:20 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: Dan Williams <dan.j.williams@intel.com>
Subject: [PATCH v2 2/5] soc: qcom: cmd-db: Migrate to
 devm_memremap_reserved_mem()
Date: Fri, 14 Jun 2019 13:37:14 -0700
Message-Id: <20190614203717.75479-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.22.0.410.gd8fdbe21b5-goog
In-Reply-To: <20190614203717.75479-1-swboyd@chromium.org>
References: <20190614203717.75479-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_133722_246719_32F95633 
X-CRM114-Status: GOOD (  12.92  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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

This gets rid of some duplicate code, and also makes the reserved memory
region show up as 'cmd-db' memory in /proc/iomem.

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
 drivers/soc/qcom/cmd-db.c | 13 +++----------
 1 file changed, 3 insertions(+), 10 deletions(-)

diff --git a/drivers/soc/qcom/cmd-db.c b/drivers/soc/qcom/cmd-db.c
index f6c3d17b05c7..10a34d26b753 100644
--- a/drivers/soc/qcom/cmd-db.c
+++ b/drivers/soc/qcom/cmd-db.c
@@ -238,18 +238,11 @@ EXPORT_SYMBOL(cmd_db_read_slave_id);
 
 static int cmd_db_dev_probe(struct platform_device *pdev)
 {
-	struct reserved_mem *rmem;
 	int ret = 0;
 
-	rmem = of_reserved_mem_lookup(pdev->dev.of_node);
-	if (!rmem) {
-		dev_err(&pdev->dev, "failed to acquire memory region\n");
-		return -EINVAL;
-	}
-
-	cmd_db_header = memremap(rmem->base, rmem->size, MEMREMAP_WB);
-	if (!cmd_db_header) {
-		ret = -ENOMEM;
+	cmd_db_header = devm_memremap_reserved_mem(&pdev->dev, MEMREMAP_WB);
+	if (IS_ERR(cmd_db_header)) {
+		ret = PTR_ERR(cmd_db_header);
 		cmd_db_header = NULL;
 		return ret;
 	}
-- 
Sent by a computer through tubes


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
