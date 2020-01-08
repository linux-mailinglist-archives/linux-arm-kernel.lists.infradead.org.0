Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6E1134E7C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 Jan 2020 22:10:31 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:To:References:
	In-Reply-To:Message-Id:Date:Subject:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=uycgfgvDXFrXEvuz9EZBmAHTNz/mtmvxkF/qOhABAJ4=; b=ZNPcrt/0adGvId9FkRy6nTCr4S
	4ySaWLhQbS3F6/ceOGL/rKr/SsKXD5kR6sn0N+V0vWpd41YMQkv7jkvwQpLqGihwYR2nj6FqEOd9J
	j5E4u7J6AzH6Y8+Mv7yBOiKkDjei0UqRvJUZ1cm/twGcgIpcORKferLT0fAViYNYXXQlAZhQSRFS5
	Vi+uPL9J2/aQFGHiMxt1Rf+x0DLUHWMJOHHmqcE0bLYnE7K/rYnZhxbJJaNbSUNRNf5bFMrmNxIIq
	8Nv/Cu6HES7tunwOt6rWpRj/q7TQumhIMquAR+5UQdaGov3czn7psdr+j7EGNna6zXayNTtbN1SfD
	mmgzJR1A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipIaz-0003v1-G1; Wed, 08 Jan 2020 21:10:29 +0000
Received: from o1.b.az.sendgrid.net ([208.117.55.133])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipIYQ-0000BN-SP
 for linux-arm-kernel@lists.infradead.org; Wed, 08 Jan 2020 21:07:58 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
 h=from:subject:in-reply-to:references:to:cc:content-type:
 content-transfer-encoding;
 s=001; bh=mPIGzETFyK+yy6AvuQViu61rlq4EFws+y7mGZ96sfzo=;
 b=bOdRKw3CE56+rxLYPC/ZQP0aQ2Rf8EhNnNtyg1xfcDeCqlfC+Y8ZdcNXo5BdOBR1BKlY
 WqDNfXAsQRJ2LdiktYj4AIeThjIOyciSqqZjjg4j8zoSg1AufhAMFG7Sok6+RYC6IQzLlw
 JrVsoVVbdovcpwOSrqoXGybXA1EsGCA7U=
Received: by filterdrecv-p3mdw1-56c97568b5-d7vf5 with SMTP id
 filterdrecv-p3mdw1-56c97568b5-d7vf5-18-5E1644A6-6
 2020-01-08 21:07:50.14129033 +0000 UTC m=+1974283.644180722
Received: from bionic.localdomain (unknown [98.128.173.80])
 by ismtpd0005p1lon1.sendgrid.net (SG) with ESMTP id 5gIH8ZCXQJCZxUfJPXl_Sw
 Wed, 08 Jan 2020 21:07:49.944 +0000 (UTC)
From: Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH v2 07/14] drm/rockchip: dw-hdmi: require valid vpll clock rate
 on rk3228/rk3328
Date: Wed, 08 Jan 2020 21:07:50 +0000 (UTC)
Message-Id: <20200108210740.28769-8-jonas@kwiboo.se>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20200108210740.28769-1-jonas@kwiboo.se>
References: <20200108210740.28769-1-jonas@kwiboo.se>
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h9fq3wHH7v6C53qgA?=
 =?us-ascii?Q?YlW1v7dKuNjfj9RgmNCofuXzEMYVHRoz6lVvBjE?=
 =?us-ascii?Q?A4xTi17C8zi=2Fp2rtoJpot8cXaQLOJJaebKL1AM7?=
 =?us-ascii?Q?7dBlc0D1l5IFNaAI0n45leOhk5iYgSrH+KXjKrc?=
 =?us-ascii?Q?r1gd3Hbcixrpjgk2A8QdcNKAPSaU=2F4eaYMkqWdq?=
 =?us-ascii?Q?sC4sXuPeOwIDenkDwCvCA=3D=3D?=
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_130750_997466_91460746 
X-CRM114-Status: UNSURE (   9.96  )
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

RK3228/RK3328 can only support clock rates defined in the pre pll table.
Lets validate the mode clock rate against the pre pll config and filter
out any mode with a clock rate returning error from clk_round_rate().

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
index fae38b323a0c..45fcdce3f27f 100644
--- a/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
+++ b/drivers/gpu/drm/rockchip/dw_hdmi-rockchip.c
@@ -245,6 +245,22 @@ static void dw_hdmi_rockchip_encoder_disable(struct drm_encoder *encoder)
 {
 }
 
+static enum drm_mode_status
+dw_hdmi_rockchip_encoder_mode_valid(struct drm_encoder *encoder,
+				    const struct drm_display_mode *mode)
+{
+	struct rockchip_hdmi *hdmi = to_rockchip_hdmi(encoder);
+	long rate;
+
+	if (hdmi->vpll_clk) {
+		rate = clk_round_rate(hdmi->vpll_clk, mode->clock * 1000);
+		if (rate < 0)
+			return MODE_CLOCK_RANGE;
+	}
+
+	return MODE_OK;
+}
+
 static bool
 dw_hdmi_rockchip_encoder_mode_fixup(struct drm_encoder *encoder,
 				    const struct drm_display_mode *mode,
@@ -306,6 +322,7 @@ dw_hdmi_rockchip_encoder_atomic_check(struct drm_encoder *encoder,
 }
 
 static const struct drm_encoder_helper_funcs dw_hdmi_rockchip_encoder_helper_funcs = {
+	.mode_valid = dw_hdmi_rockchip_encoder_mode_valid,
 	.mode_fixup = dw_hdmi_rockchip_encoder_mode_fixup,
 	.mode_set   = dw_hdmi_rockchip_encoder_mode_set,
 	.enable     = dw_hdmi_rockchip_encoder_enable,
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
