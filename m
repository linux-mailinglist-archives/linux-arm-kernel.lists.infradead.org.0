Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 627FD7D28D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 03:06:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1qXtr2zqiyt+DiM19NakFxxC13E57jqIJ4Wxdm2638c=; b=uqWIvT0Uwx9X+k4wH2QLDrLNL+
	UffBxyTJ9PGFR17Ghx1V+bkKbhObiF1bvEiGLAq5I3WAZV1eYBYrDIP4vI/Z6Fpek6uHAhzu1++hf
	rNvnFM9Bniy3lrrwbJDD8BCf4kKm9IeXf9QwdG9cisrNnkJKy6ovx9VmLv6bsGQcH6juB/+2cawmh
	GGuHsTe/E0YKH6XKQpC2Hk80fDpPZd2+2knYPWc1nqp7wloxJGBvEQWpPN5690y9MuTboUQsWcal5
	s0kl9W31b6tA4QYPuPKQytFlmJTVSzKSiaihvOZmBk16DgVlEJ5hMI4EpAj9CY3hH0d7BAodIhum6
	s2yl4jcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hszXA-0003Z3-1E; Thu, 01 Aug 2019 01:05:32 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hszX2-0003Y3-Cm
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 01:05:25 +0000
Received: by mail-qt1-x841.google.com with SMTP id d17so68404028qtj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 31 Jul 2019 18:05:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=vkqM9EeVWWbKA5vw3EmFiWRlvOGZd/rCtzh5bKIOEKs=;
 b=jXKRyvbareuPnE1a8m82GNDqLkm/E0UvpKzdsyPMeC/g3cOYCMoRGIDkeOk4t6UgJs
 ozXvA372TC0ax6OR5bOKbcpRv0vEmbJVieeImoB8AALz1X60n4Vmq1fUsz5ZclnKrnv2
 yDe6YWpfGtMEG0qGHMCslyBBRfocU0kzgLo1HGSjfnQqQrsFc+wrO355iVOOY2l+V45D
 2Ai+2j3CdeihYerbBUSEcMOmXM7xrrqqXzg3hrqrmk8B9jpHRCScvFhSJ+FLLkEZC351
 Je3kFTGcA04HMnPCJX/bvUk9imNXKXrP7obb7/tLI+rhk89r4RsnE1yXxPmT4aAjYRBk
 yCTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=vkqM9EeVWWbKA5vw3EmFiWRlvOGZd/rCtzh5bKIOEKs=;
 b=f1mH+f+ooJg0yDaJl7th8kl1xl8M7eKnJQs3Wqg1l2WSJ7nhVYgg66aS0I7yU3ZGsR
 R/nXOLXHp1HN7kU/JCmLenvn/ScgQkZghWDduT4nsm6xv35gDmn1C833Z14BkF5PgtAL
 AOOKo1jzdBQjEic8Ww5sNpls+Q5x0a/PPuKOSTY2I6EEWPVz/HehoCylnZoqKKaOEmZt
 iUeieUJOYwtIiHW4Ld0lrKycu0MSgxY6bThXcquGU5GSJcwNrTatIU/A/e49QUcaJHSC
 imD5Ub4VVGR5qoLkysKaNVqw58zlHFWpgT5PeDlEeEIl7W6yA7yBlb9cBkEs+RZf+GHr
 +PPA==
X-Gm-Message-State: APjAAAVlXAvemENakSD1gSmg2tlMvkrIU6u8d+FRq2D9cc5j9iX+PBzt
 osWqw3Muy7G6/7lM1CeaA7Y=
X-Google-Smtp-Source: APXvYqyfrvxLJR+HLhyFWs8WJHa2+UjSyj7vgU8RJRflZ1OK6h4/aFB8+pab32KuYrgdl7X41UTeUA==
X-Received: by 2002:ac8:66d8:: with SMTP id m24mr39873221qtp.355.1564621522335; 
 Wed, 31 Jul 2019 18:05:22 -0700 (PDT)
