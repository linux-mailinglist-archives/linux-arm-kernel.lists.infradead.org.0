Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E913612A55C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Dec 2019 02:06:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4qgHN0i0fkEkzr7Epx/BXhI3SlQAvH9rCnLDOp+CwHU=; b=kXJ8ttWIc78Ljp
	N1BJeK/arV7ubDQ9uXU3yuz9MU6CN/6iGQqpj7hop7hJL0pc/SAmJA6J8rDpwv3f3KiIaDXdA0+e1
	7x8i2odfepHRiAWTNQZ2b4HOoCLjgl7HQ8s9F/kfLyfnX51UeyZv3f8X76qJVTBwvDqFIENy3+/8k
	51W5e0phBixAJONmYObbFWc5Liv8WKVXonclMpA2+7AJln9732QY31wDHIY+7sznJDxcnB2mbQM6n
	GLhpwDb6r3CPBfraNbprCa4pmBR+5ZujJLfx3wNWWH0j6vBwoEYT3uZa6A76f1KZH9i1MlW+NFMea
	bsOdD7pXv08uLOPYpebA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijv8O-0000hA-AA; Wed, 25 Dec 2019 01:06:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijv84-0000dB-8b; Wed, 25 Dec 2019 01:06:25 +0000
Received: by mail-wr1-x444.google.com with SMTP id d16so20893531wre.10;
 Tue, 24 Dec 2019 17:06:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=1v1/8y8CUDSaeLfYYLYF1rkrU5gMM13TJol/uHd2tC4=;
 b=tSNOIM69MMOjJH/sfNVJOpLIcVsK8HZ+NzFyxnKHHVIu/FB4hvz4tuuBEltwjcl7ek
 BxKKUDg6hWQKBSaEpmZ82iYKhncIZI4O9UkjUbDxbrj7kHw7uVzR29Z0gfgRFuNydkwm
 Zx4Mrz/a1haEYLzEeM2QT9T1QH2HmKhs7epXupdK0F70RLMB4Uoi1L0hL+cY0vrLdaey
 bbb8T1cHWNG6eaOnBlrGJGQzppWfZkoQ6TrKdbaxar6HTTXn/cFiyPJV26qmBCVLDmin
 1Z/9AHK9x+dZi2f44nd5TBTaOFaDZyHw/ncx4Ej1EedHT6/oLwMostEqduVaHlqIy71k
 NHJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=1v1/8y8CUDSaeLfYYLYF1rkrU5gMM13TJol/uHd2tC4=;
 b=G2ZwQV378N3iyHHMEL1JgiR3pY2CEJcVU+lUcH5v8Fp63qCapqgboGLGavh+mVBhjC
 f00PzRVEJIMvh/SXQzgDo99JlZqbgqy4pdrd0QBCu8w4Fy48yewq05H9TaFqoLNGZ+ft
 RZiZZ4+Q/R1p0IEmKDSLlU8icrp7lo6asHhf9GzNv9QnBdVgH9xqzcAyWrFQN+G1LWU2
 0+by5Y28mkWM5jWRcKoIX5ewwT0FJip58Jw3xC/qiH9/6D5oMCVn1cWEFwC0UF4mOb/1
 K/Ti6OMdu4+gNz1btz9CSgKX+v7cxeeY4ipH8itMYD47zclQs8iQ58kkXH6QJ1vEc6pd
 pflA==
X-Gm-Message-State: APjAAAXqAvxLW9d1hLODP31jlSB9z/C2Qtk8kGSDKFZU51UG6tse0Wir
 TIQnfHVmFqmFQVSXr992Se4TVKx+
X-Google-Smtp-Source: APXvYqwal9Dqdu1QdR5DDgMywNyzalC84bZXRuqTVUKDZK0qWD4Ca7MSdgLlEk510rDzH8ntqBIw8Q==
X-Received: by 2002:a5d:45c4:: with SMTP id b4mr4059081wrs.303.1577235982476; 
 Tue, 24 Dec 2019 17:06:22 -0800 (PST)
Received: from localhost.localdomain
 (p200300F1373A1900428D5CFFFEB99DB8.dip0.t-ipconnect.de.
 [2003:f1:373a:1900:428d:5cff:feb9:9db8])
 by smtp.googlemail.com with ESMTPSA id x26sm4066127wmc.30.2019.12.24.17.06.21
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 24 Dec 2019 17:06:21 -0800 (PST)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/3] ARM: dts: meson8b: fix the clock controller compatible
 string
Date: Wed, 25 Dec 2019 02:06:05 +0100
Message-Id: <20191225010607.1504239-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
References: <20191225010607.1504239-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191224_170624_332764_5E1736BA 
X-CRM114-Status: GOOD (  11.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The Meson8b clock controller is an evolution of the Meson8 clock
controller. The clock controller on Meson8b contains two identical mali
clock trees for glitch-free rate switching.
Use the correct compatible string to make use of the glitch free mux.

Fixes: b6db3936f2833c ("ARM: dts: meson: switch the clock controller to the HHI register area")
Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 8ac8bdfaf58f..5b5791924753 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -442,7 +442,7 @@ &gpio_intc {
 
 &hhi {
 	clkc: clock-controller {
-		compatible = "amlogic,meson8-clkc";
+		compatible = "amlogic,meson8b-clkc";
 		clocks = <&xtal>, <&ddr_clkc DDR_CLKID_DDR_PLL>;
 		clock-names = "xtal", "ddr_pll";
 		#clock-cells = <1>;
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
