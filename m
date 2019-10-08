Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CE0CFEEF
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 18:30:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=Zy7HleVomWCbQAoehoO57oOK3gm1GVySoQCcrr2dGQk=; b=mxo
	DRMGvSqa3l8XMhitxbXJBQLE5j9CZVIBsQQT9YGtuKiqqK07rSL0LajXmIXtF/7th7z+ZaeezBWJo
	haL0rWS4awWpZv6jlQ8JQE1nEDxF/z7x0+cfNmOt9ndcqB7qz+kZJfl2NkHYvvwWLR2ywAKF23DQx
	ciGk0pHFeAoxnPH/TXDN98Qr/Y0e/oeM51JSSXXnLX/8MWwPtzcHpx2/IMJcgAElRtlVtTrahQyLI
	r38hJwgPyXOtOoYI+7RBiIiKdYpgqgbpUyxCqNUgh8DL2188JeZLVKeoCseex84u2V0Kv3hawA+Bq
	qH2zXCtPj6JTBt+fcgUKPJBiCQ9NQEA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHsNp-0000Vd-RD; Tue, 08 Oct 2019 16:30:45 +0000
Received: from mail-qt1-x841.google.com ([2607:f8b0:4864:20::841])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHsNj-0000V8-DD
 for linux-arm-kernel@lists.infradead.org; Tue, 08 Oct 2019 16:30:40 +0000
Received: by mail-qt1-x841.google.com with SMTP id v52so3448902qtb.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 08 Oct 2019 09:30:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=8WXHh54vg73zK/T5qll7qN4bV2L0in4IabphFRW+JbQ=;
 b=QtS5gSxRqikGFEUoSnF7yEnT6NyuAhTvvY0JCxPiz2k00meOUnqWpI2WZwP5CUiMDa
 sHRig8E5vy6lgOk6Oe0I88zoKts8QTA3XC+9fT8FAF9SLLUatC03cWt9GZD6jea+x9lT
 rDAzkU9AyDR4sQ8lAv7Y1ogg88s0sH14APN/Hui2DFdbz74SmIb3LyKAGKfZMR/wLr7U
 NbKOAqmtqIXlA4Rxe+tx9UJOVqCZBtJraX1iar7kTjQ68AGWPaDo1x778/mgsyLpUDyQ
 w9dAV5sHKrusgc67jn8abx1PybrX0njQa87cDmnRCRWSewXbB1ENROPlNfxxrgzk8ib1
 p7jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=8WXHh54vg73zK/T5qll7qN4bV2L0in4IabphFRW+JbQ=;
 b=Mm0R1YiXAiimfO+/BbN7fctKMqL3qSPi/PltbosHb9KPZEin/ryLX4cSHJ0IuLlo8n
 JuSLGdwwBhLeCo2yTNE5aWx67Zud0Sab5hef/zVKC4IQxpVpqKueXljQkhjhYuWwXP5o
 sdBfmWpJswaC7JLHObg6KE1uyez9hRxH5K12Yqlhzlfi0OMaVRL/wbg+OZtfAbOkM72w
 5sjb1d/hr+1rLSyReHEg3r1TEMYBZD0nZ4kB9gcWjlNstokXK0l6AytCanqFJ4q82qp8
 gAcb30kyV+pT6PQXrUW0+b9eXlIaDKHTr2DXhcIQsEgVXWVy/iEhNUqZS1zd5HhJ7g6F
 Wwwg==
X-Gm-Message-State: APjAAAUprYvF9sC0D/a4De03kBI/EezkWus6iKMW7sOekNfQcf1135/7
 Hdnhv6g8FARQ64HVAJx3yY0=
X-Google-Smtp-Source: APXvYqyaCsQR5m5KlNrT5kS4sKCroRdTXXSSMzsPzpFdCsgG0ujSwgoYQwQDBzqoub3Y2DniaxsCdg==
X-Received: by 2002:a0c:ea92:: with SMTP id d18mr33361854qvp.112.1570552237362; 
 Tue, 08 Oct 2019 09:30:37 -0700 (PDT)
Received: from fabio-Latitude-E5450.nxp.com ([177.221.114.206])
 by smtp.gmail.com with ESMTPSA id 200sm9839709qkf.65.2019.10.08.09.30.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 08 Oct 2019 09:30:36 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx6q-gw54xx: Do not use 'simple-audio-card,
 dai-link'
Date: Tue,  8 Oct 2019 13:30:24 -0300
Message-Id: <20191008163024.17703-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_093039_447065_7D08B816 
X-CRM114-Status: GOOD (  11.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:841 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Tim Harvey <tharvey@gateworks.com>, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

According to Documentation/devicetree/bindings/sound/simple-card.txt
the 'simple-audio-card,dai-link' may be omitted when the card has
only one DAI link, which is the case here.
    
Get rid of 'simple-audio-card,dai-link' in order to fix the following
build warning with W=1:

arch/arm/boot/dts/imx6q-gw54xx.dts:19.32-31.5: Warning (unit_address_vs_reg): /sound-digital/simple-audio-card,dai-link@0: node has a unit name, but no reg property

Cc: Tim Harvey <tharvey@gateworks.com>
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx6q-gw54xx.dts | 19 ++++++++-----------
 1 file changed, 8 insertions(+), 11 deletions(-)

diff --git a/arch/arm/boot/dts/imx6q-gw54xx.dts b/arch/arm/boot/dts/imx6q-gw54xx.dts
index ecc3989f607b..d5d46908cf6e 100644
--- a/arch/arm/boot/dts/imx6q-gw54xx.dts
+++ b/arch/arm/boot/dts/imx6q-gw54xx.dts
@@ -15,19 +15,16 @@
 	sound-digital {
 		compatible = "simple-audio-card";
 		simple-audio-card,name = "tda1997x-audio";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,bitclock-master = <&sound_codec>;
+		simple-audio-card,frame-master = <&sound_codec>;
 
-		simple-audio-card,dai-link@0 {
-			format = "i2s";
-
-			cpu {
-				sound-dai = <&ssi2>;
-			};
+		sound_cpu: simple-audio-card,cpu {
+			sound-dai = <&ssi2>;
+		};
 
-			codec {
-				bitclock-master;
-				frame-master;
-				sound-dai = <&hdmi_receiver>;
-			};
+		sound_codec: simple-audio-card,codec {
+			sound-dai = <&hdmi_receiver>;
 		};
 	};
 };
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
