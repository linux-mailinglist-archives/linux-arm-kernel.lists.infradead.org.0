Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CFF11D9503
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 13:15:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TIsWMtSl7sGGvxEJnnnXteLrqvJ9K/hOhmUBhszAuMg=; b=egG
	FgJYy0d/IQL2pDP/aGRxjNF/SzOVnAb4XzK4GFClpUQ1nWbGOC1tWwm2IQKkSTn4yCwMGV4L1rCAl
	uiKfCa8ruzxSdSzzrDM1D+cITPIYckZDTpwvCtwLdMTRfrj2ancjPnWBV17o8bm2V/cHevDcFU2f+
	bduep1dar16F9ChOuivQ7g159hMdjHcfK9+F5dhOUtd5K50cq9Pj1UK7ZHVMsx7OnI0fJv61bj0gR
	zDeLteLRHYn/Au4DqsaZBbna1ypYZCI+YRVVHN5QEl9/83beyjRh9r81nMnhwLdlUvc6FWhBKEVFa
	aXAqWWTPfLAgeamUu+YkkpLCbnOA7Vw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb0DN-0006n8-5c; Tue, 19 May 2020 11:15:17 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb0D2-0006mO-FI; Tue, 19 May 2020 11:14:57 +0000
Received: by mail-wr1-x444.google.com with SMTP id e16so15423451wra.7;
 Tue, 19 May 2020 04:14:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id;
 bh=of2x5lvAuGZZISiXgz474RwZ3LgUvSAn73pq9BHWecA=;
 b=Q/M4TmMBVodfFqQhaQkwvo8TiGW6wEClscN8kJRFoE88xxzaYjoB+KuWpIzOKcn1OA
 Repf7QesvlYP49vKo/ZTR1i4cjgT4a9kthfPm/43mY0Vc26C/WYVn7SlvsqxKFzQ2tWC
 oBTZ2JHr0yUbVPhgmQRzCyyyM3+Vqr0AfSJwvVqs07mVOJN3sTzsYmOQBMWBaHEX0jfZ
 1ZEh06YzA9iC9hjkU8k16YT1uWBXmWsLgsRy7InL5kUjWmDXzUDEC72m5yxOarondboH
 HrGBT2AP0bH82SLcjvjQLQ6wwz0iOICNj+YkvSVSZ/OvYqAoRxMwg/boe0sM9teEv9YA
 gJEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=of2x5lvAuGZZISiXgz474RwZ3LgUvSAn73pq9BHWecA=;
 b=m2AkFa/lAlgn9+b2c8yXLwEToh2SLwfZuUzxrLFOgw1aAYEJPvp9nGzPQlxlf0hj8t
 DUv8JOL4tSW9yMfrv+sxOuqcipfaWVgCDz6bNd+tIoWFn8gJY1oofbfXkDtUA8Lyc5Mw
 zoE1h0yJAtAVqf+zznuL3lm8pu+mTQUQ5s2GNjNEu8CucDD1SrOzOQTZuqRWmelc/N0T
 DSQy0VV+Zn96J5JWITAyvmexKisIGOiApsJx3ROTZrgPMdBobgklfVRzj7HTjh/IUKVJ
 qELPgb32DD3n0gqddWvfNF3yzT5+HkogDt0HSGpxgzjAstYgLwI7KZUcZaioBfCZBEsT
 0wxw==
X-Gm-Message-State: AOAM531Ny0nS2vGtx1qYs5McOIXAhqdZSO2WFCMT92eQzoMQtx+D2mUq
 Qk05cOw85mvljl5zNkv6ncfOU8yk4xA=
X-Google-Smtp-Source: ABdhPJxE6Oeqg3yyLJk9EPIj3I82abb+VGE7ljtS6QE3RtAJ1qmVRcpNZbbmwVH/HoEcmatYQW2A9Q==
X-Received: by 2002:adf:f1c3:: with SMTP id z3mr26854773wro.201.1589886892590; 
 Tue, 19 May 2020 04:14:52 -0700 (PDT)
Received: from debian.home (ip51ccf9cd.speed.planet.nl. [81.204.249.205])
 by smtp.gmail.com with ESMTPSA id v8sm21041368wrs.45.2020.05.19.04.14.51
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 19 May 2020 04:14:51 -0700 (PDT)
From: Johan Jonker <jbx6244@gmail.com>
To: heiko@sntech.de
Subject: [PATCH] arm64: dts: rockchip: fix pinctrl-names for gpio-leds node on
 rk3326-odroid-go2
Date: Tue, 19 May 2020 13:14:44 +0200
Message-Id: <20200519111444.2208-1-jbx6244@gmail.com>
X-Mailer: git-send-email 2.11.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_041456_508631_DA7687BA 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [jbx6244[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [jbx6244[at]gmail.com]
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, robh+dt@kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-rockchip@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 'pinctrl-names' property should contain a list of names
to the assigned states. The value 'led_pins' in the gpio-leds
node on rk3326-odroid-go2 is not a state that is normally used,
so change it the common name 'default'.

Signed-off-by: Johan Jonker <jbx6244@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
index 46826b6e2..b3a8f9365 100644
--- a/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3326-odroid-go2.dts
@@ -127,7 +127,7 @@
 
 	leds: gpio-leds {
 		compatible = "gpio-leds";
-		pinctrl-names = "led_pins";
+		pinctrl-names = "default";
 		pinctrl-0 = <&blue_led_pin>;
 
 		blue_led: led-0 {
-- 
2.11.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
