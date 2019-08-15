Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71A988E22C
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:52:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=g6FRhWoBjWHaz2W4CW0s31jPbpE5TZ5fUslOwu6ycL4=; b=bw4Obgd4pRl4KR
	xV5mp9zDhXpU/CFVMfX90tOiCt8j8q19rHzLHZix98GfnXbxTpyaKTBr6eHf1jC8dYwJU3GAihO8J
	kHsw3gAjJsTJynvKYK+OJ/HodjuU9Ij7QwWbytv6zKEGX88ZT2zXbmzh1WDzqFf//6yKeI34HGy9T
	yuzJrlamdKgnpzTtFvFd/yjyfraJspZeY9DeL/YRsd5f0bZvGM7ejdMaTv4WizHmPM6NTq2XAzsTE
	E3HqsMuiaUZvbcjpQAXWeiYpXU4hWqkUGMma0plOb0z1zqo+k6GKN6MJQtiT02QQwR7xqScT8Z6FF
	yKE9yqq5a8Kr4WmgIUAQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy403-0007eR-MY; Thu, 15 Aug 2019 00:52:19 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x7-0004cT-Ag
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:19 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 26AB63EA22;
 Thu, 15 Aug 2019 00:49:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830156;
 bh=d3q75pXkjIXM1QryEInKZPabWpuCo5QQR2U68bge2+A=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=NJdtoh3/ImfhdTmSEd85mj5KPu2ZKI0+UpUzJUTokWtV70S3liqeW3s4dbfky+wr4
 LolisNgSRIh+ji/BEC/+LNt4IZWePqwWkQ0lf99WfPMtT+plnIZnwpj94J+7JjQ06J
 WoLNwQj3TpHlok1OzDecQd2NzU7BUwa+XkPAjiD8=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 08/11] drm/msm/hdmi: silence -EPROBE_DEFER warning
Date: Wed, 14 Aug 2019 20:48:51 -0400
Message-Id: <20190815004854.19860-9-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174917_450041_E36492C7 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [52.200.56.107 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, jernej.skrabec@siol.net,
 jonas@kwiboo.se, airlied@linux.ie, linux-arm-msm@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 dri-devel@lists.freedesktop.org, Laurent.pinchart@ideasonboard.com,
 daniel@ffwll.ch, enric.balletbo@collabora.com, freedreno@lists.freedesktop.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Silence a warning message due to an -EPROBE_DEFER error to help cleanup
the system boot log.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/msm/hdmi/hdmi_phy.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
index 1697e61f9c2f..8a38d4b95102 100644
--- a/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
+++ b/drivers/gpu/drm/msm/hdmi/hdmi_phy.c
@@ -29,8 +29,12 @@ static int msm_hdmi_phy_resource_init(struct hdmi_phy *phy)
 		reg = devm_regulator_get(dev, cfg->reg_names[i]);
 		if (IS_ERR(reg)) {
 			ret = PTR_ERR(reg);
-			DRM_DEV_ERROR(dev, "failed to get phy regulator: %s (%d)\n",
-				cfg->reg_names[i], ret);
+			if (ret != -EPROBE_DEFER) {
+				DRM_DEV_ERROR(dev,
+					      "failed to get phy regulator: %s (%d)\n",
+					      cfg->reg_names[i], ret);
+			}
+
 			return ret;
 		}
 
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
