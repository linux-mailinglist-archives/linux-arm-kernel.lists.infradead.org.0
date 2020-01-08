Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BCFC134E87
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:11:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uYphoq+IWSG5zfCronRPymzp8FwYNymdSgGP/g4NvMk=; b=qfVSXxteoBYZwiF/I3RLOFFh2L
	2Eidc190D54mk7beETVnB5hZRCWkyif/OvGXyOODuShAwAA166QIdTCauppW1qjrWmLqBz77SCE/s
	ItV6ZRUlNHoMc/DogciVyQ63nFsTb5bjKEYAIk11eNy3rEaiBdJ8u9vpNe5T2WlYo3DvOfVHaLMO4
	+1aTgZVgzAN758glWnZs/RapHuAy/23mJjDfHT80Z77NoC8gEQd4hzgMkqDr7AlDbEPpgyjie2j9m
	qTHn2Uns0epKYAOJRI+cFQhlj7UwBTKoEvnzvIxWTdO1SCDpy8nXA1qBtPdzEWJAuSRK1NXqbuuTO
	KIRRpqvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIbs-0004y3-6P; Wed, 08 Jan 2020 21:11:24 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYw-0000kB-Hw
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:08:24 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=x3d4O9Awmply7Gb2seTh415j0YsnxIYTmKDTHVNNT2c=;
 b=dAcpmKP7UgPlLeMck1G5y8sTRPP4wEPF7bFoQBH/J07rMy0E94zT4hjLtF41IbCiUgPX
 BgEY2nwdlRYQNuLbrmcrxy1xTIXqbyttzdFpp0NOrLVqpb+Yd2kGX6KvS43Jm33ungyQn8
 Osllpm2FE9dZEUTg6G2jTTyYx4xQS7jJg=
Received: by filterdrecv-p3mdw1-56c97568b5-2vkp8 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-2vkp8-20-5E1644A6-62
 2020-01-08 21:07:50.961205325 +0000 UTC m=+1974284.203795984
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id QWVTuMAqSKqZc5uIdTCBpw
 Wed, 08 Jan 2020 21:07:50.764 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 09/14] arm64: dts: rockchip: increase vop clock rate on
 rk3328
Date: Wed, 08 Jan 2020 21:07:51 +0000 (UTC)
Message-Id: <20200108210740.28769-10-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hwYU02QfFsqeFLpfX?=
 =?us-ascii?Q?zC=2FPIsIIlZOhCQWMaWStdn4Sgg70tNAgTTH9RVO?=
 =?us-ascii?Q?HaqqultxCHltJE+1pIIzRgEALOD6ueS48w7Qd+T?=
 =?us-ascii?Q?V9xHAwiHoNJJ0+ih85COgoqpMDlIHLslrgaU2ft?=
 =?us-ascii?Q?E0t197N3vW9IrfkX8kga7Dsn9W5QBg55a3Cf14V?=
 =?us-ascii?Q?pv6P9aXL1JL6ON+Uc91RQ=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130822_654844_6A1D3DE5 
X-CRM114-Status: GOOD (  11.20  )
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

The VOP on RK3328 needs to run at higher rate in order to
produce a proper 3840x2160 signal.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3328.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328.dtsi b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
index c9ff1188bd7b..fee896338cc1 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3328.dtsi
@@ -803,8 +803,8 @@
 			<0>, <24000000>,
 			<24000000>, <24000000>,
 			<15000000>, <15000000>,
-			<100000000>, <100000000>,
-			<100000000>, <100000000>,
+			<300000000>, <100000000>,
+			<400000000>, <100000000>,
 			<50000000>, <100000000>,
 			<100000000>, <100000000>,
 			<50000000>, <50000000>,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
