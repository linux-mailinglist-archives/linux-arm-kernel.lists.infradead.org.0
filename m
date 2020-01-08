Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63260134E74
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:09:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=XriwMJGxy4msID5TbBJT0viTBJhkS1B2Sy9CxYO56d8=; b=FrPPpkgq+kWdWdaNesPPnNM4XJ
	2ERbM3y3CKAEN2hzxFv2rogzeI9t5qL48GHzQeYDPXX4jnBIb9RZXpEA+72NMdGoMXDZWGl82rPDI
	w2T+DklekB0EZS/qDLe/9+SbllVpHJi/ANjjl5hZtsPQBZdeslIBu33JQL+eOKTwAmfVt0WlYd8FV
	34ChUqX2CgBuLWR8Yd9nuzrNk4X4jrGgxbZwV2EYOuzxN39r4xQ+LNe2NeydvxH2yVUB89tEeMGJS
	PZCwajapDVus3SAqZ6U8xe8eME5dui0PhGdd5gwRMXdqSHFGvSf50DPiHHVnrOtC/TEZyINgMKhJC
	Pkzpmd5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIaE-0001vg-JT; Wed, 08 Jan 2020 21:09:42 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYQ-0000BM-Nr
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=IiLQ8L4byxFjqeoXMTCaKip09HlTH/MmHbs7tvCMQgY=;
 b=QZY6MBVwCoiFczU0Yk1QbJ21nztZH9gSab5fT8k1H2iFTQzNvEBWLBY0+YoN0Q842XEv
 2hkPSem+2EyrQiihbig19wLY64BzUXeLMEFVR3aPIGNUkzHRPzJhPS9QWP6S81841ZdrQO
 j9FF1hZMldTKtfBaYXujMVXjnTXXhi3F4=
Received: by filterdrecv-p3mdw1-56c97568b5-qqd9g with SMTP id
 filterdrecv-p3mdw1-56c97568b5-qqd9g-18-5E1644A5-63
 2020-01-08 21:07:49.736716731 +0000 UTC m=+1974280.387268561
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id hoZ7RMZDRoGVWKvqnwa5Ig
 Wed, 08 Jan 2020 21:07:49.497 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 06/14] drm/rockchip: dw-hdmi: allow high tmds bit rates
Date: Wed, 08 Jan 2020 21:07:49 +0000 (UTC)
Message-Id: <20200108210740.28769-7-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h8Xinh+Au1Telh56G?=
 =?us-ascii?Q?QM1R2oYBoKtJxxom=2F=2Fq1tL5H6tWAbppEAfKC+cw?=
 =?us-ascii?Q?YyRuoQxeebeSuP8PHev4goIzTUYj7DHjJS4Lqi+?=
 =?us-ascii?Q?NuQFK5W7ng0sim9xSI4eOMyAApqT3qEBY+kURUu?=
 =?us-ascii?Q?XtTVFNMd7F6CX06FptRTnlbkkTq4ik1dhkV8pCJ?=
 =?us-ascii?Q?c1QSgj5WmMNFoxFtJL6dQ=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130750_892534_98074881 
X-CRM114-Status: UNSURE (   9.55  )
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

Prepare support for High TMDS Bit Rates used by HDMI2.0 display modes.

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index 7f56d8c3491d..fae38b323a0c 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -318,6 +318,8 @@ static int dw_hdmi_rockchip_genphy_init(struct dw_hdmi *dw_hdmi, void *data,
 {
 	struct rockchip_hdmi *hdmi = (struct rockchip_hdmi *)data;
 
+	dw_hdmi_set_high_tmds_clock_ratio(dw_hdmi);
+
 	return phy_power_on(hdmi->phy);
 }
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
