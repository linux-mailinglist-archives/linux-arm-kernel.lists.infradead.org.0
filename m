Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12180165952
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:36:28 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3Gngea4eqn4rDHUmyKbWolThD0P4lcT2MCIDxQ60xfc=; b=iyIOR5+hK94b3y
	rIURGzwlAEhED6ls/wwWGByXDGHlykJxYCSiv2GzqX3zYRCeVc+FanO2nmfl1hH2xtLA2nXWntB6C
	/7Q+P1pAw3ezDq5fntcXer+ZU//c/SC/1SpPWygmx0J1bwk7DmihjnNCvO6P/tKbTr2A2M49KbYwK
	iQPzmEH2mDMTn3obPO2M6qPL/bE7NraQ6vspTXr5i8fkEqLPPcwyMgtoU+DqSOUmdLN4TCn/MrzQG
	NN8SVaharineJpBJyfT7RY2xwgNNAY+bMUgWDFH3T5+O1SRd52tEh3ibxEbb03e1unL3+fs1+8+lU
	utiT1QvGi/orcnbxLL3Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hJX-0000Cy-9E; Thu, 20 Feb 2020 08:36:07 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJK-0000Bk-No
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:35:56 +0000
Received: by mail-pg1-x542.google.com with SMTP id j4so1583848pgi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=HWD5EoDnyMEVvpGTdgYdYgLmYJyVRNy3T597G1z67yk=;
 b=u2FtSKFX4CacAKc8xWvJmhxD5qhhvbDyLNtsCKVsbW1YAKLuZBig5n/p3kq7e8EU11
 A2acQdgTcIYY9/kwND534EI9ZMMShoCdkmAQpIPWxLnz962zv2gfqDQq/4K6ylaR9Jbo
 SyrMJL+10pzYzYGLSs/1D1e0s6OEJazqdlzokcnEWs7xeO1Ss6ibEz9huIEXImHUxqtM
 Ej1JkK/PfA1iy+ho3uFebNt8Xh+0xOR8p/omxgOGvMiXm7Vj42KJnX4CsdB651XJjT1g
 /kyf+TQlbPI6znulHlYcWYzg6BnCPDZY0DiAujkZHHj8DM9QToA0H/ofmXjyMrjpL3DE
 sU/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=HWD5EoDnyMEVvpGTdgYdYgLmYJyVRNy3T597G1z67yk=;
 b=GY+rjocKZIW6lXuiqJPTHUJIRnuBETcTa6Xdda8HSx5AV2ItGtZVAz4U0FjyNSEjSZ
 BLCHilIkecgE+L69Jm5ZMsLWDBc7qbXQyiHeeIxF6SoahGrh7d8GbfUi/ODWbuSWzLeR
 d+347afD5gWxh528sZZ+LlMNraP4LRse95QjnlP+6qioAcE2h7CawZyYjLAOOWzhPDpa
 u+iUGWcK4HkbN3mDKNaDAfoUxdBO3jXsT83BjeUgamCdZQ91u/5Lb13zPAG2XxrrqDp1
 H6Cb645h9RoBvkuUT0D17HzhKxxiRu6k1GFX9geYfmFatVuhO2rv0c2GwtMJxEK+qDFg
 fuhA==
X-Gm-Message-State: APjAAAV3VIp1baJiS21WvkgmLD9QLEs8g7CT1b5xUEyT5L0R/jSzFo5l
 BoJwgY/suzec71RurYBXVi8=
X-Google-Smtp-Source: APXvYqzs7/Gqt1xQfGHj7U15rIDiPo8TglS71njYt+orbfTk1syKkenp7pbBfokhD2s4o1o8orXINg==
X-Received: by 2002:a63:2c50:: with SMTP id s77mr13673718pgs.182.1582187754273; 
 Thu, 20 Feb 2020 00:35:54 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:53 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Icenowy Zheng <icenowy@aosc.io>, Torsten Duwe <duwe@suse.de>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 1/6] drm/bridge: anx6345: Fix getting anx6345 regulators
Date: Thu, 20 Feb 2020 00:35:03 -0800
Message-Id: <20200220083508.792071-2-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003554_779326_198C5222 
X-CRM114-Status: GOOD (  12.46  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Samuel Holland <samuel@sholland.org>

We don't need to pass '-supply' suffix to devm_get_regulator()

Fixes: 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
Signed-off-by: Samuel Holland <samuel@sholland.org>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
index 56f55c53abfd..0d8d083b0207 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -712,14 +712,14 @@ static int anx6345_i2c_probe(struct i2c_client *client,
 		DRM_DEBUG("No panel found\n");
 
 	/* 1.2V digital core power regulator  */
-	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12-supply");
+	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
 	if (IS_ERR(anx6345->dvdd12)) {
 		DRM_ERROR("dvdd12-supply not found\n");
 		return PTR_ERR(anx6345->dvdd12);
 	}
 
 	/* 2.5V digital core power regulator  */
-	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25-supply");
+	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
 	if (IS_ERR(anx6345->dvdd25)) {
 		DRM_ERROR("dvdd25-supply not found\n");
 		return PTR_ERR(anx6345->dvdd25);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
