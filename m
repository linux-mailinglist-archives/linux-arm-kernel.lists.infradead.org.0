Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 568B1E6D14
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 28 Oct 2019 08:21:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eTEnsacaUuv64fonBOanOAY+XIzWsR33KyFIDeG3Wqk=; b=N3gKhSK77dwYNK
	EyzcsGa8tiKbNgm4jmU+p55Szt9J6OdKxRxc+0E3x4ajAc3xFaF2lrTftNCM+YjS5o7+WYqsHdmQJ
	KErc9XhV8BJDfWAthKsRH0WEzXXwRp4rfozJQLOHV30fNLFe/VLYuazhiGjSb/TjzCa4LD0NAdhcA
	I9ShFWogLVXPR4f+Ub6nW7T+kbahSLJ8V+uF5zugQgjhKKBMZpmcojiZPvuJ0U0FMyfr9c9e6bcRm
	+qT5KtI0m8/CcvZjQz4s84GBnwvK7gDak9uKl7ye661ETAQS7u4it+WvS9qFKrL17/nKyhr4OVRmp
	z81XjdyeWkww6KWUeRIQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOzL2-0006S7-Kc; Mon, 28 Oct 2019 07:21:16 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOzKm-0006PS-1R
 for linux-arm-kernel@lists.infradead.org; Mon, 28 Oct 2019 07:21:01 +0000
Received: by mail-pf1-x443.google.com with SMTP id u9so1568128pfn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 28 Oct 2019 00:20:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=2B2ccVWNv2j7+/d4B7YKqZ8gCfpCMSxayY7L9g0kOPM=;
 b=HfeGmQVGeCotDSEIC2+EPqxjUZiFb6AMi1k5sTZJi/m46coFpAY9tdk6wLR6YsijdN
 bAHb+Lmgn+Np7i5yEzDTx8O5UYxOREy51lzOXKcD2pq7DwjUM+wo0GVeTj+bGIJC8v4n
 3WJi68+vvMUxY7dKw539iuLRzhUbJBLmZPIAU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=2B2ccVWNv2j7+/d4B7YKqZ8gCfpCMSxayY7L9g0kOPM=;
 b=YEnF+VMx1LGpDOr2eDrH3VYYvcxQsgHFR0SCRgqjH0lbyKmUu1mjM+hrls50z2Dt2I
 gAl3O7KZWB1lO7wg9jGPscJ6I29PMSCSO4WW48MnEH0CXbJX5kdJGHjFp5jlCo784WZx
 /GNnGxbg5l5mx3X0Dr7ekPnuSCoOjPDqiuDNTcyeKlnN/wzRdsc/MRcJ4h8cg2sBaZGf
 d3dXECUsHkLxRZ+6dNPXQWEEum2qcLpazackfak5N7IL3nvUmCJGZsXRLxrHP4vEGkD8
 y88pMSzT7vjgD/jHWTu4cCDsGyrvyAT63coCkUZGyyIAIiJuw6+RousOS8aR3AE/UB+i
 iKzQ==
X-Gm-Message-State: APjAAAWzFnJNGxXDjzI6gVBQL18Al3gdMXRBzFkS931ob7W+n0wvho5U
 DBdwmZQBYN7wSdVmZenmP0Jkhg==
X-Google-Smtp-Source: APXvYqxOOfKgzUuiw+4gq3DdkbHGmJjTwiVoT2so9rPzmlcr7wli/aEgCmP0/huEUSTQC3mCW+zoZA==
X-Received: by 2002:a62:30c5:: with SMTP id
 w188mr19170809pfw.105.1572247259280; 
 Mon, 28 Oct 2019 00:20:59 -0700 (PDT)
Received: from localhost ([2401:fa00:1:10:79b4:bd83:e4a5:a720])
 by smtp.gmail.com with ESMTPSA id l11sm11260152pgf.73.2019.10.28.00.20.54
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 28 Oct 2019 00:20:58 -0700 (PDT)
From: Cheng-Yi Chiang <cychiang@chromium.org>
To: linux-kernel@vger.kernel.org
Subject: [PATCH v9 2/6] ASoC: rockchip-max98090: Support usage with and
 without HDMI
