Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BB065F8C9
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  4 Jul 2019 15:02:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ahdMQP6lEV4tGgnZAaOIIIgU0tFTlg1l0fAywLKsNMU=; b=PyZCi9QgNjHut8F0mCluQVFxbl
	cM8fKcRhSZAOU6W2F7MlhEsKsNgrIh9VNaKn4vFBVt+jzL92tDpTeJtKem4zXF1UbWFGCWhxmhR1Q
	VVeJKZgp2xmQRIVRdtGpO3k/YOS2M0COHbUR1ru+SzQo6SR10BAy6dHnCVO8wJjs1F1a79qPIo05f
	Te5EwnjpEqZ9R7OI1l5J54QeG2ajOsKgkRblRJQ5eKtV1lSXWpcGBtN1HbGkRRQtbDG6s3qNYKD5J
	RVSE5LwII6xhX7pWzvTmdawWNcH2uFEi/5qLW3sO31KtDmJbmGHWIj71qeiIeLC5XkLOsV+nSLRqy
	Jm+3Q8lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hj1Nw-0001JT-Ud; Thu, 04 Jul 2019 13:02:48 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hj1MJ-0008U8-WE
 for linux-arm-kernel@lists.infradead.org; Thu, 04 Jul 2019 13:01:09 +0000
Received: by mail-lj1-x244.google.com with SMTP id 131so6104173ljf.4
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 04 Jul 2019 06:01:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SyDWki8L8NcXuBPDzCdM3r3fpSMLCvKmwBmXWEoRaTo=;
 b=JgjQ4YYJtuKFcxmWKZHgny5RPwXpt+nC4RcNKN7GHS/mwiaf7JL4ZM9yhTjk6TrdQK
 2jlHi6886KivLreGvz9b32HD9aCkjZaLaibFhdk8rWXYYLZAv3t072HcN8z9DejLdDab
 kuZVMyH+JwwypPNeoh+TrQZiuxyQQt/EbJf/inlcRbXv1u+3xFl/zS5LvV0VNcnSC3TN
 srRhdLgoComXjILvfwCdtQIPOSaVAaIwU5NoIxjzNC2k4L2gETTfLApcsMA7TCpJ0RFj
 12pmiJ6khJ4biLW9Ui8OMZJYaWyoDNjDMEBIxmiSF4mzaDbgYOWPbU8il1Rc5lHZr9jv
 e/vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SyDWki8L8NcXuBPDzCdM3r3fpSMLCvKmwBmXWEoRaTo=;
 b=f+dq6o9SovxxDpQY1YwbCgHiCuJDo9jI4QqkEd4G6TlfEmk5K0fAcRJxZsD6IjlIh2
 P9UPJARdG5lEPsyLSktSMICa2jvAgHQngMVTZJM4kcwLJ5F4DzWZ+bvd8JxVsBcmGi7g
 ZsXuDqW2w7dbfDMd8FZ8Ur87+uPZl8bd9arB/E60tXQaf0ffH0bFH5at9A19K62AaxuW
 E46rX+iqcjsvvqjoU9jIvpbGoHmIDGTYRSo/maOD5qUsfhlRSblMLTl1w2F5beOc8D+8
 Lz0sysu1hwZSNFGYoEdaQPHeUjip0ldoQIaT8rBvfYymHx7dvqsYmpt7rh4szQ2WHL0e
 7x6Q==
X-Gm-Message-State: APjAAAUxxUxpv1LPY1Fsb/z+1YW+i3yQFYrGQEY6pPOCTNrQqniZ1PP1
 pSUcBNnvxlCWeYs9659I9CM=
X-Google-Smtp-Source: APXvYqyqK8GICe53xP/lgQ6CIujxjkUSwEwiwZV5tINqS+mXysxT97isy6FNRj8B4IC9m+Ngqp6cEg==
X-Received: by 2002:a2e:9858:: with SMTP id e24mr24094920ljj.91.1562245266664; 
 Thu, 04 Jul 2019 06:01:06 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id h1sm485914lfj.21.2019.07.04.06.01.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 04 Jul 2019 06:01:06 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v3 5/7] serial: imx: set_termios(): do not enable autoRTS if
 RTS is unset
Date: Thu,  4 Jul 2019 16:00:27 +0300
Message-Id: <1562245229-709-6-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1562245229-709-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1562245229-709-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190704_060108_109339_B6ACD49E 
X-CRM114-Status: GOOD (  12.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.0 T_PDS_NO_HELO_DNS      High profile HELO but no A record
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
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Sascha Hauer <s.hauer@pengutronix.de>, Sergey Organov <sorganov@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 linux-arm-kernel@lists.infradead.org
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
 drivers/tty/serial/imx.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index e0f5365..5532887 100644
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
@@ -1588,8 +1589,9 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 		else
 			imx_uart_rts_inactive(sport, &ucr2);
 
-	} else if (termios->c_cflag & CRTSCTS)
+	} else if (termios->c_cflag & CRTSCTS) {
 		imx_uart_rts_auto(sport, &ucr2);
+	}
 
 	if (termios->c_cflag & CRTSCTS)
 		ucr2 &= ~UCR2_IRTS;
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
