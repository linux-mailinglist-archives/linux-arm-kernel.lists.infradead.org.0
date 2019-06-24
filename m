Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4914A51CA2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 22:55:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=soxr8mLBPD9sGoLIpGbeOMRLTH0cESKyTdiULg9WVBY=; b=so4
	+pOeuXfHSZjMDcJ6hICOzs1FsUzRoqExtxdxfSSZqaBtrqL1VZxbj2qtYZm8+iUTsO8MzhtTR+W7R
	jnNfCj6sAM6dz/qjhTBKHFQ5pgAbG26+9WZPbutLUaKojvWWtuLccG6E7m2XMiUHK7Z11Dm//GQAW
	UID+RfvrImFeyk/Wc6QxYejzMochCVnaTD9sf1CnPeJEMi7b1dKVIOdLJNaf0+9YGlGqSzaZir8V1
	P2YBDnWjlXdq7/UBUrIRua558yoYKrkh8lO0fcmNffR+iNiESNoQbwWyKlhNkozUE5s6Xjw/gT31F
	tYBrurT3mHG2qvPjSLPnKg36DLZ8Yag==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfVzN-0007Pj-9C; Mon, 24 Jun 2019 20:54:57 +0000
Received: from mail-qt1-x844.google.com ([2607:f8b0:4864:20::844])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfVzB-0007Om-SQ
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 20:54:47 +0000
Received: by mail-qt1-x844.google.com with SMTP id y57so16078541qtk.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 13:54:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=EYV899v7CizdgSk+uxZvDK8StOOhY0GNjAIWjBlHAG4=;
 b=k1KWs4eFSdQHskbY3xSgZ11Cu0Li0cHGNYsFRUNaiHK1uG7phU3x/l7jDrqXY9BeFk
 SXu3JPYw7wvVTKHcuhULaCFGFuTCbijpdmth4Ku2hHLt63Z9eG64WMUNRhSgZrtXG+IA
 N955E2Xt52Ggiy5cVbShurLAUDdPN/OgTaPpBj4o2/SNpQtGrGMyle/Q7f6dPb79DUqc
 FMBBsQvyQRDB5dwBBKMqmaS9dO9FV+ktl6k+wnf9lMhRYh0MTROL1poBhC0Gp40eG3f6
 0t4UYFUU2RfAeQX4IwgeqI95soe4wgwjfxPDyx0iT5zl5k5pbBcAIVC7sOH1JFWsxhbF
 0isA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=EYV899v7CizdgSk+uxZvDK8StOOhY0GNjAIWjBlHAG4=;
 b=MI1gb5603dc2ebMBy7ZyAVHpoimIJjtwpseOu+2O+dfzo6kn0tjdYgzdOwSFi5BTbM
 C3SMyAPuwPHQwzd7fmEH03r4mH4OPlraj3QOsGSOjFt5McPYshrKRJszlub+Ifcj7nM0
 EIH9ib52H3es6pLjStjPQqZCc3uQdaae9qEKmdw3sfziNeoV+Fk+L9Z+w0UmkqKaLra0
 2xBbLStwRfZoTcrHp/bkt4fDyK8KhqtxXS9PwAJngYjad87jRHiJL0iE5ud1wDHEdPlK
 kU2KUFMUfhithj50ox79IWDcYptWbaQkugzrVNiGMa/O9vXTApZvG01VeSqiPFXwOtu1
 LSaw==
X-Gm-Message-State: APjAAAVW3RyqsLdlzrLhhS9EWVU+d8/p1WVH/FfVvmjWDQIlnd7LDylV
 UfsRHsF4BEU9lrAI0KWiBWc=
X-Google-Smtp-Source: APXvYqw4FVaP8XjcH5K3gHs0D4K6d1MWImzqZc9jbVYTMGKhJNrHFHAjLyACNLF8z14444UNX5vVoA==
X-Received: by 2002:a0c:ad76:: with SMTP id v51mr36250109qvc.232.1561409684143; 
 Mon, 24 Jun 2019 13:54:44 -0700 (PDT)
Received: from fabio-Latitude-E5450.am.freescale.net
 ([2804:14c:482:3c8:56cb:1049:60d2:137b])
 by smtp.gmail.com with ESMTPSA id r17sm6251481qtf.26.2019.06.24.13.54.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 13:54:43 -0700 (PDT)
From: Fabio Estevam <festevam@gmail.com>
To: shawnguo@kernel.org
Subject: [PATCH 1/2] ARM: dts: imx7d-zii-rpu2: Remove unneeded snvs_pwrkey node
Date: Mon, 24 Jun 2019 17:54:31 -0300
Message-Id: <20190624205432.16727-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_135445_921635_8D3657F0 
X-CRM114-Status: GOOD (  10.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:844 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: stefan@agner.ch, cphealy@gmail.com, Fabio Estevam <festevam@gmail.com>,
 Anson.Huang@nxp.com, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Since commit 4664179fe679 ("ARM: dts: imx7s: Enable SNVS power key
according to board design") snvs_pwrkey is disabled by default, so there
is no need for disabling it explicitly in the board dts anymore.

Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 arch/arm/boot/dts/imx7d-zii-rpu2.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx7d-zii-rpu2.dts b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
index 4a78ddc7513d..39812c92bf0d 100644
--- a/arch/arm/boot/dts/imx7d-zii-rpu2.dts
+++ b/arch/arm/boot/dts/imx7d-zii-rpu2.dts
@@ -669,10 +669,6 @@
 	status = "disabled";
 };
 
-&snvs_pwrkey {
-	status = "disabled";
-};
-
 &iomuxc {
 	pinctrl_ecspi1: ecspi1grp {
 		fsl,pins = <
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
