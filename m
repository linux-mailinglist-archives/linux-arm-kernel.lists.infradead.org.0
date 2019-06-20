Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C73BD4D0CB
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 16:50:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=FY7bpdWeULjOEzM3WvPPBUbAopRip7xKHS4/9Aq36T0=; b=CKFjJusSaigYZGKMbsdTFRQnNH
	8cPoFU0xZ5EIBf1KTkMBslsmPKrGF2bEVlWBDszk1sMaEzxsFN3/kOJFXTh+PY6up1B0prC39azqm
	eI13idBnFoykxU6OZh1gKQAL/PKuePOopqikRf3AvUowcCajlAq2zk55V6MLHpWu+3owtj/jBQocP
	JAW3ZYd7BzAkzhc8+pRxrBfH4pWljEe+UCXZ7mjLHDgeOjB3tT4kTQ5lRgsmaU+bCC/SnkjUUxKv7
	+LgRCtgh2VRAnG22wxk51dVExUM6jVsSDOVmBKJRtqznX8aiUgwpbxVpsmtpmJaToYbASINcOFFus
	8qxdj1mQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyOP-0005Qf-C8; Thu, 20 Jun 2019 14:50:25 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyMH-0003mc-LZ
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 14:48:15 +0000
Received: by mail-lf1-x141.google.com with SMTP id r15so2613773lfm.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 07:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6Nm3aMeYvpczSE39H4ZCdrCAyxxKPyaKxXuOXw8nA9E=;
 b=Ss5CQNRQyqAxUrx+3rTrr1Rso/LJZB+pJ5PVygl4RrOFXbA+QP2U8nVgNZ7aj7rzLl
 hxtPA9icuOeZjltVtquglSqmBtdUeF4iNI/364v3Sa6iqLOH3K7imWi8ZJCeBtNRa3eB
 ZGrLttd0NFhg/g+jlYkqDv0vR4u0F1NYIvOZSBmX/wBIa0mrEzG1UPqlljq9B9k4uvk8
 azK6xmvKsieyTiZ1VBQj2O9a0qnpx+KSFQKyl8Rz8Spb9v9YxJr6RCJAdDJEm3Y5KFQX
 Bc2BlSAA0X+1VvFfjcZKYL1zFVTpVRwHm6W5cmxHc08TMe+qvXO5wixzst+FRnV00M97
 VPog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6Nm3aMeYvpczSE39H4ZCdrCAyxxKPyaKxXuOXw8nA9E=;
 b=ts/9U7ZtnFWqkP3Arvw/urxnc5UTMHrGej5IZ6a+vDnUaRLIWf9F5XlI+hEXy4Bclj
 894p5LL4oZhR9uL31SO4M/GW0nNbcOkoUpxYWIY5YpqhNAO4NkY7R7pTp1b1GtDWnDsi
 Oq7iyPfyK/uNJrzIhFZ+BLvGj1bStcefWitVB0js1dZgp4Xnb8W+0gCvTEACghNbfwwU
 d+FS6PiA8voGdtq88vaUh1rscuFf6hsnU6kA4FXz2KX9EZn6FjRqW4Vo9CbpP63fn++0
 FZCpntAcCH6fvWvdcGzF7CjXZLnLsrP06uHgk1y1HJyK0BSdnmMydAywvRa4K6qNR5pn
 P26g==
X-Gm-Message-State: APjAAAXDbTIO1Ppm27yFNTWrhBdFhX4YkFwrElevDZjg8KQCCSDlq/C2
 MCr6nCipY1speUp7xfqmWhPaveAh
X-Google-Smtp-Source: APXvYqzEDgPvzuA9agr831Q9g4K+XHoTDD6hI1abVBYqhLYa0eXYg8rTd9FJ+1G12eq6tprD+I3D5w==
X-Received: by 2002:a19:2d55:: with SMTP id t21mr1839970lft.94.1561042091891; 
 Thu, 20 Jun 2019 07:48:11 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f10sm3577768ljk.95.2019.06.20.07.48.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 07:48:11 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC v1 5/7] serial: imx: set_termios(): do not enable autoRTS
 if RTS is unset
Date: Thu, 20 Jun 2019 17:47:51 +0300
Message-Id: <1561042073-617-6-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561042073-617-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561042073-617-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_074813_766560_3576285B 
X-CRM114-Status: GOOD (  12.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
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
