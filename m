Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 070B513656
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 May 2019 01:48:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=6fE3v/NP3aDU9krijBI/prbudoLNikWJ69clomCx9PI=; b=S+W3SFi1ZGFm2J
	4d52XD2Nnh9AdcIei/aPWyHadiDwzKJZ/ser2JxZP75+k3xBtZiJ/T9I4/rO/Om9AJZEKO5STi7/4
	q6G1Jq5Mpo4kR1Gjn+hYHS/PZhCujKW9IEJcyQKcwJ9cPLZBnSzmllaoH70RHT5R1yfGMGRvTO614
	WOAuUUscgfRdEEI58BhRU1uhnOU9W709GgEHNM4un2elVrtcwO7AwvamU3XQBJAbUhHQ0GO/Fqhp5
	yoNFdwNxtDxg9PkOQlgdQEQrE+CLcBNT8uLmSe6lrwSAaTL6K6d98kCAmf0/ULEc65IuJaagm8egJ
	5Bp6DGxK4UbawbS9TXpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMhuq-00068J-3s; Fri, 03 May 2019 23:48:32 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMhui-00067E-Om
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 23:48:26 +0000
Received: by mail-pl1-x644.google.com with SMTP id o5so3410737pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 16:48:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
 b=RGP+SCYMLHEk5WjF+mHki7uJYv5LbeWl/W59ixEjp7SqRFxLYgdyeLFfNsh1I0z0mT
 cb/sCQwX3HTa38w/+UuVb9LXLRoXVIFbivcUH4aHmEsAorf62RmWtD+486wZ5IFXqkCK
 k4ZFTZOefUEJopS0g8GIGZg3EOG6KH+WOcI/s=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=PEbVvCDak8dCpI2HnTFwocIiYZvOr0ebCOGSVDXq9U8=;
 b=OqJAAPw8F8o0SyhfsE22tbDWeZOr2RIQ6S8f1ATjD1hvxwQFIlno1BjhgGBYyxYKLJ
 kbLsnpw/6wJx6143tYaOYZoMEI8Brk2++Egb1zBSLCdVULjj3cDhzboB5SKO/pYIN6Ma
 m/lId6J6jpgjrSAxzMM7kFxBfNyc+lgezU2ztryknhZh6TQPb8Auk2QCEBgR9UsfprFP
 NWea/OO6HGQiQIcTPT5CEeAM+2iOZvRu3igAKBJsQ+i8p/HhnwoyRqBzWjE0h/cROqrH
 b6tQkdu9YVmWBDmNTKGQcFrQaVBmQX0GzskPAXdSUT7TMxCijMZAaUjhVnUe34yOxto7
 4x6A==
X-Gm-Message-State: APjAAAUgp/6EKdI0MH8/jUtPvkGvz8EzaEicGPwdpXXIAcZOTN8gu2SO
 T1eR1O6LafXh5oyuqCgaOkuSbA==
X-Google-Smtp-Source: APXvYqxeKcjKarf8WpC7SOBVbIuTMoZDl+AyM8KJSHyTbJ15hk1FROhg2a9ECGzoKsHIXJxvHdpNjA==
X-Received: by 2002:a17:902:b703:: with SMTP id
 d3mr14041484pls.93.1556927303213; 
 Fri, 03 May 2019 16:48:23 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id p6sm4231875pfd.122.2019.05.03.16.48.22
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 03 May 2019 16:48:22 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] ARM: dts: rockchip: Remove bogus 'i2s_clk_out' from
 rk3288-veyron-mickey
Date: Fri,  3 May 2019 16:48:14 -0700
Message-Id: <20190503234814.230901-1-dianders@chromium.org>
X-Mailer: git-send-email 2.21.0.1020.gf2820cf01a-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_164824_830078_780D322C 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 amstan@chromium.org, briannorris@chromium.org,
 Douglas Anderson <dianders@chromium.org>, Rob Herring <robh+dt@kernel.org>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 mka@chromium.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The rk3288-veyron-mickey device tree overrides the default "i2s" clock
settings to add the clock for "i2s_clk_out".

That clock is only present in the bindings downstream Chrome OS 3.14
tree.  Upstream the i2s port bindings doesn't specify that as a
possible clock.

Let's remove it.

NOTE: for other rk3288-veyron devices this clock is consumed by
'maxim,max98090'.  Presumably if this clock is needed for mickey it'll
need to be consumed by something similar.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 arch/arm/boot/dts/rk3288-veyron-mickey.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/boot/dts/rk3288-veyron-mickey.dts b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
index e852594417b5..f9c4ece3c0d3 100644
--- a/arch/arm/boot/dts/rk3288-veyron-mickey.dts
+++ b/arch/arm/boot/dts/rk3288-veyron-mickey.dts
@@ -142,8 +142,6 @@
 
 &i2s {
 	status = "okay";
-	clock-names = "i2s_hclk", "i2s_clk", "i2s_clk_out";
-	clocks = <&cru HCLK_I2S0>, <&cru SCLK_I2S0>, <&cru SCLK_I2S0_OUT>;
 };
 
 &rk808 {
-- 
2.21.0.1020.gf2820cf01a-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
