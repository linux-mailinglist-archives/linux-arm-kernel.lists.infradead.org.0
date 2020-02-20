Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F24C516595A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 09:36:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=awzPlVJOBq1Dla+XewGPdeeFaMIPARU5lZFBjnwRjm4=; b=eNLyi/jc+a1tVr
	TFgOWXmIKz75bclYHHqMm1GVBTMmtwbzTNagpsiXDBRnW5WF2AKPNFicWmObCbiJSYFrNatd3b87Y
	bRCnsSrdTuHk/nI8A7sq5BSSVivYwO9+XvSuHQpszUERXIp6QnHWPC9hAWFwI1Og+Bg7ZQYQXcRHO
	cgNxjO8+F+EdIFwTmCwDaVtiynrYon9Zu5ThoiZyNpdrYEXAN40Rge4/+MmBGy0mr1G5NfYQ5LzsE
	0PqK2R2jUsgK4Dmjtmnglb1vFFRxOC+qx9bbGY2JeXT92cgy/5RUNUQLmZJLctuJTn5OH81gETaS0
	8cwZwVWlXq1fAoKrP78w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4hK1-0000fv-Qk; Thu, 20 Feb 2020 08:36:37 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4hJM-0000CB-0B
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 08:35:57 +0000
Received: by mail-pl1-x644.google.com with SMTP id g6so1278854plt.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 00:35:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=wYQONlA9lvcFld0G+NwhV5rBbyIu6fNUKkg/bhapB14=;
 b=N+fgwF/6e6JTKFlrJgQIRnbOLpsKCtZYnIYWWcKNnfKNY9CCUMr6V9Gw9TGF6pjJIB
 EHSAyjOJyfeCwqQkmI4hUnJOnoferabWuW52Jemsyz3ozxX45q3P64AnHJpigGKXMWzg
 wBZNL9EgTQWFnkbTSNbeoeGpldgIni5ogrZfMmarImqShr+dejWNmNW96uI2OQSM/DiG
 TbWyOd6OuhzcE+KwC0rYa/X8GMZFSoOWT0/63ZQIGG5D9x0EvG1IvBxr9J8jYpAcdO0a
 4Za6FD12Z2xqA0PCoc8lNH2bo+yCBkGwRyZmRXN6uApIHstunbaeA/WX/yObPRwoUFUG
 f+NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=wYQONlA9lvcFld0G+NwhV5rBbyIu6fNUKkg/bhapB14=;
 b=OuGYuM3fAb5xB0SGiPgUwoMfG1D15g/SB8EwA5w3Ys3IsbooSe++qbk78bg/TIiop1
 ktAUk2WJtlWrA3pV+GEUIBaJp4spMALCNsp78JO1+ga9d1tQv7mdFPqXjUf8NXr4QTVm
 RfRIFvi7VhL/tfdSPiJV8POxxb6Fp1sasyAETph3H3+woFIHj5Pd8AHgQuJ/KIx229yS
 9KWcCgPMSvWO08gs8nFFQZhSZXFlUWCa4P62w/yArEh5pT9MY7xUei+RWI5KWzni+KMJ
 kPtk5iwr5rExkncW8dVQ9sikHyRAcrTdaN6+nPedJVBMKn5DZAADoqr0C7xPQOIK9oie
 kn+Q==
X-Gm-Message-State: APjAAAWFxVk82PYlgGAWmqfXZC2t8lvtBnOxJkaEM9SsMYUQKjN2cMIY
 QztMwGjgwo9SI6UalRR9GNE=
X-Google-Smtp-Source: APXvYqwAMzlg3ox1kckOd8OArhVChc+fFh1B8FYzsDIg77886p2/0Fs+/up3ECkbKsMtzNNlm8jUUQ==
X-Received: by 2002:a17:90a:c216:: with SMTP id
 e22mr2300961pjt.134.1582187755353; 
 Thu, 20 Feb 2020 00:35:55 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id l13sm2319038pjq.23.2020.02.20.00.35.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 00:35:54 -0800 (PST)
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
Subject: [PATCH 2/6] drm/bridge: anx6345: Clean up error handling in probe()
Date: Thu, 20 Feb 2020 00:35:04 -0800
Message-Id: <20200220083508.792071-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200220083508.792071-1-anarsoul@gmail.com>
References: <20200220083508.792071-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_003556_060482_B9484AA8 
X-CRM114-Status: GOOD (  13.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
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

devm_regulator_get() returns either a dummy regulator or -EPROBE_DEFER,
we don't need to print scary message in either case.

Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
index 0d8d083b0207..0204bbe4f0a0 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -713,17 +713,13 @@ static int anx6345_i2c_probe(struct i2c_client *client,
 
 	/* 1.2V digital core power regulator  */
 	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
-	if (IS_ERR(anx6345->dvdd12)) {
-		DRM_ERROR("dvdd12-supply not found\n");
+	if (IS_ERR(anx6345->dvdd12))
 		return PTR_ERR(anx6345->dvdd12);
-	}
 
 	/* 2.5V digital core power regulator  */
 	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
-	if (IS_ERR(anx6345->dvdd25)) {
-		DRM_ERROR("dvdd25-supply not found\n");
+	if (IS_ERR(anx6345->dvdd25))
 		return PTR_ERR(anx6345->dvdd25);
-	}
 
 	/* GPIO for chip reset */
 	anx6345->gpiod_reset = devm_gpiod_get(dev, "reset", GPIOD_OUT_LOW);
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
