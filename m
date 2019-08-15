Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0B0E8E225
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 15 Aug 2019 02:50:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qskBcZHgrThlAanuU0vLIyk1BcAuEr9TXHnh6pzZxsM=; b=q6PBo0u3ixWpIK
	N/FOqfxNbZ3odpcd0CIdzyUN1vnRVzffmZGAJTMYS1RjrgqQ+70EGGt1gc/lXIL1jH0rk1367YYHO
	DzwkokfPpkmp2EPZ7ClNysNJQ7JWqwAqMfh3uoB5/+/SRY+Q0xwW4DNOyRGLW/kw1eOY8sd3oahMV
	+9fbEoGQVNCERIcJWAPNHBArdmSVQqRi8AHhl/4ZsNso3oiehlI2PyYXedEzRa6o89Fhr6tt9Cz0b
	T/BUmbMvxA5PWwBDpcZpq86SPW422s1zn00Ux56957gn7Se3A9isUQa8J32DEMRlI8zvduCxHNBut
	F5yJp2Rs3tOjdJaxoC8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hy3yN-0006Jf-72; Thu, 15 Aug 2019 00:50:35 +0000
Received: from onstation.org ([52.200.56.107])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hy3x4-0004a3-JI
 for linux-arm-kernel@lists.infradead.org; Thu, 15 Aug 2019 00:49:17 +0000
Received: from localhost.localdomain (c-98-239-145-235.hsd1.wv.comcast.net
 [98.239.145.235])
 (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
 (No client certificate requested) (Authenticated sender: masneyb)
 by onstation.org (Postfix) with ESMTPSA id 70E1D3EA0B;
 Thu, 15 Aug 2019 00:49:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=onstation.org;
 s=default; t=1565830154;
 bh=W1RhsccQye1UHlHsDlLQw0ZtaFOCOLeutTy9qm6UT1g=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ljOjdnDfnnO2M7fWsgp2VIsd/s4cfZhi8GnD7ImjQsf55GctyEVH8TzpHZ8SwEnj1
 piyfyWPRBQc1ONqs1OLJW5qnMgQpws6bAUpZoNDjhkkurHtZT38o0szI4uBi6mLZot
 vCbWhMGGKK0OEEe6YtmwXnHvWIQUdgoHluIGXRso=
From: Brian Masney <masneyb@onstation.org>
To: bjorn.andersson@linaro.org, robh+dt@kernel.org, agross@kernel.org,
 a.hajda@samsung.com, narmstrong@baylibre.com, robdclark@gmail.com,
 sean@poorly.run
Subject: [PATCH 04/11] drm/bridge: analogix-anx78xx: convert to
 i2c_new_dummy_device
Date: Wed, 14 Aug 2019 20:48:47 -0400
Message-Id: <20190815004854.19860-5-masneyb@onstation.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190815004854.19860-1-masneyb@onstation.org>
References: <20190815004854.19860-1-masneyb@onstation.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190814_174914_694472_F76A4B46 
X-CRM114-Status: GOOD (  10.75  )
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

The i2c_new_dummy() function is deprecated since it returns NULL on
error. Change this to use the recommended replacement
i2c_new_dummy_device() that returns an error code that can be read with
PTR_ERR() and friends.

Signed-off-by: Brian Masney <masneyb@onstation.org>
---
 drivers/gpu/drm/bridge/analogix-anx78xx.c | 15 +++++++++------
 1 file changed, 9 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix-anx78xx.c b/drivers/gpu/drm/bridge/analogix-anx78xx.c
index 62dfced91384..8daee6b1fa88 100644
--- a/drivers/gpu/drm/bridge/analogix-anx78xx.c
+++ b/drivers/gpu/drm/bridge/analogix-anx78xx.c
@@ -1355,15 +1355,18 @@ static int anx78xx_i2c_probe(struct i2c_client *client,
 
 	/* Map slave addresses of ANX7814 */
 	for (i = 0; i < I2C_NUM_ADDRESSES; i++) {
-		anx78xx->i2c_dummy[i] = i2c_new_dummy(client->adapter,
-						anx78xx_i2c_addresses[i] >> 1);
-		if (!anx78xx->i2c_dummy[i]) {
-			err = -ENOMEM;
-			DRM_ERROR("Failed to reserve I2C bus %02x\n",
-				  anx78xx_i2c_addresses[i]);
+		struct i2c_client *i2c_dummy;
+
+		i2c_dummy = i2c_new_dummy_device(client->adapter,
+						 anx78xx_i2c_addresses[i] >> 1);
+		if (IS_ERR(i2c_dummy)) {
+			err = PTR_ERR(i2c_dummy);
+			DRM_ERROR("Failed to reserve I2C bus %02x: %d\n",
+				  anx78xx_i2c_addresses[i], err);
 			goto err_unregister_i2c;
 		}
 
+		anx78xx->i2c_dummy[i] = i2c_dummy;
 		anx78xx->map[i] = devm_regmap_init_i2c(anx78xx->i2c_dummy[i],
 						       &anx78xx_regmap_config);
 		if (IS_ERR(anx78xx->map[i])) {
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
