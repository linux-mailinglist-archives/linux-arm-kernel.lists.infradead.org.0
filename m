Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08CE0B7B45
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 19 Sep 2019 15:56:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7F5yOUi9BNr9Ys2Eufy0xQOOvXE5P+Oc4NTzp8EcdgM=; b=GMfzorqh2FqDN1
	qBB8qv5a/Rj1Pot6xN8tCiLfEA/Dq0szPewZKgrQc99ZEHve9rcxZoKWsSgydHvlpHaqo1M5spsyV
	4AzhnKrxud58aOf2wZZGrhT3IyrtAIXFVNi0Gz09xGc2RqSHbkJ4/WSxnDWT4HJ71FyHgQRJ5L4Yn
	U6FTYcYmDR7I61woZHvw4M0+y8FwseHMdNzWKg/HNrnGJ3GLywft27ydANZvw1dYUzkiTPJFwtT4k
	gySZHipR0+MO5Rz2DxEnoKMZxVy5RH84euLE+/i8FhtdnaMAxpyqIMh2MH8kQp/BHkIoI2tbFAjmj
	U/Ww4PTwSBP8tgK42B6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAwum-0002F0-R6; Thu, 19 Sep 2019 13:56:08 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAwu5-0001pC-6D
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Sep 2019 13:55:28 +0000
Received: by mail-pg1-x542.google.com with SMTP id n9so1980103pgc.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Sep 2019 06:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=hcI+2qu3SHO1kkNhBRtR499gEhJVXFuDOb0iaJPJu1o=;
 b=iWJDh8AorH8nEJumZm/WKDcQuo+qYc151hnc2ynZHB08lu8t45FcSFc3XK8W4mnp1c
 T3000UZZfeJmfDdnixCbXHBmimTrjln/Z/hDuuTKRAyWMnJ9IL3M2Pgs8uVYZ8Okmtj9
 olBky5YGCY5LZ6wfafMKw7O8qXwRl3ZWMAZ34=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=hcI+2qu3SHO1kkNhBRtR499gEhJVXFuDOb0iaJPJu1o=;
 b=B2itDmNkHaaa+dz80+GnrlMIKi6M0jAWOYD+KE0adSh/LNd49HAPkTnlNUJYem5La+
 +Y6O8Do3oNnrWZHwQySem2rTIy79e9xDJfTGoNUcVuu0t4IUscZEqr9psHW/FURlA7rH
 ic5BGD1zTSHDvA1GHeagtP08ijKdz7iZazP2Tx61C3c2+btFJphdu8xZUG5DjWjwZzs2
 ltM6xEOT8IyFmb264dXICdZjptsw/9uxkKjQDnpG4RZmpYRTjNOhmiIPUW6Axhp33+VH
 BleBHBXv/P6DNuNy6fQMDJwnwNkhiJBLA9PK8/oc/JJ40cJwOAMcLMK4rxJ5Qab6+wA0
 HTRA==
X-Gm-Message-State: APjAAAVkYksfNfe+03hfpXB6Gp0ukHl8xK3yCZkndpBR6HNyMs2GrAMX
 U11kG8SVfEUpMCiwSWIj41DHFmEv1kc=
X-Google-Smtp-Source: APXvYqxyO8jD+PyDoTHkQIAYtp40Pex0/Mt27q7YWzADpFPuYqtJNqaFngWeKrfqiIca+BqjDGsIqA==
X-Received: by 2002:aa7:8acf:: with SMTP id b15mr4201816pfd.191.1568901324804; 
 Thu, 19 Sep 2019 06:55:24 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id q88sm6395907pjq.9.2019.09.19.06.55.20
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 19 Sep 2019 06:55:24 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v7 2/4] ASoC: rockchip-max98090: Add description for rockchip,
 hdmi-codec
Date: Thu, 19 Sep 2019 21:54:48 +0800
Message-Id: <20190919135450.62309-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.23.0.237.gc6a4ce50a0-goog
In-Reply-To: <20190919135450.62309-1-cychiang@chromium.org>
References: <20190919135450.62309-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190919_065526_068482_7720FEB7 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: alsa-devel@alsa-project.org, Heiko Stuebner <heiko@sntech.de>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Liam Girdwood <lgirdwood@gmail.com>,
 Hans Verkuil <hverkuil@xs4all.nl>, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Russell King <rmk+kernel@armlinux.org.uk>,
 Mark Brown <broonie@kernel.org>, Jaroslav Kysela <perex@perex.cz>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 dianders@chromium.org, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add support for HDMI codec in rockchip-max98090.
Let user specify HDMI device node in DTS so machine driver can find
hdmi-codec device node for codec DAI.

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 Documentation/devicetree/bindings/sound/rockchip-max98090.txt | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..97fc838458f7 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -7,6 +7,7 @@ Required properties:
   connected to the CODEC
 - rockchip,audio-codec: The phandle of the MAX98090 audio codec
 - rockchip,headset-codec: The phandle of Ext chip for jack detection
+- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec.
 
 Example:
 
@@ -16,4 +17,5 @@ sound {
 	rockchip,i2s-controller = <&i2s>;
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi-codec = <&hdmi>;
 };
-- 
2.23.0.237.gc6a4ce50a0-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
