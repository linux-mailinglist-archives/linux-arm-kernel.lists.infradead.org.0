Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 141CC11DAAA
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Dec 2019 01:09:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3DycUfVWA9x2CVsTijitnJLSHqzQwSUCv6LmJd4/Vsg=; b=LWwGjXZb6BRYRK
	Ak49pMo5XW3yaMXFRrBiWWBfWL8RaiNSicRCgNB6aF31Yi+CenC2HAhjb7FknDTAGrjU8I2vLwc+L
	zveiW4HcnEUxsM2fpj+BiVwGS8Pe1d1Hb9XB73dJ8n1lEn5iCp44qdWqZ+NIVgBDC6IfBwYPN6bLE
	DE6K4btxSJ6zsXZhWczdDkDL/Sqe/vdp6MVcFLC3V41zCD9ZpWEygqxOu7apCOwBlmW7yfykruJlA
	PVykyW1zwiEaRsvkHky8tgJljfsHGsEsAg+zyL+Wg/MuByN1nWNHqDX/kyYWwtF1xnpXnV30S3pXC
	Hf2Am/BL8K9B8dodNwRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifYWL-0005br-Df; Fri, 13 Dec 2019 00:09:25 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifYVX-0004xQ-RA
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Dec 2019 00:08:37 +0000
Received: by mail-pg1-x542.google.com with SMTP id k3so548665pgc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 16:08:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=arista.com; s=googlenew;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=JPHcF1Ac92GQc/SsDP7K+Yij8n5Op4P4c8xwvHBjRY0=;
 b=Fv4cQwiBepW2yfuVGe2bIGqgW8ota1ovR0Oqsbc4sPC1d1OUjKvZ6vQ1b4a/simvRZ
 hkt4QOw7eTenbSMFVj0LK6GV8yxReJromH9baY2pKzNpgT++N5JSrcQVJDe15ur6qMTK
 9aX4+KJQ5J3uFZQPd9WZgF0qk80Oa7uLkWC3MVX1R3A13K01fiCyDuP4hhWHh/TKLc1q
 +KjX4QkipD5ktT3q7JwEvS9TWquf/p9mTa6BPOsC//gM9+Nww7x0Zoo6pDayI7ACHyix
 wenEXpUU+010mB06MpA8ofbbIn25EJifvYxxvyKkWeZSh6sd3IQq2btODsElDw4xyqEq
 iSbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=JPHcF1Ac92GQc/SsDP7K+Yij8n5Op4P4c8xwvHBjRY0=;
 b=ieOidJEGOQUIW/dhUmi+iteuMVJd8fmmfhlblVWB45w44WmCagd7GBtLCGWTgna8Wh
 CJZktUURxiY2NfAqhjjwO849B6bnujzsA9vrFNHXyKgcH8pfFx8zyfRagQehjBBI10cD
 R1HS+x/N17ksOzsSValqhKgiyH3cX95jpiFTx7YbnPaONFC0zXbwyW+neSuJKZwy0DdH
 e/rWWqPMcFlPVT+lV+352Y3VUk8SVufjeCqWWJ54VzRuNHSSNv8Y89h9L2WO6Aey2N0f
 ImWZwuKH4U+L59+cuVo44Xd8dVcE+cpMvNTx80itZRATIH2cHz5eTEmrYmoLlAW5DZtj
 5Alw==
X-Gm-Message-State: APjAAAUv51AhSzOG+7McQl8WJgUv0P054tphOtZ0dEA72wUTuouilzbT
 NudxWNKjdlBK3fRYtIABD6lYHg==
X-Google-Smtp-Source: APXvYqyqFKCBWTIp8TYm3kDEts6GcpTPEPycbAbyvkwK3IpCwgEnNSAd2DdwsYCBcerQjSs5m25png==
X-Received: by 2002:a62:b60c:: with SMTP id j12mr13123896pff.8.1576195714876; 
 Thu, 12 Dec 2019 16:08:34 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
 by smtp.gmail.com with ESMTPSA id j38sm8317647pgj.27.2019.12.12.16.08.31
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 12 Dec 2019 16:08:33 -0800 (PST)
From: Dmitry Safonov <dima@arista.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 27/58] tty/serial: Migrate mxs-auart to use has_sysrq
Date: Fri, 13 Dec 2019 00:06:26 +0000
Message-Id: <20191213000657.931618-28-dima@arista.com>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191213000657.931618-1-dima@arista.com>
References: <20191213000657.931618-1-dima@arista.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_160835_892882_91C87FAB 
X-CRM114-Status: GOOD (  11.24  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Vasiliy Khoruzhick <vasilykh@arista.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Dmitry Safonov <dima@arista.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Dmitry Safonov <0x7f454c46@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, linux-serial@vger.kernel.org,
 Jiri Slaby <jslaby@suse.com>, Shawn Guo <shawnguo@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The SUPPORT_SYSRQ ifdeffery is not nice as:
- May create misunderstanding about sizeof(struct uart_port) between
  different objects
- Prevents moving functions from serial_core.h
- Reduces readability (well, it's ifdeffery - it's hard to follow)

In order to remove SUPPORT_SYSRQ, has_sysrq variable has been added.
Initialise it in driver's probe and remove ifdeffery.

Cc: Fabio Estevam <festevam@gmail.com>
Cc: NXP Linux Team <linux-imx@nxp.com>
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 drivers/tty/serial/mxs-auart.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/tty/serial/mxs-auart.c b/drivers/tty/serial/mxs-auart.c
index e34525970682..b4f835e7de23 100644
--- a/drivers/tty/serial/mxs-auart.c
+++ b/drivers/tty/serial/mxs-auart.c
@@ -12,10 +12,6 @@
  * Copyright 2008 Embedded Alley Solutions, Inc All Rights Reserved.
  */
 
-#if defined(CONFIG_SERIAL_MXS_AUART_CONSOLE) && defined(CONFIG_MAGIC_SYSRQ)
-#define SUPPORT_SYSRQ
-#endif
-
 #include <linux/kernel.h>
 #include <linux/errno.h>
 #include <linux/init.h>
@@ -1693,6 +1689,7 @@ static int mxs_auart_probe(struct platform_device *pdev)
 	s->port.fifosize = MXS_AUART_FIFO_SIZE;
 	s->port.uartclk = clk_get_rate(s->clk);
 	s->port.type = PORT_IMX;
+	s->port.has_sysrq = IS_ENABLED(CONFIG_SERIAL_MXS_AUART_CONSOLE);
 
 	mxs_init_regs(s);
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
