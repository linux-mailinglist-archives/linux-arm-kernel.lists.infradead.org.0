Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEFF115617
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 May 2019 00:41:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OqhIaTNTeXEWghVHOt8qb/un1CwZhIKkgxrVLmYX7h0=; b=YZ+rNQGPC04bv0FDZbG6brQG9y
	b0IJkRhj1QwhJjXGBYNRZi8dK0p+3NnVXBIAJ/pPH1EB17e/URZnda74nmSI0kRXJMHvZQ9SoAFh9
	0DgY8PbVE9UEZHa1Q6H/6DO8ckjEMlMgwnUsX9a5/2Jl52l1tiYewZl8A22iGzbs3QMQnNOE/iQBn
	QzytgzLj2I4T0OlItX4zHpHjil8uH84AXXjbpQ2NNcMlWLu3P/SRtAtvGwykSJbvyQ7iNysTe+xEj
	iCjS8WlcWLOXPWRPBJaPBF+iaoFcPas/sG90N0MGNbXhD4Nb9NfiFouC4kn3JzwRPBBBxD2A0R6s2
	rXf4ovJQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNmIf-0000sB-7S; Mon, 06 May 2019 22:41:33 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNmIP-0000kf-NR
 for linux-arm-kernel@lists.infradead.org; Mon, 06 May 2019 22:41:19 +0000
Received: by mail-pf1-x443.google.com with SMTP id c6so2314419pfa.10
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 06 May 2019 15:41:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=E5Dd3KTWD6CXDeQyGrryfHzlZnUN0IagEOvDF7fStsU=;
 b=rYc6GAsGNJY4zX3g6QYdRYAV9Fy8LhGm0OovP34jxb0OEZatnM4m710MQ288nFlXVW
 aODV9dCPzwT0a6u3eGQ679IS1JgFmz5hZQG7fn1u/o+EvFaZH07DyvjjCBwRQTKD76rb
 vJU/QbyWLP5bLL3/wZdt9OW4KteT3PGiEEoET/ZdMldivpnw+JqjfMLwfiezBJZxEavr
 q/ue5nnvia4Fa3r31P+NTnjI6BZAzLMmyQyr340miA06bynazZVEiQ0Q2g4cCiB5hk8M
 RE76YS1/6QxHnbckQtuhHth/NBcAmt2/tmKDXduPxYCIq+brr3MmECyhDTj7P2eC1VM4
 Is3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=E5Dd3KTWD6CXDeQyGrryfHzlZnUN0IagEOvDF7fStsU=;
 b=EM3WNbe1CiVoQLiFsCXM/WpAuVSOwvjQtVdg42gIgtY38BRDCgPBgEoeJCHg7pZYBH
 rutOr5OPUTUWsO7hzXAt7Q/vusnhxM5aeJxZimyHuDhwUl60Kdqf0lIwWkF0Ro3sSCH5
 gjQON2YsSZQz37tbJsbtZsdnlxD7Qy967B6/RBAv4TZwZHA2DSSGEnWpw/2I/sop9u49
 encb7zgrBWzWqYtdBS0YOM4O2lmiB8J5Zu6fHgtNX8umvW20fM5dHwN9ZpQG6lzllkwJ
 DlC1FAzalllx5glE1/RPWnB1I5K5wG5hi3Rv9Wml3mVJP2QQGEcMDJWvmmHuTIsTyXAJ
 w/2Q==
X-Gm-Message-State: APjAAAVedDASwX+pwjkoiHiY1t9noS4pGs8AyqkzCWJK07PywuT0A7ko
 9dicnQwTjKrpMuqQaUP4SEY=
X-Google-Smtp-Source: APXvYqzlpp4RXTrN/URhBa3Ul4oDUGmN3bljpPYVgvpBc9mbG/MQkXpb0BqL9en9ld7lE1hc2AnSSA==
X-Received: by 2002:aa7:91c8:: with SMTP id z8mr37663612pfa.110.1557182477143; 
 Mon, 06 May 2019 15:41:17 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id s11sm19784153pga.36.2019.05.06.15.41.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 06 May 2019 15:41:16 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/2] firmware: arm_scmi: Fetch and store sensor scale
Date: Mon,  6 May 2019 15:41:08 -0700
Message-Id: <20190506224109.9357-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190506224109.9357-1-f.fainelli@gmail.com>
References: <20190506224109.9357-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_154117_760982_60465086 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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

In preparation for dealing with scales within the SCMI HWMON driver,
fetch and store the sensor unit scale into the scmi_sensor_info
structure.

Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/firmware/arm_scmi/sensors.c | 7 ++++++-
 include/linux/scmi_protocol.h       | 1 +
 2 files changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/arm_scmi/sensors.c b/drivers/firmware/arm_scmi/sensors.c
index b53d5cc9c9f6..f324f0a13ebe 100644
--- a/drivers/firmware/arm_scmi/sensors.c
+++ b/drivers/firmware/arm_scmi/sensors.c
@@ -33,7 +33,8 @@ struct scmi_msg_resp_sensor_description {
 #define NUM_TRIP_POINTS(x)	(((x) >> 4) & 0xff)
 		__le32 attributes_high;
 #define SENSOR_TYPE(x)		((x) & 0xff)
-#define SENSOR_SCALE(x)		(((x) >> 11) & 0x3f)
+#define SENSOR_SCALE_MASK	0x3f
+#define SENSOR_SCALE(x)		(((x) >> 11) & SENSOR_SCALE_MASK)
 #define SENSOR_UPDATE_SCALE(x)	(((x) >> 22) & 0x1f)
 #define SENSOR_UPDATE_BASE(x)	(((x) >> 27) & 0x1f)
 		    u8 name[SCMI_MAX_STR_SIZE];
@@ -140,6 +141,10 @@ static int scmi_sensor_description_get(const struct scmi_handle *handle,
 			s = &si->sensors[desc_index + cnt];
 			s->id = le32_to_cpu(buf->desc[cnt].id);
 			s->type = SENSOR_TYPE(attrh);
+			s->scale = SENSOR_SCALE(attrh);
+			/* Sign extend to a full u8 */
+			if (s->scale & ((SENSOR_SCALE_MASK + 1) >> 1))
+				s->scale |= GENMASK(7, 6);
 			strlcpy(s->name, buf->desc[cnt].name, SCMI_MAX_STR_SIZE);
 		}
 
diff --git a/include/linux/scmi_protocol.h b/include/linux/scmi_protocol.h
index 3105055c00a7..7746f171f108 100644
--- a/include/linux/scmi_protocol.h
+++ b/include/linux/scmi_protocol.h
@@ -144,6 +144,7 @@ struct scmi_power_ops {
 struct scmi_sensor_info {
 	u32 id;
 	u8 type;
+	u8 scale;
 	char name[SCMI_MAX_STR_SIZE];
 };
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
