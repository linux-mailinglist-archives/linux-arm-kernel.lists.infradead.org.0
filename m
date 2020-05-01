Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2CD21C0BB9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 03:39:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=UQHBv1gMlT5a2HZcTc8fkDnN8MICNBGsPQpXNwATIqs=; b=C1F
	JktweoOHZE6/KvCQyE78mdrphTWuCNVvhC6MK9deyI45TxV3bCo6ZLSY9ldesQ0nOxTpV3wA64omG
	V1BikRe/Rd83EA0YK0BKpNmwZsePVxCmYzPzNfmDSDB6kzN3bTY27xxdD7GRPLLXwPoknJqzSVbZb
	40osUKD+KE1sy20zGDdAq6fmjZhsUIzYdVK5d6Pxp2iV1w3rHNPvX7fLnLONUaNTXROt2Ythy7goR
	pZDVo6NC9C1zjwAZe/i2QBVy05x/o1f9miXZhHzWn4Zmlgwg1WaSE7VUT5EMZGPX7APiJh9qRW4i/
	mRw4XMPSX4ClNFsCfTKVjnkO1c6jkIw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUKeL-0005dr-Ok; Fri, 01 May 2020 01:39:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUKeA-0005dN-Su
 for linux-arm-kernel@lists.infradead.org; Fri, 01 May 2020 01:39:24 +0000
Received: by mail-pg1-x543.google.com with SMTP id s8so3906436pgq.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 30 Apr 2020 18:39:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=JPiPW3RsEi9O9rZXYt6ktq8vAB0cHXP2ySdxLOyO2kU=;
 b=nv1QPz0V0Avjg8hbiC+MrN8KAVAL3B/mLx/JR8uOQzu3vqTWvkr3dzarnOH6sNnlV9
 TM3H44n3O39Mh0SHL+tGqHf+rnZN9g1EfNP5L6OXJI3MA2y8OJQPfWY5BvSsVIyVAnX9
 z1SCozgjnb+FkTy2IoVHXPN23/WeGVNyG1Mai1n68WkRw/NZV9gHRSUaxl2BShu3EL0J
 3lt4+iHIj6ZEpYLOVMLtN5E2Tl0r11pxxOovD8D7NT1G2Hsk9saNYIWw9RBkBeemZm07
 X6wryxVQokoatew78lbtWHVHTPBv4ts6huzZ6Afg5Igtco3oIhv6P9x7jVJFSS7wJhJF
 v78g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=JPiPW3RsEi9O9rZXYt6ktq8vAB0cHXP2ySdxLOyO2kU=;
 b=H9WcWlXTphUVwE2WsU8ohg6uM3fSC+US/AOjEiBgTNckwk2F946EnJsVP8c9WOH2No
 xc5NRmtYycy/Kcmrgl88Q2Asd04LO0WYCqNs4mQZOHUbYN5o2BgIviWiMP0WBN2bnmBP
 Bq1js+UmdWBjsAso0rOR75UO7tgQAGVGqwL9mKWO6Amb8qWtIPG0TVuyKAAZXWWs6Nzd
 pbn3ubkAMr9whJjmlNYN9uljgy4MsMKBjVEkhBDKCPaFeNiUNDdPvbwDop9PBY7FRW9l
 AaDjhm+h402U7vZ6DpWtBbVkoIAmHtBdlccFKaZSOM2u0hgL3KJNNqtAYe7tzaY7VBiH
 K4FA==
X-Gm-Message-State: AGi0PuZvQPNHMKpx21dC3RwafyYFv2jfNLxqJTLDN48H8gUrzcpsEbKS
 Hv91jmfL0V1AJklHQHoUiec=
X-Google-Smtp-Source: APiQypKaM2jRqDAUG7t5M2NNnM6fZh8ysX9uDUDBnpsP9Q2FDhmbjRBvl82TXDrN/H8023/V2EyCcw==
X-Received: by 2002:a62:3812:: with SMTP id f18mr1705997pfa.173.1588297161564; 
 Thu, 30 Apr 2020 18:39:21 -0700 (PDT)
Received: from localhost.localdomain (ip68-111-84-250.oc.oc.cox.net.
 [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id y8sm876836pfg.216.2020.04.30.18.39.19
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 30 Apr 2020 18:39:20 -0700 (PDT)
From: Florian Fainelli <f.fainelli@gmail.com>
To: linux-kernel@vger.kernel.org
Subject: [PATCH] Revert "tty: serial: bcm63xx: fix missing clk_put() in
 bcm63xx_uart"
Date: Thu, 30 Apr 2020 18:39:04 -0700
Message-Id: <20200501013904.1394-1-f.fainelli@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200430_183922_957292_43F68845 
X-CRM114-Status: GOOD (  12.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 "maintainer:BROADCOM BCM63XX ARM ARCHITECTURE"
 <bcm-kernel-feedback-list@broadcom.com>,
 "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
 Jiri Slaby <jslaby@suse.com>, zou_wei@huawei.com,
 "moderated list:BROADCOM BCM63XX ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This reverts commit 580d952e44de5509c69c8f9346180ecaa78ebeec ("tty:
serial: bcm63xx: fix missing clk_put() in bcm63xx_uart") because we
should not be doing a clk_put() if we were not successful in getting a
valid clock reference via clk_get() in the first place.

Fixes: 580d952e44de ("tty: serial: bcm63xx: fix missing clk_put() in bcm63xx_uart")
Signed-off-by: Florian Fainelli <f.fainelli@gmail.com>
---
 drivers/tty/serial/bcm63xx_uart.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/tty/serial/bcm63xx_uart.c b/drivers/tty/serial/bcm63xx_uart.c
index ed0aa5c0d9b7..5674da2b76f0 100644
--- a/drivers/tty/serial/bcm63xx_uart.c
+++ b/drivers/tty/serial/bcm63xx_uart.c
@@ -843,10 +843,8 @@ static int bcm_uart_probe(struct platform_device *pdev)
 	if (IS_ERR(clk) && pdev->dev.of_node)
 		clk = of_clk_get(pdev->dev.of_node, 0);
 
-	if (IS_ERR(clk)) {
-		clk_put(clk);
+	if (IS_ERR(clk))
 		return -ENODEV;
-	}
 
 	port->iotype = UPIO_MEM;
 	port->irq = res_irq->start;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
