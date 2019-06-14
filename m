Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F1B4E4651E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 18:55:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9amCPpXP3heZ4PfgPG7IzCW9ZcoBFg8cUgjkQWJRGcg=; b=KFCdmh7IKYcM6P
	emUEDUJ2Lw/LzhVvgLWbZdqSTnIThmRAxVgSGJ7woUS5xyYZ3CEd2DNQMhHtCjLsWK9yy46YFS26C
	JIO29Hf3Icp7yRP2xbuOPmY4paLWk5PHOvgVc4b24ci8FpMHnWaVeVc5ffRAGlH7wUJJshpDbXPQy
	BEdN64gf+1As4GMwaz10ygj4SEu9FWKmT0lqXuLpn11vyv7KoGYRnjEtkME9uCoLla5pGejM0yZ1f
	lo5Guvwp38ylImou5HKMAgz4QfgAGimbFMSVzZ7TnM+YB5Y0rHHRpRCRla/yYe5OSvoqU4rxyzIHs
	Oa2I3vlhc7Fp9idsG0Fg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbpUA-0001w8-6x; Fri, 14 Jun 2019 16:55:30 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbpTi-0000Wp-7x; Fri, 14 Jun 2019 16:55:04 +0000
Received: from we0305.dip.tu-dresden.de ([141.76.177.49]
 helo=phil.dip.tu-dresden.de)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1hbpTc-0006Tl-WD; Fri, 14 Jun 2019 18:54:57 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: [PATCH 0/4] hdmi on rk3229
Date: Fri, 14 Jun 2019 18:54:50 +0200
Message-Id: <20190614165454.13743-1-heiko@sntech.de>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190614_095502_499373_AE074992 
X-CRM114-Status: UNSURE (   8.83  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: justin.swartz@risingedge.co.za, Heiko Stuebner <heiko@sntech.de>,
 sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The hdmiphy needs its clock reparented to the actual hdmiphy-pll
that gets generated in the hdmiphy itself.

This incorporates adapted versions of Justin's original patches
and also the needed clock adaptions to make it possible to
reparent the hdmiphy clock.

Heiko Stuebner (2):
  clk: rockchip: add clock id for hdmi_phy special clock
  clk: rockchip: export HDMIPHY clock

Justin Swartz (2):
  ARM: dts: rockchip: add display nodes for rk322x
  ARM: dts: rockchip: fix vop iommu-cells on rk322x

 arch/arm/boot/dts/rk322x.dtsi          | 85 +++++++++++++++++++++++++-
 drivers/clk/rockchip/clk-rk3228.c      |  2 +-
 include/dt-bindings/clock/rk3228-cru.h |  1 +
 3 files changed, 86 insertions(+), 2 deletions(-)

-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
