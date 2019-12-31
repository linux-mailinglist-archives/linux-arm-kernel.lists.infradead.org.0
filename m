Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33BBB12DABD
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Dec 2019 18:51:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=0YwWIiwDS5exKJRgLZHRcATkldo5BqQSKUB96tTElxo=; b=mYn
	tGLj04G9s/0T7yuMc0pz0qCJNpfztrtKybngzsvJdmwPtqJ3GbmmimVhGurEiqWnLasAzHNGl/94v
	M4ewnEXP7rDjPH3UfTTv5VOMM3chMxcc3aOqr8uVuG7lmzBmmLCy9HPCR/Pg1Toq2NeN++AhykpKt
	nZ0ejGbBIZviktYzDDXW3w+Bp7i7BFZgia1Qvn0k81nPBdby+b9XxrxpmCJxmUVqBokwdMGwVC3Vd
	j3p0e0yMozr6Qzh2G63qi3YLksWnKGIllWrVBg5OO5EKwmCDu7seUSB5fHtMOetPKD9ymhNCqGeM4
	w0JZwxIW/rNCdjaNTyorDwDovWNC+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1imLfo-0000zH-QR; Tue, 31 Dec 2019 17:51:16 +0000
Received: from mail-wm1-x343.google.com ([2a00:1450:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1imLfb-0000yN-SI; Tue, 31 Dec 2019 17:51:06 +0000
Received: by mail-wm1-x343.google.com with SMTP id a5so2339543wmb.0;
 Tue, 31 Dec 2019 09:51:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=y0pdQ57Bb9W+I4Zj4BKWjlPJ7whwXX8FpP+BQzBYj1Q=;
 b=Bo9vW1+RA/q7d+lcy1uwYlGUVDGh7sWMCl3rsaOYf1sDQAMuk6Dor0mEajYbtFA8e2
 Lbd49mdoAD9vQrCDZHu0ikN8XtoHeP6cwt/uG+hegNgV7SorWd4VfB1H7ewWI+JzW1lw
 oNBTUyHDUc+I/a8wbzeywYsCL+KEZnyr6qyufNZvc2oNDmfZc6+wt3yTMSLhWAzXPjk+
 siDPPIzlkmVcQaSJxMk8pop2kCRkHVGWgCIrU+TxhPWxa35Mdi7DRM85uwPggVESeGoQ
 ni4b+0X7stuCLXYlmMuvw2PUzNvFydGCmD/Y428nrHxDwRxAk6ChhoohizSRyhjiOtUZ
 lvwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=y0pdQ57Bb9W+I4Zj4BKWjlPJ7whwXX8FpP+BQzBYj1Q=;
 b=Q8gjEtbMc7jOzRKFnybZghe4dpShZoQFCHz6Ns5wEOJQgsQJhe25xPDc5+3HN1Ry/y
 gIPAFijCuwBUM7lJLeh4AxPTKetTZiBBFfBpFp9s8MGofi4vdNICnhQlSGJkzSU76i5U
 Ez5kY4r2bbBHqhfaZPfsamyVvCWMwKnQ3IyIfWRbysnLnB2/30VXkLvtFjjCnvjZ/usT
 gQiwrjYGJ8364IwPQXJ+wL/Tpwod8AqAhcGjz+zd5cRi6sQL/VYnpZz5vMYlNLN2s1y6
 USgyXHPAgzajoxVtHRVoMnaU+cL9hdMKGKuBplta8lQVtBXxhI4e8cXmPLMvuCi1SA1p
 clYA==
X-Gm-Message-State: APjAAAUPKXxqfZMiGoYOK8+Se3VLcohj+p2+AdpvXENSvh2Q6UuK50tP
 zsFNPQFLSu2rOiLwZpn0yZY41d29
X-Google-Smtp-Source: APXvYqyW4ZqDMLcL5CNxS1jGOCZ5Iry7mW4VKEeoQ6xK6eOsjz8+Hs4KoRx/pxnMg6Y0o953owMpSw==
X-Received: by 2002:a1c:e289:: with SMTP id z131mr5110036wmg.18.1577814660590; 
 Tue, 31 Dec 2019 09:51:00 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id f12sm3137706wmf.28.2019.12.31.09.50.59
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 31 Dec 2019 09:51:00 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: robh+dt@kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3399-hugsun-x99: remove supports-sd
 and supports-emmc options
Date: Tue, 31 Dec 2019 18:50:54 +0100
Message-Id: <20191231175054.4929-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191231_095103_938986_FAFA9126 
X-CRM114-Status: GOOD (  10.78  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, heiko@sntech.de,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The entries "supports-sd" and "supports-emmc" are not a valid Linux option
in relation with SD card or eMMC, so remove them.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
index c133e8d64..d69a613fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-hugsun-x99.dts
@@ -556,7 +556,6 @@
 &sdmmc {
 	clock-frequency = <150000000>;
 	clock-freq-min-max = <200000 150000000>;
-	supports-sd;
 	bus-width = <4>;
 	cap-mmc-highspeed;
 	cap-sd-highspeed;
@@ -572,7 +571,6 @@
 	bus-width = <8>;
 	mmc-hs400-1_8v;
 	mmc-hs400-enhanced-strobe;
-	supports-emmc;
 	non-removable;
 	keep-power-in-suspend;
 	status = "okay";
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
