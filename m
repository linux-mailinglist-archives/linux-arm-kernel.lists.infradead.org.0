Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 440A8BF649
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 17:56:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=syf+8YG33qnw9NqU7mvbeWs6rigan7X10O55w7uUGNA=; b=A0h9qI6mXJ9Lv+
	i1mZSOHO9dkZMrvf9HRLfT9liZ3MIt5ETuJL/dPILYONUG5fRjIh8KOTR1bczlumEI7q9AqzMdTJJ
	utssbIdqz7ZsAsPkiKtDyV86BAyVHwhqbrcftSE7g5fRLwssyogy8QJfnlKbFKS9NmZvJX34Xu6gS
	bOrmiwAnpCCuEOdF5Wsnv0/kMN0Fx97V4O8hP7jDsL7Mw9m+QowZFk3o+tXJrsgHrxoaPRagZQUFK
	Lp3WUQsgOISKHeDTphTBN+WcLwb/vg4fTE0VEgxinRXoPTkc7CWyIx4EFaehkNqOgwJOoXvboPBC1
	7VrebKLkekRFlMOU/Gnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDW7X-0007Nd-7i; Thu, 26 Sep 2019 15:55:55 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDW7M-0007NH-9B
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 15:55:45 +0000
Received: by mail-wm1-x341.google.com with SMTP id 5so3402195wmg.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Sep 2019 08:55:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:mime-version:content-disposition
 :user-agent; bh=+pFOILDteLs1G9dcmBbAs9+Xx43dXKfMhbXX78aolpU=;
 b=ocEzXFyrDMDNNTqDxb6k2SzrmJrAsPAnZirHH3Kvzd5rbCXfsxdIOtsIGnd+UTNRNM
 yahWX2QAcH4oGusJldWBOlivyIYR0Nug8t8JiTTsmd9XY9ICKH9D8nbfTOpA665/ex5U
 hKOlqQk2mxrR9K4rCC0pztbWeO5xjwYrYhqK6voqQ11h9RnIUDN7C+9UWe4f4bbiiSa+
 /yeFFm2RhU3cdlaBUYWoVQlJ603zASrg32UWVaDKXU0mERpCqcEtyzUz2RkvvghMwDYW
 DwQhLl+grXBeqP0l8jFnctZuYTt2X4uE8DFsqQgdeIj4kJtNxnXTFtbW51MLCKpsJGNG
 lHxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
 :content-disposition:user-agent;
 bh=+pFOILDteLs1G9dcmBbAs9+Xx43dXKfMhbXX78aolpU=;
 b=O76E0q3KxMztjvuQBjoXRsLgeumOWu3cYdFoFUUjast3OvmqJtY+705NZtwgGUrqyS
 6W21LNXeIusl0u4zwwj8wQ/otwQC0V6NX7C2ig1rDFwwFXrDGNP//beMR3KoROoIDYGm
 bpPjqnW2SwSr4vDTyMvdsuCpjQfUzBtXoR9dwHGiJ5EXpJTbXGzIQuHP689zZBfQzm/s
 qDRvnLE3FEqcH0v4h6EDy3rBSEZnjGNtraLyGUs99gEi7/2gT1q4ASukEOqsmYBm8hQg
 OXoB7M04L1WRMXMiZ6hjmUYb21S1wHQTAtdEoCPHlPd3UA7PG9q02/+7YNgkZnJ+qyW/
 rXVA==
X-Gm-Message-State: APjAAAWOs8SfJCT9XClHkNghpv3iJNMKfK8yS4Y6TqmJzttBiyZYdDwV
 IMEBCLPxZKC8AbkMhGZ8Q3Y=
X-Google-Smtp-Source: APXvYqxJR/GW0YsDT3R3ajEjRVC+xU5wALlX3bWVdIz9CTZ5KKgsTQGUDT72X5cUhJGh7HwgBkbQIw==
X-Received: by 2002:a1c:c1cc:: with SMTP id r195mr3854113wmf.50.1569513342192; 
 Thu, 26 Sep 2019 08:55:42 -0700 (PDT)
Received: from sausagefarm (31-34-101-110.abo.bbox.fr. [31.34.101.110])
 by smtp.gmail.com with ESMTPSA id p7sm3902157wma.34.2019.09.26.08.55.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Sep 2019 08:55:41 -0700 (PDT)
Date: Thu, 26 Sep 2019 17:55:39 +0200
From: Jeeeun Evans <jeeeunevans@gmail.com>
To: rmfrfs@gmail.com, slongerbeam@gmail.com, p.zabel@pengutronix.de,
 mchehab@kernel.org, gregkh@linuxfoundation.org, shawnguo@kernel.org,
 s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
 linux-imx@nxp.com
Subject: [PATCH] staging: media: imx: Use devm_platform_ioremap_resource().
Message-ID: <20190926155539.GA20744@sausagefarm>
MIME-Version: 1.0
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_085544_356031_7E8003FC 
X-CRM114-Status: GOOD (  10.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jeeeunevans[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch fixes a warning by coccicheck:
drivers/staging/media/imx/imx7-mipi-csis.c:973:1-12: WARNING: Use devm_platform_ioremap_resource for state -> regs

Use devm_platform_ioremap_resource helper which wraps platform_get_resource()
and devm_ioremap_resource() together.

Signed-off-by: Jeeeun Evans <jeeeunevans@gmail.com>
---
 drivers/staging/media/imx/imx7-mipi-csis.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/media/imx/imx7-mipi-csis.c b/drivers/staging/media/imx/imx7-mipi-csis.c
index 73d8354e618c..bf21db38441f 100644
--- a/drivers/staging/media/imx/imx7-mipi-csis.c
+++ b/drivers/staging/media/imx/imx7-mipi-csis.c
@@ -947,7 +947,6 @@ static void mipi_csis_debugfs_exit(struct csi_state *state)
 static int mipi_csis_probe(struct platform_device *pdev)
 {
 	struct device *dev = &pdev->dev;
-	struct resource *mem_res;
 	struct csi_state *state;
 	int ret;
 
@@ -969,8 +968,7 @@ static int mipi_csis_probe(struct platform_device *pdev)
 	mipi_csis_phy_init(state);
 	mipi_csis_phy_reset(state);
 
-	mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
-	state->regs = devm_ioremap_resource(dev, mem_res);
+	state->regs = devm_platform_ioremap_resource(pdev, 0);
 	if (IS_ERR(state->regs))
 		return PTR_ERR(state->regs);
 
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
