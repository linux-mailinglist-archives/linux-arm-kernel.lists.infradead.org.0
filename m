Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C78421BFD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 May 2019 18:48:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GLPa5tpyBSofvJ7WjOhtnE1Rz79FQekhOc5t5hEkPlk=; b=pDD01uXBIAYKic
	PPJA14GedgFVlF9SWckFUx+oibevCMWRJB2lFMH6imAKAeDvRNpL3NAhNDFxBc7B+y462HOYoS1Ak
	sTPtl9PqOKiZDA2Zao+VRxUNxF19uJ2i9maohifbMJRJ4dxOjdcDpO+9eCNeJlvI5buJKtJ27G8Qw
	yYAJ4ZHx6K61sFFNWobNDAPK+WCQ4sol/CzSE9yqa6hoWp5Bty6hPe4oJfKyl9WNqlq9a4D31CGNw
	DqnYUPZh1f9j3k/G3t7E7ffF5UiPhya8u8AsEmOSOTwd3QH7aR7XDZntUCh2299mhLtU7KuNEIB6a
	KQv88Itvslk9zl0KA9ZQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRg1t-0007sQ-AZ; Fri, 17 May 2019 16:48:21 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRg1R-0007SV-BL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 16:47:54 +0000
Received: by mail-pl1-x641.google.com with SMTP id a5so3577519pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 09:47:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ZrfU3jaOv3gonSUyJKcZeL36dqfb9Wzrb+12t37zMDc=;
 b=hCa6JuKSMM9Bs3WxT0qkjiSBEXmEf/LJdLX0/dKlb6nuQwSG6kwb+JGDS+mg5gfu9X
 Qrs4zMwjPISN3L2TwsmafobEXz1L5rOYHtS6cdmePanxz8zkBJIDmu0PpB2QMuj3sFCm
 CTPLfkxGffpChmq0cY2gI2ZmTf4OFrXugT+0A=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ZrfU3jaOv3gonSUyJKcZeL36dqfb9Wzrb+12t37zMDc=;
 b=c/uYdcAlXpcPluXrdGkTMqS5reViccSVA9Gj9wCoA9XmlFupO1xrOYhsEhz59GsZuM
 j1Nx7/7HtK6TE/v1aJ1aYV4tFuBalu7Y7jwAcBdkbOif0Vn6hMDqKafFUB9dcHl+w5Tn
 WaOfPMFBcIj0EjGTBgbO2aXVTF5S35B2HSXNoDd0dNWRa4S6KOHY2mbfqFYIdPwPuCnu
 f2tX3G08TSA4SyzvXWvJZOCq8bkz11oVHWX+l6VgE2lq+bNPvEXXSVrqibafGaX4IvHz
 SnJHHFEkWVqgj1QmUANrM65UE0NNL+NZjnsrt8zs/Bzd6xPLKACB3DuyQkN3VDiZsUHx
 z8Og==
X-Gm-Message-State: APjAAAWx2OI1kd9tosUa7g5F61/11cfHw6R0+yBvD6ZEJonoWo/IkZ7C
 cJn/Qz8l5BWbrNGqZTw8gkRhlsMMhBV7xg==
X-Google-Smtp-Source: APXvYqwzfl7bTpdEQKPRd5yF2qk0elfKWYm1umwxZQ/tTfqWpMHqi0G8Q3pmuAWOtsRl2T6ICJd6KA==
X-Received: by 2002:a17:902:e108:: with SMTP id
 cc8mr46847446plb.145.1558111672832; 
 Fri, 17 May 2019 09:47:52 -0700 (PDT)
Received: from smtp.gmail.com ([2620:15c:202:1:fa53:7765:582b:82b9])
 by smtp.gmail.com with ESMTPSA id l141sm12229810pfd.24.2019.05.17.09.47.51
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 17 May 2019 09:47:52 -0700 (PDT)
From: Stephen Boyd <swboyd@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [RFC/PATCH 2/5] soc: qcom: cmd-db: Migrate to
 devm_memremap_reserved_mem()
Date: Fri, 17 May 2019 09:47:43 -0700
Message-Id: <20190517164746.110786-3-swboyd@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190517164746.110786-1-swboyd@chromium.org>
References: <20190517164746.110786-1-swboyd@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_094753_386971_DE7FDEE3 
X-CRM114-Status: GOOD (  13.72  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
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
 Will Deacon <will.deacon@arm.com>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@chromium.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>, Rob Herring <robh+dt@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Dan Williams <dan.j.williams@intel.com>, linux-arm-kernel@lists.infradead.org
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
