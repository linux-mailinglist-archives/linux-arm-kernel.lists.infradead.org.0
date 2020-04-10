Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7941A1A487B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 18:29:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Pitc2UjdEznpF2yj+O4DZETid/V4zTIuAVrIbS6sUAM=; b=CQ/d2WpEP79Dt3
	grczEKuEtuvHfNa8WfshCLbYtRDdHdKoA7B91yBZudyquvuXHUn305Ix4UqLygyijGUTqrqF65Maz
	fT41CCN4HT1fDcxm9b3F6j+yUvEWAQ1aAJKrJFq6e4Jfm5q1Mmz4PSlCJDUB2Z8cLzSG9ZhFv3xXx
	TNIUyOJ1l0FSGV98JJSayAQgQd//bkD0yQP/hbkxAq5pcS2l4ELpdgu2nSxjHjrJUReZDyC675lHD
	EjwqpYkJQtrdWV4tV3ua0jD7drefWlCqvgbZNgKbgC/0DceZDi/fSwU4hAyvf0/JwaWv5yzl9cq/E
	8Se5DouiH+3x2EkTHzTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMwWT-0004ue-Ae; Fri, 10 Apr 2020 16:28:53 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMwVO-0003yb-0C
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 16:27:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
 t=1586536065; x=1618072065;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version;
 bh=4fUL9yUbl3HkQSaoUyLLEtE2zx2uKNsuNY5LbHGoncU=;
 b=nIH+dmnvnPB1TkaYYDqSrqpUUKSkH9DLxhDpywVaih3q3b/rk55uGUef
 2LUL4oNzk0+k5J6nyHPzdHRH+el6b1B1H5ClXy71x5f04+pzcD2ujqaqC
 LSypDqAQmfyRX96TprlDnejrxJdNMSbph4IP6C3Of7eIh3nb1P93Yr1Ml
 GMKr9KHqc+iwqtCt0ddbsz/v1xho0m4Bs/dSKUKwAcROY9AHNkz8kPBeY
 bMaPr+zLoF5q9PcXuCRJl7bstTthTS8vTc/qbY8ZBtSutNJwmermVPInX
 qT8zfAo4+Pr3FtdIwf00glQIOqhrqzjnW743uc7ExLoKUYvtaCbHhxi04 Q==;
IronPort-SDR: yU0rYU+Y7AXIRsg31MF3hdZXUtjt2xaU54vxF1Bwmor9o4+uRWryQ+YRSioAzLcYlRzCG2RTsi
 W+bv6aP05q8GbkytoyjOyFWQDPq1bNZyvhzw8VJ0Mos6O8hpK9Se8R3zvTyX6fQZgfKRCgsxCZ
 6c0f5tEc9XE/X/pmTxQ5VDud96jyZBw/2OhhVBLXWk4asGNpDQtbkgytJJ0Ff9OIhopcdUL5GU
 h/wAi5+aM3X4XMPCS+/pcGvhiWPALXIZCiLV/i3+ldH8aIhWM4yJvjjlx1jjRoMB00yS4o2nhZ
 JJI=
X-IronPort-AV: E=Sophos;i="5.72,367,1580799600"; 
   d="scan'208";a="8791236"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 10 Apr 2020 09:27:42 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.85.144) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 10 Apr 2020 09:27:53 -0700
Received: from m18063-ThinkPad-T460p.microchip.com (10.10.115.15) by
 chn-vm-ex02.mchp-main.com (10.10.85.144) with Microsoft SMTP Server id
 15.1.1713.5 via Frontend Transport; Fri, 10 Apr 2020 09:27:32 -0700
From: Claudiu Beznea <claudiu.beznea@microchip.com>
To: <a.zummo@towertech.it>, <alexandre.belloni@bootlin.com>,
 <robh+dt@kernel.org>, <mark.rutland@arm.com>, <nicolas.ferre@microchip.com>,
 <ludovic.desroches@microchip.com>, <tglx@linutronix.de>,
 <jason@lakedaemon.net>, <maz@kernel.org>
Subject: [PATCH 3/5] ARM: dts: sam9x60ek: enable gpbr
Date: Fri, 10 Apr 2020 19:26:57 +0300
Message-ID: <1586536019-12348-4-git-send-email-claudiu.beznea@microchip.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
References: <1586536019-12348-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_092746_129144_CF57EE59 
X-CRM114-Status: UNSURE (   7.58  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-rtc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Claudiu Beznea <claudiu.beznea@microchip.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable gpbr.

Signed-off-by: Claudiu Beznea <claudiu.beznea@microchip.com>
---
 arch/arm/boot/dts/at91-sam9x60ek.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/at91-sam9x60ek.dts b/arch/arm/boot/dts/at91-sam9x60ek.dts
index 9f30132d7d7b..ab3d2d9a420a 100644
--- a/arch/arm/boot/dts/at91-sam9x60ek.dts
+++ b/arch/arm/boot/dts/at91-sam9x60ek.dts
@@ -309,6 +309,10 @@
 	};
 };
 
+&gpbr {
+	status = "okay";
+};
+
 &i2s {
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_i2s_default>;
-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
