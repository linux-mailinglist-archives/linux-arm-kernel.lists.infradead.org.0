Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD54F2100E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 23:33:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=xltg3u6QLwP5dYmoQuMvioFehQfTbFx+dDMY732NLhY=; b=BHQ
	motQ7QKAdgFATL3n3oWsitDPJBE8b13Dxos8qeszENkEteT3kYUwLpcw2Y4By4mdGEaarl4c8pwdb
	bSTbCU6/0AHRVRtxajy1bbwC0nOKtZlUsOw2+2jmTurlb/3HfZq3qwIwPB/OfRhogEppoTZwGXGJt
	WM9sDLWBMYQH2qD0D1w5MqCQ6Kd0Km1sIuKc7Is7Q5w8QAio9HNmVy8HJ5eT/EMy8lXbUQG6VEfAG
	y2SRV3jlKTzitlEZT2QCeOCZOHDR4/r9kjxYgNyN6GQAfv6kMw6VC99Def03IrnKwFCGPg2MTWH4Q
	qmUeNPa5VAcdZ7/Lewsw+wFsdyYuVIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRO0g-0006IE-V8; Thu, 16 May 2019 21:33:54 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRO0Z-0006HS-Ru; Thu, 16 May 2019 21:33:49 +0000
Received: by mail-ot1-x342.google.com with SMTP id s19so4861479otq.5;
 Thu, 16 May 2019 14:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=RLsybBG6sLbUggVAi7bXCzaTyEG1llzt4l8NvXBkWD0=;
 b=kQKmujFhtAo72AB0snHcaDCif3+naULFQoilmAIC6cMGnoXGg8ewZ21JUB4lOVYrqn
 ziRwjT6PsQTzua7xc3imb9UZ4NgeYhIEclPb/biFpQyoDbDFAidppg+ZW3qHPFUXx0ze
 5IfccJ4XP9KqRDLcfeOaEywCQOBdZZYgC0GDrZWN+2m3m3f856Op6UdFGfgCGpOJ6QAl
 XXlLDRMeCUo3PgBP/hzld3xTl1ISadWuhZWoCvRqCNp1Qkc85SGbOHdmYMnoRrFT0++7
 rMqZUYKbrckThZrps3MkJEXsX5U4dRBUE5FB9eYeCVbeOysRMEsHfr2+3ePDXRIYTIjy
 zJoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=RLsybBG6sLbUggVAi7bXCzaTyEG1llzt4l8NvXBkWD0=;
 b=ZAkUJHrOq+2RC+5WJtMP04rQqjVHf3NCPo1o0kv1n+tmhs9EfPHfW4cu4nD9jsTsBP
 F8lheR0j7NVgWzh0ROWYVkXvahGvmvjAer8xKwuEzIABpqYEqoii3g0liJ8yNqKj67H4
 2H1Sx39JjnEJa+WmK982WO5O29g14Lb7amuhCVoCivMKlS0oPQpw/50gUhc6xKAZMtoi
 Dg8t5YK4P9achfB47HK76TnXptV3t4iAGuzkC9OTew0FKwVdve+5/p8G22ptSPGOQrJW
 PVoPR/oOuFxtyFEwXMCxkcQpQWkfSuV0msfE0VegxqLClSGZt/blZRZD6TCgG37ay8wD
 FYcA==
X-Gm-Message-State: APjAAAVxdNLjtfBq6AGJYnVvsyzt5hSjB2gIzhbNoaVLRTIAe9tsid/7
 j4omy2BArviBMLw2KEJ/ZN4=
X-Google-Smtp-Source: APXvYqw0GRwZ6MwUBRMhC/o2jF6nAxZtFpTyzX3MJ5sppTLWqV91vvWY1S8vKT1erdagGfEuy/oJcg==
X-Received: by 2002:a9d:7154:: with SMTP id y20mr7131771otj.369.1558042425977; 
 Thu, 16 May 2019 14:33:45 -0700 (PDT)
Received: from madhuleo ([2605:6000:1023:606d:10b5:228a:3958:f004])
 by smtp.gmail.com with ESMTPSA id 69sm2282544oty.46.2019.05.16.14.33.44
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 16 May 2019 14:33:44 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: eric@anholt.net, stefan.wahren@i2se.com, gregkh@linuxfoundation.org,
 f.fainelli@gmail.com, rjui@broadcom.com, sbranden@broadcom.com,
 bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] Staging: bcm2835-camera: Prefer kernel types
Date: Thu, 16 May 2019 16:33:40 -0500
Message-Id: <20190516213340.9311-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_143347_929358_DF7E0E70 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (madhumithabiw[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Fix the warning issued by checkpatch
Prefer kernel type 'u32' over 'uint32_t'.
Along with that include a blank line after a declaration
to maintain Linux kernel coding style.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Changes in v2:
- Modified subject line
- Included one more change in control.c
---
 drivers/staging/vc04_services/bcm2835-camera/controls.c | 3 ++-
 drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h | 4 ++--
 2 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/vc04_services/bcm2835-camera/controls.c b/drivers/staging/vc04_services/bcm2835-camera/controls.c
index 74410fedffad..5ad957e23895 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/controls.c
+++ b/drivers/staging/vc04_services/bcm2835-camera/controls.c
@@ -52,7 +52,8 @@ static const s64 ev_bias_qmenu[] = {
 static const s64 iso_qmenu[] = {
 	0, 100000, 200000, 400000, 800000,
 };
-static const uint32_t iso_values[] = {
+
+static const u32 iso_values[] = {
 	0, 100, 200, 400, 800,
 };
 
diff --git a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
index d1c57edbe2b8..90793c9f9a0f 100644
--- a/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
+++ b/drivers/staging/vc04_services/bcm2835-camera/mmal-msg.h
@@ -309,7 +309,7 @@ struct mmal_msg_port_parameter_set {
 	u32 port_handle;      /* port */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 struct mmal_msg_port_parameter_set_reply {
@@ -331,7 +331,7 @@ struct mmal_msg_port_parameter_get_reply {
 	u32 status;           /* Status of mmal_port_parameter_get call */
 	u32 id;     /* Parameter ID  */
 	u32 size;      /* Parameter size */
-	uint32_t value[MMAL_WORKER_PORT_PARAMETER_SPACE];
+	u32 value[MMAL_WORKER_PORT_PARAMETER_SPACE];
 };
 
 /* event messages */
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
