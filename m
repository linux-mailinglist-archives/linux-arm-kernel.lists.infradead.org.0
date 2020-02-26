Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 58C7816F930
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:10:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Peo+SfFmr062rl3tgDW98UrixycGQzBn/gdB0fqrEec=; b=cdeyR8r0WrrQXL
	fhHLecv9WUzj5mN4Jb7+S8U3VVCIJu7TkDD13MiIv2xqHbC9HXLBkGdb2Vrq2Rcfkl/jwWjXcgwST
	vrUCWMU4jaNlxmeTiAXDyI1I6SEZ/9haXD8IUv7hU1BNoVyeH2GeaVHvTAwIA7TKEWzJHb3/naGAz
	Yir51L7gXJoATQ86WVBgdnZ/6rUUmZe1Gs9aHwEjMZ5Rz/9WNydTH/VLWBCVDA9zdZiq8+jhja7y6
	Dh8VhWGpCuvJ/6W0c7viQtFIuJAYI2cYQmI+ebHLMeiv0g7cZnaTxi/PPSICIl3iA9MSUbfVcYSoC
	Ro1yQC9H+yqHToXqdWTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rmQ-0000to-PS; Wed, 26 Feb 2020 08:10:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmH-0000rv-7o
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:46 +0000
Received: by mail-pl1-x644.google.com with SMTP id a6so990257plm.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=bV3ZvEYwFOIunmpWLGzAgCdGTlK6S+EV6uVEHB+FGxY=;
 b=Q0cii6N45xFi8jvZk47bAoc1Nxu6hFKn2R/6gr1ZfjKbVoDJZ64PKB8Z3UWgfpC96z
 m858biDFlV7/4mo1LjVTUmbbBHm1yKrJnJ3uLVZBlEdyOFSDznZRxrzu6B/mSXoBfdGU
 mlGpBVLSLPU/z8ykPcedU1XFyCgTRivYgIcpSqG+QITc7/eIRdzyugFFz9Yzl27ql70w
 8AlOefrAt/HgAlO+4L6JoXtZp+YN7BobPP6qXr0OfqH/1PLZecbnI0vC7uItRmmZkPfN
 j7AsPd8mIOV8s5KgCaaK+xwtreytUn7QQZvq+Frfrl0pLWndKlgav8D5uWnV85pooXdR
 SCgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=bV3ZvEYwFOIunmpWLGzAgCdGTlK6S+EV6uVEHB+FGxY=;
 b=ECNexu4zW9OhYucRWaQRPAtEEWE7WmtUxDePEa2BlUp2b5Kd9R3BagblFLB6VAHhjR
 wSrCiVTMvlAgNAiXJuKq/J5YnOKBFR7YdGYc9odgo3waiK/XQw5lNOjmNA3hJepAn0wb
 MXB9jYsbW2B5kyNLwCFFG6d6jTJEY6Q87mzTx3wqL6nBq6sjdHN5JvBkaERdHCCqKUVH
 /jOwV7W2QFG0Kb+DYvfelZbfBCUOMf68VHiwQICiY52q5geL/Oa8/ZO56kEfCx3geUXF
 qCuCL4PKAO3hL6jqm5peuzVj69VP64wtkL/eTdM7KKlJDTczayTs3A6DMsI9lRzmA7Ro
 w63A==
X-Gm-Message-State: APjAAAWTEdsoaCfLa1vBLhPyuzgRQw35FJ8aGRWduCgpvWjMqcy6TWNi
 T7YrobqhUcuRzq8O/y3mjZo=
X-Google-Smtp-Source: APXvYqwzmN2dNDKDPwprqjYoy3wHRxeIo1QTGdy8Nrs8WKG2CT6K8e2fuBfcpdmu4anfHjvkmdpjJQ==
X-Received: by 2002:a17:902:6184:: with SMTP id
 u4mr2301682plj.216.1582704644297; 
 Wed, 26 Feb 2020 00:10:44 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.43
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:43 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Thierry Reding <thierry.reding@gmail.com>, Sam Ravnborg <sam@ravnborg.org>,
 David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Maxime Ripard <maxime@cerno.tech>, Chen-Yu Tsai <wens@csie.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@siol.net>,
 Torsten Duwe <duwe@suse.de>, Icenowy Zheng <icenowy@aosc.io>,
 Heiko Stuebner <heiko.stuebner@theobroma-systems.com>,
 Stephan Gerhold <stephan@gerhold.net>, Mark Brown <broonie@kernel.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>,
 Samuel Holland <samuel@sholland.org>, dri-devel@lists.freedesktop.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 2/6] drm/bridge: anx6345: don't print error message if
 regulator is not ready
Date: Wed, 26 Feb 2020 00:10:07 -0800
Message-Id: <20200226081011.1347245-3-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001045_305939_7F59723B 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [anarsoul[at]gmail.com]
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
Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

We don't want to print scary message if devm_regulator_get() returns
-EPROBE_DEFER

Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
Signed-off-by: Vasily Khoruzhick <anarsoul@gmail.com>
---
 drivers/gpu/drm/bridge/analogix/analogix-anx6345.c | 8 ++++++--
 1 file changed, 6 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
index 0d8d083b0207..0bf81b9b5faa 100644
--- a/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
+++ b/drivers/gpu/drm/bridge/analogix/analogix-anx6345.c
@@ -714,14 +714,18 @@ static int anx6345_i2c_probe(struct i2c_client *client,
 	/* 1.2V digital core power regulator  */
 	anx6345->dvdd12 = devm_regulator_get(dev, "dvdd12");
 	if (IS_ERR(anx6345->dvdd12)) {
-		DRM_ERROR("dvdd12-supply not found\n");
+		if (PTR_ERR(anx6345->dvdd12) != -EPROBE_DEFER)
+			DRM_ERROR("Failed to get dvdd12 supply (%ld)\n",
+				  PTR_ERR(anx6345->dvdd12));
 		return PTR_ERR(anx6345->dvdd12);
 	}
 
 	/* 2.5V digital core power regulator  */
 	anx6345->dvdd25 = devm_regulator_get(dev, "dvdd25");
 	if (IS_ERR(anx6345->dvdd25)) {
-		DRM_ERROR("dvdd25-supply not found\n");
+		if (PTR_ERR(anx6345->dvdd25) != -EPROBE_DEFER)
+			DRM_ERROR("Failed to get dvdd25 supply (%ld)\n",
+				  PTR_ERR(anx6345->dvdd25));
 		return PTR_ERR(anx6345->dvdd25);
 	}
 
-- 
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
