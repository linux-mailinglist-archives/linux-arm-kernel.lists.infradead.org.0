Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 453841BCEBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 23:32:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=MTRYYsJsvN4mNlXt7dE1/gJh8dPpykKEpz4J/ETIFQ4=; b=kQ+UApHr3PzQ2J
	GPkGT/wIizB995Bgz0y0Sg+P8uoB3VwTEkfRBq4R6iApEhnRKjyvOYUdApP4S70Twso2Ug/PKdCvw
	KRcMKcRSNQwXFKObA64Eq3k61Mg8CiIn6FmAC4jXFiKBTwsEWUSmyGXP2nz2kXREio64LKPZfReZ/
	Y2YpkeKMfvNKYn92ds7+UgsMkF35c9m6zhFohZpg2OOpTQIvaR6QTXYCXB9prA2QU5JT5DN3lOKsw
	6N9BLnKDBjNwXOWGN2ht9SapeL8LQlwRP/vFT3CrUmdIhfZhrYX9WTc+yeWixSZh1wLs06Bn1R6LK
	xBqjwO5+veIgFZeuiLbA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTXpx-0002Zh-72; Tue, 28 Apr 2020 21:32:17 +0000
Received: from mout.kundenserver.de ([217.72.192.73])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTXpg-0002Ra-6o; Tue, 28 Apr 2020 21:32:01 +0000
Received: from threadripper.lan ([149.172.19.189]) by mrelayeu.kundenserver.de
 (mreue108 [212.227.15.145]) with ESMTPA (Nemesis) id
 1Mhl8Y-1iycqy1vmK-00dk8x; Tue, 28 Apr 2020 23:31:40 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: Sandy Huang <hjc@rock-chips.com>,
 =?UTF-8?q?Heiko=20St=C3=BCbner?= <heiko@sntech.de>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>
Subject: [PATCH] drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume
 __maybe_unused
Date: Tue, 28 Apr 2020 23:31:24 +0200
Message-Id: <20200428213138.3171708-1-arnd@arndb.de>
X-Mailer: git-send-email 2.26.0
MIME-Version: 1.0
X-Provags-ID: V03:K1:9gben41GuxcER2oeB9wYFmmawlgPoyYBUHJXzEFjF9Cabdyd6zx
 UnQqpKoIlMMhMSJMpuySRnALm9dHkuP2ohqYNq/f1dDi8rb7CkJYGeWWaT5DbF2erglp9jy
 3dnGb8OeECJrvFGIXwYVDOrV/PXlOVyafv0VaeEy3uA6RtW2Vo4Iu93RlK6TbIOJRrhZw1c
 pp3XMgxlBaX9JAjUHxR9A==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:PpL1chTksEs=:0aWKAbC6CW1CMI3dzP5Gzu
 BZBRqPxP6Abvzmlu7WERc3rgNnMtcHirhasII1DlkqCVt16q0C+fZ8ue4ruuVX8oCISwbyejA
 p2pHgv1AGbewbLj49YMiETFtVQr9Sl42j5XNtq26eUN94I514lrIGZD7o1m2Rc0sc1x1oKjSY
 RpRmcczTirgb8KYRp+O+SDikXS47dme+T96VaQefBAviX3IvR/+TSM6GojVBgTJlq5ie5y4UB
 zFkmoty+bLSedIJn1bva4MxZTHT40+E0CYFs6LZT0vpgA9SxoKEtNPTSNL+56QiXAnr89Rv0J
 DwV1btZHMLgKyGI6a1C5nI7NESiwwQw2ztp5fF1mmfGrJTQQqiBlvHLxQBhQxG4nFd7ZxQBnl
 L86RYJUU5WUbaImD6KV9niyjczw2Y1AI358s0LJ/uJtgggdHgLCMfryNoLWVuskP5+f22cyNx
 eUJlm6EmNQiyl0sJm0VWBwDPQFD4AGHrIpx2XNUr9OIcYWTm+R47zrZUjyvvHaBJEqEqTosIx
 mJ8/KbmpbhepBJDPF6EVgTjeRFmTUa96uvRZiF7u5B+iBewkNpfrfBQVNXAl0Jbbm0kGRSHbO
 nuTDJrxKieLaOefJUke5OeRUY6uMWXHarOOSTwhoERccYSorX5lDGViY+UdD0ef0x6uaWI79D
 TatCoGF3WzbWrR5UumEiT/5sqJ/nsG3XIh+2k6NhJpqNy+/Nw1Ri7VvUgtuAg+6PB958HPY7B
 V3Sgnel9PC8tBoXnYABhIfwxsbE8OFYsb4ABLxGS+AIYVNAkqRnSAtm86mZK6UXxLzsIBrD7s
 NU4xcEH1iZsFiksRG/EuB6b1CocT//Y2QGhYlyuQ0fa7KdIh1A=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200428_143200_543996_57D87904 
X-CRM114-Status: GOOD (  11.84  )
X-Spam-Score: 0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.72.192.73 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.9 RCVD_IN_MSPIKE_L3      RBL: Low reputation (-3)
 [217.72.192.73 listed in bl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_BL      Mailspike blacklisted
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-rockchip@lists.infradead.org,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Thierry Reding <treding@nvidia.com>, Sam Ravnborg <sam@ravnborg.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With the new static annotation, the compiler warns when the functions
are actually unused:

drivers/gpu/drm/rockchip/cdn-dp-core.c:1123:12: error: 'cdn_dp_resume' defined but not used [-Werror=unused-function]
 1123 | static int cdn_dp_resume(struct device *dev)
      |            ^~~~~~~~~~~~~

Mark them __maybe_unused to suppress that warning as well.

Fixes: 7c49abb4c2f8 ("drm/rockchip: cdn-dp-core: Make cdn_dp_core_suspend/resume static")
Signed-off-by: Arnd Bergmann <arnd@arndb.de>
---
 drivers/gpu/drm/rockchip/cdn-dp-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/rockchip/cdn-dp-core.c b/drivers/gpu/drm/rockchip/cdn-dp-core.c
index c634b95b50f7..1cde98c6b0e6 100644
--- a/drivers/gpu/drm/rockchip/cdn-dp-core.c
+++ b/drivers/gpu/drm/rockchip/cdn-dp-core.c
@@ -1106,7 +1106,7 @@ static const struct component_ops cdn_dp_component_ops = {
 	.unbind = cdn_dp_unbind,
 };
 
-static int cdn_dp_suspend(struct device *dev)
+static __maybe_unused int cdn_dp_suspend(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 	int ret = 0;
@@ -1120,7 +1120,7 @@ static int cdn_dp_suspend(struct device *dev)
 	return ret;
 }
 
-static int cdn_dp_resume(struct device *dev)
+static __maybe_unused int cdn_dp_resume(struct device *dev)
 {
 	struct cdn_dp_device *dp = dev_get_drvdata(dev);
 
-- 
2.26.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
