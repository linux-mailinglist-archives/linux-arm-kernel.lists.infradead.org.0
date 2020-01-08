Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E4CEA134E84
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:11:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=mRvcdlMudXiYpRypudreH3Qgq5cGQdRbc+QhwuMy520=; b=tFb6qDsS+X6MtPrX0NScH/l0kz
	WPUOIQvv23Xqs/iNEptzuuTdEzlVT/RZcno6btmMwHzAKlauvrWCqA938RiXcUOJOUlWwVFrEv8is
	okjEOUF48sUP8KCGiEDl1DAT/Ypx26Dv7TR/L65qpJ7jE8CyfxiqNDfDKRwurbj+iFwsHgreo93Tk
	CTIY/KrQzQ/MTqq3crqvDmLtWG25ojWNJPlGQC25DZSbBLXw9ZzSQi7xLQJsUW/5nLZqmfnFqUYkt
	61D1VhYw0g2gDTIxbIap9H0MWoW5Um52Qn6t3hJP/ekqNj2+QFV/k2sWCmpUpsM24hV7FCs5wThec
	2r+1n1zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIbh-0004iy-J0; Wed, 08 Jan 2020 21:11:13 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYw-0000jp-CB
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:08:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=zGVrt1CaSjQ+KYxMuJ8yaAAfHLp2yzYIyOjxAJaDlEA=;
 b=RH6BuAjwFS2Uy67WI3hhoKteoCYavlm1gFlKO4p5CTas808UyS7DGlSqdR3GCslNOEoO
 Sl4pYw65bOfdp7onKU2dlanpEzajO7L++i1UKTHf90jQ9YuS095AWZHWMgXqw2t09BRyRr
 hkHVPSD1DMPXvvCf1hYwBnSmpeWyIHu1E=
Received: by filterdrecv-p3mdw1-56c97568b5-m6gw4 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-m6gw4-19-5E1644A7-18
 2020-01-08 21:07:51.361082852 +0000 UTC m=+1974284.586093135
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id Sl3TaZXdSJ6-rD9zZJXxWw
 Wed, 08 Jan 2020 21:07:51.174 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 10/14] arm64: dts: rockchip: add vpll clock to hdmi node on
 rk3328
Date: Wed, 08 Jan 2020 21:07:51 +0000 (UTC)
Message-Id: <20200108210740.28769-11-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hzchG1hbSefw3nPpK?=
 =?us-ascii?Q?SnZ=2FYbnfoXLVjCgB=2FbRoE+99Du8Gk2dg2yX4tND?=
 =?us-ascii?Q?97JSRLFvAhj=2FopZ=2FH6F8AZg3+Bpr6e31trevqFy?=
 =?us-ascii?Q?f3caFI6UsOujiRk6EmxF635ZjileCAvpzJE0J1V?=
 =?us-ascii?Q?xGDFFpA7tjmSVEqA2Pybp=2F9hLBz3pzXd3yiZATn?=
 =?us-ascii?Q?=2FONrzV6IgCCy6NsH2Ikyw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130822_473432_AECF73B2 
X-CRM114-Status: GOOD (  11.02  )
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
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index fee896338cc1..5d8807aca62e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -720,9 +720,11 @@
 			     <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
 		clocks = <&cru PCLK_HDMI>,
 			 <&cru SCLK_HDMI_SFC>,
+			 <&hdmiphy>,
 			 <&cru SCLK_RTC32K>;
 		clock-names = "iahb",
 			      "isfr",
+			      "vpll",
 			      "cec";
 		phys = <&hdmiphy>;
 		phy-names = "hdmi";
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
