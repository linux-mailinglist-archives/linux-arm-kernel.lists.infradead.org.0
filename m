Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4840E13291
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 18:54:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U3VpN0G5d3pL+jjBEBOWovkF25OVY5qqB8sfzG2JStk=; b=Oz+EcGkOGJTsnG
	wpYJ5aXn9KhaeZhq3tEQ96gNXzyOvHd86qC1Q5rqGDzdz53IhN0W7ffn85/O+Ie8LenpU0Gff2JQ4
	Ofl6IpXOQJwf4dIR7+1pULPcc/3PZqnZQvhidWKyeJpq17sn+fMamfilXVTiZ8pP2eVzNkXxj0kRt
	Hfg4I9IXR05Bc2zRqAvexHRn4ufYZrhPaIPl3tuZVSHzx5gWUGHLjJFUy2vGIGTGfibITzP46bGsV
	WYQvzVTFH/wlk4JGYDaR+3qjBt0hhlT/9TAKSJ8BQtcQNL71p51rYiAP03DRfALVaSZsOx1YZOEwc
	RfTLTB4QGFQ17aBMIt+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMbSS-0000Uz-TK; Fri, 03 May 2019 16:54:48 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMbRX-0007om-Jm
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 16:53:55 +0000
Received: by mail-ed1-x541.google.com with SMTP id m4so6766888edd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 09:53:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=nexus-software-ie.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=0Wk49vomZFoMlLFJQLGwV/ZFp08bg3i3CXAll6kOF5s=;
 b=sUcjanuoRtHWVgXhcC3G/6xATzmMBQOO9GTXJN4zvjn6ofqvEWE/9FXcGP1PCzQOT0
 OEDBIc1luCpKqbLXz4B7vam0bOFSEVLraSOm16xpnF3Pv1cJFN5/OTcd4UV3PP/bmFCr
 jZ0T52DITzraNRfVAmDdASx7uQB1yYh7OrGhGX20prFjS6X/BYIAzdKu6ZA9ZE1aNP7r
 JnwDNhbdoogT5ulTcTRvt8/22UK2iXq6bvinNNgCgOVhpmMOkax2Mrti5USFhYjmXY7v
 S3xJpgYlFaXvr+30u1YOY3XA7gOzwLo7Fu/bVMnXefpqXrrq90GMIxLE7RV7xYsfY8MG
 j+kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=0Wk49vomZFoMlLFJQLGwV/ZFp08bg3i3CXAll6kOF5s=;
 b=AmybG3Na+pBifO/ZgxiWogjAnXsVQUn074To1p2bjR2gehbTsmiFT170hEcYgWSRfR
 O17klP7Vijj4JgfExo32ffGjbxjtC8XPcymkk9SwTycLYpGPQKV3aLfj0zIKRvV3hya6
 k0AoS/IO1jw5J0q/0QmgeA43J1/tBRY2AK3tf2k73yCVVGdeCGG7pdwHsv1oIvh6EpwY
 kjZ7HRXL8Eel4zjWwNsMO8RM8YB2QK27kkonQjfX2i6vF/DnPeFsGSKDmbKPjFBFqjJo
 vBvYJ8jKv0wm5Jx3lQ2YxA2590MqWldRw+/w6mst2yPKQp082/0EuxOs7EyNi9JjgQ4A
 GK/A==
X-Gm-Message-State: APjAAAUAF9jbxYkCs3ewSStrwmGWUuCwdGgwFVtYwYKUxNSt5gIaK++O
 2UgiEkNbKOIQ+ubbxq4fo3cfAQ==
X-Google-Smtp-Source: APXvYqza9EW7i8l/zxv9uaeeh4p9LsrmmmS7P2HdhsBz8BWTGlYVtxdhtbupMh9ZAAenOnjZehjxEg==
X-Received: by 2002:a17:906:4f18:: with SMTP id
 t24mr7114020eju.43.1556902429827; 
 Fri, 03 May 2019 09:53:49 -0700 (PDT)
Received: from event-horizon.net ([80.111.179.123])
 by smtp.gmail.com with ESMTPSA id j55sm707038ede.27.2019.05.03.09.53.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 09:53:49 -0700 (PDT)
From: Bryan O'Donoghue <pure.logic@nexus-software.ie>
To: gregkh@linuxfoundation.org, l.stach@pengutronix.de, peng.fan@nxp.com,
 shawnguo@kernel.org, srinivas.kandagatla@linaro.org,
 leonard.crestez@nxp.com
Subject: [PATCH v6 4/5] nvmem: imx-ocotp: Add i.MX8MM support
Date: Fri,  3 May 2019 17:53:41 +0100
Message-Id: <20190503165342.30139-5-pure.logic@nexus-software.ie>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190503165342.30139-1-pure.logic@nexus-software.ie>
References: <20190503165342.30139-1-pure.logic@nexus-software.ie>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_095351_961334_1BD5C840 
X-CRM114-Status: GOOD (  10.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devel@driverdev.osuosl.org, aisheng.dong@nxp.com, abel.vesa@nxp.com,
 anson.huang@nxp.com, linux-imx@nxp.com, kernel@pengutronix.de,
 fabio.estevam@nxp.com, Bryan O'Donoghue <pure.logic@nexus-software.ie>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch adds support to burn the fuses on the i.MX8MM.
https://www.nxp.com/webapp/Download?colCode=IMX8MMRM

The i.MX8MM is similar to i.MX6 processors in terms of addressing and clock
setup.

The documentation specifies 60 discreet OTP registers but, the fusemap
address space encompasses up to 256 registers. We map the entire putative
256 OTP registers.

Signed-off-by: Bryan O'Donoghue <pure.logic@nexus-software.ie>
---
 drivers/nvmem/imx-ocotp.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/nvmem/imx-ocotp.c b/drivers/nvmem/imx-ocotp.c
index 2c5009691dd6..189fd5f334f4 100644
--- a/drivers/nvmem/imx-ocotp.c
+++ b/drivers/nvmem/imx-ocotp.c
@@ -479,6 +479,12 @@ static const struct ocotp_params imx8mq_params = {
 	.set_timing = imx_ocotp_set_imx7_timing,
 };
 
+static const struct ocotp_params imx8mm_params = {
+	.nregs = 256,
+	.bank_address_words = 0,
+	.set_timing = imx_ocotp_set_imx6_timing,
+};
+
 static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6q-ocotp",  .data = &imx6q_params },
 	{ .compatible = "fsl,imx6sl-ocotp", .data = &imx6sl_params },
@@ -489,6 +495,7 @@ static const struct of_device_id imx_ocotp_dt_ids[] = {
 	{ .compatible = "fsl,imx6sll-ocotp", .data = &imx6sll_params },
 	{ .compatible = "fsl,imx7ulp-ocotp", .data = &imx7ulp_params },
 	{ .compatible = "fsl,imx8mq-ocotp", .data = &imx8mq_params },
+	{ .compatible = "fsl,imx8mm-ocotp", .data = &imx8mm_params },
 	{ },
 };
 MODULE_DEVICE_TABLE(of, imx_ocotp_dt_ids);
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
