Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E74011574F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:46:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MQ7Wc9sdWL+6SQdQH5+a0WBx+ybu5jjvUPGtCf0zFRM=; b=eEAzHaplEqRTRI
	BVfgU8eBo+np5Qad1osCOY0Wfkn5qDGEb+F0XEbkoxi2Gzm1/5UfgCpXiUx/2GQSx+vIy7d23uD7A
	VjyF9g+1hxH6Ps+sMPKNWMgJioL/zWJ5gyi03CZjyOfErzxIGkBm46MWu+lU0TodV9lSQXNAUe/iD
	eRh0Z24hqEpWvftBW6Ly1giWMtrbPLj/BQpmXqMdZo9tt+oU/poURhULVFsQCmlmwRO+jetSIqqnX
	CvcYZRuVgvR3krKRu17OYNf5qfrGVVpsFB6eizdZaGnJoKcy/U1AGotCNxBWMDzpcd1qHxjsA2vFS
	rfka20UNJuVHHdNO1ADg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIca-0003HV-Sr; Fri, 06 Dec 2019 18:46:32 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIcP-0003H0-98; Fri, 06 Dec 2019 18:46:22 +0000
Received: by mail-pl1-x643.google.com with SMTP id w7so3061050plz.12;
 Fri, 06 Dec 2019 10:46:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=B8pAzxJiWSzLWTkMhjf7LFuYSquj8IkeZocPiiwyPjA=;
 b=KQsBqJKww9wIJwvFg/b3yL0EaiIZoK35YdLFO7U244cS+Zqo2uiiPnJNrKQZuw1dCG
 TWo2Qtssjro+Z8Xr93ozkvK7Of5o+GkBtYoOfVZFLXvPGPLWeL+oo8SG6ZN25Cihu/pV
 4EPiiMS+kxXDvLOX6V1Iheumcue78XEQ1iQfrn6YOC1VpzK3WxAUxRYDiKk6nZuyd28A
 yg/q7eSgrgrVRKTdGf+lB8E1nED3Lki39mY3BwJZdgiy7Tc/Fu/9LgbtjoUFC7CIGp90
 2ozw0jGqp7djMeTCzf7pFjhMgJCBRucJGhHv/Iqh+YsXuYrYY4BdKTX0/IBUd3iX6Mat
 tBpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=B8pAzxJiWSzLWTkMhjf7LFuYSquj8IkeZocPiiwyPjA=;
 b=jAoJCNqo0YR8QGwCl/x1yU7scMkETdHCNDRtL+WA9+0vbfHuICvkxikvmVVqXsGNTS
 jE/Q14h+pyap5uZ+Fq9jjHJVI6x1LDb8YCZIquPQGXUjBFAQCX2K0bj6ZKlFctAgKV1s
 UMkHpLm/jHUu/i9v/Tx3MB/jZ3GgrTeCc+Xsxv4reombmgjF8iBMBXYXMnCoQh3ltjKw
 JnyGwsTGrnP6ZRt3uCA6SRGa/bbr36O520tsxysIm5k9Pmd6K69N+fALdUBV4HPm5kWr
 0Zi0ViAX+E0em43U1U6m069c5VNUitKl6lAbdCJDlRgcZpqJNiiAKP8yH3QbgzFbB9ad
 Mvww==
X-Gm-Message-State: APjAAAW/hLJrTbTbtMWGvoZ9nIVBpuIXcMABS0ED263Ug+4UbuLkzKB1
 /niDiBGIJR2tpISiEzBb7rI=
X-Google-Smtp-Source: APXvYqzZcLwMJtzwcSHxWJGWN6EAUVCNFcYOu++yCa37tyO+1b3rjKFjqxj1edX+4F/17amIegyK9A==
X-Received: by 2002:a17:902:d708:: with SMTP id
 w8mr16244989ply.280.1575657980698; 
 Fri, 06 Dec 2019 10:46:20 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:20 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 1/8] mfd: rk808: Refactor shutdown functions
