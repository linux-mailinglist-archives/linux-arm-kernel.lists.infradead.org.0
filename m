Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA3516DBD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 01:10:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBONK892MuSmLfjUgo6oUtxsgZDJF8aeLdjbJm2hVgc=; b=QqVbnJxG/h3O97DO6G7rmR6tkW
	362cTuBuMqdvcwKTQ/PTE80dRfiUHIuehmiwkFZMbf3Mu4yGgH7UVTWxVLXSoWMaUTb91YLsukcQd
	GcvlyHXnR4csM8W9YTDV5VINDJMgsxJVR405w2Ew0lyuoFq0s5v+IHo6U0+aRiI5C8As2kvOiXABx
	CaL8fOGZjh65Yv6sblGE6h6aoNcnbAz8DoJeYYQNimpJHC8SrpT7dPbFg2guP+jKrHG/rXVMs8LZ2
	Qc1oB5zgMXLIt70u2k8+bhRUWw7ahcE9ubammZrgt07nAOpGJ/jeSGsBnkU/SWoGNCBAtJswS34/P
	69v/gzgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO9EG-00071B-Ud; Tue, 07 May 2019 23:10:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO9Dz-0006ll-6P
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 23:10:16 +0000
Received: by mail-pl1-x644.google.com with SMTP id n8so8906409plp.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 16:10:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=W79MYHObhxKSz1yrBebZxY6fIgGFQNZrGIKFl/P07u3fvm0L1svG6Kge0eSRxVMp++
 HozWeRJd9krBTS+xX5kgatnXuUjD9tj/TvnMEHLL2cO8kQbZUF/lNWw586NJu17NAMcv
 ailq0uRykUWp8uFLRxoqACxHQA2bO+U4QJFEiX7wlWIww54EXW5ykKohjZClEbzdG4V5
 pQbIuKE1pEUnCXX9kQb6IU1GoFh54YlYmLWJfJR7yjlnLPnZ1cUP5EzLwc4P1HW5elL9
 I2H+DGBEluRSfw6DRuLlopJp/7NEJQPNe2mdK/zjG7tkkusjqNjlfErgu5gtocC1UsO2
 s10Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=mbE+iF8LhW5fE65P/w3VNXYCrbKWEqu0WHmT7Qks4ReyMULpFOPNPymslhBFjh0tbX
 JczgMr8oiWJx/fT9XEifdanPSeKa6mXW6oXMdpZZOxRVZE4rZwunY/RRQD0eic8rOB0o
 7Eh9un7Ezdyr19WKGloVKa4RKVd54o4nNmcHGqSbkiieKy/MYDSYJrpqq+DcGwBZBYQx
 19fQoZiIjBpWfeW6KpaDXDh6k83jW5RituhNRhNrxNb5f3sgy2VSZvV3ykJRXCgbgrxr
 TuytBo5ohWdJbfNgoM68Xlg+14qx9ctb6HCVHtp/1bEoZBtgjM6/cNUdkudjd0M7AuAB
 oSdw==
X-Gm-Message-State: APjAAAWCLPV8wtrsg+3EA2nwk3j0uwxxiukhLkzVrtt8s2aWv3Vc1f20
 M/vEG3RmNNEKPHqe3cNGb7Tl81FK
X-Google-Smtp-Source: APXvYqwxsPy0o2lNDye/b4YPbzc/hYdJL1LqlWL1647cpG9aT7GB0XIvVQFfixDP9ZMIBfigSy0I8g==
X-Received: by 2002:a17:902:9a9:: with SMTP id
 38mr28196267pln.10.1557270614534; 
 Tue, 07 May 2019 16:10:14 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id w12sm7154742pfj.41.2019.05.07.16.10.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 16:10:13 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/2] firmware: arm_scmi: Fetch and store sensor scale
Date: Tue,  7 May 2019 16:09:16 -0700
Message-Id: <20190507230917.21659-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507230917.21659-1-f.fainelli@gmail.com>
References: <20190507230917.21659-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_161015_241372_7F10E5B8 
X-CRM114-Status: GOOD (  12.56  )
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

In preparation for dealing with scales within the SCMI HWMON driver,
fetch and store the sensor unit scale into the scmi_sensor_info
structure. In order to simplify computations for upper layer, take care
of sign extending the scale to a full 8-bit signed value.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/firmware/arm_scmi/sensors.c | 6 ++++++
 include/linux/scmi_protocol.h       | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index b53d5cc9c9f6..21353470a740 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -34,6 +34,8 @@ struct scmi_msg_resp_sensor_description {
 		__le32 attributes_high;
 #define SENSOR_TYPE(x)		((x) & 0xff)
 #define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
+#define SENSOR_SCALE_SIGN	BIT(5)
+#define SENSOR_SCALE_EXTEND	GENMASK(7, 6)
 #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
 #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
 		    u8 name[SCMI_MAX_STR_SIZE];
@@ -140,6 +142,10 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 			s = &si->sensors[desc_index + cnt];
 			s->id = le32_to_cpu(buf->desc[cnt].id);
 			s->type = SENSOR_TYPE(attrh);
+			s->scale = SENSOR_SCALE(attrh);
+			/* Sign extend to a full s8 */
+			if (s->scale & SENSOR_SCALE_SIGN)
+				s->scale |= SENSOR_SCALE_EXTEND;
 			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
 		}
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 3105055c00a7..9ff2e9357e9a 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -144,6 +144,7 @@ struct scmi_power_ops {
 struct scmi_sensor_info {
 	u32 id;
 	u8 type;
+	s8 scale;
 	char name[SCMI_MAX_STR_SIZE];
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
