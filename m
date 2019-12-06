Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5567611575F
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:47:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y4YzEFCN0wjTG9T8MObQt9VCEgFwMSY+BBaPGwKS3tY=; b=m3wL4uC65HtDQL
	3UHf5sVi6fRhPlVonEcbOkFvHnrzdaEn2yyQg6Ww9gRvvETwXdGkgkex3NrT7Wvlu/MHvQVZfrZmF
	XhO1p1RF5quk1dQxgoesWKN9gGLbKoWgChjI+gyAy6b/aSiTOO409qh3NYAy5P4c4ycyQ6cxb9eTp
	MxwzkY1i+OZsWSvZtA7lV+dYJToBx0vc1cmJUkXI41hoCfqOSkiFYlnqfMKGr5N5/hTlVYJiNlRfD
	/KZaXt3FWus3ZKK9iWzv0yjveIlmhYb0D2E6TT1gN1ZyvNDHXf+RzI6kKNz0+1ubGPgMrO45N9/Hb
	WTn9s13hfS2yA0sW8eiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIdS-00045b-Ty; Fri, 06 Dec 2019 18:47:26 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIca-0003Qo-Lt; Fri, 06 Dec 2019 18:46:34 +0000
Received: by mail-pf1-x443.google.com with SMTP id h14so3760110pfe.10;
 Fri, 06 Dec 2019 10:46:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=I11/1g/9q+frAVf8+DPvgghH4KQ81JT2S0kbypabsyc=;
 b=VMnp87KdtKaHKbIdIynQJjnh6Rwx73cgOqHapRh8B69i4jp/3sjISCsxhLktJIGkSy
 ZNe1M/lVfmzI6SIW2RwIZd/xu5yFsCzRRZOmM7mhk/UlM0bWSQrRNUBxQQnAmPprF42J
 sZVVochTM/CWvOunmhgF/FvGmCl+XtfvNxs2ZmvDeqHmpb2EX5Y08QJCJDs4qAD+fRjo
 Y5ojsHjT4xc3OK5ssN763cBtqpVYzc7Ec4VqydoM4Jlmha7xuedeCW5Fl0Hr23YdJxPt
 ChmAu38tXs01yOllIWYQTSVi32qxfNHAoT1Gj3Ikgiy6PR1RCo+9jbDRygLnTxTKky6a
 aHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=I11/1g/9q+frAVf8+DPvgghH4KQ81JT2S0kbypabsyc=;
 b=T8H6cJG3+9qB+7KLCioJaQ7JnYWwQuKYoGTa+8Hjr2Y+lTJCLJB8ilK8sojunl7j7m
 o/S6DBbuVImifw7VzMJA3LW2v/l6dIraAwPe8bR9NtQafK+YIwrcxdGeMF4caaljHeyS
 zOS2y3PlD1wXtQtxHs6Kd9ZpOESZPkZ6+NYxPQlhuqcVIDZLm+6J6b82ct4VswSEQ9Xf
 /QTz+2bgXZgTANR5XWlWq8ESKbTP5uzXU96LjOil9LesVZ8s2Wd0WK1aqsqe4j85jvpP
 dS1zog3c3Hao8pvobjyvw0JkH1cafSP4MTKLvAUXmUyp+VZLSCsALAfQGoXJDaxPe2QW
 JOdw==
X-Gm-Message-State: APjAAAWrnAm0z8Cp3Ey9c0YqWM63sWUrc+nJxMV6613dMgl8Mjxhju2M
 QKjDGaUR3Z+02r2ocNmqVpc=
X-Google-Smtp-Source: APXvYqwoypDoF4nKIA4Nt1tXSNz7e6TbMFkJOI8WhnkDVk2bs1ION4YrEP1wl6B0klb7gqb3Vn4+mA==
X-Received: by 2002:aa7:90c4:: with SMTP id k4mr15684240pfk.216.1575657991783; 
 Fri, 06 Dec 2019 10:46:31 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.28
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:31 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 4/8] mfd: rk808: use syscore for RK818 PMIC shutdown
Date: Fri,  6 Dec 2019 18:45:32 +0000
Message-Id: <20191206184536.2507-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104632_727679_4BAD2534 
X-CRM114-Status: GOOD (  11.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

Use common syscore_shutdown for RK818 PMIC to do
clean I2C shutdown, drop the unused pm_pwroff_fn
function pointers.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 0a098fbdf112..4b3b90dad4f8 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -467,11 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
 			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk818_device_shutdown(void)
-{
-	rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
-}
-
 static void rk8xx_syscore_shutdown(void)
 {
 	struct rk808 *rk808 = i2c_get_clientdata(rk808_i2c_client);
@@ -494,6 +489,9 @@ static void rk8xx_syscore_shutdown(void)
 			rk808_update_bits(RK817_SYS_CFG(3),
 					RK817_SLPPIN_FUNC_MSK, SLPPIN_DN_FUN);
 			break;
+		case RK818_ID:
+			rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
+			break;
 		default:
 			break;
 		}
@@ -583,7 +581,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk818_pre_init_reg);
 		cells = rk818s;
 		nr_cells = ARRAY_SIZE(rk818s);
-		rk808->pm_pwroff_fn = rk818_device_shutdown;
 		break;
 	case RK809_ID:
 	case RK817_ID:
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
