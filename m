Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C95071387A3
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 19:09:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=cMJXOKX6bIO3u38zmh3EnDWcxBamJjJGPBMVwjtgyNM=; b=UWq
	Bdngc5pF/GVp6Ud09v4gIywk4BWd7bTD9Wb5eX/Me82Qwl6FDN8oFFcveN1l0zSJiDDu+tkKA26X5
	qML42Vbu6Y5M7POCAPvfjQsoLkvDdpnfxD7aDatCL5zXhqWfv4Mg8DCvbySzcxUGgH93iuFpcq4G5
	ufKTP43xHUIjXJggnWAkCQKj3kinXQIZl6+ax26FLbrpOmSZTCSCLMYQuBlxwmKPU5GCZ0KDnPpR9
	e6oaoWYXrZx56aRVouIBsVRP4UNcimHaracA/F0sIEVM/LAF+nghyvWLo0nmo6p6wOEryLsAU9oTZ
	JTVE/NSbKtya1wcQowdjYSDLOpqJBzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqhg6-0003Cs-Vk; Sun, 12 Jan 2020 18:09:34 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqhg0-0003CA-E6
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 18:09:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id 4so3739790pfz.9
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 12 Jan 2020 10:09:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=YFlf1XFp+d/uDi+uNrIPUk2Y6SDrznnoWTCo2qHOO1c=;
 b=Ga9pgm5C0iLfeWe33cE/koxxKjwfcNFvrEKZf0Ky9E+MhCXRIhF55ivsqpgOWXHnO2
 svJHmJcAZKyc3wiybnfIPa9oksPPTYNxafloj1RYVq9WvoPiEl4LBvk0MKcHiUREiI2X
 5pAtar9oUyns+ELlqUCO6hfI+J6sltPPex4G1qOIIP2vCX7Lk+fvxuphQ+IZIDeWKcsQ
 TNEx44J6zuxPNdvd16G7obkCswt/HQosXzudv8rCo8d9mKp5hhHUZ0em9rsFHoJgEqq8
 iHuSHaTW/09OqWfW/VZ82DTfg8ZKYOgHTQ413qc1ohs3ZZwOoO/BM7hDZ6hRjY5tXulJ
 ee9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=YFlf1XFp+d/uDi+uNrIPUk2Y6SDrznnoWTCo2qHOO1c=;
 b=sOo/U4ARzcdCJnKeS/fTzR2HDXnns+x57pz9MqoG5FdoSPwGU9HtIXFLeqNadnZktx
 y6xu/flM04c95bDhp9ELaDacngbH3fzBnizjFFXNUbh5xFNfeG0HE5vn5Hk8ftHuDHZM
 rhZi5hR4i1Gq0VHaojc4cvvhwWYtWhbTQk2VwQU/td2i8uz47wisn24iU6vf9Ododiat
 gzrfBAS/A7MG3zzulBWBJW+vlxPlI3AOdm4HAZW82pID/L9BAaNCTKu1YckuGQ6d3UXt
 rLQdY90YknO8FUTRCcIEGF8I+QoOkHapwPDhykglcl4q+CDFCo0Nx8MgTW7hZCD6dTPQ
 k3wA==
X-Gm-Message-State: APjAAAXuz2RviHXGBpuPIiUIlkpuz5TUL8BqY//jIi+4dohurm0E35bM
 AIPN6ls6quIhJgFzSZoDJCk=
X-Google-Smtp-Source: APXvYqxEgc9wZ0mKVVT83Rm+ImBq7gb/sKaV6A45p6k4lTER/9OBierK3/qh/wcJSzfWagVHGso/og==
X-Received: by 2002:a63:234f:: with SMTP id u15mr16705116pgm.88.1578852567496; 
 Sun, 12 Jan 2020 10:09:27 -0800 (PST)
Received: from localhost ([2001:19f0:6001:12c8:5400:2ff:fe72:6403])
 by smtp.gmail.com with ESMTPSA id d22sm10183754pgg.52.2020.01.12.10.09.26
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Sun, 12 Jan 2020 10:09:26 -0800 (PST)
From: Yangtao Li <tiny.windzz@gmail.com>
To: anarsoul@gmail.com, rui.zhang@intel.com, daniel.lezcano@linaro.org,
 amit.kucheria@verdurent.com, mripard@kernel.org, wens@csie.org
Subject: [PATCH] thermal: sun8i: remove unused variable and unneeded macros
Date: Sun, 12 Jan 2020 18:09:25 +0000
Message-Id: <20200112180925.23705-1-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_100928_502171_1D152272 
X-CRM114-Status: GOOD (  10.11  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The cp_ft_flag variable is not used after initialization, so delete
it. After that, THS_EFUSE_CP_FT_MASK, THS_EFUSE_CP_FT_BIT and
THS_CALIBRATION_IN_FT are not needed, so delete them.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/thermal/sun8i_thermal.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/thermal/sun8i_thermal.c b/drivers/thermal/sun8i_thermal.c
index 4bcde9491edb..bd7549f9ecba 100644
--- a/drivers/thermal/sun8i_thermal.c
+++ b/drivers/thermal/sun8i_thermal.c
@@ -54,9 +54,6 @@
 #define SUN50I_H6_THS_DATA_IRQ_STS(x)		BIT(x)
 
 /* millidegree celsius */
-#define THS_EFUSE_CP_FT_MASK			0x3000
-#define THS_EFUSE_CP_FT_BIT			12
-#define THS_CALIBRATION_IN_FT			1
 
 struct tsensor {
 	struct ths_device		*tmdev;
@@ -88,7 +85,6 @@ struct ths_device {
 	struct clk				*bus_clk;
 	struct clk                              *mod_clk;
 	struct tsensor				sensor[MAX_SENSOR_NUM];
-	u32					cp_ft_flag;
 };
 
 /* Temp Unit: millidegree Celsius */
@@ -244,8 +240,6 @@ static int sun50i_h6_ths_calibrate(struct ths_device *tmdev,
 	 * register values and this will become a calibration offset.
 	 */
 	ft_temp = (caldata[0] & FT_TEMP_MASK) * 100;
-	tmdev->cp_ft_flag = (caldata[0] & THS_EFUSE_CP_FT_MASK)
-		>> THS_EFUSE_CP_FT_BIT;
 
 	for (i = 0; i < tmdev->chip->sensor_num; i++) {
 		int sensor_reg = caldata[i + 1];
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
