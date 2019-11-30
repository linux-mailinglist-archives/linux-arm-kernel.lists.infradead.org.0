Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E47DE10DFB3
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 30 Nov 2019 23:52:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=EKK/5ZlOguK0mtEolBYk0XEwiJX9bkJYIfGsuvWkav8=; b=RsMrE4WjWuwNRp
	A7cICtWUlVlQqqo2WL/LhFgMiwK1+xR4fLt5RpxhDnoEvOh47xO4f+m1Z5HXGnFfwbZuExEj1+cjV
	BYhMKHAJnEC0KgHvjDBnySmB57PUpa0AF+kOSM/Va+oNzA5Kd3kJ7LmG0vXp+DKXn3ekMufTq43Py
	3qBM43ZbGPY5eelw8+UObhXrgFA7CiV1ZGWi2ckEJ7b+c2F39NSMAGoFG8N+a3sbl9D857Ud/FFaA
	GTYzKyV90lC/4KG0yjAzSzgGvU3lggHW/W+1y8zBOJ2ng60S/G5oPfsuhVsvGLDn80Sdxkxn0oUUX
	fJqwjKgrW1vbKjsjZ7jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibBb5-00058V-HQ; Sat, 30 Nov 2019 22:52:15 +0000
Received: from mail-yw1-xc41.google.com ([2607:f8b0:4864:20::c41])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibBax-00057s-0r
 for linux-arm-kernel@lists.infradead.org; Sat, 30 Nov 2019 22:52:08 +0000
Received: by mail-yw1-xc41.google.com with SMTP id 192so4274407ywy.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 30 Nov 2019 14:52:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vwkyglGpGorvOt8VZHrq8ULnpvVj1p5SSJOevBnU2o=;
 b=dT2+IP+O2lloskItMtC50uGcnA6bCqf8SFoGPWc8Hvug8ZofdNiXjH19sNBzTKFGUo
 xipC/EG29KSb20komeiZIiWko/RUn6KTMPcvu+71JUYs0397XeDbsyXTcol0KgangbFy
 cquh4yfKJdd7mMxjuykxkVWIQ7/Lg3fwG0XlfYiV+WX/KTKD+sxVTEyUrE7jHo5uOJvo
 rJHFPB0oLbc9wFqK0fF9kn55bVbNfRUlg7sGJofONDtJLGqJJrsBPePNpmPtfHd+MyB1
 OonhnH2E1Ed+eOQqzK13QcrhP+ZoB2UQFYLajvKXdO6wbA5FIIgRB6Bj4gmVOeguOHUZ
 LbEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0vwkyglGpGorvOt8VZHrq8ULnpvVj1p5SSJOevBnU2o=;
 b=TIa4tRuLz9mxZ1kxZvS4yI98NeatDXzcVu+34aUSYoVjUnBkQP629YLL1/DUrIu3YS
 3ijlhIlKaZAIW2ubqzLosLmX31plUYvNZeko2agUw9rVPpvvikqonhZhVIZ9LlAq00h3
 5j/Qdpwq1uVCSXPMaOftsTvfZuu6g07ydQ3LO7lT61U25JpUAR+Vk5ibLZG606tXNlIP
 ND51QryiaroLC6bSvv6F8Gcqs2KF4PLtuXloT3LfDLV8iRYAx7ffF1wBqgw21fluTx8b
 7XX2PUOkaRfG1oQw4ub8izIUMHzaLZBo+ycMRsxk/xK0wKmgH5f2fffWOnJAnWYxV2vE
 0IpQ==
X-Gm-Message-State: APjAAAU5xJ/tGOFLSj7ia+11lu0boG6Vc07W8cazeJEJWk61YqajlGB3
 s15qLeoh3zHuzYHZdIjvz5k=
X-Google-Smtp-Source: APXvYqzG0+1UOh78swj9TMiUg4a0b4QtGl5kLXlVeA+BzgYMDVGWmEOA28YNrHvlTRkAbmm/Y373vQ==
X-Received: by 2002:a81:7b08:: with SMTP id w8mr16074667ywc.133.1575154325471; 
 Sat, 30 Nov 2019 14:52:05 -0800 (PST)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id y9sm2028163ywc.19.2019.11.30.14.52.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sat, 30 Nov 2019 14:52:04 -0800 (PST)
From: Adam Ford <aford173@gmail.com>
To: linux-crypto@vger.kernel.org
Subject: [PATCH 1/2] crypto: caam: Change the i.MX8MQ check support all i.MX8M
 variants
Date: Sat, 30 Nov 2019 16:51:51 -0600
Message-Id: <20191130225153.30111-1-aford173@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191130_145207_059562_9104ABDD 
X-CRM114-Status: GOOD (  10.70  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c41 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Aymen Sghaier <aymen.sghaier@nxp.com>,
 Fabio Estevam <festevam@gmail.com>, Herbert Xu <herbert@gondor.apana.org.au>,
 =?UTF-8?q?Horia=20Geant=C4=83?= <horia.geanta@nxp.com>,
 devicetree@vger.kernel.org, Adam Ford <aford173@gmail.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, "David S. Miller" <davem@davemloft.net>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The i.MX8M Mini uses the same crypto engine as the i.MX8MQ, but
the driver is restricting the check to just the i.MX8MQ.

This patch lets the driver support all i.MX8M Variants if enabled.

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index db22777d59b4..1ce03f8961b6 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -527,7 +527,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
 	{ .soc_id = "i.MX6UL", .data = &caam_imx6ul_data },
 	{ .soc_id = "i.MX6*",  .data = &caam_imx6_data },
 	{ .soc_id = "i.MX7*",  .data = &caam_imx7_data },
-	{ .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
+	{ .soc_id = "i.MX8M*", .data = &caam_imx7_data },
 	{ .family = "Freescale i.MX" },
 	{ /* sentinel */ }
 };
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
