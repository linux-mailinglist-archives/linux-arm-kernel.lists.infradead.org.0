Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ECB5945C63
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 14:14:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=Cct0dsv1dBIa6RWBT7cvjJkVQsLUO6HGGLSCvNZEGoA=; b=NsmipmNIAH+IUZ2NcZcDRMl6j+
	YE++shlgZXcja1EN43YnnD5zsle7Kosq22QAA5v0HaLmzP8/0TrrdqzNTIgMNdGP22wNV9x0FMrm7
	JwEtfTlmfVIz98edeTaRlgTAc0GIWutQQYMDIJJ/4dUtxIfS1Y9PAQGP4FsNh0BTqkUSJoya8Nsh9
	5ncpQnXVX7Urp66XXFEkk59fj9eEHeKb+eutSn0TSId9Obk+I0QU0wuq3vve4Bb7/objHh4VMCedX
	kfgVr0F2C7OrWbFOAvXEMcYsQ1/LCFwlH/oEqVgVoGEOQRIMpHBrzHGQtJmpKLcBTvqzAfqxqn8RZ
	zHRaSQ4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbl5u-0004Oi-3a; Fri, 14 Jun 2019 12:14:10 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbl3m-0002pr-KY
 for linux-arm-kernel@lists.infradead.org; Fri, 14 Jun 2019 12:11:59 +0000
Received: by mail-lf1-x141.google.com with SMTP id y198so1602807lfa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 14 Jun 2019 05:11:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=MDH+SHphi2du8HQmnp7WkqZowZkrn1A0IGK01w7XZi4=;
 b=tjFyKsoOmlqoDIYNiaw0kw6MN9s1Upm314ctD6PUnNY3UjlUOhmS2tPXI+dvHPVLCS
 TmH9Wg8+j+AL6lAeQx10dXaWiGlnpIYAYzUw7eDTJbC0hV6zyAvCN39tAPWEbpixyf77
 N6vK+d48EAdtUBSFzbgr7k2hAJ9hk2YIFEVCzxo8/fSEVxcyJVQ+HMKiDfrLuf/DGsEb
 mqFfqHhVZZXkoBNJfHEjaoXHL8T6P/thlKSELLZOO82Ny5/0b5g+IzuhM5+DXfZ6cXOt
 a8sRWPeOlQr2pf0k5sVXJLsD8nHS+6NYWmLcgH2C1E9/OMca6uOYmmrFDcxPen9Ok9/s
 QIEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=MDH+SHphi2du8HQmnp7WkqZowZkrn1A0IGK01w7XZi4=;
 b=uA2DYCHg17DY6Im7xyWjsR+IJAadefGYGdBCVxc8BZ0QmzwkPbtaMXe3f4eO5GXN6m
 0huXh4GlQWWB5yTbvA1Q/u5P4IzPk5EkaZSRCeL9huRsyas+TaLPYG9CwsHSPKbFJxCH
 u2GARZpl2/VfxUOwWfuDL9lCKlsyCRnMeeiK+LPUZPvMwdQZe7EvJ6h8XpY6wS1dF/Uu
 XFbMz/16m8h9d6sG6jJohEUzXA3DQLUuj9ZuL5CAF0BHb9RiYBFDr0+e1qFjbfMXi4Cv
 K6vjGeafXa1JDK8sLf2usN7mg5ncMWIa0n3P63pGeH/INDB3zL0mwJqd4X133Q4lYzGv
 y87w==
X-Gm-Message-State: APjAAAXzVUpk4nJlqHAULSB7nyX/eiV6LQ5AJZhSlxoOSPeoGijo3THj
 I2E2LOaSAd4mU4892T0NKQ39cBOo
X-Google-Smtp-Source: APXvYqzUW0zaN2dztJMASk7r2O0ps7VxazW/j1SIteqZxnYzGbKqLOxtxLTGrUwrCTBm6XYDQeaLbQ==
X-Received: by 2002:a19:230f:: with SMTP id j15mr9538698lfj.122.1560514317209; 
 Fri, 14 Jun 2019 05:11:57 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id p27sm459683lfh.8.2019.06.14.05.11.56
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Fri, 14 Jun 2019 05:11:56 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH RFC 6/7] serial: imx: set_mctrl(): correctly restore autoRTS
 state
Date: Fri, 14 Jun 2019 15:11:33 +0300
Message-Id: <1560514294-29111-7-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1560514294-29111-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1560514294-29111-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_051158_707428_ABC5D7AB 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

imx_uart_set_mctrl() happened to set UCR2_CTSC bit whenever TIOCM_RTS
was set, no matter if RTS/CTS handshake is enabled or not. Now fixed by
turning handshake on only when CRTSCTS bit for the port is set.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index de23068..bdb8b6a 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -970,10 +970,19 @@ static void imx_uart_set_mctrl(struct uart_port *port, unsigned int mctrl)
 	if (!(port->rs485.flags & SER_RS485_ENABLED)) {
 		u32 ucr2;
 
+		/*
+		 * Turn off autoRTS (UCR2_CTSC) if RTS is lowered and restore
+		 * autoRTS setting if RTS is raised. Inverted UCR2_IRTS is set
+		 * if and only if CRTSCTS bit is set for the port, so we use it
+		 * to get the state to restore to.
+		 */
 		ucr2 = imx_uart_readl(sport, UCR2);
 		ucr2 &= ~(UCR2_CTS | UCR2_CTSC);
-		if (mctrl & TIOCM_RTS)
-			ucr2 |= UCR2_CTS | UCR2_CTSC;
+		if (mctrl & TIOCM_RTS) {
+			ucr2 |= UCR2_CTS;
+			if (!(ucr2 & UCR2_IRTS))
+				ucr2 |= UCR2_CTSC;
+		}
 		imx_uart_writel(sport, ucr2, UCR2);
 	}
 
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
