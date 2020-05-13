Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D74461D10E9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 May 2020 13:14:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=bGlrv4FK1E7cBK2FzAl4Se+/JyIYgQcL10RKoJuG5U8=; b=VjIHiyGWd5uEAw
	3+AlO73lq/G0o7oILNDbUN9TeFRbJ3y2o9g5f/jkwJwypxJH5m9dS61ZGz3sN3wsCAEtiQrK3ayBB
	aHHUvvECEehbtwEbkaprMAnRbBkA00xqIvloKDFQlOX/nk6GEePRqm6bkZhBdunv1xYS/ySevqd3N
	4oS45UqCyumd1tyLJBn6FVRvpX+xAbScdHmwv0SoZUtUssfbKgAeX5qm4PBIVOqG92YhNy9K0RFxA
	H4IjFm4GjPFGe0K9LqQ/I/aRrVkljSbQXum0ytOBfqr9+WaX9Gc5+mMxBUKcQAs7UZ3XAZmMc4HzI
	cQ6EcABuG9tv20e4IRuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYpL4-00054v-3d; Wed, 13 May 2020 11:14:14 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYpKc-0004sb-NT
 for linux-arm-kernel@lists.infradead.org; Wed, 13 May 2020 11:13:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1589368426; x=1620904426;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=CeCU0xN3PPX4jtlITIpADGChyNcptCOI5+8PaEEcfQc=;
 b=u1qG/szU6azz8jv6cv+0V2Z6Zq77y1fxfU/Z5UUfROPJ+3kRfHj/BghC
 SOtGhk5nVc95GLcC+qU0reoAoMm0OR0PkZMb3NpIckK3s9JMZFGkKuuzI
 mqMPB6JXaNBssi+rj/Of/vhUpXoLmDyvjmK6j/3KDAgWRFBsR0knf9YAY
 bd5XXU9rdh64RmaRD2qQoUYMIY4R6LGJgucia7yDUXj/S67O+eLwTVZTL
 4dT5gaO2P9lWuzlC29xlW6pVZ5/+EMER5/L4eMZpVhp2tkFZ8vlo7NOEd
 Pw2KPk4H4vS6HaKc4RhGfx5lqvA+GwPzLkTYjEUSHmn8DOuQazDnuq0sA Q==;
IronPort-SDR: T7zeETlOhwDeM7bmaZlpb8ZrPAip7XABnfCf3Y4x3pGfxcPk2X6k9+l6uT5F5C5aRLqidYabCD
 ztbx0R9ZVw9IYsiqSPKy8k4KjUp3ezLjPCjTNvd4Z04SC6Ad5C8XPVm7VTe2KUBhlZWfWPM7Vk
 Ael3JSsl98taH6FAfcyn/jgtBmR/HgiTsOk+h9W4V2v60u10uA9ZAL029oflCfDgJo6kkslARE
 lOaPRTqlfImXgxRytGWpPwvznuTafTm2+Jf9CittWQUGCbjcRrJ4O/ErGu9waRAJZfI+tRDxrO
 zqk=
X-IronPort-AV: E=Sophos;i="5.73,387,1583218800"; d="scan'208";a="79429653"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 13 May 2020 04:13:44 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 13 May 2020 04:13:44 -0700
Received: from rob-ult-m19940.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Wed, 13 May 2020 04:13:43 -0700
From: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
To: <linux-i2c@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: [PATCH] i2c: at91: Restore pinctrl state if can't get scl/sda gpios
Date: Wed, 13 May 2020 14:13:22 +0300
Message-ID: <20200513111322.111114-1-codrin.ciubotariu@microchip.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_041346_802738_C0819146 
X-CRM114-Status: UNSURE (   9.81  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: alexandre.belloni@bootlin.com, linus.walleij@linaro.org, wsa@kernel.org,
 ludovic.desroches@microchip.com,
 Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

If there is a strict pinmux or if simply the scl/sda gpios are missing,
the pins will remain in gpio mode, compromizing the I2C bus.
Change to the default state of the pins before returning the error.

Fixes: a53acc7ebf27 ("i2c: at91: Fix pinmux after devm_gpiod_get() for bus recovery")
Signed-off-by: Codrin Ciubotariu <codrin.ciubotariu@microchip.com>
---
 drivers/i2c/busses/i2c-at91-master.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/i2c/busses/i2c-at91-master.c b/drivers/i2c/busses/i2c-at91-master.c
index d4a3aef4a594..363d540a8345 100644
--- a/drivers/i2c/busses/i2c-at91-master.c
+++ b/drivers/i2c/busses/i2c-at91-master.c
@@ -877,6 +877,7 @@ static int at91_init_twi_recovery_gpio(struct platform_device *pdev,
 			gpiod_put(rinfo->scl_gpiod);
 			rinfo->scl_gpiod = NULL;
 		}
+		pinctrl_select_state(dev->pinctrl, dev->pinctrl_pins_default);
 		return -EINVAL;
 	}
 
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