Received: from lepton.domain.name ([191.243.232.18])
 by smtp.gmail.com with ESMTPSA id 6sm32734408qkp.82.2019.07.31.18.05.19
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 31 Jul 2019 18:05:21 -0700 (PDT)
From: =?UTF-8?q?Andr=C3=A9=20Roth?= <neolynx@gmail.com>
To: neolynx@gmail.com
Subject: [PATCH 1/3] OMAP3: PM: Set/clear T2 bit for Smartreflex on TWL
Date: Thu,  1 Aug 2019 03:04:48 +0200
Message-Id: <20190801010450.27863-2-neolynx@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190801010450.27863-1-neolynx@gmail.com>
References: <20190801010450.27863-1-neolynx@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190731_180524_460610_CA9DDEB3 
X-CRM114-Status: GOOD (  17.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (neolynx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Kevin Hilman <khilman@ti.com>,
 Thara Gopinath <thara@ti.com>, Shweta Gulati <shweta.gulati@ti.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Thara Gopinath <thara@ti.com>

Voltage control on TWL can be done using VMODE/I2C1/I2C_SR.
Since almost all platforms use I2C_SR on omap3, omap3_twl_init by
default expects that OMAP's I2C_SR is plugged in to TWL's I2C
and calls omap3_twl_set_sr_bit. On platforms where I2C_SR is not connected,
the board files are expected to call omap3_twl_set_sr_bit(false) to
ensure that I2C_SR path is not set for voltage control and prevent
the default behavior of omap3_twl_init.

Signed-off-by: Nishanth Menon <nm@ti.com>
Signed-off-by: Thara Gopinath <thara@ti.com>
Signed-off-by: Shweta Gulati <shweta.gulati@ti.com>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Kevin Hilman <khilman@ti.com>
---
 arch/arm/mach-omap2/omap_twl.c | 60 ++++++++++++++++++++++++++++++++++
 1 file changed, 60 insertions(+)

diff --git a/arch/arm/mach-omap2/omap_twl.c b/arch/arm/mach-omap2/omap_twl.c
index 6787f1e72c6b..1dae906128c2 100644
--- a/arch/arm/mach-omap2/omap_twl.c
+++ b/arch/arm/mach-omap2/omap_twl.c
@@ -43,8 +43,15 @@
 
 static bool is_offset_valid;
 static u8 smps_offset;
+/*
+ * Flag to ensure Smartreflex bit in TWL
+ * being cleared in board file is not overwritten.
+ */
+static bool __initdata twl_sr_enable_autoinit;
 
+#define TWL4030_DCDC_GLOBAL_CFG        0x06
 #define REG_SMPS_OFFSET         0xE0
+#define SMARTREFLEX_ENABLE     BIT(3)
 
 static unsigned long twl4030_vsel_to_uv(const u8 vsel)
 {
@@ -241,6 +248,18 @@ int __init omap3_twl_init(void)
 	if (!cpu_is_omap34xx())
 		return -ENODEV;
 
+	/*
+	 * The smartreflex bit on twl4030 specifies if the setting of voltage
+	 * is done over the I2C_SR path. Since this setting is independent of
+	 * the actual usage of smartreflex AVS module, we enable TWL SR bit
+	 * by default irrespective of whether smartreflex AVS module is enabled
+	 * on the OMAP side or not. This is because without this bit enabled,
+	 * the voltage scaling through vp forceupdate/bypass mechanism of
+	 * voltage scaling will not function on TWL over I2C_SR.
+	 */
+	if (!twl_sr_enable_autoinit)
+		omap3_twl_set_sr_bit(true);
+
 	voltdm = voltdm_lookup("mpu_iva");
 	omap_voltage_register_pmic(voltdm, &omap3_mpu_pmic);
 
@@ -249,3 +268,44 @@ int __init omap3_twl_init(void)
 
 	return 0;
 }
+
+/**
+ * omap3_twl_set_sr_bit() - Set/Clear SR bit on TWL
+ * @enable: enable SR mode in twl or not
+ *
+ * If 'enable' is true, enables Smartreflex bit on TWL 4030 to make sure
+ * voltage scaling through OMAP SR works. Else, the smartreflex bit
+ * on twl4030 is cleared as there are platforms which use OMAP3 and T2 but
+ * use Synchronized Scaling Hardware Strategy (ENABLE_VMODE=1) and Direct
+ * Strategy Software Scaling Mode (ENABLE_VMODE=0), for setting the voltages,
+ * in those scenarios this bit is to be cleared (enable = false).
+ *
+ * Returns 0 on sucess, error is returned if I2C read/write fails.
+ */
+int __init omap3_twl_set_sr_bit(bool enable)
+{
+	u8 temp;
+	int ret;
+	if (twl_sr_enable_autoinit)
+		pr_warning("%s: unexpected multiple calls\n", __func__);
+
+	ret = twl_i2c_read_u8(TWL_MODULE_PM_RECEIVER, &temp,
+					TWL4030_DCDC_GLOBAL_CFG);
+	if (ret)
+		goto err;
+
+	if (enable)
+		temp |= SMARTREFLEX_ENABLE;
+	else
+		temp &= ~SMARTREFLEX_ENABLE;
+
+	ret = twl_i2c_write_u8(TWL_MODULE_PM_RECEIVER, temp,
+				TWL4030_DCDC_GLOBAL_CFG);
+	if (!ret) {
+		twl_sr_enable_autoinit = true;
+		return 0;
+	}
+err:
+	pr_err("%s: Error access to TWL4030 (%d)\n", __func__, ret);
+	return ret;
+}
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
