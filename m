Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD54F124D9
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 00:55:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+IHr/T6DSDwd1zs6reiVGU1mXo7rP1plfQ/XkoetsD0=; b=n+XVEAX3t0zBh5
	r2lPmXOC9BSC26ZPiDZqZ7hBIVCwd6nmklRhTmq3bMVYQF2uvLt1k0CE/D104CPGUUGeXd97elUhN
	FjsJU5HkB8U/+Ydj6ZhsB2Bgp2NviLWpgTA/U0+ZAgaL0sQjKEkGkxuMB5F/drNBHRCZ1Iba6q23d
	hOGzVafh1xS/oVlkErdq0EGuZbMImN0pjHgZ6jRijGF75fIKeqDxGMGwYXWndeakTH1fAcITtNivQ
	4AYS71Q6EYGmpRO/Ds5+UYwhIswgHOcECWJYhwwvJ2yPSDKsNDZix+ElDHBaea2xAFtTZD0UP5apv
	09KZW77eemtLCTlqYbrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMKbn-0006Xc-7u; Thu, 02 May 2019 22:55:19 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMKaz-00055s-Bq
 for linux-arm-kernel@lists.infradead.org; Thu, 02 May 2019 22:54:33 +0000
Received: by mail-pf1-x443.google.com with SMTP id j11so1833913pff.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 May 2019 15:54:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
 b=VgR98wkKNANONfnbGrr9lcgFpOWUbpb8QW082Rc0rd/NK6ECJCvh6hOqvAFNGLwSuu
 a8kF9gsAk1gebx8VNGwe5TlF2czJn/t03cJrXt1krC8478dvOLahHngkZ6ZhXYl2ShXg
 ySGidUHXGZuJTt2LfafwCVBx7w9d6c5+uFKhw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=CT2YSqm9uY9lqkZxGu6xlzES7pBl2nIZjVIbCk84sRc=;
 b=udPSMM5GipyFqA4PhUv/gJIYiX6A/kk8YVhl7obOoHW42boovgDgjpsyxvvNGZYUEx
 LP83bLsKz5Vh25EgsRLhhmwoj/ex08DDm5PEWKSpH4Pu2xyA54EK6y9JE4Oc8J+BzB9d
 01g0fTdysKQ3t6QIM75QZ/nNop5cKilINVbtS1Lm22EtTWHImty1rcd2t7tEB5v/txhG
 gsddHzYrAKJdEt6G7lVz3W0+r3NV493rewCNjdqPNz+9n+ojAjyW9oHyDok8BlHscqUD
 v1eFs8rZrFmxYg6K53QiKha5NvE4Ra7h/yocvZTyYQgtbJODScot0RQPDXVvlLAgKjwq
 RtjQ==
X-Gm-Message-State: APjAAAVb7haSNvt7T1RNGPGkHjaG+mvRknfdyIvTTACY94HYkhV5smDg
 As3xAjVpRDf2eCNo0gRhBjT5kQ==
X-Google-Smtp-Source: APXvYqzTiOjbZQBE1y3q6em7X3hoV/eO9e264Ryqoxbr49JQ0+yN737erpxGaSnUtNHQVlpHiZsYFQ==
X-Received: by 2002:a62:164f:: with SMTP id 76mr7040966pfw.172.1556837668900; 
 Thu, 02 May 2019 15:54:28 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id v15sm264736pff.105.2019.05.02.15.54.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 02 May 2019 15:54:28 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 5/5] ARM: dts: rockchip: Add HDMI i2c unwedging for
 rk3288-veyron
Date: Thu,  2 May 2019 15:53:36 -0700
Message-Id: <20190502225336.206885-5-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
In-Reply-To: <20190502225336.206885-1-dianders@chromium.org>
References: <20190502225336.206885-1-dianders@chromium.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190502_155429_614180_723A4C1D 
X-CRM114-Status: GOOD (  14.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Neil Armstrong <narmstrong@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, mka@chromium.org,
 Sean Paul <seanpaul@chromium.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Veyron uses the builtin i2c controller that's part of dw-hdmi.  Hook
up the unwedging feature.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron.dtsi | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron.dtsi b/arch/arm/boot/dts/rk3288-veyron.dtsi
index e1bee663d2c5..340b276b6333 100644
--- a/arch/arm/boot/dts/rk3288-veyron.dtsi
+++ b/arch/arm/boot/dts/rk3288-veyron.dtsi
@@ -163,8 +163,9 @@
 };
 
 &hdmi {
-	pinctrl-names = "default";
+	pinctrl-names = "default", "unwedge";
 	pinctrl-0 = <&hdmi_ddc>;
+	pinctrl-1 = <&hdmi_ddc_unwedge>;
 	status = "okay";
 };
 
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
