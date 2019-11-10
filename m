Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5D6F6A38
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 10 Nov 2019 17:35:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=BRrMO4yHd4TWVeXgFrY75/e/7Gm1wwGDYyGQ1tSu/M8=; b=oWo
	ch7VojgV74PDs8z16M0O2gC2oQSaX6xIjuvy2jS0rXCOPKnxGmqkvIZcM+kda3eb1TrjWSa5NCfXa
	NbbYVisjzM+6HufR+egCcXjNkpx4m5t5qBCnflWOj6uX0ziOCJQblQbOAc8N/QXh21i7THpWdC6vg
	IAg0Vf/mI53LDAZoQEDvvW1gKSFjIgyNxYXaFhhFYe8N5fAGbtsMHNC5m+hi4nf+XlUvRoQfDoSM3
	mKovEx97HKU3G8S/wGIL8RAemmKF+TX+9QqKhIOLGx8LKydyDLsDa76FVFyNHqdDVlw9iL2zp4C59
	EZyV2U8C/gK/9dWCKSOH2UK22z7pREw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTqBl-0004Wa-Jz; Sun, 10 Nov 2019 16:35:45 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTqBd-0004Vl-Pq
 for linux-arm-kernel@lists.infradead.org; Sun, 10 Nov 2019 16:35:39 +0000
Received: by mail-wm1-x343.google.com with SMTP id c22so10900421wmd.1
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 10 Nov 2019 08:35:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=owmOt9b7tYyOuPmCrpO23kXbaPycy+c3ErN7Myu9vJ8=;
 b=n4ghcpQ+kUtASUT7p4B1mEvCnLKqmdXuPMt1w/2DeBtAqzo4WFbQCPVLK6dA4oJ7TU
 UdTnOOQ3goDtumYpf2ojJb62lrlQD6SL4y8UVl1SV6HuQwkQ77v8SWLH/b2SgOlNE7jD
 bha4HDFgsSOO+9VNuaH1OL+snm06Es2jrgGsnwx4R9DJKFZsKSyMrsR7eM/YCRlaiCs/
 qRL/Dpkgx0fq/dtQDYRfK+01h1UpXYPCaEB8x82grpK278GBfw7ohvDiDBKZN9BCHG4G
 lRgo7tfVVh6wVyk878+MUQ2MPd/BVQppiXt6p//32S9yn9o+86OetyCNSO6/UjHMY9xN
 NJmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=owmOt9b7tYyOuPmCrpO23kXbaPycy+c3ErN7Myu9vJ8=;
 b=DNG4XfkvujxAm3Jo1xwjcMBj0e8H2c/eCKnOrth3Rgy/tZZQU2wRWlmxNJq7Ah/mty
 FqqLIyHAsgN8cicZWlH3g3M2i4EA+Gj2mYr1lwAE+i/YCQSdcUnYAabHb+67JdfITbAl
 46EkFZT5NcB9jIigWAVXkPQVVDLdqZbU7uZdUpQz/4mSUtpjcBnzfLD1thiSDZS6eZoX
 S+cD+xrd5tSCWuXwLyMOyg1HAqbm06NtKoZ5dBvuuMuCA5jMJ4OUxdI4ZPA0xFTkhFOj
 ieJ3nerJ14HxL7ArldRDufBbs5hPTARkDAs8189KNx6kFvdStbacqKzX3DMMFPDhnYWF
 WuPg==
X-Gm-Message-State: APjAAAVdokWRLb+eo78asVwA6utZjhm0U/DvasFm7Up/utssiUwtouN6
 BbWeVHHNLuexCfsPZilePHs4Mw==
X-Google-Smtp-Source: APXvYqwVeZd0eFX2219nHb63noQDwm/1ZxRMPzw/Q8ktBro8sKumFEwgosCRDkkly22/ZmbDVN6v7Q==
X-Received: by 2002:a1c:7d16:: with SMTP id y22mr16288764wmc.106.1573403735405; 
 Sun, 10 Nov 2019 08:35:35 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id a6sm13008230wrh.69.2019.11.10.08.35.34
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Sun, 10 Nov 2019 08:35:34 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: emilio@elopez.com.ar, mripard@kernel.org, mturquette@baylibre.com,
 sboyd@kernel.org, wens@csie.org
Subject: [PATCH] clk: sunxi: use of_device_get_match_data
Date: Sun, 10 Nov 2019 16:35:20 +0000
Message-Id: <1573403720-7916-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_083537_839044_125C882C 
X-CRM114-Status: GOOD (  12.38  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Corentin Labbe <clabbe@baylibre.com>, linux-sunxi@googlegroups.com,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The usage of of_device_get_match_data reduce the code size a bit.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 drivers/clk/sunxi/clk-sun6i-apb0-gates.c | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/drivers/clk/sunxi/clk-sun6i-apb0-gates.c b/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
index a165e7172346..4c75b0770c74 100644
--- a/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
+++ b/drivers/clk/sunxi/clk-sun6i-apb0-gates.c
@@ -37,7 +37,6 @@ static int sun6i_a31_apb0_gates_clk_probe(struct platform_device *pdev)
 {
 	struct device_node *np = pdev->dev.of_node;
 	struct clk_onecell_data *clk_data;
-	const struct of_device_id *device;
 	const struct gates_data *data;
 	const char *clk_parent;
 	const char *clk_name;
@@ -50,10 +49,9 @@ static int sun6i_a31_apb0_gates_clk_probe(struct platform_device *pdev)
 	if (!np)
 		return -ENODEV;
 
-	device = of_match_device(sun6i_a31_apb0_gates_clk_dt_ids, &pdev->dev);
-	if (!device)
+	data = of_device_get_match_data(&pdev->dev);
+	if (!data)
 		return -ENODEV;
-	data = device->data;
 
 	r = platform_get_resource(pdev, IORESOURCE_MEM, 0);
 	reg = devm_ioremap_resource(&pdev->dev, r);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
