Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7A6115761
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:47:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y1fWOBUT8dMWer3wKzndL9czm4WZBJ84JdH7TrfVI70=; b=kWQ6Ji4W/CeVKJ
	TFQDbobWbyUeOqC/vQKdohoXDh3sDI4Yy8BnN4WX8PKgIoi8Y7TFW2OOi2RPtwEHNSafVsdiFKess
	FL1+ek4hw3TxLrSY6L0WdqO7uf2Vs0T9m4TiWqb9DQeZM3T2Bdz/pFTSbbp1O7Y2BiyU2G93JoCu3
	EQTGyj58fiL3edhAGodVtPE5LbYo7+W7U4ZoesvaMVCW93kA3DSlTOiZJclP2Tuyf3CN22Wi6I5hn
	Q9OlH4jhW6SV5de6pEJ0zkthquzym2h565sY2mJ7sZC7AijiSZkv6pvMATcqYwt+J9koaRpcm2Ycc
	7UfWtm1eWfYiAl+t08Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIdi-0004P3-6e; Fri, 06 Dec 2019 18:47:42 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIce-0003Ul-5M; Fri, 06 Dec 2019 18:46:37 +0000
Received: by mail-pg1-x543.google.com with SMTP id k3so3081526pgc.3;
 Fri, 06 Dec 2019 10:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9o4ISVa2P6pOeqYh0Ll8+Jro095934ZjUwAjarWJmTU=;
 b=tL/oX+/6yHqXUXzX9ilD1PgPWLPOMzVBR1dBoaFG2pmRikiMDiyU+BORtPIIQ6mf8D
 OQc3zUnXJcQzagrDQaMl3ClK5KSxERD9s+mXw9QC9+2Wg28S3XYQlnQB4ljlWWNdVrON
 6shAspe+xql4Eg8kvEPE+mOHEiiUzLowdIwR1KAvBfQAE+p+aVwFBvEKjlH13drSkXlc
 wo7NXXihiKBxGIbakXeBTuTAPrj/st4djtnmIRwKYyZ+q6pZl7144sHhRa2QGqLHjAm9
 phfcrSs4dftiLzBrHwImqxI2shC3/QYSJ6L4vyH6YLhXaeSsvYI8N/O6ATkUhmiDWx78
 CnzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9o4ISVa2P6pOeqYh0Ll8+Jro095934ZjUwAjarWJmTU=;
 b=fEcXUx7WER+rWBntknJPsHpE6FNX5pjGq9tc8sUzXqVJ4CXWJ9VVg4CEfbgMniI7P9
 qgVUmaE3l4ertqJ7B0R3ftt5TOqEkaH4brbZs3PPbVlTPsmJYn3s//2hzwwFcAhyc739
 nrHSdytkOrUeuGq7aont6nXlGVXZedRcIZK1qYKouZS+DkFtRVS3IkaoqvMCI9ggYdxF
 YHvDl9Ka3gfMQGB9E16L7u3KKBRd9I9yslqrugLzvAonBcPzEHcw/9eBPg3D6PWgq/dv
 rX4aeHGi8wyFSVuHmDg4h+DSFpqWPyIaYhDoxWNtnoBorkDacDpry5V3FMMTmaLKLL3s
 f50w==
X-Gm-Message-State: APjAAAVH3i49zUWpxCpDCvP47OdKak+Nhcpbss02eDbJqYwjD9vKJmYr
 H+B3EPFN6hFnh/F0lc+rFiw=
X-Google-Smtp-Source: APXvYqykwrefj/zfHpIuihall3bC06p3CtkdcyZnCXMvVfTYduRK+b1RSF6fUPRmcgOs39GO5I/Qcg==
X-Received: by 2002:a63:4f5c:: with SMTP id p28mr4984722pgl.409.1575657995416; 
 Fri, 06 Dec 2019 10:46:35 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:35 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 5/8] mfd: rk808: cleanup unused function pointer
Date: Fri,  6 Dec 2019 18:45:33 +0000
Message-Id: <20191206184536.2507-6-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104636_226823_4664AB47 
X-CRM114-Status: GOOD (  14.31  )
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

Cleanup unused pm_poweroff_fn and pm_pwroff_prep_fn function,
drop the unused rockchip,system-power-controller dts binding.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c       | 28 ++--------------------------
 include/linux/mfd/rk808.h |  2 --
 2 files changed, 2 insertions(+), 28 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 4b3b90dad4f8..9a7be379946a 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -521,7 +521,7 @@ static int rk808_probe(struct i2c_client *client,
 	const struct mfd_cell *cells;
 	int nr_pre_init_regs;
 	int nr_cells;
-	int pm_off = 0, msb, lsb;
+	int msb, lsb;
 	unsigned char pmic_id_msb, pmic_id_lsb;
 	int ret;
 	int i;
@@ -641,18 +641,8 @@ static int rk808_probe(struct i2c_client *client,
 		goto err_irq;
 	}
 
-	pm_off = of_property_read_bool(np,
-				"rockchip,system-power-controller");
-	if (pm_off && !pm_power_off) {
+	if (!rk808_i2c_client)
 		rk808_i2c_client = client;
-		pm_power_off = rk808->pm_pwroff_fn;
-	}
-
-	if (pm_off && !pm_power_off_prepare) {
-		if (!rk808_i2c_client)
-			rk808_i2c_client = client;
-		pm_power_off_prepare = rk808->pm_pwroff_prep_fn;
-	}
 
 	return 0;
 
@@ -667,20 +657,6 @@ static int rk808_remove(struct i2c_client *client)
 
 	regmap_del_irq_chip(client->irq, rk808->irq_data);
 
-	/**
-	 * pm_power_off may points to a function from another module.
-	 * Check if the pointer is set by us and only then overwrite it.
-	 */
-	if (rk808->pm_pwroff_fn && pm_power_off == rk808->pm_pwroff_fn)
-		pm_power_off = NULL;
-
-	/**
-	 * As above, check if the pointer is set by us before overwrite.
-	 */
-	if (rk808->pm_pwroff_prep_fn &&
-	    pm_power_off_prepare == rk808->pm_pwroff_prep_fn)
-		pm_power_off_prepare = NULL;
-
 	return 0;
 }
 
diff --git a/include/linux/mfd/rk808.h b/include/linux/mfd/rk808.h
index a59bf323f713..e07f6e61cd38 100644
--- a/include/linux/mfd/rk808.h
+++ b/include/linux/mfd/rk808.h
@@ -620,7 +620,5 @@ struct rk808 {
 	long				variant;
 	const struct regmap_config	*regmap_cfg;
 	const struct regmap_irq_chip	*regmap_irq_chip;
-	void				(*pm_pwroff_fn)(void);
-	void				(*pm_pwroff_prep_fn)(void);
 };
 #endif /* __LINUX_REGULATOR_RK808_H */
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
