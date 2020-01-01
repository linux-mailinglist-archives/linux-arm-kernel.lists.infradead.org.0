Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1664C12DFD0
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Jan 2020 18:50:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=iLgIMDuecgwkpkbbwVkSrNokbclzvpJ/6Jbd4+I8bfc=; b=oOdNNwBtbxihoWBFR5fP6gDREQ
	7CUgXCrOMB4Nv/4Yht8KGj7UFkdTfn3w/xi1bK9Xjarc8IZh3EHWbwmwGXRZx9YlGIU2uWSzLIlSg
	1ePYWNBIL32nXCs7sQ83W7DfUVH1eBkAABjS92BhQFoLyb8W4FBzeyblAyHsPLBVeOAupWCK1y6rC
	ktPFYRYnsTaeBeGccjwrvhUt9SVXHf5sKJYvmOop9PYJdGsVMVLVJt61uAiPKgj2IruaZlNqvLqfE
	Ge49wdOI8NPf7sRJYw/8vJl1AG84ZXYS9AU41Ji1IrnI5FDu7+ss3kS9xAU0dubaIPUgvcf+3oBgB
	tW3tuHqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imi8n-0003LX-44; Wed, 01 Jan 2020 17:50:41 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imi8Q-0003FP-V9
 for linux-arm-kernel@lists.infradead.org; Wed, 01 Jan 2020 17:50:20 +0000
Received: by mail-wr1-x443.google.com with SMTP id z7so37304536wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 01 Jan 2020 09:50:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=No6+pF/29hbexfyxLIzSLoDPs3T39QBZzwsgULMLjzI=;
 b=NXurigMwYAQN2BXM6VE1oNj59pJfcDf/GmwRuLupHEIrV3Fb9IKI1Jibo7AC/IN0xt
 gLz5S7HZCZxFNpxkwx/W19965ayR3mAbUXbXkTC0QY5RjSM56QyQpbb2zXbRMf1BLE9h
 7lOkj89n6yrb1g7sYGMj3hO6FhJt8SCllSEmk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=No6+pF/29hbexfyxLIzSLoDPs3T39QBZzwsgULMLjzI=;
 b=V+IDN3udz0kM6XigGc5A4YcTEOOOqkdpzOq9LNL9cqwY3GhXx1RyMK3oYb2PX/P7mn
 u2RySFhIcfvhOOe3dAAahPb1okBK4yR+8kR6CffDAn0lyiAyRsNG0cwQWgy+MGM+2/G6
 5T0QIBGW8sdpiuPhWj7cvn2oXV52/Io92P0hZhj2kI0sMDwW5JMUhP7ZWXKUG230N7XF
 AtyniD5QXaRhhkr0KbRirlfzA2IWxcs5VOdwKgkrwMoEt6fFZlVqEHbRNryWYLUuXCtU
 329bVhlZdscqU7GjKk0hEK3LxIbYL/l5S+2Vamaf2+J5igsnAZ36WuuGKXzGNnfMTCQW
 Pflg==
X-Gm-Message-State: APjAAAVp+GVUEivF4N0imKTBFpbIh8p1ssIj8kZqXLKH0A83DQQUDg3p
 aYtnCv7VwnHSXKjlGW1+SZRro3lA1uQ=
X-Google-Smtp-Source: APXvYqyHk5wszacOXxFJy13iANAkqZjsEnRI8ddi99VniJ5LfU8EKyJIi6TsS/cwaTsfA3cedckmEw==
X-Received: by 2002:a5d:480b:: with SMTP id l11mr36319687wrq.129.1577901014081; 
 Wed, 01 Jan 2020 09:50:14 -0800 (PST)
Received: from panicking.lan (93-46-124-24.ip107.fastwebnet.it. [93.46.124.24])
 by smtp.gmail.com with ESMTPSA id r15sm6025085wmh.21.2020.01.01.09.50.12
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 01 Jan 2020 09:50:13 -0800 (PST)
From: Michael Trimarchi <michael@amarulasolutions.com>
To: Shawn Guo <shawnguo@kernel.org>
Subject: [PATCH 2/2] crypto: caam - add clock entry for i.MX8MM
Date: Wed,  1 Jan 2020 18:50:11 +0100
Message-Id: <20200101175011.1875-2-michael@amarulasolutions.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200101175011.1875-1-michael@amarulasolutions.com>
References: <20200101175011.1875-1-michael@amarulasolutions.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200101_095019_316705_8616CB4E 
X-CRM114-Status: GOOD (  14.94  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 Herbert Xu <herbert@gondor.apana.org.au>, linux-amarula@amarulasolutions.com,
 Sascha Hauer <s.hauer@pengutronix.de>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org,
 linux-crypto@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add clock entry needed to support i.MX8MM.

[    1.040682] caam 30900000.crypto: Entropy delay = 3200
[    1.045935] caam 30900000.crypto: Entropy delay = 3600
[    1.118813] caam 30900000.crypto: Instantiated RNG4 SH0
[    1.186476] caam 30900000.crypto: Instantiated RNG4 SH1
[    1.191726] caam 30900000.crypto: device ID = 0x0a16040100000000 (Era 9)
[    1.198434] caam 30900000.crypto: job rings = 3, qi = 0
[    1.222717] caam algorithms registered in /proc/crypto
[    1.231297] caam 30900000.crypto: caam pkc algorithms registered in /proc/crypto

Signed-off-by: Michael Trimarchi <michael@amarulasolutions.com>
---
 drivers/crypto/caam/ctrl.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/crypto/caam/ctrl.c b/drivers/crypto/caam/ctrl.c
index d7c3c3805693..ab8df3b550a7 100644
--- a/drivers/crypto/caam/ctrl.c
+++ b/drivers/crypto/caam/ctrl.c
@@ -99,10 +99,11 @@ static inline int run_descriptor_deco0(struct device *ctrldev, u32 *desc,
 
 	if (ctrlpriv->virt_en == 1 ||
 	    /*
-	     * Apparently on i.MX8MQ it doesn't matter if virt_en == 1
+	     * Apparently on i.MX8MQ and i.MX8MM it doesn't matter if virt_en == 1
 	     * and the following steps should be performed regardless
 	     */
-	    of_machine_is_compatible("fsl,imx8mq")) {
+	    of_machine_is_compatible("fsl,imx8mq") ||
+	    of_machine_is_compatible("fsl,imx8mm")) {
 		clrsetbits_32(&ctrl->deco_rsr, 0, DECORSR_JR0);
 
 		while (!(rd_reg32(&ctrl->deco_rsr) & DECORSR_VALID) &&
@@ -509,6 +510,7 @@ static const struct soc_device_attribute caam_imx_soc_table[] = {
 	{ .soc_id = "i.MX6*",  .data = &caam_imx6_data },
 	{ .soc_id = "i.MX7*",  .data = &caam_imx7_data },
 	{ .soc_id = "i.MX8MQ", .data = &caam_imx7_data },
+	{ .soc_id = "i.MX8MM", .data = &caam_imx7_data },
 	{ .family = "Freescale i.MX" },
 	{ /* sentinel */ }
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