Date: Mon, 28 Oct 2019 15:19:26 +0800
Message-Id: <20191028071930.145899-3-cychiang@chromium.org>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
In-Reply-To: <20191028071930.145899-1-cychiang@chromium.org>
References: <20191028071930.145899-1-cychiang@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191028_002100_092549_E8D3FEC7 
X-CRM114-Status: GOOD (  12.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, alsa-devel@alsa-project.org,
 Heiko Stuebner <heiko@sntech.de>, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 Liam Girdwood <lgirdwood@gmail.com>, Hans Verkuil <hverkuil@xs4all.nl>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Jerome Brunet <jbrunet@baylibre.com>, Takashi Iwai <tiwai@suse.com>,
 linux-rockchip@lists.infradead.org, dgreid@chromium.org,
 Cheng-Yi Chiang <cychiang@chromium.org>, devicetree@vger.kernel.org,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Russell King <rmk+kernel@armlinux.org.uk>, Rob Herring <robh+dt@kernel.org>,
 Jaroslav Kysela <perex@perex.cz>, linux-arm-kernel@lists.infradead.org,
 Jernej Skrabec <jernej.skrabec@siol.net>, dianders@chromium.org,
 Mark Brown <broonie@kernel.org>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add one optional property "rockchip,hdmi-codec" to let user specify HDMI
device node in DTS so machine driver can find hdmi-codec device node for
HDMI codec DAI.

Use the presence of rockchip,audio-codec and rockchip,hdmi-codec to
specify the use case.

Use max98090 only : specify rockchip,audio-codec.
Use HDMI only: specify rockchip,hdmi-codec.
Use both max98090 and HDMI: specify rockchip,audio-codec and
rockchip,hdmi-codec.

Move these properties to optional because they are not needed for
HDMI-only use case.
"rockchip,audio-codec": The phandle of the MAX98090 audio codec
"rockchip,headset-codec": The phandle of Ext chip for jack detection

Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
---
 .../bindings/sound/rockchip-max98090.txt      | 27 +++++++++++++++++--
 1 file changed, 25 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
index a805aa99ad75..e9c58b204399 100644
--- a/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
+++ b/Documentation/devicetree/bindings/sound/rockchip-max98090.txt
@@ -5,15 +5,38 @@ Required properties:
 - rockchip,model: The user-visible name of this sound complex
 - rockchip,i2s-controller: The phandle of the Rockchip I2S controller that's
   connected to the CODEC
-- rockchip,audio-codec: The phandle of the MAX98090 audio codec
-- rockchip,headset-codec: The phandle of Ext chip for jack detection
+
+Optional properties:
+- rockchip,audio-codec: The phandle of the MAX98090 audio codec.
+- rockchip,headset-codec: The phandle of Ext chip for jack detection. This is
+                          required if there is rockchip,audio-codec.
+- rockchip,hdmi-codec: The phandle of HDMI device for HDMI codec.
 
 Example:
 
+/* For max98090-only board. */
+sound {
+	compatible = "rockchip,rockchip-audio-max98090";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,audio-codec = <&max98090>;
+	rockchip,headset-codec = <&headsetcodec>;
+};
+
+/* For HDMI-only board. */
+sound {
+	compatible = "rockchip,rockchip-audio-max98090";
+	rockchip,model = "ROCKCHIP-I2S";
+	rockchip,i2s-controller = <&i2s>;
+	rockchip,hdmi-codec = <&hdmi>;
+};
+
+/* For max98090 plus HDMI board. */
 sound {
 	compatible = "rockchip,rockchip-audio-max98090";
 	rockchip,model = "ROCKCHIP-I2S";
 	rockchip,i2s-controller = <&i2s>;
 	rockchip,audio-codec = <&max98090>;
 	rockchip,headset-codec = <&headsetcodec>;
+	rockchip,hdmi-codec = <&hdmi>;
 };
-- 
2.24.0.rc0.303.g954a862665-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
