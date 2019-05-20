Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D38D22FD6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 May 2019 11:08:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HN64ngpJ6viFd/365a465FKs0C2ztyXQy+fPTizmt0Y=; b=mpT6gSIN9x/i8g
	LWJUJbkIAm0wH18GdR8tZRfupO2iC2jntBjPvJ9V4rsCCsl5uw6W3TKycX8QJbnboJs5obJB751hd
	7lGOOGrDHY9I446OFDZcLr0YSoy8KZCy1xfOUXFhEjbYcYjJt1Zty1Jh/ut6zqU7t8KU1yHGb8vPa
	KUupYeAyJCO0RYUkzv9m9CcX4C4UoBk+MV6Pk02m5NKMish39ReYTwsFyobHHm2mcme0SyDbUS+nM
	u1JQbFncKkmYTLLi0Psg1V/Y8f9OsFZbDyDV5R+jRAd3N4pJwaeqk8aXdX7yuKSte3GFQgYVprBXm
	uun6ln+wluJPt5vtItng==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hSeHh-0003n7-QS; Mon, 20 May 2019 09:08:41 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hSeGn-0002s2-I7
 for linux-arm-kernel@lists.infradead.org; Mon, 20 May 2019 09:07:54 +0000
Received: by mail-pg1-x543.google.com with SMTP id z3so6483049pgp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 20 May 2019 02:07:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=amarulasolutions.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qhq8BOri8GqXtdsxg8qxzoiDzDhWP4zxzqC5ifM9GUM=;
 b=BwmX6vUwVXSoWUXZaDGxZnC4C2nA+2FLx9nM53JLcHkyAB5WcTW4XIBvaCMGkvN9l8
 h8ifkdY4+WuJmXFbgWagA5sRceen0HDsv0Ox5dmquIwP9fPC2bcFhBAVP4TCIRHCSf4Y
 7nZE/DDUbxoFttnsMo29hrKifDT5WRjCfoT3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qhq8BOri8GqXtdsxg8qxzoiDzDhWP4zxzqC5ifM9GUM=;
 b=efHzN3C+YcXmgXrxGwO8aKYLKKWSirxxrxv1Q5xh9zsVJo9I94+892XevvRQB5OeaJ
 AKv2h8VPJdQ8zFxz3QXXZqLNNmBovOsv9xeCiAMvykcKTl3WBzH77aMxsHnEI3atA9d6
 3nd7G0lji/JKJ70aRJ0+5/3cnsKa4xlGERKDpwLyQByZgg5zf74rFTu2gBtNcFGzSCKM
 Fl5oDPz7/r3YN9xGbK8w3tr8B3GUvVz+lPVTxCqPGzmt1vb52QS8vcblVEz94nhpG3mU
 HrW7Ya8gXRofnAEQfn1DBUqMrsrGmQMfKtx7L9P0DB2snRPXnQavimqLnAK8qQJcKAw2
 EwjQ==
X-Gm-Message-State: APjAAAWDkmAdQ9u+gY53axKECH6D/UdGV6oFxvJNXo7sFySakZ20Iowz
 OH6BCyZxqT9i83ps3Uj7QIU8yQ==
X-Google-Smtp-Source: APXvYqzQbGvwKqbUYTfkmz0DyTQcGldqq+MJrZmXW5rXq1utn0gBm9ge5J4w6ezaiZlHn0axjqJVLg==
X-Received: by 2002:a65:628b:: with SMTP id f11mr71262665pgv.95.1558343265015; 
 Mon, 20 May 2019 02:07:45 -0700 (PDT)
Received: from localhost.localdomain ([183.82.227.193])
 by smtp.gmail.com with ESMTPSA id d15sm51671614pfm.186.2019.05.20.02.07.40
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 20 May 2019 02:07:44 -0700 (PDT)
From: Jagan Teki <jagan@amarulasolutions.com>
To: Maxime Ripard <maxime.ripard@bootlin.com>, David Airlie <airlied@linux.ie>,
 Daniel Vetter <daniel@ffwll.ch>, Chen-Yu Tsai <wens@csie.org>,
 dri-devel@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Subject: [PATCH v10 06/11] drm/sun4i: dsi: Probe tcon0 during dsi_bind
Date: Mon, 20 May 2019 14:33:13 +0530
Message-Id: <20190520090318.27570-7-jagan@amarulasolutions.com>
X-Mailer: git-send-email 2.18.0.321.gffc6fa0e3
In-Reply-To: <20190520090318.27570-1-jagan@amarulasolutions.com>
References: <20190520090318.27570-1-jagan@amarulasolutions.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190520_020746_078334_38AF3121 
X-CRM114-Status: GOOD (  12.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: bshah@mykolab.com, powerpan@qq.com, linux-sunxi@googlegroups.com,
 Jagan Teki <jagan@amarulasolutions.com>, michael@amarulasolutions.com,
 linux-amarula@amarulasolutions.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Probe tcon0 during dsi_bind, so-that the tcon attributes like
divider value, clock rates are available whenever it required.

Tested-by: Merlijn Wajer <merlijn@wizzup.org>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c | 6 ++++++
 drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h | 1 +
 2 files changed, 7 insertions(+)

diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
index 47d571d97600..1f9ed2642a47 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.c
@@ -1045,6 +1045,7 @@ static int sun6i_dsi_bind(struct device *dev, struct device *master,
 	struct drm_device *drm = data;
 	struct sun4i_drv *drv = drm->dev_private;
 	struct sun6i_dsi *dsi = dev_get_drvdata(dev);
+	struct sun4i_tcon *tcon0 = sun4i_get_tcon0(drm);
 	int ret;
 
 	if (!(dsi->panel || dsi->bridge)) {
@@ -1054,6 +1055,11 @@ static int sun6i_dsi_bind(struct device *dev, struct device *master,
 
 	dsi->drv = drv;
 
+	if (!tcon0)
+		return -EINVAL;
+
+	dsi->tcon = tcon0;
+
 	drm_encoder_helper_add(&dsi->encoder,
 			       &sun6i_dsi_enc_helper_funcs);
 	ret = drm_encoder_init(drm,
diff --git a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
index 9c140f55b822..f2826e3ea165 100644
--- a/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
+++ b/drivers/gpu/drm/sun4i/sun6i_mipi_dsi.h
@@ -28,6 +28,7 @@ struct sun6i_dsi {
 
 	struct device		*dev;
 	struct sun4i_drv	*drv;
+	struct sun4i_tcon	*tcon;
 	struct mipi_dsi_device	*device;
 	struct drm_panel	*panel;
 	struct drm_bridge	*bridge;
-- 
2.18.0.321.gffc6fa0e3


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
