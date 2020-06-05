Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C2CA1EEFFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  5 Jun 2020 05:33:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=+8cRVOCFyYCJJXfDJwc69jDHCpPUDgo760Dg24cDKPI=; b=ZxP
	Kvl70TLgBw3igFStEiwX7GrcZLNJyxsO6v0GYh9hM5OMwh5urswkdoea9UMM5ezi35Ex34fDBywD+
	o0L0JLs2Ld57yWoodHGc8yCQRcEx5skaZB6uVCeGRZ0m9n5vpwf24t1tzlCSFGSXY84nh4CnUv7mq
	L+bGr7KZu8YZ19kvCBlUmuH5PaPk41jp/teNsZNWtYEwUse89dvCajJBISUNZDF3vwYOXwc195hNi
	UbCmSRJI+qPudtNdOCRiuuabV9sROy6b3kJ9lvc6/0mfihekSkXwFBx0trew+S37LTi31Q2y6qnPq
	EJx2iwA7rAkg2+JDa+kGh6A5uzJq9xw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jh36F-0006tk-UT; Fri, 05 Jun 2020 03:32:55 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jh366-0006s8-Ua
 for linux-arm-kernel@lists.infradead.org; Fri, 05 Jun 2020 03:32:48 +0000
Received: by mail-io1-xd43.google.com with SMTP id y5so8726757iob.12
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jun 2020 20:32:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=IJPenuFpVQx0seln/2dhfFsuGNNRm+UZljRAm/AqGEU=;
 b=MiErTzzaT/PL3m/OS3OyrwrC6z+MwypmJk0i8+CZtkeIpwIXb7dASWDz86qGp6MT3G
 FJvG3eA5rF2AYahvF/mv6FgxBmKfg8+qVxthXvdCfEHFxx+PEvmgH6PG1LOUmNnsNDdO
 K3R/oh7eckba8nnLxO1cRHHHxzX5U1T3lUJxurEp87Vs/UMKzL1VIFFIbUCgxHxaLgMG
 iOzoi+A5aN8b69VblICG9RmWlASoQWhTFoK9BPj5zFfcKROqMe/EYFIdIeLZFMqN3ej7
 krWP1MD9yZ3dT5ECXByCFKtdNm/m0W/pH0zCzRfbz5JS7Er8Dr1mygmBzN4dFGhMxxdo
 E2lg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=IJPenuFpVQx0seln/2dhfFsuGNNRm+UZljRAm/AqGEU=;
 b=Dot88NvXM4dCi/jWeiGr2Gbq5ZIvU91yN1LvB8DnRR3xT459t7ZGN9FfprauaW1fQN
 Mr0GGnCuMeWBbZNZqKXZvVeRxkJeKNGHn6rx4hY/yO5GM1mZCD+xwLwR0fXOf+NYXS64
 v/rNQY8DE8iTZ8z7HYX988MN1IuqfV6RHh2UE642kPrsWy069yyVTSfvbfdiz1YObAYq
 tNQO5UZYaIEvYL1O4wv11KlvCDGIadyqkjtevVuZpy4B62GUA5p4aL69IUQJqZIx/lZC
 1LqFnvp1ckNjQk3VYghcdlubEzMdWnWc44MfVqkePw99smojv6hidCMwB6r6co1AhpVq
 e/MQ==
X-Gm-Message-State: AOAM532j8sZ0U1P+OSJWgkMliCfDeql8fbcMNvllMb388iU//rBMawwI
 /xrAsPimqKy8rX/7cmOAHkw=
X-Google-Smtp-Source: ABdhPJwRa2Z/m55HcVea1dDNvCKek/cSG6DIqGXdC4XhaAbVQRT83cYwoF0le9D7FEU0ikAN8oZ0TQ==
X-Received: by 2002:a6b:39c3:: with SMTP id g186mr6519042ioa.91.1591327965688; 
 Thu, 04 Jun 2020 20:32:45 -0700 (PDT)
Received: from cs-u-kase.dtc.umn.edu (cs-u-kase.cs.umn.edu. [160.94.64.2])
 by smtp.googlemail.com with ESMTPSA id c72sm2464004ilg.3.2020.06.04.20.32.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 04 Jun 2020 20:32:45 -0700 (PDT)
From: Navid Emamdoost <navid.emamdoost@gmail.com>
To: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>,
 Naga Sureshkumar Relli <naga.sureshkumar.relli@xilinx.com>,
 Wolfgang Grandegger <wg@grandegger.com>,
 Marc Kleine-Budde <mkl@pengutronix.de>,
 "David S. Miller" <davem@davemloft.net>,
 Michal Simek <michal.simek@xilinx.com>, linux-can@vger.kernel.org,
 netdev@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH] can: xilinx_can: handle failure cases of pm_runtime_get_sync
Date: Thu,  4 Jun 2020 22:32:39 -0500
Message-Id: <20200605033239.60664-1-navid.emamdoost@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200604_203247_008016_E5D7EA3B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [navid.emamdoost[at]gmail.com]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Navid Emamdoost <navid.emamdoost@gmail.com>, emamd001@umn.edu, kjlu@umn.edu,
 wu000273@umn.edu, smccaman@umn.edu
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Calling pm_runtime_get_sync increments the counter even in case of
failure, causing incorrect ref count. Call pm_runtime_put if
pm_runtime_get_sync fails.

Signed-off-by: Navid Emamdoost <navid.emamdoost@gmail.com>
---
 drivers/net/can/xilinx_can.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/can/xilinx_can.c b/drivers/net/can/xilinx_can.c
index c1dbab8c896d..748ff70f6a7b 100644
--- a/drivers/net/can/xilinx_can.c
+++ b/drivers/net/can/xilinx_can.c
@@ -1391,7 +1391,7 @@ static int xcan_open(struct net_device *ndev)
 	if (ret < 0) {
 		netdev_err(ndev, "%s: pm_runtime_get failed(%d)\n",
 			   __func__, ret);
-		return ret;
+		goto err;
 	}
 
 	ret = request_irq(ndev->irq, xcan_interrupt, priv->irq_flags,
@@ -1475,6 +1475,7 @@ static int xcan_get_berr_counter(const struct net_device *ndev,
 	if (ret < 0) {
 		netdev_err(ndev, "%s: pm_runtime_get failed(%d)\n",
 			   __func__, ret);
+		pm_runtime_put(priv->dev);
 		return ret;
 	}
 
@@ -1789,7 +1790,7 @@ static int xcan_probe(struct platform_device *pdev)
 	if (ret < 0) {
 		netdev_err(ndev, "%s: pm_runtime_get failed(%d)\n",
 			   __func__, ret);
-		goto err_pmdisable;
+		goto err_disableclks;
 	}
 
 	if (priv->read_reg(priv, XCAN_SR_OFFSET) != XCAN_SR_CONFIG_MASK) {
@@ -1824,7 +1825,6 @@ static int xcan_probe(struct platform_device *pdev)
 
 err_disableclks:
 	pm_runtime_put(priv->dev);
-err_pmdisable:
 	pm_runtime_disable(&pdev->dev);
 err_free:
 	free_candev(ndev);
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
