Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F109316B81
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 21:38:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBONK892MuSmLfjUgo6oUtxsgZDJF8aeLdjbJm2hVgc=; b=auiuV+lsRzoQw3wnCLcuJ6KXZ7
	BZ+HqPK1IZ6+MS4aXo804DTOmvES6EKnqVuGpqag0bsUy2JFU88SUBAUt1o6Xw+a8zZLZu2cPO4RE
	YGnVa6lM59sqzq4+uw4uzgYQ3MesGwYqQD5PXt9v5/qGqLqlgPsFAtkOXh21naPsNys0B4MiO7ICx
	8M1CQACEmHxVIEolD1FiFHOTlrJJ5hAKxvIv3SWSvH2BFt2Wz5+MKNWOtWtk4xynZk6At76LXpiKG
	ysfOIvWRxggnxcz8KfX0b6B4wSEnK72kY9qGRzi4+upSKcdt6aFiwtorkR1YIfHZfsd72eKiy8Y2T
	+8ouQ12w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hO5vH-0005cW-I9; Tue, 07 May 2019 19:38:43 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hO5us-0005Ec-26
 for linux-arm-kernel@lists.infradead.org; Tue, 07 May 2019 19:38:20 +0000
Received: by mail-pl1-x642.google.com with SMTP id ck18so8685799plb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 May 2019 12:38:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=supJbkS+TvzwiaGvP7CzePiq38v/y5xY0z87bhAKggMMhvSyxETbpEDetJuR15OUjT
 AxuJQu8rp3sOufc6NUvueIbSBKpk/BrlBqtKNu4HP96mfG1KZFrMj/W5CgUergGGawk1
 V6M0EevyFGKuGjQOYJpzDJ81ZQBgjQQaeSrWoVb8SGCn9SSP4kdy66klqRlletmtU51N
 6/TX7lm5mXToRsytvDNCJT6lUE/xfefcI2FxJKDAH9DbRjBRsoVBF3sziA5yDB9jqTgt
 GqYx6g31qQBnNBJ0TlcxHzZ942zS1/R1nwPTlMdV8YJbbTFv7Us/rZJ59fsJLHkfUXIC
 zOIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=oAPMQzkNnSr/HkfNmUM2DIKpUZulRxFrwMvaX39yjGd7dMgWUGE46YBUj1+gOYW4N/
 1VNRZJ9BnEnjrttum2uSV87/9JLuB9fAee4Js7xoom4PPamMoAdVagco1LG/7zDFk6eq
 Mmk9ldV5RqtTsGrH0320xHtro047v23qo30/dKhU00pplEZubKldJNPWE/jxvrz6bfBw
 3bIB7QzYRkFRx32hDc8U4P9cvCJb/sjo81/+r7kPCgmo8UZHyGWKklVmyjAAAO1bynO9
 phc/VRgX5V8l85Gi2OPP9M/OBVDiTRuP75KlaJZ9PSPNuSQxFm44qgbGQWo+v8RCGoF8
 dChg==
X-Gm-Message-State: APjAAAUbEOa4oBHDdGpHtiST2i7Psz8A5lR3mIf+9WilKv1AG0VhL4jy
 a/cJZBjIv5HyOEyR+UIaPsY=
X-Google-Smtp-Source: APXvYqw5f3+BqYRPyHnvk/luvhl70lmxR6wsQrxcgUbarh8heRLEfenNRO+d7eY9YJWmBJT9OunRBg==
X-Received: by 2002:a17:902:364:: with SMTP id
 91mr41315233pld.72.1557257897280; 
 Tue, 07 May 2019 12:38:17 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id l21sm5964658pff.40.2019.05.07.12.38.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 07 May 2019 12:38:16 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v2 2/3] firmware: arm_scmi: Fetch and store sensor scale
Date: Tue,  7 May 2019 12:35:03 -0700
Message-Id: <20190507193504.28248-3-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190507193504.28248-1-f.fainelli@gmail.com>
References: <20190507193504.28248-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190507_123818_246357_645182ED 
X-CRM114-Status: GOOD (  12.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
