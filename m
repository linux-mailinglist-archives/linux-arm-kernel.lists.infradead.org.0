Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05F69118B36
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 15:39:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Es212wlX/345Dv698j+sBccTZi8Ya89w4Gx1IVf2Fxs=; b=GMwUVicCLA4gq+
	03eQoZqQbkRjH5RWp4BpHYyvjXhs+TOosnTteyi0GVeAvA0sLCI7NTn4/7TEAr0qTW+7sjryciEE8
	n7n0MwfwPiycgfHmVWBzky3nNGvLDZFMmQ8IeaSBetxo0GfNTWIa8hg4xE/5Je7Qd1OukENGgg1Lp
	3oyJuYjU6U8hzyYX/vSAM2gMH939bjNFpGs/jesLoVXNYRs6ZqlKzRw/N9wWd2geCj6+orPgIxVwy
	tapGydquZeXBIZWYDd9D+nyvGa7G2bxNNLZl4tkSmjucWw90z4aIGbiFzU7133NoS/O50YWxEPs3O
	dPHybNQUndJjRl+zbIKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iegfa-0006EG-MO; Tue, 10 Dec 2019 14:39:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iegdw-0004Jy-7n
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 14:37:42 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 20FCB2077B;
 Tue, 10 Dec 2019 14:37:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1575988659;
 bh=ZZu6g4CiDeZIBwN4xUg7j+IL9wGtec4FD9ThMJUWWyY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=pyVsl2AwF+Rb+dIKagy9ZSrdqWe8rtMZlGi5PL+0o/xJIQXw9ft9eVi4Fu5yj6DvG
 P47DJ8vavR+vbU3NaJwJRJK+9tkEodLUTSv9iSUzchyepYgHc3XEkKE/oAwh9evvHA
 +CtUSn845z8GZ/5mJ8qti1oD1GYcDa9C061zVE+M=
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-serial@vger.kernel.org
Subject: [PATCH 10/10] tty: serial: samsung_tty: fix blank line checkpatch
 warning
Date: Tue, 10 Dec 2019 15:37:06 +0100
Message-Id: <20191210143706.3928480-10-gregkh@linuxfoundation.org>
X-Mailer: git-send-email 2.24.0
In-Reply-To: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
References: <20191210143706.3928480-1-gregkh@linuxfoundation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_063740_316605_F8C7D191 
X-CRM114-Status: GOOD (  12.14  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-samsung-soc@vger.kernel.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Shinbeom Choi <sbeom.choi@samsung.com>,
 Hyunki Koo <kkoos00@naver.com>, Kukjin Kim <kgene@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Jiri Slaby <jslaby@suse.com>,
 HYUN-KI KOO <hyunki00.koo@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

checkpatch is giving a bunch of:
	WARNING: Missing a blank line after declarations
messages on this file, so fix up all instances of that issue.

Cc: Kukjin Kim <kgene@kernel.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>
Cc: Hyunki Koo <kkoos00@naver.com>
Cc: HYUN-KI KOO <hyunki00.koo@samsung.com>
Cc: Shinbeom Choi <sbeom.choi@samsung.com>
Cc: Jiri Slaby <jslaby@suse.com>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-samsung-soc@vger.kernel.org
Cc: linux-serial@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
---
 drivers/tty/serial/samsung_tty.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/tty/serial/samsung_tty.c b/drivers/tty/serial/samsung_tty.c
index 4aebed241068..d5c75d288498 100644
--- a/drivers/tty/serial/samsung_tty.c
+++ b/drivers/tty/serial/samsung_tty.c
@@ -1543,6 +1543,7 @@ static void s3c24xx_serial_release_port(struct uart_port *port)
 static int s3c24xx_serial_request_port(struct uart_port *port)
 {
 	const char *name = s3c24xx_serial_portname(port);
+
 	return request_mem_region(port->mapbase, MAP_SIZE, name) ? 0 : -EBUSY;
 }
 
@@ -1963,6 +1964,7 @@ static inline struct s3c24xx_serial_drv_data *s3c24xx_get_driver_data(
 #ifdef CONFIG_OF
 	if (pdev->dev.of_node) {
 		const struct of_device_id *match;
+
 		match = of_match_node(s3c24xx_uart_dt_match, pdev->dev.of_node);
 		return (struct s3c24xx_serial_drv_data *)match->data;
 	}
@@ -2109,6 +2111,7 @@ static int s3c24xx_serial_resume_noirq(struct device *dev)
 		/* restore IRQ mask */
 		if (s3c24xx_serial_has_interrupt_mask(port)) {
 			unsigned int uintm = 0xf;
+
 			if (tx_enabled(port))
 				uintm &= ~S3C64XX_UINTM_TXD_MSK;
 			if (rx_enabled(port))
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
