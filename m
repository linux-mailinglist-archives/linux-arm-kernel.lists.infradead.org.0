Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42B5E18002
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 20:47:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ZusHMuVkCOtItX16aDjmhcGfBiAZ0NSITl6e1TiJkrY=; b=LQFCyMO/1WuT9iRRt5XnEgbASc
	o9XBUr2bQIHy8B2BHmpo3y4K4QiuJnNLITWgYesvasvu/TaPZFOKbei4xDhXdaHc/sY5gUezCSdqx
	saBQTdBlFsoTrSvj8Vrk+BbDLiCG20EaCTe2vfZV1N0U5Cehtr13d6vzA8npweXSBfgADQ64OgMpI
	uXvh0Ypo6GPWZ6ubBTDF4Jg6x5mAsKxKqJIZTEoy7ejaoJTubp4NljW/yJZ/+f9n+T/u5v5K8nKkQ
	7g+HzzFWLWYwJ2qiWhSYpq6lwBk8etM1C530rtkpsNtUgMVeqgfwndVLVfL1IrvJwdyMOMn7DdK7h
	1uMuWOHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hORap-0000y6-Nq; Wed, 08 May 2019 18:47:03 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hORaU-0000kI-Ru
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 18:46:44 +0000
Received: by mail-pf1-x441.google.com with SMTP id u17so10944310pfn.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 11:46:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=JNay4jcqTIf3TxhFDX1t8TifoGH7V35urjWSNb/yQUE=;
 b=HNDiEoSpqNMpymTo7ntrs+bFYni4DmCPaZr0cwRKYK0RAZlVWl3ybQkuSMkCDRbnRz
 +8QIYTI6/6k/+K70KGJYOj7hpYZh5+R+Ra/brxTfhhWebKV06EPiGCvZSIbIbaG+5kjO
 xmiBzYyfvomrxSPhgcbsldFhq4op3SmVPSUqA0PwptC5mmQ0KLg3eCHnqkgd9TzifGMe
 aZsDbqsEdliT4ta1zAxuwHEJkzcaqza+8GuiDu3KZaFTxPpMQNHJnncJoZK6QTZQSqcv
 /iUvKNwL6Trr4ebj+PB2t5wYruT7INHbEvIOroelWNuaYKU7GT/93E3P/92e2mgnF4ik
 c/Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=JNay4jcqTIf3TxhFDX1t8TifoGH7V35urjWSNb/yQUE=;
 b=Z7ZGNPtvpHbpYbnjWqnIfQSNZmne5E70xjVfWqrcsK7gjRAo4Tb9O9m1bfpxN0X/69
 Vr7qh8yWjIRITNZ9DUVo6I1ppSW2TX8flL6YrLvcL5qnQ42mNsv5bJ7E59Dk1lTEHkCD
 CB0DkAoYDC6qpLD3mk3oE7vg/miP9MC4UWkkDT8SaSSGFaG5pHAlqcJ2zVfEfcdam3BR
 I3gmKhhQeUBxnprnwH/MmJJEJg8ZEt7xc1Z4tDYwaDNeOVVCKfNffvu3xSIhQjWriPMG
 Dc7vMD9ovxxU4i8Rv7n5Tx7fL5ze76emz2Yg9Slu30L6zF6d2f2xto8Y15l5UIxcAyIe
 Ewrw==
X-Gm-Message-State: APjAAAUJGOJoYcd97QrmNWJM1+ei3a58Vo9OpYBgnDqf28/jwnv6FgZk
 XYmt8w29Vxfwnamc4PiiCQs=
X-Google-Smtp-Source: APXvYqy0pxNjwmj3BYBDeSldU11tN0weGxy16EqaJ+sCZ+3CzbrLFllWK4HZnvWO8SyR8FCoqXhf1Q==
X-Received: by 2002:a65:5181:: with SMTP id h1mr49673394pgq.167.1557341202267; 
 Wed, 08 May 2019 11:46:42 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id o66sm23257953pfb.184.2019.05.08.11.46.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 11:46:41 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v5 1/2] firmware: arm_scmi: Fetch and store sensor scale
Date: Wed,  8 May 2019 11:46:34 -0700
Message-Id: <20190508184635.5054-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508184635.5054-1-f.fainelli@gmail.com>
References: <20190508184635.5054-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_114642_900563_82C60322 
X-CRM114-Status: GOOD (  12.23  )
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

In preparation for dealing with scales within the SCMI HWMON driver,
fetch and store the sensor unit scale into the scmi_sensor_info
structure. In order to simplify computations for upper layer, take care
of sign extending the scale to a full 8-bit signed value.

Reviewed-by: Guenter Roeck <linux@roeck-us.net>
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
