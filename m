Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D99A1561C
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:41:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=X60VDIn4CZ10MHehwpLlxQQ7MNS17vD0pLHY10msWAs=; b=lXt8/OGZ1ZJrnARkxhLi2wfNtV
	X3H7L++JecudYYT/adWpX1jpCQNnxG7vdeYQzy6/yhJKlMEeJw0uJpARy1l11XVHdsCkySC+hKxMC
	/MhoWypAXMfvV0ICElKt5BIzKJpQUbWoa64S88fhoZjntTBW9vRLsQ5/bmhb+t/85AvH+BSagV9yr
	AwrEBdJ1E+zBWNGUv7fSGuT8p5glEi3CHkS1kW4gHHA41tGDyiCcnnEEW/lvjvrJxx4bXWJbxVYT7
	OzDt+84hRITZdrknEY457FcE5WYEuNLt7QOI7RrtUs/ol07MhSibwA+T3FY4/qPbUeDcT0tuv7WyP
	ociAEMQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmIo-000168-3q; Mon, 06 May 2019 22:41:42 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmIR-0000l6-9o
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:41:20 +0000
Received: by mail-pf1-x444.google.com with SMTP id t87so6943692pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:41:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=FL8AbszKRwppcPe458VUea1JFGXeL+AyuUIjEd2fdow=;
 b=WD8Bl/oz4MmtFrgl/OR94+xGKMcER30iXdBiIr4cfyk1QUcR5T6uNyJUFUGTkXpwvS
 cyBf92CemP6O/jgpDmadEEXXJQXaB50ksCHXaLl8OL3UOesvt/RIvo5mIaCinVXp37V2
 NzSwXCFOw4VZMoJLhEAaOeByPwVXfN97zDFmZZUSM4RADzzcWPxo6c0wALyVFp1kSY4r
 vXS+JgG/+w7dw1E/u7NoB7l0TfMaBYZxEUE+CwGB11X0hsfTGO+jcFkGkvwVRM2qrcR8
 NcqYW5lEkUE9C8j/gvHc9jSodFPbNJ9VkoJ7lUr2DFVWsMJ1lyMy2IIpgQqZ9jet7hky
 gXLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=FL8AbszKRwppcPe458VUea1JFGXeL+AyuUIjEd2fdow=;
 b=td61Zb0wLf0LT8iOM7AvdhRXLcWWH0HwAFnshsIAaDS97UybgoFmMPvBaBdZ0nVZBO
 NgjuRQH6GUHvuNg57YOc6beAI8fEQWv6AgxE2wwrTX45z7so3KeZt/Y3R0VhoqAnt8k5
 HJCtYiyhyeb8huMXJ9aEcX6MtnDRyRWAE0y4l35+Q5I1eFfseskMwTNmxtIHS24eKiVF
 +VOKhVlOuSEuY+ScTupGVztyhEN6HExdaRZ/uH9glBedS3J+60yFq/CM9IFfa6xwQYYu
 kap1uYhdSi+/j6K53/feV220ifIL4Y0c7z1rX7ysmKMuHD2dP3aubfOcrtYNkPiKZ/ds
 ctYA==
X-Gm-Message-State: APjAAAUawSRJY4HfWc5270YBoD0Mzgc5TZx4YQ5NYlK2aBWg+AbEBAvv
 e8H7mXtD+YtJXw7GK7wcisA=
X-Google-Smtp-Source: APXvYqzazBLsdP/PngE2ih+OrbyZh7ATgIiJ4YmGbGaickNYpdl6b/VcxzBShKtEhMdIOZbF6BYLhg==
X-Received: by 2002:a63:fe0a:: with SMTP id p10mr34894833pgh.86.1557182478738; 
 Mon, 06 May 2019 15:41:18 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id s11sm19784153pga.36.2019.05.06.15.41.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:41:17 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Mon,  6 May 2019 15:41:09 -0700
Message-Id: <20190506224109.9357-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506224109.9357-1-f.fainelli@gmail.com>
References: <20190506224109.9357-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_154119_341718_A4D9A9EF 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "open list:HARDWARE MONITORING" <linux-hwmon@vger.kernel.org>,
 Jean Delvare <jdelvare@suse.com>, Florian Fainelli <f.fainelli@gmail.com>,
 bcm-kernel-feedback-list@broadcom.com, Guenter Roeck <linux@roeck-us.net>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If the SCMI firmware implementation is reporting values in a scale that
is different from the HWMON units, we need to scale up or down the value
according to how far appart they are.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/hwmon/scmi-hwmon.c | 55 +++++++++++++++++++++++++++++++-------
 1 file changed, 46 insertions(+), 9 deletions(-)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index a80183a488c5..e9913509cb88 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -18,6 +18,51 @@ struct scmi_sensors {
 	const struct scmi_sensor_info **info[hwmon_max];
 };
 
+static enum hwmon_sensor_types scmi_types[] = {
+	[TEMPERATURE_C] = hwmon_temp,
+	[VOLTAGE] = hwmon_in,
+	[CURRENT] = hwmon_curr,
+	[POWER] = hwmon_power,
+	[ENERGY] = hwmon_energy,
+};
+
+static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
+{
+	u64 scaled_value = value;
+	s8 desired_scale;
+	int n, p;
+
+	switch (sensor->type) {
+	case TEMPERATURE_C:
+	case VOLTAGE:
+	case CURRENT:
+		/* fall through */
+		desired_scale = -3;
+		break;
+	case POWER:
+	case ENERGY:
+		/* fall through */
+		desired_scale = -6;
+		break;
+	default:
+		return scaled_value;
+	}
+
+	n = (s8)sensor->scale - desired_scale;
+        if (n == 0)
+                return scaled_value;
+
+	for (p = 0; p < abs(n); p++) {
+		/* Need to scale up from sensor to HWMON */
+		if (n > 0)
+			scaled_value *= 10;
+		else
+			do_div(scaled_value, 10);
+	}
+
+        return scaled_value;
+}
+
 static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 			   u32 attr, int channel, long *val)
 {
@@ -30,7 +75,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 	sensor = *(scmi_sensors->info[type] + channel);
 	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
 	if (!ret)
-		*val = value;
+		*val = scmi_hwmon_scale(sensor, value);
 
 	return ret;
 }
@@ -91,14 +136,6 @@ static int scmi_hwmon_add_chan_info(struct hwmon_channel_info *scmi_hwmon_chan,
 	return 0;
 }
 
-static enum hwmon_sensor_types scmi_types[] = {
-	[TEMPERATURE_C] = hwmon_temp,
-	[VOLTAGE] = hwmon_in,
-	[CURRENT] = hwmon_curr,
-	[POWER] = hwmon_power,
-	[ENERGY] = hwmon_energy,
-};
-
 static u32 hwmon_attributes[] = {
 	[hwmon_chip] = HWMON_C_REGISTER_TZ,
 	[hwmon_temp] = HWMON_T_INPUT | HWMON_T_LABEL,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
