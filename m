Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E510417EB2
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 19:01:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=nBONK892MuSmLfjUgo6oUtxsgZDJF8aeLdjbJm2hVgc=; b=QS7lexercTSp0ln9XAkPnYpDPx
	lIC2gzw+6GAEiEKaux0FEfk5EhgrJt7v48mtqRAQunguUoWVQ2sWNFT9LoXKLtNYsYtXjI+N3zfCE
	tdUHHo+nW9jBdKFkyMZmAjOjqNrpjZWN4mlODD4uEnf3iku/8sBlcXWmnWXCENSBa1iijRAEyJ8m0
	xmY0dyTNlDCLIsDFer9EjusA/L/l6UXSI0yLYgvnxRS1wiKXnm5W/iIkS0/jJ/lhk4qyq4wzWwUa3
	jP/OGDHa6ip/fZj2cHiMdrLf4vhR5i/DddIjiNUsFURzMTbsv+JwJL2QGCDA4sRtbhlkpAbp5hjUa
	XlRp6DrQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPwB-00058b-JQ; Wed, 08 May 2019 17:00:59 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPvt-0004zl-PJ
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 17:00:43 +0000
Received: by mail-pg1-x543.google.com with SMTP id t187so6272700pgb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 08 May 2019 10:00:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=CONn6uI3sZhY9txU/ul8dooJT4LHPM/v1iQbwxmzcfCSCqJxEvLpyFT+r0IJCqbZnR
 UMYqkdkJwC6Z0/v4EGaE4+OgaXaPXC0pCCp6gix4k9ei/QlppPaDr9lHho/mTnmGATqb
 /ojOjeotcLZO8xCQ7y7iD+eaPPIT578OR5uTMHwpu3ju2lTGQQohkrAeqcr999S0lkA8
 M3L7TAvYbu/K+D6y3ZeVtDydVQ6ZzPPMNBy+h+gptyVzYHwBikC1EEe5bxWk77znoyhE
 3s5+mLaK8GcdKKjjbSn06rCbopBCeGy6l/6JzhTgWI6bIORwtTSDK7REWPgrq+8n+HxN
 /hUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=NxAUam5Dvt1HQoAAg/vTkC6mAACjVaJFnU6FSnpD4fQ=;
 b=ej9XM09X31VFpzJelCdiGkxmj3wT20izoyYa44uygKXjyVQfwEDEs1jlupCXAWRIVn
 KHp/OmvIyd22JxKZSwhWkBFXG9hJG3lrs3nufIA4PjSXh+CSyyahXth7FXR1fUERzSYx
 j66W4H3L+CeJ8O1Qf8R5yfUW1In4tBF7tzkuETctT5VPdUPFu1pV3uwOw5nosWQz0Qyp
 HThiNFHg3qj2JJf/NzmASGeAZjHYpFCM6jxfjAc/hKlpKpjCA2AP1ziQFGh3zRxvm+/c
 2I0pQGpDJfenXDloi5PZ6mGsgTiGa0tFg8GkEBi2aPiMN0Y8uEwJnJ2Hi3MC2UB4fCsT
 XITg==
X-Gm-Message-State: APjAAAXAugs7HkuLMoLQhIbYzXK+iEeVdAAmcJfv6OYZQcYKXeV5kdpu
 S/iFShKIUMjbJEp2I6D1LlA=
X-Google-Smtp-Source: APXvYqyidr30JBrMQn+0cCHfa68oqy10M/mQ+z/LUY0WKG2Rlh2YkbzPXibdIggDIJ8j9EoYNIzOZg==
X-Received: by 2002:aa7:82d6:: with SMTP id f22mr49384376pfn.190.1557334840649; 
 Wed, 08 May 2019 10:00:40 -0700 (PDT)
Received: from fainelli-desktop.igp.broadcom.net ([192.19.223.250])
 by smtp.gmail.com with ESMTPSA id a80sm11347773pfj.105.2019.05.08.10.00.39
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 08 May 2019 10:00:39 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v4 1/2] firmware: arm_scmi: Fetch and store sensor scale
Date: Wed,  8 May 2019 10:00:34 -0700
Message-Id: <20190508170035.19671-2-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190508170035.19671-1-f.fainelli@gmail.com>
References: <20190508170035.19671-1-f.fainelli@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_100041_826970_2BBB12D0 
X-CRM114-Status: GOOD (  12.02  )
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
