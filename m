Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5F056BAC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=1s5jGfzFGkuG5VKOHxHoU3/ZPrQwCuIWharDSgFbHIQ=; b=mERX0zoHZqK8ZBHTnEDUMay/tA
	XVqdQtG3ZEMu7aqvQppnIp/IpV+ZHoi0eSFmUkobZQNBX4uqJTwG+ndptwbsg7WSRJAqdgI0WjdtP
	0Q1ICG/YOLY+es1zCD4UgBB8082CuzzWQD8AF69Zrmth7sjMl57AS3APDzWVKBPN9LW2yS5x9zyUf
	MCqsnky0x+wm4+2Fx27DUmD8C5F80qyxvAeP7tB2yVpsVdwgGBJBngh5I6p/esKAwQ3iPxpI/yQXs
	yqyWSrXAYFFS6/K4riIbUShKjDF44s7C1fIJe092mzfQZZS661XWNL0bTBtMEUZ23p00UrlYYXA3Q
	V+nzwGTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8jJ-0006bF-Mr; Wed, 26 Jun 2019 14:16:57 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8go-0003ym-KS
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:24 +0000
Received: by mail-lj1-x243.google.com with SMTP id 131so2385862ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=PSCP97EAMw9kJ5xr2biP47mIP/F/75GsSBuiL+rMzdw=;
 b=mqUioiLReGnEQt+HM3TnWMKitnMv4iEElkv3Gxq/nhULQPVKwjqcrzDEiooO2YoSVo
 iM1wtpbL3kCH2M2N6HPi3q7Dhtr0Bxo9RY6kiySEIPyxEmbhw+FUIh5vmMV95XuR3USl
 3EwQR+oSAGzlbo9eXaCP4cgS+DqXhTSHrsbt0TrpUSBBs5cRhywaFhUs4GKeOKcRiJ/x
 lCZVoj2RwhLu0G6nKLjevdfPaLJFpeJ/d4ID0VICG1G/csP2GrXd59yDmfUH+5hxkTxn
 TJhxWbOsYSHXtjqreBzsCLFGM7p0nxGCY3xLAsCbGmW5TIzMQCEpgITjWW6S3sguJKeA
 oC6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=PSCP97EAMw9kJ5xr2biP47mIP/F/75GsSBuiL+rMzdw=;
 b=ZIVROju8BMcYoNXAVWQT5bAbWBR2i9m0TWz0dVRLZQwb6ROpj27ORNo/fHA8RbEB9P
 q4LdFtOMHWPQ11zuGA9C9rMFKuxomUOFIfYnwjr4jlxOKhY6v+NyX8ysXHoOkdPlfU5S
 F057uTZSKzZhT0wiV5xJmYh23mEEfS699DRDolxl+jDcKniFr7Yp7jJgiXCiy3e7vhC9
 j+hW7ri9t+3LUzFpE1VutBxkZMTFGTUSM0pW6TQFpl+NtNunq88OrD6dGTytf3f7b0xt
 Nth7qF2BnSxq0eEuTJsg8JRffqMPI2DlsP7njdKbQJ1+l9+HCMbCgV4hZSyhVzveeQC4
 MvXQ==
X-Gm-Message-State: APjAAAWdGx559vLptn4icIHBqGZxPuumYFiXMtTmRbobAm3keBxSl1E9
 lATxw+4Kp2MjH4VaBUZxRjs=
X-Google-Smtp-Source: APXvYqyuTVynFjGEcA3fo0upN/VPg2m8WVsm9Rnt8JOCdPSLblri7wBfunfXN82sWRjbNSecicxmbA==
X-Received: by 2002:a2e:9b03:: with SMTP id u3mr3086619lji.15.1561558459745;
 Wed, 26 Jun 2019 07:14:19 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.18
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:19 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 5/7] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Wed, 26 Jun 2019 17:11:31 +0300
Message-Id: <1561558293-7683-6-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071422_723484_77163AE1 
X-CRM114-Status: GOOD (  12.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Pengutronix Kernel Team <kernel@pengutronix.de>,
 NXP Linux Team <linux-imx@nxp.com>, linux-arm-kernel@lists.infradead.org,
 linux-serial@vger.kernel.org,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

set_termios() shouldn't set UCR2_CTSC bit if UCR2_CTS (=TIOCM_RTS) is
cleared. Added corresponding check in imx_uart_rts_auto() to fix this.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index e0f5365..4867f80 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -405,7 +405,8 @@ static void imx_uart_rts_inactive(struct imx_port *sport, u32 *ucr2)
 /* called with port.lock taken and irqs caller dependent */
 static void imx_uart_rts_auto(struct imx_port *sport, u32 *ucr2)
 {
-	*ucr2 |= UCR2_CTSC;
+	if (*ucr2 & UCR2_CTS)
+		*ucr2 |= UCR2_CTSC;
 }
 
 /* called with port.lock taken and irqs off */
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
