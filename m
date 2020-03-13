Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 41E5C1850BB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 22:13:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=mz8cC7a/+MVNv0RABKi0q1aIG+E7sEDfz+xsqnk4p44=; b=MHH
	oGce6hlIKar9x8siM2fudpOhimTJkEjHbysGfWEndHvs0eZYXm3tH5GP3RHY9cyo4ZiJoRdBzXK2n
	IqoC1HN7KM3W5FUXm1Cm4tjZhmCPcHgcetVcDNksHA0paD8PRXoePqLAVcJl73p6g2y4YB8RzaWFv
	iQ6Bcyfap8+l2OhIZpFIBZTvU4WbWSwelgoEoWzlk9TIyc5S4IZjNFDvUhj/vrMi6CqYqCYl6vdZy
	lL7M9+6PPJaKBfMjl1bQoeZp6nowYR5Dm9ujgpWK9I3PtbQ4XpzNSGYVOk7/1vV/DkbVtZTadmZSr
	Dv/sj4i0Zhrhkncu8iNXF7ClinfVfeg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCrc5-0006qe-NA; Fri, 13 Mar 2020 21:13:01 +0000
Received: from relmlor1.renesas.com ([210.160.252.171]
 helo=relmlie5.idc.renesas.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCrbs-0006pu-Qe
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 21:12:50 +0000
X-IronPort-AV: E=Sophos;i="5.70,550,1574089200"; d="scan'208";a="41835027"
Received: from unknown (HELO relmlir6.idc.renesas.com) ([10.200.68.152])
 by relmlie5.idc.renesas.com with ESMTP; 14 Mar 2020 06:12:43 +0900
Received: from localhost.localdomain (unknown [10.226.36.204])
 by relmlir6.idc.renesas.com (Postfix) with ESMTP id E2D6B40E09D5;
 Sat, 14 Mar 2020 06:12:38 +0900 (JST)
From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Sakari Ailus <sakari.ailus@linux.intel.com>,
 NXP Linux Team <linux-imx@nxp.com>, Magnus Damm <magnus.damm@gmail.com>,
 Ezequiel Garcia <ezequiel@collabora.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Geert Uytterhoeven <geert@linux-m68k.org>
Subject: [PATCH v3 0/4] ov5645: Switch to assigned-clock-rates
Date: Fri, 13 Mar 2020 21:12:30 +0000
Message-Id: <1584133954-6953-1-git-send-email-prabhakar.mahadev-lad.rj@bp.renesas.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_141248_970495_FA10211F 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [210.160.252.171 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
 linux-renesas-soc@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi All,

This patch series adds support for using assigned-clock-rates for
specifying clock rates for ov5645 driver

Thanks,
Prabhakar

Changed for v3:
* Dropped reading assigned-clock-rates
* Increased the maximum clock frequency to 24480000

Changes for v2:
* Instead of completely dropping clock-frequency property marked it as
  deprecated.
* Split up imx6qdl-wandboard.dtsi changes as separate patch.

Lad Prabhakar (4):
  media: dt-bindings: media: i2c: Switch to assigned-clock-rates
  media: i2c: ov5645: Switch to assigned-clock-rates
  media: i2c: ov5645: Set maximum leverage of external clock frequency
    to 24480000
  ARM: dts: imx6qdl-wandboard: Switch to assigned-clock-rates for ov5645
    node

 .../devicetree/bindings/media/i2c/ov5645.txt       |  5 ++--
 arch/arm/boot/dts/imx6qdl-wandboard.dtsi           |  3 ++-
 drivers/media/i2c/ov5645.c                         | 27 ++++++++++++----------
 3 files changed, 20 insertions(+), 15 deletions(-)

-- 
2.7.4


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
