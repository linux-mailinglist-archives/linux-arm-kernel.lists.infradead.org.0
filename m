Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2684211575B
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:46:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Bbajlg9tGuijfaj9iedCGsQXrVUgrxhtLXi7srKUIjE=; b=sQCYjd6zmPZ1AV
	0hoPmaW1ewi//3p0Q8tuazXk70N6nzB9OnR0CVHzBIZOb4sMtbW33xpmnabLp3RF+6dAte+BxWzyf
	NB7nbi45nAB4XqsqptYExfPanGFL6eiPFbyWi4izuxeMirjHXnt/6UhShJoTRemA2DYtVLJK+hY00
	idcJq9Z5JlmEFGzaGyiknJzJjw7sdAnEEk/Vx3iJZErtQ+FouBUBAw/NbuXSiSBL0QxxcpBoji+YU
	bGvTgKGBBtOfX/2A5c3Haip/tznCN3CrQa+/+tZiZ+UiqpPNWUFExDj0WMkd070WBfLCeNo6rzX7C
	vKX/jtQMixqGdBL0LpoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIcx-0003Wt-Fq; Fri, 06 Dec 2019 18:46:55 +0000
Received: from mail-pj1-x1041.google.com ([2607:f8b0:4864:20::1041])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIcT-0003IC-4Y; Fri, 06 Dec 2019 18:46:26 +0000
Received: by mail-pj1-x1041.google.com with SMTP id s35so3093841pjb.7;
 Fri, 06 Dec 2019 10:46:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4ALlNtT9n//klMFnTtfFii4pRLMXyJbBsPcMcF/Rqyk=;
 b=TFnRVyhtoot/cjUc7zbP9FvPleB1QnRt3VHm+kqU/jL/ZbvvLAn9EI3E2YIwpPSCLk
 5PDSszs2xes7VZVCLdoO3pqAHdhQQYcAZGZvOFw+Z6GpQ7u7m88VSk6SmhR35XRSzJYU
 M3aZikNJQXwd3v2bHXNTzOdYqQztoqEtQC2MPLyXl6vEepcbp0H4Gu3RKIbl55iMu1H6
 qx5uo1c/l/6cunCIiBsdsCtqczGhl51GDRotV1Ch+k0PHQfy8fF6SeAmxCBWKvovIORw
 XvL3GKPqE5m0E/h+m4fmj7Oz6oy8MGNktXXjlzipi43R5RmCX16MPjYQIHnsRy6bz7Mc
 w1DQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4ALlNtT9n//klMFnTtfFii4pRLMXyJbBsPcMcF/Rqyk=;
 b=mwOphnmd4tIiNxsxWGCD0QZJW9yaX5r5hRJCqehnf0q5L2GG6+M5I1P74R2pWFwWK3
 AdRB3VjQZkDP3AOyBFEXjMu8kzqt15xLGqWJYtbRQePUeAc52yxd5WJFxXSHUnoTsJrw
 muio+2OEdPiuxIKXQH+j9S67o5GGj17k9hNINjUEbhQ/fMCfMmcG2tIw1qZIwfmUTyQ+
 Whuhf2xUoi0HLOhJpsUndebnjTf64CADD1Q0VNlnwa3EPDFmzPjkYnuCPRdXx64vhbAM
 uruhHATckUtoWsdHxopThXtWDnNyaBekWZiWjekZVkSyLhzZkv2z+SR9z7efSmOP5BRk
 U8vQ==
X-Gm-Message-State: APjAAAXroxwjXdxWcXYhNidVYRYLXNgz63DVbqDhm15Wl7DObAmPxzBB
 hR8NTcrA/QD5kTeZ5luPwUg=
X-Google-Smtp-Source: APXvYqwJ3vW/5vn+8PO8lIFvDhxoxtwWhq8ZXvm66ph4wqJuhTiFgpU20jDmqQHprCawpSALC+Vcqg==
X-Received: by 2002:a17:902:fe91:: with SMTP id
 x17mr15451025plm.50.1575657984312; 
 Fri, 06 Dec 2019 10:46:24 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.20
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:23 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 2/8] mfd: rk808: use syscore for RK805 PMIC shutdown
Date: Fri,  6 Dec 2019 18:45:30 +0000
Message-Id: <20191206184536.2507-3-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104625_221165_237B4337 
X-CRM114-Status: GOOD (  12.37  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

Use common syscore_shutdown for RK805 PMIC to do
clean I2C shutdown, drop the unused pm_pwroff_prep_fn
and pm_pwroff_fn function pointers.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 33 +++++++++++++++++----------------
 1 file changed, 17 insertions(+), 16 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index e637f5bcc8bb..713d989064ba 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -467,16 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
 			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk805_device_shutdown(void)
-{
-	rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
-}
-
-static void rk805_device_shutdown_prepare(void)
-{
-	rk808_update_bits(RK805_GPIO_IO_POL_REG, SLP_SD_MSK, SHUTDOWN_FUN);
-}
-
 static void rk808_device_shutdown(void)
 {
 	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
@@ -491,10 +481,23 @@ static void rk8xx_syscore_shutdown(void)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
 
-	if (system_state == SYSTEM_POWER_OFF &&
-	    (rk808->variant == RK809_ID || rk808->variant == RK817_ID)) {
-		rk808_update_bits(RK817_SYS_CFG(3), RK817_SLPPIN_FUNC_MSK,
-				SLPPIN_DN_FUN);
+	if (system_state == SYSTEM_POWER_OFF) {
+		dev_info(&rk808_i2c_client->dev, "System Shutdown Event\n");
+
+		switch (rk808->variant) {
+		case RK805_ID:
+			rk808_update_bits(RK805_GPIO_IO_POL_REG,
+					SLP_SD_MSK, SHUTDOWN_FUN);
+			rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
+			break;
+		case RK809_ID:
+		case RK817_ID:
+			rk808_update_bits(RK817_SYS_CFG(3),
+					RK817_SLPPIN_FUNC_MSK, SLPPIN_DN_FUN);
+			break;
+		default:
+			break;
+		}
 	}
 }
 
@@ -565,8 +568,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk805_pre_init_reg);
 		cells = rk805s;
 		nr_cells = ARRAY_SIZE(rk805s);
-		rk808->pm_pwroff_fn = rk805_device_shutdown;
-		rk808->pm_pwroff_prep_fn = rk805_device_shutdown_prepare;
 		break;
 	case RK808_ID:
 		rk808->regmap_cfg = &rk808_regmap_config;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
