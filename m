Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E18981CFF67
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 22:35:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=bm8xxeB9Bq7sl2gCE/JJt53WDorVQjdi148TLopW0hc=; b=IXX
	gHA2k/9qgOU62SVuAIllT3XXpcE3OLlFhD3YoR6atcBlVuJ2jRzw0FKkIlI+U3F+Y5Y8YmGe3Vu0M
	Sx/XxImsccOiuE251FTZ6XxDth/+Y3CB/GWnxux7dXTiSSg0K332AMRe5orPy/p45Ilk7ELFoSnya
	ZkBXCyeC17fVkJPtzr7PyqKBgxUfxvDvpgzOU4LSSQzNJxLGsTISP6iPxDNOD8Ty0PTyMmcY3KlnE
	c4uw9nsCfGsW43LH25qUivd0UCa6sRaVOg22YvHX1O6EI6lT6Z1r/+BLMOQdH++m7tPssvtmC4yCk
	JP9ybX2hWmbsT+VtOV/6hLHG/zC+Ntw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYbcx-00064k-Qj; Tue, 12 May 2020 20:35:47 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYbcl-00063e-T1; Tue, 12 May 2020 20:35:37 +0000
Received: by mail-wr1-x443.google.com with SMTP id l17so3975282wrr.4;
 Tue, 12 May 2020 13:35:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=I9uvG2eCuivrXNCRIMZW/mu9KPh6v7hx44Xi50W3e7M=;
 b=SIYsMCCpNn9yTurKHtC9iaFOvGRu2pSw4QAtSl6kVos739KlbXvBFbl6wwuJYTfwfh
 Qrfz2hCU+q8L58f4ZFCWTKAyn83O5P9Z/WnrtTMP1/3rb6geJNlw4kiBzQXvOav7indi
 az5I2I8lUCLDpd+TB9b94PKqgdReAg02RWeXZiMqjU9mQjDJHQuueFZvdbPNMhi8mQpY
 jD2a86Mwd1cocsWcImudYIrO78SMZR8GLP1Z9b+KqouGHYmiHNj+WXNEYVTpnYPa1ORP
 AqijUUxHr2gAwe0Wa3ORtu8tZ3i2G57v9VxHMieGZcuh96NFSBYe7oUkewZMYPTyzocO
 iFxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=I9uvG2eCuivrXNCRIMZW/mu9KPh6v7hx44Xi50W3e7M=;
 b=ef1LdCruJiyyqiOJoXZbuqJQOGtQffvd450GRAnfTtsl3hFvGBZMoicuyicTI9zheD
 tqAdapiIsvIOuLOZGnb3DJblNTYtYLmfx9JZkR3GXiqC6dgza5iGYH47/5VRFQVyZTru
 IbJqrHGWiCh4HCfUgLbG2CTyUnSkRbtX5kvgOox2AlWmRh1cVCNW13WkJWX5o1xpnA8S
 noe7kusDiSaSgZ/EqBTQEbBLVq4LnYQ2heLj6o0wz8LbAV4IkFzkfQ3UHNxqUU5HdOAa
 22d8kiutZmtLW+jLS+8bqntoE8kDp2EDfeaCXZ4r8k+sCaUVIkRwxymvx9zCt94W0VK+
 B3rw==
X-Gm-Message-State: AGi0PuaaxZ4sGfcMvf/+3ISwb/nZj1MbLaiy0AMnoS/+ICDsFTNopm4e
 G4B5PQn0PHl61Z2nN45/0wA=
X-Google-Smtp-Source: APiQypKWLZsLTHLSTYERhLF5tW5EgNJ4+bDKF6Dsed3mTcw4kEbRCC24LhQ+8c+LiLB3dde9aQzP6Q==
X-Received: by 2002:adf:ecc3:: with SMTP id s3mr18769535wro.301.1589315733685; 
 Tue, 12 May 2020 13:35:33 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id k131sm418219wma.2.2020.05.12.13.35.32
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 12 May 2020 13:35:32 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 1/3] arm64: dts: rockchip: replace RK_FUNC defines in
 rk3326-odroid-go2.dts
Date: Tue, 12 May 2020 22:35:22 +0200
Message-Id: <20200512203524.7317-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_133535_937020_D0D31486 
X-CRM114-Status: GOOD (  10.16  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
 linus.walleij@linaro.org, linux-kernel@vger.kernel.org,
 linux-rockchip@lists.infradead.org, robh+dt@kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The defines RK_FUNC_1 and RK_FUNC_2 are deprecated,
so replace them with the preferred form.
Restyle properties in the same line.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index fe253669b..46826b6e2 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -543,18 +543,15 @@
 		};
 
 		soc_slppin_gpio: soc_slppin_gpio {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
+			rockchip,pins = <0 RK_PA4 RK_FUNC_GPIO &pcfg_output_low>;
 		};
 
 		soc_slppin_rst: soc_slppin_rst {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_2 &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 2 &pcfg_pull_none>;
 		};
 
 		soc_slppin_slp: soc_slppin_slp {
-			rockchip,pins =
-				<0 RK_PA4 RK_FUNC_1 &pcfg_pull_none>;
+			rockchip,pins = <0 RK_PA4 1 &pcfg_pull_none>;
 		};
 	};
 };
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
