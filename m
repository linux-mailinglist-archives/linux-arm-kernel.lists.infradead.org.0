Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 89F4E16B83
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:38:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=n8x34qC/C1x47L/5+kqAzPyn+BcTxFWaDvhOh9XV63E=; b=ExPV4PE3WR6rWfDd2EKVleRTv3
	utfliQwCcBSCmAEkX9B9OTqXFXgYdwdTXgspJYhRBLDfjQp8vXjgoZNzi3QM6gW351OMCHl5aXB0Q
	I+GBs7p7OC2cYTR37R4AD1sno1be+cNHSxehEQPgbJB6Sy7hNAlUngAiXklbj4t/PhW8mV4SAyAhX
	L+Ex7hqD5+uMaCHW0CM967gSzmi0Jxn62R4ofeX1FKK2z4hC/dPco8OmUeGu8VqJ6RV2RGjJxFoRf
	/2yRieoSRVQCe3bScNkk0UUBdOgq8SWZNL/+hCLNf5LaPuE6WyodU6JXjO1y9Z0c7KR7HkbQEZbCP
	9BqtkxaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5vS-0005qc-43; Tue, 07 May 2019 19:38:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5ut-0005GM-PF
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:38:23 +0000
Received: by mail-pl1-x644.google.com with SMTP id y3so8690194plp.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:38:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=0un4Zq1Ylcl4MILUCeu+0vxFmB6uI/BzyrLOsfSvsMM=;
 b=RFOUUtGXP8OJR5bQmeIdNY3FuggAcfnTfuyUoXqn9lbFOD3gfZnBbA63LWUpgklwQ0
 7MI/Qs3Ae2RpZm4tI4XSW4RxXp7Y3xj7Z1uwkilzE6NDrPqc3uvJwx8/vr2giw9wKfB0
 zkDlRQXeb/bF6fflJkc0DBDNJNtkVoQIdoeimGxZJUPGfJGRLaCpbx2IIkj3foDMYjOO
 PWaPmr/M3yhPf7N681uWwQDkxLfH2/8qL9wUalhnAnG5ihkkEaJK+G+QhLmANO7vRiTn
 cgcZ8jdoAM7U3czBbWeKKh7ObtbqV5/X4mA9beUOefb+nLMwGUReTc2+PVbgv41TMLfO
 gXdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=0un4Zq1Ylcl4MILUCeu+0vxFmB6uI/BzyrLOsfSvsMM=;
 b=AB9Wqx9aMc8M8UVrzWzXmQjsRjWDWN8aG1glC6dgR6qYbyDfcU17qEFCOWo7dwf4MF
 HgDdnrCWh73BVc2pEHA1d9ELUPHyqBp8hbsnAGX/NsdwgryJaY6iFPUOwCiHVASsSHGf
 FEGhDiy8PwsWuoJB2i3frG9czHRqVP74Wn4E3YGfpJ0duo6zoBHNA/CWpIYRipftk/Qy
 fFTzUqFGZJMpsqFg/lM5GIUxZNLZzlRqoenbPNB6XZML9f65bprX5/R4w0y1S3o+Crdn
 oXvJIVUcsTJWU7MdgxgBeQPfTTq3LH21p8EXJXgRgc1g7IGu2YSAVQ47I6e7h7IUG9Ax
 8kHw==
X-Gm-Message-State: APjAAAWd/EgAi4+xxgLUlEwEl6T1ojBS34/XVtM2qjhWYSfu6iC3RMAS
 4lnXD8LNZUjBkbYLyzCWF48=
X-Google-Smtp-Source: APXvYqy9JrXGy3NKwIYDouYAWcrRPVQJ8hxuwN5Y/em8coxBLkR2WaURI4/cr8v4DaOdBargyNfPXA==
X-Received: by 2002:a17:902:e188:: with SMTP id
 cd8mr20263009plb.110.1557257899147; 
 Tue, 07 May 2019 12:38:19 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id l21sm5964658pff.40.2019.05.07.12.38.17
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 12:38:18 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 3/3] hwmon: scmi: Scale values to target desired HWMON units
Date: Tue,  7 May 2019 12:35:04 -0700
Message-Id: <20190507193504.28248-4-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507193504.28248-1-f.fainelli@gmail.com>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123820_015630_D2143F74 
X-CRM114-Status: GOOD (  15.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 drivers/hwmon/scmi-hwmon.c | 30 +++++++++++++++++++++++++++++-
 1 file changed, 29 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index a80183a488c5..5c244053efc8 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -18,6 +18,34 @@ struct scmi_sensors {
 	const struct scmi_sensor_info **info[hwmon_max];
 };
 
+static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
+{
+	s8 scale = sensor->scale;
+	unsigned long long f;
+
+	switch (sensor->type) {
+	case TEMPERATURE_C:
+	case VOLTAGE:
+	case CURRENT:
+		scale += 3;
+		break;
+	case POWER:
+	case ENERGY:
+		scale += 6;
+		break;
+	default:
+		break;
+	}
+
+	__pow10(abs(scale), f);
+	if (scale > 0)
+		value *= f;
+	else
+		do_div(value, f);
+
+        return value;
+}
+
 static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 			   u32 attr, int channel, long *val)
 {
@@ -30,7 +58,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 	sensor = *(scmi_sensors->info[type] + channel);
 	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
 	if (!ret)
-		*val = value;
+		*val = scmi_hwmon_scale(sensor, value);
 
 	return ret;
 }
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
