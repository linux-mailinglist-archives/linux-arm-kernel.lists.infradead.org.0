Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9165EE438
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  4 Nov 2019 16:50:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=gtP9dp+2DWJQW57BFZlKxO1utqQRCJPvZBxabJUBtHo=; b=PmdooE5MXqXiVq
	yl8Iq+IUFoB6zt/WBiDhjhNJgzLu+GiKs2NxmwFAYONTZTlUC4UO24yo4sRrnsMbBft/PNbznntCq
	BXFB9Z8CY8gSbG8nYitLAYa2xqJdUbu0ZeoB3Xx3bhUmX0Oempm6irxDTA8/brkFeTHnYGAELrVzj
	u23kqPnrls37HM/oIRsfdik/n/abA5VJN7oyqN0M9Bd/QcUzVyH34BwqVGD+wY8N6k6cdu5cS15mq
	ZdbWbcleOpobhGcJBj9VFdcNH5ibcek9kAPZm3cfwBeb1422BBY6tVypyFIEa73Rut0V7lYUBnTdH
	QNEbdKznF/v11INo78Tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iRecQ-0003kU-Rd; Mon, 04 Nov 2019 15:50:14 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iRecB-0003g2-Ao
 for linux-arm-kernel@lists.infradead.org; Mon, 04 Nov 2019 15:50:00 +0000
Received: by mail-wm1-x343.google.com with SMTP id f3so5483588wmc.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 04 Nov 2019 07:49:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Gh6ypC21DF1xtMKX6b7wG5FsVhzjCIpzo9aEJOM0Ec=;
 b=im3j2OBbbqi4Fc6j0I3KRw5w3dJD+PpY4wjlEOrP3B2bqWJXjq6Oj32CwXt0fiDWYl
 qkQ/1govBFgqO8lDQVfxIGGJUi49jLWrDdMOuFl8Ei5jLh37feq4/6FWPDec/b+/DSNe
 YGtfjOwAf0mi/fXBruyCTSbdQrwEnefKsA9FwF0BgQxNj7r6tdv2kunbNFtyCMfBONrb
 ddgigulvNajaQblYrKEq59EZYeEP56Me8KgDwW8MahMr17IWkEJp8pp5+iU4T3syzFJD
 Nol9qlrgcq4JSTVIxTz5nZi9+1+SjnMk17x/rwxVBP9cRqHZ/2hxuwOJDGyTNoVjlEmT
 N25Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=5Gh6ypC21DF1xtMKX6b7wG5FsVhzjCIpzo9aEJOM0Ec=;
 b=LG6cJo0BoQkvGuOx4ZhVHpISj7vIdFE2eptLO4DO1ZBCW15nr4bsu75ckSKObOqAUz
 wdkRW4CPHCpuiR7DWjAGTyC3DBp+6zUkEsqP3cAmQetnNSXiol/IYQFoFCYAQbtA161c
 3L/JE7gnVFXBh45cCxeC3oRVJsrPjjOrA/YjJMTQEde7DRERPPfe9kmRU2CEgPZErtd9
 72sCjdG6L6vHytt6ZoRykhtaLSsdLJLiILdRdJeEoYAmHZj5Ed43zkfCduPvuYhuwhv7
 iGKldOumS1eVFHv2iemqaZf9DkUyq7ZCRuSMe3dcKZtDPCapnZBodLUddeFOk7KoFDoO
 fTaw==
X-Gm-Message-State: APjAAAW35ZLHMKlDbtxzhX/kfCcSXPAxFUlJAeRmH5hMwCVfM+Iu8oiw
 nze/wwBeq24G54HlqAp2JX8=
X-Google-Smtp-Source: APXvYqxBbQ0WXX+4m67jdYFm9J7caqNO4J9KmFZqX9e2cr9tFfT+cfmL9jbMVOp2qFx+BherG9wLoQ==
X-Received: by 2002:a05:600c:28c:: with SMTP id
 12mr16472749wmk.25.1572882597179; 
 Mon, 04 Nov 2019 07:49:57 -0800 (PST)
Received: from suzukaze.ipads-lab.se.sjtu.edu.cn ([202.120.40.82])
 by smtp.gmail.com with ESMTPSA id i71sm23332521wri.68.2019.11.04.07.49.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 04 Nov 2019 07:49:56 -0800 (PST)
From: Chuhong Yuan <hslester96@gmail.com>
To: 
Subject: [PATCH] media: exynos4-is: add missed clk_disable_unprepare in remove
Date: Mon,  4 Nov 2019 23:49:42 +0800
Message-Id: <20191104154942.8935-1-hslester96@gmail.com>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191104_074959_399389_0FED861C 
X-CRM114-Status: GOOD (  11.20  )
X-Spam-Score: 1.6 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (hslester96[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (hslester96[at]gmail.com)
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [202.120.40.82 listed in dnsbl.sorbs.net]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-samsung-soc@vger.kernel.org, Chuhong Yuan <hslester96@gmail.com>,
 linux-kernel@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>,
 Kyungmin Park <kyungmin.park@samsung.com>, Kukjin Kim <kgene@kernel.org>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This driver forgets to disable and unprepare clock when remove.
Add a call to clk_disable_unprepare to fix it.

Signed-off-by: Chuhong Yuan <hslester96@gmail.com>
---
 drivers/media/platform/exynos4-is/fimc-lite.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/exynos4-is/fimc-lite.c b/drivers/media/platform/exynos4-is/fimc-lite.c
index e87c6a09205b..6748bd96aada 100644
--- a/drivers/media/platform/exynos4-is/fimc-lite.c
+++ b/drivers/media/platform/exynos4-is/fimc-lite.c
@@ -1614,6 +1614,7 @@ static int fimc_lite_remove(struct platform_device *pdev)
 	struct fimc_lite *fimc = platform_get_drvdata(pdev);
 	struct device *dev = &pdev->dev;
 
+	clk_disable_unprepare(fimc->clock);
 	pm_runtime_disable(dev);
 	pm_runtime_set_suspended(dev);
 	fimc_lite_unregister_capture_subdev(fimc);
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
