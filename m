Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB2119581F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 14:36:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=kIJEyVmCXzX4OBaonScNioJF+JTRFbw7u+SLL4vyp5M=; b=C8I
	VpGyr6f/EXufAIQcnbWqfeVssl3Oi0Vs2QUsqutx2tl+5GY2IBJ5Y23HlkX9fW3CD/HBAKkoaF2pc
	nFbQKI7G43GAl20GSGl8fGKPldOvsgeMmlZ/J/1xA7ajPwYgpGVJ/4VQMcscdoH6x5XkJMG7+09Jr
	reyQYmbyPDYuJAD5OmnShTlX4Z5u2ijiWKSth7DYOlI6vs04DlNZTdvBtcQ3oExx4dtET0tNR7xwi
	/uk7SPt/nFp9u2a4YYaNKTOLFgmbeOaS6Ymcnyqp0dP5INGRh7YDIcnAQWS/tdvYTPEeB5MWaXhfV
	JtWExwBOPo0tsJznpFw5dpPZ4aAmO4Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHpAJ-0005tt-6K; Fri, 27 Mar 2020 13:36:51 +0000
Received: from mail-qv1-xf42.google.com ([2607:f8b0:4864:20::f42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHpAA-0005tJ-Eg
 for linux-arm-kernel@lists.infradead.org; Fri, 27 Mar 2020 13:36:43 +0000
Received: by mail-qv1-xf42.google.com with SMTP id p19so4857648qve.0
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 27 Mar 2020 06:36:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=AuD1hP2SDvNnMIeBCx2+xXnWwBrp0PFdSYPVHiYwolM=;
 b=Yig7/7eC9ibhdFRjmZ17yEFzyHzA1GJlwGQjbMB4byzLgR3/GjaH4+zxBeAi5lSSDW
 A2ulmJPwU57I1jLrxtqiiT2OgKleReKob+JJbRt67V/Y3EdaS4J62YHMoTGrHDuBd3wS
 a1SkZT3HiK51FQ2jRpP7onIYXfWInAAu5aOTi3lz1Sgol4ew/HJt+KdEBonSYVOW/uhg
 f7rpOj3oqrIsaV4/vlUpFQo4efnqSUW+NyLgk3qYAlVHr4cPmsqMZnT/kKik3fDUjze0
 jVgUB+mb3J46eVDHSQscBVC0sKu7sVcKbxBvwrSmWHECDEH8WxK+BV9rOVp0Lc3lWga/
 JO3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=AuD1hP2SDvNnMIeBCx2+xXnWwBrp0PFdSYPVHiYwolM=;
 b=ijb1I/LJie06LHTU+GSJIXkZcDryASOrWFrq4dDwIAEVRUStk4DiFCPy2/GkTW+oV+
 /mFA3ggVXqysYk1SVs82nldzKiuohgKuQENPO9oVJAFItr+KdGPv8S5CaQ6HR8YG5blX
 /L0ivxtV9GQjtHRyJJ/2B/kU20Y60zeUOoyxkesQG3UnlHzE6BaGTB0HF6s6+/TnNxBv
 LLHjSA1KqFq6SCwCC9Fc06tu7uTB5iXlBAtJPwtwbg7s6PKUmFZ/2VGi8OcbC+85zAdX
 K50CeVwrnUkmWXvl7+6F2yBqstNsCKzJO75hq25yRjJv+CmfbrzN9pW2kENo0LCY9BQH
 I3kA==
X-Gm-Message-State: ANhLgQ1oJMEo35RV1A9k2yt9E2wMcrmbHsG4hh40H/WGHcNs4ymwrA7H
 stBiPdVWXVum771Nv0ryPQ8=
X-Google-Smtp-Source: ADFU+vu30tmXNyfs+zodPVKegK0hqcQK8mHj/c7276G9aRecJQr7qGE3V6lHWUFeelkYTU0yt/NL2w==
X-Received: by 2002:a0c:be08:: with SMTP id k8mr13727025qvg.62.1585316199854; 
 Fri, 27 Mar 2020 06:36:39 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:5bb::4])
 by smtp.gmail.com with ESMTPSA id d141sm3665317qke.68.2020.03.27.06.36.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 27 Mar 2020 06:36:38 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH] ARM: dts: imx27-phytec-phycard-s-rdk: Fix the I2C1 pinctrl
 entries
Date: Fri, 27 Mar 2020 10:36:24 -0300
Message-Id: <20200327133624.26160-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200327_063642_491077_8BA51C4C 
X-CRM114-Status: GOOD (  10.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:f42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [festevam[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: s.riedmueller@phytec.de, stable@vger.kernel.org, kernel@pengutronix.de,
 c.hemp@phytec.de, Fabio Estevam <festevam@gmail.com>,
 linux-arm-kernel@lists.infradead.org
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

Cc: <stable@vger.kernel.org> 
Fixes: 61664d0b432a ("ARM: dts: imx27 phyCARD-S pinctrl")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
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
