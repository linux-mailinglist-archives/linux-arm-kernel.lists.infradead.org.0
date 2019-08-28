Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F541A09C3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:39:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=SJBi8Q3b5RR3EeTFPEyPC0QtZt1e4ro0J5BLww+sNcY=; b=RpwuMRgG2gRth/sC1lipi6jgBR
	SlgMMc1yW56k5SXOBnYLv6f6nIDpb+M1GTXt3Xj5l/7Wib4XILyl0wlbEmCTuwOkbLAzGCtXUk6vD
	m+0G23alCaGDLXGM9O5bRkk7NU5wlZmZvIbJ2w/0KcepC5WuBgOtU0eFae6Nd1DZ1t3x0xx8ojiBo
	ie03rrT9p7ZbiziBjTZIIjE7vCtyVW3QEFaviAULUqYIKMunyKOi6BuBqhTruwLoHh62AI+sMm84R
	8LiVRFdj3xk07nNN+Dylo281OzgD586vHc0VIrkEkVwBPO1hQDY9jq4QuU+owD6Es2WDfsJ/mRXl5
	VSvRjg9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32qJ-0007ez-GW; Wed, 28 Aug 2019 18:38:51 +0000
Received: from mail-lf1-x143.google.com ([2a00:1450:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32pb-0007FG-VB
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:38:09 +0000
Received: by mail-lf1-x143.google.com with SMTP id r5so400419lfc.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6lzh98sOLMsqCvm7qUrUZzyJz2eukzPb0EvBk7FuqQE=;
 b=X0C9DQD/F/4toZ9Ly2/MM/ayvInotEuMQXKtTOfRx+OCPoUp8QZQfWcgVGgk5jDrZP
 Fw+2pQH2a8mDCu4c+p5NgT7EFJ5l3e3C9saGeEJP7T6FthKMcH9AjMUWJlG2A+/eimI+
 13hORnBzMB6waEpE4pgNEpXlO67sebfnGGDZiNV6BUsxUMeEwKF9kfh2A8j8jBAxJA0f
 RzU+87tPgFnGBylNOJWXysz4cRlAP1ECj+feaxBSAFV+jYqLlHzI93xdALKC5eScsoCc
 frnMCJ7l/uxOpISObceHip0rOspVKVVPbjmZQTtpfncaYnXbhMmAwy/CPRLKvfJRlZS+
 eaZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6lzh98sOLMsqCvm7qUrUZzyJz2eukzPb0EvBk7FuqQE=;
 b=LyKfn9ivrXhAPq5gWf694H+Z5C1MpYzQikq3npuE8ta3ml4wCzvSPtHMVOTFEoXo0G
 5Og9D0CP2JjjUGssB8VrFtlgCW71R8JqAR1yI7T/eVjAJK9057P1I8pXBNMjaigYHSBG
 K2B0Mgbnh0ZzQLfc7dTj9fSLcw+o7Y30stAuHq+4i1e4saibLal53Yge4roS1UKSqXbT
 HrnA/bUgSlmGzIGfdRM+YDS+ZAEAkLI/lmXJs2FPeTkSTm0C9h+ntnuiFK9fk4P7CKfQ
 KrKS3c69KslRFJSe38pa9NJm2trcfShZTH5itPhIRUB/vEXMdWGQJXw6l2+nnJLjJno+
 XfbQ==
X-Gm-Message-State: APjAAAV6r3KVxicdxHVY92vYgiuemqlCJHtSSdgSrDEwgKw8GWehfwB7
 MC5sYKklEWTf0AT0r1vQPmY=
X-Google-Smtp-Source: APXvYqw2zr4JIw+BlcLX/SZK6QBLtrz+EkMw0hfRzkY43lErmZkJZCN2xiOLA+EbTE3XsRyPE4VkIA==
X-Received: by 2002:a19:5d53:: with SMTP id p19mr3376568lfj.109.1567017486320; 
 Wed, 28 Aug 2019 11:38:06 -0700 (PDT)
Received: from osv.localdomain ([89.175.180.246])
 by smtp.gmail.com with ESMTPSA id f6sm9226lja.16.2019.08.28.11.38.05
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 28 Aug 2019 11:38:05 -0700 (PDT)
From: Sergey Organov <sorganov@gmail.com>
To: linux-serial@vger.kernel.org
Subject: [PATCH v2 2/5] serial: imx: do not stop Rx/Tx on termios change
Date: Wed, 28 Aug 2019 21:37:52 +0300
Message-Id: <1567017475-11919-3-git-send-email-sorganov@gmail.com>
X-Mailer: git-send-email 2.1.4
In-Reply-To: <1567017475-11919-1-git-send-email-sorganov@gmail.com>
References: <20190530152950.25377-1-sorganov@gmail.com>
 <1567017475-11919-1-git-send-email-sorganov@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113808_009242_8ACC5052 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (sorganov[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

imx_set_termios(): stopping receiver and transmitter does harm when
something that doesn't touch transmission format/rate changes, such as
RTS/CTS handshake.

OTOH, it does no good on baud rate or format change, as
synchronization on upper-level protocols is still required to do it
right.

Therefore, just stop doing it.

Signed-off-by: Sergey Organov <sorganov@gmail.com>
---
 drivers/tty/serial/imx.c | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/drivers/tty/serial/imx.c b/drivers/tty/serial/imx.c
index 47b6156..fa723a9a 100644
--- a/drivers/tty/serial/imx.c
+++ b/drivers/tty/serial/imx.c
@@ -1652,9 +1652,6 @@ imx_uart_set_termios(struct uart_port *port, struct ktermios *termios,
 			UCR1);
 	imx_uart_writel(sport, old_ucr2 & ~UCR2_ATEN, UCR2);
 
-	/* then, disable everything */
-	imx_uart_writel(sport, old_ucr2 & ~(UCR2_TXEN | UCR2_RXEN | UCR2_ATEN), UCR2);
-
 	/* custom-baudrate handling */
 	div = sport->port.uartclk / (baud * 16);
 	if (baud == 38400 && quot != div)
-- 
2.10.0.1.g57b01a3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
