Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57D0A11575D
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 19:47:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=INNRCllAaqmCibRBra0gCtRbLP+6ukxL9POIC94x7IY=; b=Ze6XUiKlrTntVi
	7hxsXDy3lqDeOmmA0x3YD3K89LpTIre2P6qZDb9NaxnLG/j8/2l9aLfsJR56068lMjqyNT5IfIb2T
	hB528hDE5vCSYUlzerYhm5zGwAmqF6707exWwJEBFqkR64Zo8Eia951ueM3NHmjOVD2brlFLvTJAn
	aB6MMywBtMai6BZ+L9b8JSSDazU/M54BgTgKR45ezUJO84tF+oLb/fcB8Bw4nFaeWcyc/pVr85gqC
	gSMWqiowasHGbmeo5j8LSoarbzoHMf9ze3TVJxg/O50KNGJEo53jQNdPwnuRL0r5sya45Fue70Bp1
	6orEWT5kCRvmcog4N7Wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idIdC-0003q9-Hw; Fri, 06 Dec 2019 18:47:10 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idIcY-0003NR-1t; Fri, 06 Dec 2019 18:46:31 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so3758159pfz.9;
 Fri, 06 Dec 2019 10:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=9W7WPwjnJHtC/naxP3RfV5CxVXsAP5EpT3Px9490LQY=;
 b=NavYeQqvP2q3kvmYn9yXI7GVvVVwsk9RcyYQZAKX0qJZTpUmu7ccQJx8ZddSpP4rdN
 YbN4EHyYXmDe45mcoHsauFp99puj08zDp/HbL7hnWV6GlGyfUNPEXAFH3SESYIjUD2sx
 rbBcvEfRW54cgJgRMK9gM+kv7OJEYudOZ4UM8xnW+LP9g8x51gMC6cBDcxwAJBOsFjxu
 dVFP9hUKstU4PS/1LMjhG45yxL1G8igQeVf5MluEs+B196KekbXrndPv+YboAn3kVfEa
 HSOsQj1y141VQLNUZB8P/4uu1iV0FyNquhRWmZrej0SSlGTEwj110Rrj9NvyfcUW6Oq7
 OZIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=9W7WPwjnJHtC/naxP3RfV5CxVXsAP5EpT3Px9490LQY=;
 b=Adjq58GiDyyH30m3G5WTPSYrlTLp0M8Pkzcmz1EoREXr2xWIzdxC5Rf5TaHdbpvZGj
 G9rsKCDJa/Lc+sHG9cKOJOTXT5a35D0Qh0Npzx/d1EUT2Pn/LUb38t+VBbq+WP3g+zIr
 at6/t9m7ytV4Yf2dSgKljP3sist7ysZaJmuwD1hf40zdd5fVBAcXruTiwRCUKq3D5sZy
 6PFf7edKRbe2ttlSfCNTkP8X2djDhLZGMyD/w68pAj408xL3DvyFaEAqtnR8anQX6MUq
 bqigUNU8XMsrmst7SeNgupKKABsdIniR8hDFUiMgCmKKNFN5rM0a87Z2O8grONgO/WNb
 TK4w==
X-Gm-Message-State: APjAAAUC/mmDttYi8RSXBLWqqVLWcOldODxZ+j6ZPm8To/aYLpP/o9qd
 Z3U3sUaD5TyHLAFOQ3D6PxU=
X-Google-Smtp-Source: APXvYqzz67JrfhxkW/+t3kgMvplm4CMLvf6iCKoVJbY3ACxHKyUocDE0Q5QdpDqkNJjvaZcvGlM2WQ==
X-Received: by 2002:a63:483:: with SMTP id 125mr5032698pge.217.1575657987999; 
 Fri, 06 Dec 2019 10:46:27 -0800 (PST)
Received: from localhost.localdomain ([103.51.73.190])
 by smtp.gmail.com with ESMTPSA id p4sm16777039pfb.157.2019.12.06.10.46.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Dec 2019 10:46:27 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Heiko Stuebner <heiko@sntech.de>, Jagan Teki <jagan@amarulasolutions.com>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Robin Murphy <robin.murphy@arm.com>, Daniel Schultz <d.schultz@phytec.de>
Subject: [RFCv1 3/8] mfd: rk808: use syscore for RK808 PMIC shutdown
Date: Fri,  6 Dec 2019 18:45:31 +0000
Message-Id: <20191206184536.2507-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191206184536.2507-1-linux.amoon@gmail.com>
References: <20191206184536.2507-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_104630_143501_AAB284EC 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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

Use common syscore_shutdown for RK808 PMIC to do
clean I2C shutdown, drop the unused pm_pwroff_fn
function pointers.

Cc: Heiko Stuebner <heiko@sntech.de>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/mfd/rk808.c | 10 ++++------
 1 file changed, 4 insertions(+), 6 deletions(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index 713d989064ba..0a098fbdf112 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -467,11 +467,6 @@ static void rk808_update_bits(unsigned int reg, unsigned int mask,
 			"can't write to register 0x%x: %x!\n", reg, ret);
 }
 
-static void rk808_device_shutdown(void)
-{
-	rk808_update_bits(RK808_DEVCTRL_REG, DEV_OFF_RST, DEV_OFF_RST);
-}
-
 static void rk818_device_shutdown(void)
 {
 	rk808_update_bits(RK818_DEVCTRL_REG, DEV_OFF, DEV_OFF);
@@ -490,6 +485,10 @@ static void rk8xx_syscore_shutdown(void)
 					SLP_SD_MSK, SHUTDOWN_FUN);
 			rk808_update_bits(RK805_DEV_CTRL_REG, DEV_OFF, DEV_OFF);
 			break;
+		case RK808_ID:
+			rk808_update_bits(RK808_DEVCTRL_REG,
+					DEV_OFF_RST, DEV_OFF_RST);
+			break;
 		case RK809_ID:
 		case RK817_ID:
 			rk808_update_bits(RK817_SYS_CFG(3),
@@ -576,7 +575,6 @@ static int rk808_probe(struct i2c_client *client,
 		nr_pre_init_regs = ARRAY_SIZE(rk808_pre_init_reg);
 		cells = rk808s;
 		nr_cells = ARRAY_SIZE(rk808s);
-		rk808->pm_pwroff_fn = rk808_device_shutdown;
 		break;
 	case RK818_ID:
 		rk808->regmap_cfg = &rk818_regmap_config;
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
