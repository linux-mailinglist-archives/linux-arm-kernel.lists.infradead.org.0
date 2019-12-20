Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE717127ABC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 13:10:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=ddcw/hlKLOn9QaNauCq8/LTOojPUzoNXuDj1jxlqgWQ=; b=uBizrVADvyG0Bd5DOfHBF5rKOc
	s26b4kzwsdBGWvH2Z+LBIGn1riFvcp6oi0jJrICWDLL81vO4UbRC2ProYyTEHlo6gLhLUz8dxv9dI
	F8+4m45+9o4ShIaUsjLS5cQTgWcA/A2dRjgTTaIMtB6jw+xzNkWNhDCmCnkIAs9FOFXU+gPtsF5Q9
	aEx9pR6AUwXLd/2NluuTSoS2w21ogFYff9TgPBDAWKwmmuUx5EFNAj5JOY6RJ/JIHlSY6vH6gC+3A
	kTAOXnpC/ysPLCwfYYF1lC1azyIwxZVdwpqjFNQ88TF7ALG8zGTbCRMYHerhhl+rVCA2gP9GI087e
	CJSVOLWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iiH6x-0002EJ-9T; Fri, 20 Dec 2019 12:10:27 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iiH6n-0002DM-5b; Fri, 20 Dec 2019 12:10:19 +0000
Received: by mail-wr1-x442.google.com with SMTP id q6so9169561wro.9;
 Fri, 20 Dec 2019 04:10:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=X8fFKkVj4hVB9s3VYcXKcrcscgrJeT7dVkyworQG7Xs=;
 b=MslHLb5TC48pWyXB4rVGeaN6vAkMcZk2Fa4J70Qk+CY3wY0hUJFGBwlni22LS3h6Nh
 YkEn+fR3yKhiWZV/zYs/7cdNCwZdC3CEc7CFIkD7IE1PmA+1/49VH5dgYWCCh3bgxxc1
 16tOH2klG8c+0QyUK69jc8x865EfIyboJPlg1r1t7TwOsHZTdor/R9G4DjIX6iWIEHdH
 gmwZNGoKGXc1hORo8+WyQSxyFqD5K99YNELnymcSSgj5B5qkQ4FbDqUG2cFgm0M8uCdh
 FtqEuPccZNS/5NTvodhMjvp0v3mVL6WWdOI382nHbqYW7X3stO92+huOi6gyi6oMWT14
 3Jgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=X8fFKkVj4hVB9s3VYcXKcrcscgrJeT7dVkyworQG7Xs=;
 b=bvgneEM7wvihqcXwH5Pt98tOCHd6/gS7jwkE7TdAPyVtncT47hnaBA/coXVvtO6mdf
 dz7BLbQDbkJKfz/poYsPS3Uf9pj909npL/cSnvWj4F/PT+12WA0DDvwVfTICFeaBLcv3
 sV3ZB8whZLUpDvrFkcuRm+j9DBBaMcnrFGyTVwURJ48C8GlwudRChnwykWcggwa0gW0q
 IrmXUgrVvOLLp5+MvrgIL5XqkAmwqdlr4Gp2y3/iyNDfx4a/v3p6C5NfHSajC7wP7mQc
 t23Ea6HAS5u9i+fBE/s3E0PWpHWAj807nctfCp6/LImAbdMLBdKbTkwVjVQr45slR9L0
 6uHg==
X-Gm-Message-State: APjAAAUJQ8Fi0iPCuq+7xfaAblhlhj81uf/Fbssm91D0Z+Ea5CFWbV/8
 PJtsY7ws5a38hkATU4pIAFQ=
X-Google-Smtp-Source: APXvYqxu69/OA3v3zdnCC+w0hFNzMJZksszafbk/ti6SQ/UDJYSqsScNIR4ZDvM0JKvWKNarB+0Fwg==
X-Received: by 2002:adf:ce87:: with SMTP id r7mr14428940wrn.245.1576843815297; 
 Fri, 20 Dec 2019 04:10:15 -0800 (PST)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id s16sm9722493wrn.78.2019.12.20.04.10.14
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 20 Dec 2019 04:10:14 -0800 (PST)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH 2/2] arm64: dts: rockchip: rk3308-roc-cc: sort nodes in
 alphabetical order
Date: Fri, 20 Dec 2019 13:10:07 +0100
Message-Id: <20191220121007.29337-2-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20191220121007.29337-1-jbx6244@gmail.com>
References: <20191220121007.29337-1-jbx6244@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191220_041018_310409_85F10646 
X-CRM114-Status: GOOD (  11.64  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (jbx6244[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (jbx6244[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Sort nodes in alphabetical order.
Place &pwm5 below &pwm0.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts | 14 +++++++-------
 1 file changed, 7 insertions(+), 7 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
index 23527daa7..14ba4c152 100644
--- a/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3308-roc-cc.dts
@@ -141,12 +141,6 @@
 	};
 };
 
-&pwm5 {
-	status = "okay";
-	pinctrl-names = "active";
-	pinctrl-0 = <&pwm5_pin_pull_down>;
-};
-
 &pinctrl {
 	pinctrl-names = "default";
 	pinctrl-0 = <&rtc_32k>;
@@ -165,8 +159,14 @@
 };
 
 &pwm0 {
-	status = "okay";
 	pinctrl-0 = <&pwm0_pin_pull_down>;
+	status = "okay";
+};
+
+&pwm5 {
+	pinctrl-names = "active";
+	pinctrl-0 = <&pwm5_pin_pull_down>;
+	status = "okay";
 };
 
 &sdmmc {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
