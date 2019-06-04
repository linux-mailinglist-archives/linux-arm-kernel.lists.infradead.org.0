Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E333133DE3
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 06:24:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cG/cr45aMxC/L/RKcWE9tFj2oY5k/hwbYkYM4PWdhlg=; b=ElTrjBCVBEWujd
	JL4dUiggMkYM2Qf5n+fWF3mooISGGow/BUWK5dBPrzHZquCPJP8DI46Zir2c17NnGjwBUAbKMqYSQ
	bl3fpGe/CtVkTx06rwb1gVfKek5MBnJNCHfaHEW8ZljAWEMMcyu3MbvK9ztI05n4g+8qgB86ROEnt
	/QwdsOES6OtZ9KI6mIlu6XUQYB26J/h46SOYJR7lKRQQ3OSUOEgLTaajYaQUsoPGXRm+NRl+QoMVp
	wrLkydAOJ4yqQ3Mxt9lBaVdeuWUAsk2ZIooa7kEOqLGvB+xp1adhp/UNyJSO+tF3j6G+kV5wWE2cI
	9hCu9n/5YMtbGrJpnPtQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY0zq-0001Jx-NJ; Tue, 04 Jun 2019 04:24:26 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY0zD-0000g5-Ec
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 04:23:50 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id A779A24B35;
 Tue,  4 Jun 2019 04:23:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1559622226;
 bh=yqUxi72cn1v3RF2Lmp76OrRJen60rKvo6j12vc0QZgg=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=Qxh797YMgBBIdnhM38VPWd4XptoS7s+5V+9jb9asjHs9ZyRMeayka9YgsZm6kZEl8
 1e10CXDcznefASbmL3beJTTe5ezhQ77C+Sf1qqSSIjtCXQvR6Dc+e9J4Hu+o0670WK
 NYbXWVQWQWBN7pgJ/9+XY7NzP1+7FDDXLEJvGat8=
Received: by wens.tw (Postfix, from userid 1000)
 id 7CE025FD5F; Tue,  4 Jun 2019 12:23:43 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <maxime.ripard@bootlin.com>,
 Alessandro Zummo <a.zummo@towertech.it>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
Subject: [PATCH 2/3] rtc: pcf8563: Clear event flags and disable interrupts
 before requesting irq
Date: Tue,  4 Jun 2019 12:23:36 +0800
Message-Id: <20190604042337.26129-3-wens@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190604042337.26129-1-wens@kernel.org>
References: <20190604042337.26129-1-wens@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_212347_515914_E15215B7 
X-CRM114-Status: GOOD (  15.54  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Vincent Donnefort <vdonnefort@gmail.com>,
 Chen-Yu Tsai <wens@csie.org>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Besides the alarm, the PCF8563 also has a timer triggered interrupt.
In cases where the previous system left the timer and interrupts on,
or somehow the bits got enabled, the interrupt would keep triggering
as the kernel doesn't know about it.

Clear both the alarm and timer event flags, and disable the interrupts,
before requesting the interrupt line.

Fixes: ede3e9d47cca ("drivers/rtc/rtc-pcf8563.c: add alarm support")
Fixes: a45d528aab8b ("rtc: pcf8563: clear expired alarm at boot time")
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/rtc/rtc-pcf8563.c | 11 +++++------
 1 file changed, 5 insertions(+), 6 deletions(-)

diff --git a/drivers/rtc/rtc-pcf8563.c b/drivers/rtc/rtc-pcf8563.c
index e358313466f1..d8adf69b6697 100644
--- a/drivers/rtc/rtc-pcf8563.c
+++ b/drivers/rtc/rtc-pcf8563.c
@@ -563,7 +563,6 @@ static int pcf8563_probe(struct i2c_client *client,
 	struct pcf8563 *pcf8563;
 	int err;
 	unsigned char buf;
-	unsigned char alm_pending;
 
 	dev_dbg(&client->dev, "%s\n", __func__);
 
@@ -587,13 +586,13 @@ static int pcf8563_probe(struct i2c_client *client,
 		return err;
 	}
 
-	err = pcf8563_get_alarm_mode(client, NULL, &alm_pending);
-	if (err) {
-		dev_err(&client->dev, "%s: read error\n", __func__);
+	/* Clear flags and disable interrupts */
+	buf = 0;
+	err = pcf8563_write_block_data(client, PCF8563_REG_ST2, 1, &buf);
+	if (err < 0) {
+		dev_err(&client->dev, "%s: write error\n", __func__);
 		return err;
 	}
-	if (alm_pending)
-		pcf8563_set_alarm_mode(client, 0);
 
 	pcf8563->rtc = devm_rtc_device_register(&client->dev,
 				pcf8563_driver.driver.name,
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
