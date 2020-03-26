Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64134194053
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Mar 2020 14:50:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=f9abQXMCHJxxmTePyO/nERF7oweF+r+BEzxz4hMlVkU=; b=hVx
	gLairYP3O+MvfMeZ0KWUaV8Qm4KByHN2RFtoehOq5j4gYC9I3V4FIWsPEppRzSulP9C+mIQlDp4FU
	1emcGRrcbPokBiLSPhJoLtatQZh4fVxYl/tPek2jfaTVuBZPeElIEPNFBfTwWV9Wi3pokDE2sVBgx
	6ZpA2k/IeSrjxa0s5UhTwWMGo4JpMP5SAv/OiJoBXIjPvplznEPGDF5AIpvr2e1b8X9tjputEEfzF
	+VodpBmh1+IcwCsp2W+0RwNpTlJiHHs8JprrkDiCCi6iLpMSdJu4aib5EHzsffhvNJjQMPGqI0W8i
	ssSREenRvoOeqWiBweVsFf4Rs6Ic36Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHSts-0002ZL-Cg; Thu, 26 Mar 2020 13:50:24 +0000
Received: from mail-qk1-x744.google.com ([2607:f8b0:4864:20::744])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHStZ-00025U-98
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Mar 2020 13:50:07 +0000
Received: by mail-qk1-x744.google.com with SMTP id k13so6418401qki.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 26 Mar 2020 06:50:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=0pLzXfJi9LlMFVE7Esy00Rw9tYZaCuA9gshtlzVvIO8=;
 b=pwdhwqTW0zm4xEsc0DD/pfatsNZmIGb51Fmj3tDNgMnJAcJs5rkfgba1zlAeii4/v0
 8qV/lmOSsP3YQAyMYnJ1iUN2n9S+g1AAJ7mrtM3VLla5znt6WireWKphbV7AhgJC0ULj
 mnZ2d2JoI4O7B0dUuX2ZdQ+b2DxToyTjEkn5ztyyDhhtvcUW6M6DDv6x032ROEnbsnR8
 FobernUt1IvlIitbBipUECS5j5gszSd0rwZY6wrL1z/d2NFLMVpSEGDr9KlIJxTY624r
 Mdjq5HBv7tu/yWOO310ZHREk8/TYZKqwcuFlwV0MpN/W7fC2iU5CbifqIueoKTv46qw0
 8a4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=0pLzXfJi9LlMFVE7Esy00Rw9tYZaCuA9gshtlzVvIO8=;
 b=N+U4Rn/H10PM8Nl65qdBVjPRP9J3NDl7vPqcjREcXPYdwSm090LPT8cdHsTdwOIIeo
 GrYeHyPmvEFE9qBMpXdlkZKrIoMeKvdrTZI18bxlpPsvs+bIgruqG6ieud597c7M01vp
 lOiHK+3Y/mJUwqVtW/57luhdiC974lAc1TiDn7qaezKppvzplvQWl9sG7oISCLXUOUKL
 pOaE8jAOGFHKn5C+b5YZMUH4944N7H6+XXLVEATDTH3xASXOiXuzFZRMVsO9pRa+G1FW
 xpXxiEuWnfG4xTLAXzWXjzwqh5Sk95vFujeXJECqsRskDVNH+oxKeeRhPrBvtaOUE6yD
 OV0A==
X-Gm-Message-State: ANhLgQ3Tcz15BG6+/4dvU6uV9voI/WXGXQbyNMmhVzw4wMWGzWQwTUL4
 VkI1OhDkFl7kVFkwtiX9R70=
X-Google-Smtp-Source: ADFU+vseBqP6siqGIv0yNdlm3aVk0MlNbtsgKQL19TGLELcnCDWw9voSgDp4l+OshtnahGFYfOYmsg==
X-Received: by 2002:ae9:edc4:: with SMTP id c187mr8266098qkg.369.1585230603621; 
 Thu, 26 Mar 2020 06:50:03 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:5bb::4])
 by smtp.gmail.com with ESMTPSA id e2sm1353925qkb.112.2020.03.26.06.50.00
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 26 Mar 2020 06:50:02 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [RFC PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1
 pinctrl entries
Date: Thu, 26 Mar 2020 10:49:56 -0300
Message-Id: <20200326134956.21868-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_065005_385139_8D0A1E1B 
X-CRM114-Status: GOOD (  11.51  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:744 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arm-kernel@lists.infradead.org, Fabio Estevam <festevam@gmail.com>,
 s.riedmueller@phytec.de, kernel@pengutronix.de, c.hemp@phytec.de
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The I2C2 pins are already used and the following errors are seen:

imx27-pinctrl 10015000.iomuxc: pin MX27_PAD_I2C2_SDA already requested by 10012000.i2c; cannot claim for 1001d000.i2c
imx27-pinctrl 10015000.iomuxc: pin-69 (1001d000.i2c) status -22
imx27-pinctrl 10015000.iomuxc: could not request pin 69 (MX27_PAD_I2C2_SDA) from group i2c2grp  on device 10015000.iomuxc
imx-i2c 1001d000.i2c: Error applying setting, reverse things back
imx-i2c: probe of 1001d000.i2c failed with error -22

Fix it by adding the correct I2C1 IOMUX entries for the pinctrl_i2c1 group.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
Hi,

I don't have access to this board, nor to its schematics to confirm.

Noticed this error at:
https://storage.kernelci.org/next/master/next-20200326/arm/imx_v4_v5_defconfig/gcc-8/lab-pengutronix/boot-imx27-phytec-phycard-s-rdk.html

Please help to confirm.

 arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts b/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
index 0cd75dadf292..188639738dc3 100644
--- a/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
+++ b/arch/arm/boot/dts/imx27-phytec-phycard-s-rdk.dts
@@ -75,8 +75,8 @@
 	imx27-phycard-s-rdk {
 		pinctrl_i2c1: i2c1grp {
 			fsl,pins = <
-				MX27_PAD_I2C2_SDA__I2C2_SDA 0x0
-				MX27_PAD_I2C2_SCL__I2C2_SCL 0x0
+				MX27_PAD_I2C_DATA__I2C_DATA 0x0
+				MX27_PAD_I2C_CLK__I2C_CLK 0x0
 			>;
 		};
 
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
