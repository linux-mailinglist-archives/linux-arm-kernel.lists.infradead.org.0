Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F9A134E88
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:11:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5X3M748zG72TAm31vG6K+Vjz8jBa5INQsNlDrcoJuTg=; b=nHn3YzFHl/rvK84YVHEI4qh42w
	tuMza/3Fl9/SY8NNNfg9jk34FoUpfTYXhSBd4/mcXlAkgm5usg8iYPel0P06Efqh9WTu++5NB7ZT+
	Bx7oP4UFJbxN1lp52K8x7co0Sevhk5+DRjzdXD6hKDRJDctKtGMonxs2/92O/pfAxBBLEjtxfL2Gc
	VTXkIP+nliQlwvpkZhpc+GDIrI82sUsF+u78xLdRQNNzsZOdbLztgjPoYM30H5wdJbophr7DvPOUC
	v9z3OblrVPu8a2T36CsHPujr2KCFvfO7cFIlQFUBW1dccbydEBfbPXrTrP8/jxCf1Ni4bOhZ39IDI
	FED+/8tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIc9-0005B1-9A; Wed, 08 Jan 2020 21:11:41 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYy-0000oG-Kd
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:08:28 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=luCgFmgElWl1DuPHBDrrBpPod+21xDQdITgD2m8WnFg=;
 b=aN5FDHIH3VVTbtJruSAZMCC35h2qMJkradv+RVDwisruOH7MGMT01ExLQOkumVk1VPgl
 cNBufKkscs7bIQy168NihOIEBPoVMoHsA7dPfHH8+/gu5mTeagm9MBrcgL804tUayO+CXy
 5rgvIe04q0wZ2mogi741Zp/jB9jsiLCww=
Received: by filterdrecv-p3mdw1-56c97568b5-9vfcv with SMTP id
 filterdrecv-p3mdw1-56c97568b5-9vfcv-17-5E1644A8-3B
 2020-01-08 21:07:52.606277766 +0000 UTC m=+1974281.228840687
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id OKxCYGFDTAKvOTnyv7bIhw
 Wed, 08 Jan 2020 21:07:52.400 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 13/14] drm/rockchip: dw-hdmi: remove unused plat_data on
 rk3228/rk3328
Date: Wed, 08 Jan 2020 21:07:52 +0000 (UTC)
Message-Id: <20200108210740.28769-14-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0hy7IFG+7y2omFdHym?=
 =?us-ascii?Q?qX0VGAyR32NQleVzsNfuSFqSWD2EgKZV+rde+YD?=
 =?us-ascii?Q?rT25M5w886gYT63ObARodq0WT87rowBpud=2FUt4v?=
 =?us-ascii?Q?+h3SX3xeUXD=2FMgbO8RLPr+dMz8uBovHLqJlmhR5?=
 =?us-ascii?Q?qY6F7h3SoQC3Pve+DeqweKMTRfDaOX83lviQaYk?=
 =?us-ascii?Q?SRzhJRQE=2F8CkT0HAD5rYw=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130824_770960_8C996EC8 
X-CRM114-Status: UNSURE (   9.13  )
X-CRM114-Notice: Please train this message.
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

mpll_cfg/cur_ctr/phy_config is not used when phy_force_vendor is true,
lets remove them.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 66c14df4a680..a813299e97a2 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -443,9 +443,6 @@ static struct rockchip_hdmi_chip_data rk3228_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3228_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rk3228_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3228_chip_data,
 	.phy_ops = &rk3228_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",
@@ -480,9 +477,6 @@ static struct rockchip_hdmi_chip_data rk3328_chip_data = {
 
 static const struct dw_hdmi_plat_data rk3328_hdmi_drv_data = {
 	.mode_valid = dw_hdmi_rk3228_mode_valid,
-	.mpll_cfg = rockchip_mpll_cfg,
-	.cur_ctr = rockchip_cur_ctr,
-	.phy_config = rockchip_phy_config,
 	.phy_data = &rk3328_chip_data,
 	.phy_ops = &rk3328_hdmi_phy_ops,
 	.phy_name = "inno_dw_hdmi_phy2",
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
