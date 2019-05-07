Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE70A16DBE
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:10:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+CWPg8giFZAAke3bfwZf2K82ZhZ7khazy7hD6SBVkJo=; b=J4LhpLkO70hGmO0CLLnpL0Z73c
	mYd7LRK5TFMYdMTeDLVqFCO/jTS1H/V+9cAFWAwwvrftbeGBd0m58A1Zozqmz2XWh70OAz9y4kazJ
	uKZZI9VMzbO/iLPSUH+CH2z2X8rWaV4UmX5/64cvXuz+n1tRYsSlof3MB8YL+EQXiYTmlgOQxO57A
	2rhIvt/RtIqQnH8QqJ/adBCIu6yDX/pmjrbhg7Vrv3ef2+dj+u2i5670TIopUYPwdi2HCdAoDZ92j
	WymzrhgXLrAgNmjqwqAVTa10Q0r7uuxifYXVpW7zG7LcnuQ1RMZvrjHMEiqR2M+gv6sEjH2VPJ7yY
	iDR5y+3A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9EQ-0007FK-Qk; Tue, 07 May 2019 23:10:42 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9E0-0006mJ-RV
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:10:18 +0000
Received: by mail-pf1-x441.google.com with SMTP id t87so8851900pfa.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:10:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=jKMO64xZ/NLNKAqyiQNdSxQ5RK52UXZdK9wfMghWcTw=;
 b=S6HCWjxdMhJXtpwtM6/5wElmUx+WcK79V76XMFaSdug+PAu+yyFKLenuOkNhRbUxmS
 v3peC+1jROrGVnrXIO+nS9/OSVcDeZ0XUNanPKar19SXIlUGdEois0Y36nWjHYo55e+t
 Apt2ZkWGfyiHwqu8+2TeAWya9gA+W3IanulvL9jEBzQBrfuBZUuOnqV3OycdOW45RDgQ
 ietXGqmx6LdjfDE8N760ppa9EixmyUX/Mebgb4XYQjyT0pWlFOH+1RYHxeZ4g0fODrjV
 /CdGuaj/I+JvyJ8z51L4ubjESbAmmGTB6BZWI1e/dlj5qk6WT+YUJNX/csrzSFx0fbAb
 7keg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=jKMO64xZ/NLNKAqyiQNdSxQ5RK52UXZdK9wfMghWcTw=;
 b=ZiVIQ1Oy25HU1dooehTf06BALpejFtv/P/OsVTlc4ZT/OFNk1NJhjvQnbMv2Ytsx8D
 zWQeXbmK3i4ngHVhj4N+gTqxKabaUbc8BBSYNSu996nuSr4xOM+NketGWKDrNvZW7zJ5
 gKFDR8KYDo3SwkxLNfKtS6dvIZREUVWse1m14lt+S9J2JT7jU7Lj7ka5w1/hwSVTpnkD
 5m0mKyJmf9g49SRe3OPoqsouTLLqbdg+Oq4y2wJBUw4uV2UxUxvfbs0zWUAFOxhgxnH2
 pv96K0QzLPIu0vPB+qVXED6PKJRzFxFtoQW8DxQXasdbXveprE7+5XZXjpe8dt8TOJRU
 SAGA==
X-Gm-Message-State: APjAAAWRGhMRcMKbPnqQPzsbTSYcFRlsWayYYbPpClWw/+Bmc/2vV/am
 eJCR6enjXwPkzv+HXrkxHpk=
X-Google-Smtp-Source: APXvYqxwBYjE6jd3+l8NIjy4bYaiYCnr9KFnXMPOKo6jq8A3gHkYS7MaEekUk25FuV5XGUSfcQ+cjw==
X-Received: by 2002:a63:e956:: with SMTP id q22mr43144036pgj.277.1557270616179; 
 Tue, 07 May 2019 16:10:16 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id w12sm7154742pfj.41.2019.05.07.16.10.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:10:15 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Tue,  7 May 2019 16:09:17 -0700
Message-Id: <20190507230917.21659-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507230917.21659-1-f.fainelli@gmail.com>
References: <20190507230917.21659-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_161016_907980_D779864B 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
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
 drivers/hwmon/scmi-hwmon.c | 43 +++++++++++++++++++++++++++++++++++++-
 1 file changed, 42 insertions(+), 1 deletion(-)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index a80183a488c5..7820854e5954 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -18,6 +18,47 @@ struct scmi_sensors {
 	const struct scmi_sensor_info **info[hwmon_max];
 };
 
+static inline u64 __pow10(u8 x)
+{
+	u64 r = 1;
+
+	if (unlikely(x > 18))
+		return r;
+
+	while (x--)
+		r *= 10;
+
+	return r;
+}
+
+static u64 scmi_hwmon_scale(const struct scmi_sensor_info *sensor, u64 value)
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
+	f = __pow10(abs(scale));
+	if (scale > 0)
+		value *= f;
+	else
+		value = div64_u64(value, f);
+
+        return value;
+}
+
 static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 			   u32 attr, int channel, long *val)
 {
@@ -30,7 +71,7 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
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
