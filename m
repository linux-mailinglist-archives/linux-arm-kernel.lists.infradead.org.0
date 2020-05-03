Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F00221C2C20
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  3 May 2020 14:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=FBvgGREDEUAkPMs6Hbi0Bmrn1W0TTWkZ7pGOFvwQeD4=; b=EvasnwZZTDel+i
	ea9mSx+eD7776BcNNmepjNFrkmbZ4bLN2WE6rYcZnKDeU6IYNB1Xd+QxYkb1X+6DExoXvuTcmYL6m
	vWQv0Onb8BVS6swSQfbTseDtBdkeGU8raL5BmN7ZZ4XYqT5lUUgixH++O2JQDN06bTmZMwQjseM3U
	TeZQpONI/I4Hxk/cwkBXwtzi3YJ9dctzVpqs3l0AqqSADTioJMwMjcgV7BQVeX4lEITAqEaopafL2
	cK0Kia/veVF/OV/0wq3NRf58HwJNhQji6AF2qnN8PTm3yp9ULkVaeF/mCZK4B+JPFeSYiinoaDXZS
	Ass/RkeboXMsORnnKGqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVDa6-0004TH-DY; Sun, 03 May 2020 12:18:50 +0000
Received: from esa3.microchip.iphmx.com ([68.232.153.233])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVDZk-0004LA-6j
 for linux-arm-kernel@lists.infradead.org; Sun, 03 May 2020 12:18:29 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1588508307; x=1620044307;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=c8lDNy1DN1+fUi3A0w27OVt8zaff8+LO9O5hnm7DgNM=;
 b=Xeuci3jqeko+BCUK7wD1EhvYUwjheCDzyOh6ODZeRNGohP+i3yMoXXK6
 +bMBK2vR78bifd/JPnt/9JyJRJ8gDYl1qeBc3yP7FFnyyD8P7ayfsipgH
 EXYkdWwjh/ec+1m0bUatoe+IxZpY11ptjR4zZ1PtG3nHtJhWzKW2/3nsO
 xXnW9hfp9BNBCfVi6mbkh2JRU7HhbgyDGszKlrLPu47+GHbPSvXdSYJvx
 0q+Zl4yJt5BPceL2Rs6rCv95lPpLvtws5Y8G1or+s38D9dqgbHoufxEZn
 4lo7Eo1HLcQ7az5vXGwWjlhYt3TnezSw/rj/+csEQ7EiDpVKtKSQoVXYN A==;
IronPort-SDR: DkyR9cKBfknKhzowufnIcNtdsXbkIo7Iw8szQVfEcCM6y7J9LyfIU7HWyWMdbwHkAmQgyaN78N
 nVTl6/txRq/dfCJpC7RiDdY6hbkpgFh0KirZG6acY6/5YSrIuuChre6Us8MP+zN13HWoNM8vkL
 V41yH53FxZpMIPNFtn7DN+6eSOg7gtzlJc/FtPUqOolbVXVtyO5ELDzRSRsyLa5ddHag0iLJ0i
 XzM7IlL878CRd2y8+r5Nfi83n6Dh8HjjI57a4aCSLhV1i0EM3OLga3ZA0dzo2oiCZjjbo7QTif
 jnQ=
X-IronPort-AV: E=Sophos;i="5.73,347,1583218800"; d="scan'208";a="75334447"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa3.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 May 2020 05:18:22 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Sun, 3 May 2020 05:18:23 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Sun, 3 May 2020 05:18:18 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <mturquette@baylibre.com>, <sboyd@kernel.org>,
 <nicolas.ferre@microchip.com>, <alexandre.belloni@bootlin.com>,
 <ludovic.desroches@microchip.com>
Subject: [PATCH 1/2] clk: at91: pmc: do not continue if compatible not located
Date: Sun, 3 May 2020 15:18:08 +0300
Message-ID: <1588508289-10140-1-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200503_051828_273460_686D0456 
X-CRM114-Status: UNSURE (   7.98  )
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

pmc_register_ops() is called for all AT91 devices. Return
-ENODEV in case of_find_matching_node() returns NULL.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 drivers/clk/at91/pmc.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/clk/at91/pmc.c b/drivers/clk/at91/pmc.c
index b71515acdec1..bf0570e66fc1 100644
--- a/drivers/clk/at91/pmc.c
+++ b/drivers/clk/at91/pmc.c
@@ -274,6 +274,8 @@ static int __init pmc_register_ops(void)
 	struct device_node *np;
 
 	np = of_find_matching_node(NULL, sama5d2_pmc_dt_ids);
+	if (!np)
+		return -ENODEV;
 
 	pmcreg = device_node_to_regmap(np);
 	if (IS_ERR(pmcreg))
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