Date: Fri,  6 Dec 2019 18:45:29 +0000
Message-Id: <20191206184536.2507-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104621_322647_B016ADC1 
X-CRM114-Status: GOOD (  16.44  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (linux.amoon[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Daniel Schultz <d.schultz@phytec.de>

Since all shutdown functions have almost the same code, all logic
from the shutdown functions can be refactored to a new function
"rk808_update_bits", which can update a register by a given address
and bitmask and value.

link: https://lore.kernel.org/patchwork/patch/937404/
Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Daniel Schultz <d.schultz@phytec.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
[rebased on latest kernel]
Modified the API to set the value.
This changes were submited with below patch.
[0] https://lore.kernel.org/patchwork/patch/937404/
---
 drivers/mfd/rk808.c | 87 ++++++++++++++-------------------------------
 1 file changed, 26 insertions(+), 61 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index a69a6742ecdc..e637f5bcc8bb 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -449,81 +449,52 @@ static const struct regmap_irq_chip rk818_irq_chip = {
 
 static struct i2c_client *rk808_i2c_client;
 
-static void rk805_device_shutdown(void)
+static void rk808_update_bits(unsigned int reg, unsigned int mask,
+		unsigned int value)
 {
-	int ret;
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
+	int ret;
 
-	if (!rk808)
+	if (!rk808) {
+		dev_warn(&rk808_i2c_client->dev,
+			"have no rk805/rk808/rk817/rk818, so do nothing here\n");
 		return;
+	}
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_DEV_CTRL_REG,
-				 DEV_OFF, DEV_OFF);
+	ret = regmap_update_bits(rk808->regmap,	reg, mask, value);
 	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+		dev_err(&rk808_i2c_client->dev,
+			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk805_device_shutdown_prepare(void)
+static void rk805_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
+	rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
+}
 
-	ret = regmap_update_bits(rk808->regmap,
-				 RK805_GPIO_IO_POL_REG,
-				 SLP_SD_MSK, SHUTDOWN_FUN);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+static void rk805_device_shutdown_prepare(void)
+{
+	rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN);
 }
 
 static void rk808_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK808_DEVCTRL_REG,
-				 DEV_OFF_RST, DEV_OFF_RST);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
 }
 
 static void rk818_device_shutdown(void)
 {
-	int ret;
-	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-
-	if (!rk808)
-		return;
-
-	ret = regmap_update_bits(rk808->regmap,
-				 RK818_DEVCTRL_REG,
-				 DEV_OFF, DEV_OFF);
-	if (ret)
-		dev_err(&rk808_i2c_client->dev, "Failed to shutdown device!\n");
+	rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
 }
 
 static void rk8xx_syscore_shutdown(void)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret;
 
 	if (system_state == SYSTEM_POWER_OFF &&
 	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_DN_FUN);
-		if (ret) {
-			dev_warn(&rk808_i2c_client->dev,
-				 "Cannot switch to power down function\n");
-		}
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_DN_FUN);
 	}
 }
 
@@ -720,41 +691,35 @@ static int rk808_remove(struct i2c_client *client)
 static int __maybe_unused rk8xx_suspend(struct device *dev)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret = 0;
 
 	switch (rk808->variant) {
 	case RK809_ID:
 	case RK817_ID:
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_SLP_FUN);
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_SLP_FUN);
 		break;
 	default:
 		break;
 	}
 
-	return ret;
+	return 0;
 }
 
 static int __maybe_unused rk8xx_resume(struct device *dev)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
-	int ret = 0;
 
 	switch (rk808->variant) {
 	case RK809_ID:
 	case RK817_ID:
-		ret = regmap_update_bits(rk808->regmap,
-					 RK817_SYS_CFG(3),
-					 RK817_SLPPIN_FUNC_MSK,
-					 SLPPIN_NULL_FUN);
+		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
+				SLPPIN_NULL_FUN);
 		break;
 	default:
 		break;
 	}
 
-	return ret;
+	return 0;
 }
 static SIMPLE_DEV_PM_OPS(rk8xx_pm_ops, rk8xx_suspend, rk8xx_resume);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
