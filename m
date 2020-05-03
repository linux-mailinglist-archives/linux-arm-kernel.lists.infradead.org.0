Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 002371C2C1B
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 14:18:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4S6jIlgZXmh/SpuTbzBnszBimZmIwquBztLsfmiSz0A=; b=Nifb32jNCNsqoA
	zYaKEFJtNxOKWyaEuE+VgKkMi0LjigJvRIPVZRBUUKnqB2rey2YOwNmx86uLylQ9JkTXEIbM7dLrL
	gUFIe7NAYlE8jPvYQ909+ieipZCvkmmY/YT2WPg8x3pbadTcxumYkTSjDdqbGRgxluDg/tLz7vO1J
	wGQ7+DJs5OLFuHBGg2TAzG0qGUt44Xc58NkcVUD8wjYY14NC5FoUVHyLOUCcZ5aCz+9uxslQ5nxNS
	yQXbWdSGgNCEArCM5qNd1lPUeyz1QzqqvVgaKHvLd+EiAlhoM4cCU6rvjb9csPLkAh5719Trjv88k
	3oSiLc+MfjsnKivdWMnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVDZq-0004Lp-U2; Sun, 03 May 2020 12:18:34 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVDZk-0004LO-BK
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 12:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588508308; x=1620044308;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=pi9dyMRbnlcW2sUMQWe9DzJs+ld1yk+KsP1Dq8HADTE=;
 b=SQmh7B9GIhF7XjK9gwiuVcZWckYfUBTn4c/1Emye3CPvMNdhb+7pWD7u
 kojAVpYIJXaIFoJ0O8EStJlwjcWCKQq4pq7rV17I4KwlTtZHRkOZUIj/U
 dmjS0oqU7iNiuXJc3uaScr6KEefXxir1pL9DVPSiPq48OMITkQAQc4tAz
 74iv655MoR+80fpP/T20IZEAuoZuzrEyTY50V7n9yMjOP1zmVN8NH8gI2
 tmE+AIKfi9MB9/Ovj3ZrfBqh66gP7XcDDnXvTPhgoxhi9slVnocdwPYDo
 29tLLgBXT8H1zv556jTKmec5xYs5CXzD041EGPObQCQzmOU3l5sOJagjB g==;
IronPort-SDR: hhyLO3xXo8v+nj+BQPxEGwUpzUViMS5cR3raVxwSLXFAcxKSOx0+FI0BfmcwDmDZXut84EZY9d
 ILtQfc5HUaH1VxeN4W8e2r93wPRqwf0ablLihWTJwsgQU3r3H60KnIubWT9qJ9zb1RpXV7S+OM
 biwsoYp0ixKAehhcU3FeoXgOmD9PdoqZT+AQ3jAou4sWtlAviAnIu2LUNwHSTAYz0NrbdUa2ZW
 W7YX2eqmNkaVIPni3tPQsDNpkF1xh5JW6ztBGVrpZd0mXtacOuSHd9W3yM+nNLUJFHSVrmPIdx
 yHk=
X-IronPort-AV: E=Sophos;i="5.73,347,1583218800"; d="scan'208";a="75334452"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 May 2020 05:18:27 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 3 May 2020 05:18:28 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 3 May 2020 05:18:23 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 2/2] clk: at91: pmc: decrement node's refcount
Date: Sun, 3 May 2020 15:18:09 +0300
Message-ID: <1588508289-10140-2-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1588508289-10140-1-git-send-email-claudiu.beznea@microchip.com>
References: <1588508289-10140-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_051828_398301_7DC529F1 
X-CRM114-Status: UNSURE (   8.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.153.233 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Claudiu Beznea <claudiu.beznea@microchip.com>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

of_find_matching_node() increment node's refcount. Call
of_node_put() to decrement it after it was used.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/pmc.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index bf0570e66fc1..e164069c81bd 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -278,6 +278,7 @@ static int __init pmc_register_ops(void)
 		return -ENODEV;
 
 	pmcreg = device_node_to_regmap(np);
+	of_node_put(np);
 	if (IS_ERR(pmcreg))
 		return PTR_ERR(pmcreg);
 
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
