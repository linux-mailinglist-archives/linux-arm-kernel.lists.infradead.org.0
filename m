Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB3156BA6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 16:16:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=QDpAb6eLspu7RsM4IAGnIUiw+eE/0eNuKIoYIReJJPU=; b=USDGf/I6M+Pz8TYgDuevRPD61w
	nuvgBZ/P3oMlmI7AHWErYfzeFcCTXWDbhxSX2PlDik1ggCd+h3KmVpuunXa375kIRETsr50XPLylz
	dkYBxQC+8PGDuWj13teIbfy/HnmKjutCT30SBF9fOMrQZMQhdHZb4C63+bUnaRK0MbEvQumI25tZn
	AXfKINSboUIhIDnOaW447jNsOJ1aZeks3/izfnNvW9LXIpm0heccefeGkZGz0neNroisMK+TdwyHs
	hQDL5BKBi3pZzFrfFH3YczAA1J+uwLLA3BOUBaYhL+fJwpHQYWh6JGWtD9lGcBUlHvIGjMPsBMq9N
	6TQVoQyQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg8ia-00069Q-MF; Wed, 26 Jun 2019 14:16:12 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg8gm-0003xz-I5
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 14:14:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id 205so2373618ljj.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 07:14:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=SjpXSg531ioWOBzpBIFjjzIi5yRvk9QMHcPgjilDAr0=;
 b=qca4raonl1jkAymrg6nNDfK2OxZwaHqAPzBOVKKzmmIaGVOgkn9U5Sug8izqRqiEgq
 p9i945fgppbhD/Wxh3QoI+0pABdNgTcyf1KgEVPK4ZfK1k1DDgORdOn0QGmhVldkYpqE
 6xF7IvU8nPR8J2G7ZKBEncmu754DR6j1HNDntCiDM8TBaYuxCC1/1MeIKkknUmdHyMK7
 ifkg433l8teKUsPih39z12s1yxtg69E1kCzXyp//aXxCFI854XTxAEV+3M5axsFeMyS1
 ngyjdMVS7qCt9L7eBE/yGIo0wUQxtwFCqos7DKXUQHd+a7YRPMWqf6DKBOSiTFil0L93
 OsIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=SjpXSg531ioWOBzpBIFjjzIi5yRvk9QMHcPgjilDAr0=;
 b=ZEMTclTNBqN+Wc9o4bX2QinFdqXdCfbiyu2r90x4mjIpvRAveGRAsMCQY3OSByEJ+t
 gQnm0zRLGdBStSW5O7UYwT3U6R2B5HFPH4IhOLYeCGC7isdtjPlINVg74K6zq8L1oxw3
 DXgWbXIlH2fST3sdmcclbom7QoSbJtWy90Ex774wfrDSCfKbj8xQh7YY6tI7Tcc4qj4V
 0HiBvl+E6pD87aIa3OAqxFjzgjPTOeElcrwRIBQF5JwTyuGh+M990BRBvPOuvHTfx9vT
 nEynOuqpx8g09k5EqSunpedl8S1QY0edwBBuNaDVS3F1m5t6CbUdfJAaNmFZ3Y/Aug92
 EQsw==
X-Gm-Message-State: APjAAAULC9mXXjERB8ru7pXb0u8sJL4fSrocy6PaUvfBtuHvMlE5XCQm
 jeHmXBUYi/uoP2ZhYupC6vU=
X-Google-Smtp-Source: APXvYqw5/oAtAzvXc7HUCNpUYYoZ2KlQOF8a5I/VNuxYuw3AuZvADuJi9KXokLYHddmUnp8SlU8Vgg==
X-Received: by 2002:a2e:8155:: with SMTP id t21mr3108879ljg.80.1561558456870; 
 Wed, 26 Jun 2019 07:14:16 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id 25sm2863825ljn.62.2019.06.26.07.14.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 07:14:16 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH v2 2/7] serial: imx: set_termios(): factor-out 'ucr2' initial
 value
Date: Wed, 26 Jun 2019 17:11:28 +0300
Message-Id: <1561558293-7683-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1561558293-7683-1-git-send-email-sorganov@gmail.com>
References: <20190614072801.3187-1-s.hauer@pengutronix.de>
 <1561558293-7683-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_071420_629304_6E8265E2 
X-CRM114-Status: GOOD (  10.96  )
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

Set common bits in a separate statement to make initialization
explicit and not repeat the common part.

Reviewed-by: Sascha Hauer <s.hauer@pengutronix.de>
Tested-by: Sascha Hauer <s.hauer@pengutronix.de>
Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 1055124..87802fd 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1563,10 +1563,9 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 
 	spin_lock_irqsave(&sport->port.lock, flags);
 
+	ucr2 = UCR2_SRST | UCR2_IRTS;
 	if ((termios->c_cflag & CSIZE) == CS8)
-		ucr2 = UCR2_WS | UCR2_SRST | UCR2_IRTS;
-	else
-		ucr2 = UCR2_SRST | UCR2_IRTS;
+		ucr2 |= UCR2_WS;
 
 	if (termios->c_cflag & CRTSCTS) {
 		if (sport->have_rtscts) {
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
