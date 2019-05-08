Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D147F17EB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 19:01:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ktPDIbIkN4ljVAyB7C//0FGWF2O9bl8dtsZ+MyXJWes=; b=DXEKi7RnFZjhKWWNUxPZ5wM13v
	+pncrs88UfoBl0JRfUjnxa4kvmFzOXVO/eaz7BCTIce2b+JPBuiktGwm6DA5knWwYHPzdtmlPLFz/
	16SwPmEPsU/I0/SPfR43LLfn8nnlpDlWJwfacuuKigM7XRLa7tW0M5nAwPpewxXq8oty+Gvluq+2H
	9S4do46APedWyf9CriGVRzmi/EYqCsoT0Gbx+XsN9/hezKgK1B6T876UCAS8CQHzR/fe1ChMOswtQ
	CXOw3nWemRBnNjHQIhW7zkduMPLaEzR0ypZoqB4xE5b0jyAozJyodX7XQfg71yi4SEuQgyD+5oFF5
	4Yx53sCw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPwM-0005OD-Cu; Wed, 08 May 2019 17:01:10 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPvu-00050T-Uv
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 17:00:44 +0000
Received: by mail-pg1-x542.google.com with SMTP id 145so400809pgg.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 10:00:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=Arjf5SjBWyqdlOF7ZBaYh9oh1wq7UwM1Y2hcNdX8mds=;
 b=LH2En+8GU9Jfc/Y08z8NM3JMYSd06Otfgk9YajGHKw8GLCAsze8McVlMGwMZ+1Fr8k
 GwpRAjy7GW3i5/0cd/TcVwKOZM5xu7bSEZOwYHT0RxDGRLWBqZbMCONfJIBKj++/dw9D
 VU+3FqgafzKAclaP0BBGBoR61bg5WhqlCm3uMdspjdUWiOLt7xHwrbFSBpbloe5EpMul
 raX7pnci8OoUb+ESIOMhsHx3/zAokq6jhAJDzKXhD+DT35ynJJqX5vCAtOKpsJAAPrMh
 +9vUwl/2oQo5sYI/D6LXsGKcBT8YgHC00FzobxJIu87XWEuPqRLkcwlNNByutJzTMshY
 t+1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=Arjf5SjBWyqdlOF7ZBaYh9oh1wq7UwM1Y2hcNdX8mds=;
 b=lyvdFHzZz3Nl8vLxLEGXmBGE2cs7Ri7CfSIlJiR308Qmgz8WbqzXzLPKdeOxhAZUpp
 eyssQXCKLhtBpxCK5KjTKVKTWR/osScH8yo+GieyjhDcmPD15HutPMqIhJjEXfT/v5Iy
 ttpnrN7k4o6KGZ/2+vBC5TfFwKdCbvvHE/pDK7qh9rUpidvyvUOU3HjOC456WEGv1lGH
 Nb47W+7XGurEFN3dlDov6PJdhTuG0lW9a8CLsSI2xWbLM0z35A1JU2ZKDfsml5fwriuD
 p0vyTrVrbbYPJHZXHbjYdARjF68gyguhI0YQ4wk1r7BOmp8oD0m3W9biK+mk5zKDXkkI
 Jkrg==
X-Gm-Message-State: APjAAAVewG4GnSivJxkx/qQkYocQBHISPoUIElMaTm7Gv2SiqNvAudTJ
 R2Rpkoj/mvJjmL0ixhtt8Bw=
X-Google-Smtp-Source: APXvYqwl9CXMPkpW61t5Q7DpVogsdh0PvSav6XMhmjJj84u2l1Kj6Zj/6Czq4HsuCQ8DX4bCnY+48Q==
X-Received: by 2002:a62:570a:: with SMTP id l10mr39828406pfb.151.1557334842162; 
 Wed, 08 May 2019 10:00:42 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id a80sm11347773pfj.105.2019.05.08.10.00.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 10:00:41 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 2/2] hwmon: scmi: Scale values to target desired HWMON units
Date: Wed,  8 May 2019 10:00:35 -0700
Message-Id: <20190508170035.19671-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508170035.19671-1-f.fainelli@gmail.com>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_100042_993294_0C8A13A8 
X-CRM114-Status: GOOD (  13.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
 drivers/hwmon/scmi-hwmon.c | 46 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)

diff --git a/drivers/hwmon/scmi-hwmon.c b/drivers/hwmon/scmi-hwmon.c
index a80183a488c5..4399372e2131 100644
--- a/drivers/hwmon/scmi-hwmon.c
+++ b/drivers/hwmon/scmi-hwmon.c
@@ -7,6 +7,7 @@
  */
 
 #include <linux/hwmon.h>
+#include <linux/limits.h>
 #include <linux/module.h>
 #include <linux/scmi_protocol.h>
 #include <linux/slab.h>
@@ -18,6 +19,47 @@ struct scmi_sensors {
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
+	f = __pow10(abs(scale));
+	if (f == U64_MAX)
+		return -E2BIG;
+
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
@@ -29,6 +71,10 @@ static int scmi_hwmon_read(struct device *dev, enum hwmon_sensor_types type,
 
 	sensor = *(scmi_sensors->info[type] + channel);
 	ret = h->sensor_ops->reading_get(h, sensor->id, false, &value);
+	if (ret)
+		return ret;
+
+	ret = scmi_hwmon_scale(sensor, value);
 	if (!ret)
 		*val = value;
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
