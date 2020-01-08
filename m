Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46E4F134E81
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:11:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=4nVcAyd3WDKpxOuQqSTDbas2FyFeUEy02QJDQTdt7Qg=; b=iQdx5I41PKMn+guMPjc9a4Rekb
	G2/oI2cyxI4G2I9YQd6eoqzXA73Xir+nFUiqzNQVmwO4oREi/7wf374zNhXciLsHUzeTsxahw3JBO
	27N/nBG16JsrqcCK6tNIemx3AHKLqhfWehGtM3C+qpx27Iq36tdQ03by/UehN+y78AyJPv0wX28rn
	O1//d2mY1DEmgAmoQa5XfSlRTFMtQruBRD3xeHqCa+VWWXRsMGWKmv97yOhT6ldsJKvQthNlmPDbv
	Q6mKLyvkqtD93rMyq6Jg7mpHM4AA/ct958A+2XTqryORV9YYPfWVKuWk/WljGtnpQamHQ13bsiB4s
	VNr1LoYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIbT-0004VN-NO; Wed, 08 Jan 2020 21:10:59 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYw-0000kN-PF
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=9Jj+NAbgprA6DENYOuHp17AlmWy0xXfyrllq+OdkH7g=;
 b=MBDdbuzSOQT00uVzFB1TeI26jQ5PDsgZnGvXzcl1mhwrxnNIJihsvibTsqsqjVFvv2AH
 QCkPIfTMP8VrOfR9URTfX9EFYtsEXPODmCxrF/tb00YfTKt1eNZcU3EE/Q8cc6/UFIoqJ2
 nOfv0S4+udiMZcqf23vtrLAQdCU229B/g=
Received: by filterdrecv-p3mdw1-56c97568b5-9vfcv with SMTP id
 filterdrecv-p3mdw1-56c97568b5-9vfcv-17-5E1644A7-6C
 2020-01-08 21:07:51.781361678 +0000 UTC m=+1974280.403924586
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id hV9nQRodQD6D2W9vsowA8Q
 Wed, 08 Jan 2020 21:07:51.581 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 11/14] ARM: dts: rockchip: add vpll clock to hdmi node on
 rk3228
Date: Wed, 08 Jan 2020 21:07:51 +0000 (UTC)
Message-Id: <20200108210740.28769-12-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h=2FbbmpOPRsDtGkVba?=
 =?us-ascii?Q?CkWsg18J6MAJ=2F7UNlaGwK9UO1pBiv2MXipeMHJe?=
 =?us-ascii?Q?4mrzEuk8+FykzeKYZEmvF9diWYbEVuFbn7jRrH8?=
 =?us-ascii?Q?93W=2FC+TsVfxYtCLXEaxyQIZZirGY5vzaon0eX2V?=
 =?us-ascii?Q?JwPLGL6SnO5ebPfC5+EhQ5=2FZ0LaIMaEChwP7K3r?=
 =?us-ascii?Q?CDj03C53YRhqpXaV2owBQ=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130822_884327_5C5DC65A 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [208.117.55.133 listed in wl.mailspike.net]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [208.117.55.133 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jonas Karlman <jonas@kwiboo.se>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Kishon Vijay Abraham I <kishon@ti.com>,
 linux-rockchip@lists.infradead.org, linux-arm-kernel@lists.infradead.org,
 Zheng Yang <zhengyang@rock-chips.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the hdmiphy clock as the vpll in hdmi node.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm/boot/dts/rk322x.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk322x.dtsi b/arch/arm/boot/dts/rk322x.dtsi
index 340ed6ccb08f..16ad240d5f7f 100644
--- a/arch/arm/boot/dts/rk322x.dtsi
+++ b/arch/arm/boot/dts/rk322x.dtsi
@@ -639,8 +639,8 @@
 		interrupts = <GIC_SPI 35 IRQ_TYPE_LEVEL_HIGH>;
 		assigned-clocks = <&cru SCLK_HDMI_PHY>;
 		assigned-clock-parents = <&hdmi_phy>;
-		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&cru SCLK_HDMI_CEC>;
-		clock-names = "isfr", "iahb", "cec";
+		clocks = <&cru SCLK_HDMI_HDCP>, <&cru PCLK_HDMI_CTRL>, <&hdmi_phy>, <&cru SCLK_HDMI_CEC>;
+		clock-names = "isfr", "iahb", "vpll", "cec";
 		pinctrl-names = "default";
 		pinctrl-0 = <&hdmii2c_xfer &hdmi_hpd &hdmi_cec>;
 		resets = <&cru SRST_HDMI_P>;
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
