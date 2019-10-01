Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BEA0C3988
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  1 Oct 2019 17:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Qp/FBDll/WyymKEwUxm6XcO7nE5RqElm7AJdBxhRAEk=; b=cr6bX/QB78q0z3
	60LTQe4Ny3/4lKTzSIL6dz0uWx70/yevSLnc/UVIkiRxZCzW1j2UIPZNF4cC5yP9Py3DtyazHe6YT
	9T0KwsYaL+m0RJv9gJWoBeBo4Aq4q3a4pfPXefDjf2xTQwveShGDDUkXg5YIYX+vBTewCBY2Iv7MA
	a99ZUi0/3Btd/9QBSG0pg7oNZdNNR/R0nEwUGV27pekIIeJFTl8mC/eLH6QInW0m7Uuij1jBWFX1+
	30by0QiXbKyeFpuSQRmASdP8Qkspet8Sx1BoYysB/7xuAmvIJHnBTJLMe1uRHPrqauj7abwCILoHJ
	2/Vug5mhKb77OzEjaonQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFKRn-0001iu-7B; Tue, 01 Oct 2019 15:52:19 +0000
Received: from smtp-fw-2101.amazon.com ([72.21.196.25])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFKRd-0001hj-10
 for linux-arm-kernel@lists.infradead.org; Tue, 01 Oct 2019 15:52:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amazon.com; i=@amazon.com; q=dns/txt; s=amazon201209;
 t=1569945129; x=1601481129;
 h=from:to:cc:subject:date:message-id:mime-version;
 bh=nLVYk2yIxDtYBWgS2GCvSmYfxdD9HmyEs1OoB1XIuSk=;
 b=VisHR9Mhd4YRr6V/pT8wb2fTv0Tuv6blu7t8RySg8DAWUEKBBEmxMHk1
 WY3+iCPX3ct6FMxC8NVSLo47S+YgMba49WUAX4NbOiyXG6JgRfWLaKiIQ
 F4ee9XBO8Axu34xDLENlajDGnialAPE8RzLoaAMlMBeL8fFwbNpyicgym k=;
X-IronPort-AV: E=Sophos;i="5.64,571,1559520000"; d="scan'208";a="754678097"
Received: from iad6-co-svc-p1-lb1-vlan2.amazon.com (HELO
 email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com) ([10.124.125.2])
 by smtp-border-fw-out-2101.iad2.amazon.com with ESMTP;
 01 Oct 2019 15:52:01 +0000
Received: from EX13MTAUWC001.ant.amazon.com
 (pdx4-ws-svc-p6-lb7-vlan2.pdx.amazon.com [10.170.41.162])
 by email-inbound-relay-2b-c7131dcf.us-west-2.amazon.com (Postfix) with ESMTPS
 id 9BA53A22D5; Tue,  1 Oct 2019 15:52:00 +0000 (UTC)
Received: from EX13D02UWC001.ant.amazon.com (10.43.162.243) by
 EX13MTAUWC001.ant.amazon.com (10.43.162.135) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 1 Oct 2019 15:52:00 +0000
Received: from EX13MTAUWA001.ant.amazon.com (10.43.160.58) by
 EX13D02UWC001.ant.amazon.com (10.43.162.243) with Microsoft SMTP Server (TLS)
 id 15.0.1367.3; Tue, 1 Oct 2019 15:51:59 +0000
Received: from 8c859006a84e.ant.amazon.com (172.26.203.30) by
 mail-relay.amazon.com (10.43.160.118) with Microsoft SMTP Server id
 15.0.1367.3 via Frontend Transport; Tue, 1 Oct 2019 15:51:58 +0000
From: Patrick Williams <alpawi@amazon.com>
To: 
Subject: [PATCH] pinctrl: armada-37xx: swap polarity on LED group
Date: Tue, 1 Oct 2019 10:51:38 -0500
Message-ID: <20191001155154.99710-1-alpawi@amazon.com>
X-Mailer: git-send-email 2.17.2 (Apple Git-113)
MIME-Version: 1.0
Precedence: Bulk
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191001_085209_202523_A262563F 
X-CRM114-Status: UNSURE (   7.99  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -12.7 (------------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-12.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [72.21.196.25 listed in list.dnswl.org]
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrew Lunn <andrew@lunn.ch>, Jason Cooper <jason@lakedaemon.net>,
 linux-gpio@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 Patrick Williams <patrick@stwcx.xyz>, linux-arm-kernel@lists.infradead.org,
 Linus Walleij <linus.walleij@linaro.org>, Patrick Williams <alpawi@amazon.com>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The configuration registers for the LED group have inverted
polarity, which puts the GPIO into open-drain state when used in
GPIO mode.  Switch to '0' for GPIO and '1' for LED modes.

Fixes: 87466ccd9401 ("pinctrl: armada-37xx: Add pin controller support for Armada 37xx")
Signed-off-by: Patrick Williams <alpawi@amazon.com>
Cc: <stable@vger.kernel.org>
---
 drivers/pinctrl/mvebu/pinctrl-armada-37xx.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
index 6462d3ca7ceb..6310963ce5f0 100644
--- a/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
+++ b/drivers/pinctrl/mvebu/pinctrl-armada-37xx.c
@@ -183,10 +183,10 @@ static struct armada_37xx_pin_group armada_37xx_nb_groups[] = {
 	PIN_GRP_EXTRA("uart2", 9, 2, BIT(1) | BIT(13) | BIT(14) | BIT(19),
 		      BIT(1) | BIT(13) | BIT(14), BIT(1) | BIT(19),
 		      18, 2, "gpio", "uart"),
-	PIN_GRP_GPIO("led0_od", 11, 1, BIT(20), "led"),
-	PIN_GRP_GPIO("led1_od", 12, 1, BIT(21), "led"),
-	PIN_GRP_GPIO("led2_od", 13, 1, BIT(22), "led"),
-	PIN_GRP_GPIO("led3_od", 14, 1, BIT(23), "led"),
+	PIN_GRP_GPIO_2("led0_od", 11, 1, BIT(20), BIT(20), 0, "led"),
+	PIN_GRP_GPIO_2("led1_od", 12, 1, BIT(21), BIT(21), 0, "led"),
+	PIN_GRP_GPIO_2("led2_od", 13, 1, BIT(22), BIT(22), 0, "led"),
+	PIN_GRP_GPIO_2("led3_od", 14, 1, BIT(23), BIT(23), 0, "led"),
 
 };
 
-- 
2.17.2 (Apple Git-113)


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
