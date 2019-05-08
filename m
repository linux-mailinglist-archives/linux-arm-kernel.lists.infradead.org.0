Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05D4518003
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:47:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=zxUgd2JYuRtF8Arxx/DPTq2OKnok0gtGCOxzlwGXDq0=; b=oQdIUhwtsLhUF5XEdJO2jitlUL
	+6t/nSCi0MSeML3gNeyxlk5cbdyDUiiqY8x6UtZu0knds5on8iy8tQ6Wca9EW0CJNfZN+V/A5fnAu
	dJhgF4bfll9XwIsXTERDcLRLwN3u1ySO0PEM1vT2rsZV5mt4NNYhhkhbYvvYb9CHZ9nLVbs30Nxjy
	T9lc4knBYup5b/rllDVTIj4X7VU+w/pHz17+NHzjpg1vm3f3th5jBlwJVOxjnvpBvAVq+yXOJVI0i
	CGk+YxljYyv5vOlqUxXdi9iWopYZeX3roR/Bi6ga8EvHHH4uBF8f5IHYCuFTn74AzIfiRtPRrC4Lx
	WISEnw9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORb0-0001CY-JZ; Wed, 08 May 2019 18:47:14 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORaW-0000ki-SW
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:46:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id a3so1292462pgb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jjWr7A4I6wrCVekiaLqsGdBePGpwWiWT94AbX1NT9d4=;
 b=WD6BDPB+Th+QkDF0v2sQr7Ri9+1azG8Iff04dhcNHbaVVINNdiNgS8sNad5OTKffzM
 6TPLZBrSYL03RBhTKhxweI2IL4ueCy7c77Zu8ZCPEc3DNHXb0fTa7j3dhS4NLLb+trvg
 fGc/uzL+zNC+nysK3IyXfM9vjuq5/nsQmHKO+Y8D6ydjRPDxyp/P5wWGw0nzwy/P62G+
 12uTaajACxZzNR6CTiA0bYtYmXIVreEkJOBiDt/EK34lOGjRov65mEokFoPmZXqP8SkN
 ewvBaYcYcdnMvqDKNCBOVpOg0PA+yaNFPRVt6I34H25ISzOpIpn+RsSSDAEeXp0a4WyZ
 EnpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jjWr7A4I6wrCVekiaLqsGdBePGpwWiWT94AbX1NT9d4=;
 b=fc9A2/3UyX5cMlBLlEWRcITTZ3zFWf8/NqNDuf+LeiJtJdZJm7o9comZosVKvI10Zs
 50ziID29zDiiHdmrt8eFo5KKQPK4FL68nqrp8FW4VuJhMhmJtEEqWqJaUTSjuYuqXPF/
 VnhmhKxJbUqIXfNIIUEshdqdx9vDH3+8uw0TOiM1pjv8H3fZDubNJFuevaqhBiujtdUE
 ZHY2pc0Lv9ov97LAutmXi9wBByzpUXT3t5/NMg7PkYHYoiSzCnd1VJFBtrTQRztM17Aa
 lyx6ENOaUNC+Ae9J8tI2SH1pjcz7tYII8eTrCBjq8vTzoICJs0dkijaQSsfQdoVZM9Zy
 SIxA==
X-Gm-Message-State: APjAAAX0xhu+ro8SJKndmUjaL1uxNsry44DC98WBIYn5O1Cadr2KhHCj
 kErU0IL7iC6yGP7N98ZpXxE=
X-Google-Smtp-Source: APXvYqxhWMIbkdgMB2EMmuGoDM9bgUZBWyQ53tKLMhKoRzPYn3OPYVL9dzOq0o8hZd+6GeR/LUXbag==
X-Received: by 2002:a63:317:: with SMTP id 23mr29515935pgd.414.1557341204061; 
 Wed, 08 May 2019 11:46:44 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o66sm23257953pfb.184.2019.05.08.11.46.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:46:43 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 2/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Wed,  8 May 2019 11:46:35 -0700
Message-Id: <20190508184635.5054-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508184635.5054-1-f.fainelli@gmail.com>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114645_062068_A25C13B8 
X-CRM114-Status: GOOD (  13.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (f.fainelli[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 drivers/hwmon/scmi-hwmon.c | 45 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 45 insertions(+)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index a80183a488c5..2c7b87edf5aa 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -18,6 +18,47 @@ struct scmi_sensors {
 	const struct scmi_sensor_info **info[hwmon_max];
 };
 
+static inline u64 __pow10(u8 x)
+{
+	u64 r = 1;
+
+	while (x--)
+		r *= 10;
+
+	return r;
+}
+
+static int scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 *value)
+{
+	s8 scale = sensor->scale;
+	u64 f;
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
+	if (abs(scale) > 19)
+		return -E2BIG;
+
+	f = __pow10(abs(scale));
+	if (scale > 0)
+		*value *= f;
+	else
+		*value = div64_u64(*value, f);
+
+        return 0;
+}
+
 static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 			   u32 attr, int channel, long *val)
 {
@@ -29,6 +70,10 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 
 	sensor = *(scmi_sensors->info[type] + channel);
 	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
+	if (ret)
+		return ret;
+
+	ret = scmi_hwmon_scale(sensor, &value);
 	if (!ret)
 		*val = value;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
