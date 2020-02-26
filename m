Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEADD16F941
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 09:11:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ifkHwwwyIAcS8LX6zs1w9giDBKxk8pj28d5xFaSqglI=; b=NC4UyvmJVZ+ONg
	/A8ilsjAqJhTC8MaSgpoj5PtQJbjPjlGZbanGvdYADstThCTcDhB3JaTr2OpYD33lkNLcdv3ZAFU1
	AnTRQtFkgWzjhjePM/+S5KOVHoA+qgME1ZirVrirqulkCrnzlqwzoiHVRrDfuHasnmHQwywjthV7j
	YdAJTaGBt4B1YcxalS0NJ/TxVgp9YQPaYDxGqSOsNp47p74ZAcpJDWq97X+gphoM7A12wMy26ox/j
	WPKddrvS+kU9biyMlV3E+7B7WhC9rsjcoKV06vcNFxG9AOkucLtbaYHij3lcWbV4LiBm9CvzrzZch
	l27BRKyW2mKvnJLBHRvA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6rn3-0001N1-DB; Wed, 26 Feb 2020 08:11:33 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6rmH-0000rr-Ht
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 08:10:47 +0000
Received: by mail-pg1-x543.google.com with SMTP id y30so910400pga.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 00:10:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4KM0r5uD7rljHPdtJuNxVsZCmDnwVuLvCzxfAh27Klw=;
 b=dgRS/obec3aOByr8PTKvXVfLFPdY1OXcSqqEUuyzPCu3aykdzkVOJ72/vImDdDvwYy
 u6HGV4iMY1+UU+6DDHioTxtUmpb4PL1lZF9mvbpeFOT35Mv2rS6loQXlTy5PFr/ULB4B
 lWV4RthTKBuPwRIoUJkcrsrmXJSZo5zuYr9Oo1NFcrbFmqPY68uGSvIhMKxSZsO769hX
 ujP/inLHS1BnYoTZvXdKpMKWCie+TcW+f6ic+DwM5gEVUlvh2oZnE/KN+Mq3UuB1youB
 dUl46XZqucP07YZ37nkUhsXFZn5UiopzPt1a6mWynNd4vdD+LEgxQgd3WURCof44zIb4
 ifRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4KM0r5uD7rljHPdtJuNxVsZCmDnwVuLvCzxfAh27Klw=;
 b=LMuXV8i7l22WzitvvRZD61Yrkp8uF0h/+ejHJuZCCukaTOB+9bsZ6+6Gh4N2P1IrBu
 nKDyKfhOFo28xZ56hDPQH1/OkI8LwHx/uVFrbpJYszeamkklpekkRGKRK/5RpRk81oXd
 fxUgtGCJouVC9bdOFBbRecr5EaD6j0hRl+hHzXwNsO68r0z0xtmTprbGHHjgJCjQ37ur
 eNaxd2pBwU6H8OtmXgRNzLbKnmqv+E8P125dUWGYfLLS53dGM1WiQZsaDY1s8fbeI28J
 mRFdXfpF9fU5HDIdzp3TUSTV5OiPKIB/7J1z191AHWnqQ3DZQaaFkMpdInNTq3tBZNxf
 bsMQ==
X-Gm-Message-State: APjAAAXRf2LNxHyoVBoE3gnXd8gwgTMib7VQTV+LLhFEVvw+kWaBJjVB
 ANMsOuSPjpCbvB3mXZuD+oc=
X-Google-Smtp-Source: APXvYqyQjLc15uh0MUo/Upb22dso+icknd9LfH39mfhW5X2d4U/9EURWB7pcI9luJw0/E5sOA2wZ5Q==
X-Received: by 2002:a62:3304:: with SMTP id z4mr2893899pfz.79.1582704643017;
 Wed, 26 Feb 2020 00:10:43 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id v7sm1679230pfn.61.2020.02.26.00.10.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 00:10:42 -0800 (PST)
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
Subject: [PATCH v2 1/6] drm/bridge: anx6345: Fix getting anx6345 regulators
Date: Wed, 26 Feb 2020 00:10:06 -0800
Message-Id: <20200226081011.1347245-2-anarsoul@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200226081011.1347245-1-anarsoul@gmail.com>
References: <20200226081011.1347245-1-anarsoul@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_001045_589863_8FCB25B5 
X-CRM114-Status: GOOD (  12.63  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
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

From: Samuel Holland <samuel@sholland.org>

We don't need to pass '-supply' suffix to devm_regulator_get()

Fixes: 6aa192698089 ("drm/bridge: Add Analogix anx6345 support")
Reviewed-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
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
