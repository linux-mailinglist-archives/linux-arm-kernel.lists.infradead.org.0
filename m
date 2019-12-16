Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA06511FE82
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 07:44:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zgROmNTRgIbCd581DGmkwd+81uTLxivw76oMyENIsjE=; b=HaCyyzQ7Nyojlw
	KMkme9LGF923I9odesAdApJtFnTT1qZo59x+aSb7wl7Zov7MJl9NJqGPf8zr/8Ig9RtzFwZgbbgAj
	R7dcyygrvBvL7HS1TDhv2IQQW15eKRSE5dyJ9xGqKAMjqoo2Bnkkj8CE/HD+4pfD4lzDBtQHqLwHe
	wXd/84syGRUJ6xjPogM379YPsXPVyWwou0x5lq/+OmxSstCFttdpJBnoPB3pPrLPpqPge43dCqvX9
	FoCxaVQUH00ZO+cc+C3dYc+rpR76rQ76yknJrV9HJHsARGGGS8oCqAerDujBFwL3idEwdHJSirWtp
	P5dWECwpW2VOFT4acdrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1igk6n-00051r-9r; Mon, 16 Dec 2019 06:43:57 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1igk6f-00051O-Ad
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 06:43:51 +0000
Received: by mail-pj1-x1044.google.com with SMTP id w23so2548460pjd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 15 Dec 2019 22:43:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0ux7G3MiSlS3ev/+kbJZOEXTauz/1zLMbOpd5oJaNEs=;
 b=BARMc7vmR7fmLUrTFtCSW3CaUlYVwks8CpJLZ8KcI/D9LvJqeRkjpQCg6vLYCnKJYx
 WqgdW0fkciggfydIWcknOs9sefiaS7IwbjmZ8K+wUIo3+u0R4sULSY3ZLtV9t/TFnArO
 MHBETRDDI26SPUatTvKnT1M90wqERTGDJ8eAGNnmJKzWvKEWpMbbGTmIPo4/LOyp0cya
 8UV7JOUUqTefcg6moVIsCyEj/NWeYO8L9qZGjqS8KtMcoDOXbpQcC3SRgE3t4ullRRdW
 i4Hg96dpz1UvtrT6xi74B7rGVJ5k6kRxHONdfbWhbx+6Z6beQT3HQYaNvkc87RNMTbwC
 DFPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
 :mime-version:content-transfer-encoding;
 bh=0ux7G3MiSlS3ev/+kbJZOEXTauz/1zLMbOpd5oJaNEs=;
 b=bh9/etTEAXChsHDrtgpr4PQOlqCAmWB/Tb18XVDuz83rb3Ybd50DG6HtKYKEKg9ybp
 ymW9LzO9LWktp2EDtzGn0wqiIz17pnu6vg4OQSEg4XaTvFbvTLYy8TdKwsZPo6H/l9bC
 qimFdp27SFYBrWUSxYjrQZR4hUA5TdAovRcI4FaWhANYA0qpNALWK/gfQj5Sk4DoZ42x
 N2KdvrZiVLZbsGEVjpifiJBZM8IWCGFm/lhLjX/xW/uvg2PI4DN7+OSPtCsFQG8dVjXb
 E1zoE37/NEmnbb6oqNjez6IdDUTay+HejoC181huHrymTcNtrRjqDZL5xtM5W9cw4zMf
 bNGw==
X-Gm-Message-State: APjAAAVVPFcxIg9jE3rGjVJfPEzplbaYZn7DcRQJ8DvZGYG2NHXWfnC6
 L1zwbcP6zN/rvMj+K47XpQ4KmYzNEVk=
X-Google-Smtp-Source: APXvYqyjExp4/F8WgIcXfWcdgponrOcUJ0xoKa5yoLp5bLwFQLCE7OA47TylREIwS9KTq6OaoebMSw==
X-Received: by 2002:a17:902:209:: with SMTP id 9mr14722232plc.58.1576478627037; 
 Sun, 15 Dec 2019 22:43:47 -0800 (PST)
Received: from localhost.localdomain
 (2403-5800-7100-3e00-2ac3-652d-4f7-6183.ip6.aussiebb.net.
 [2403:5800:7100:3e00:2ac3:652d:4f7:6183])
 by smtp.gmail.com with ESMTPSA id u20sm20121223pgf.29.2019.12.15.22.43.44
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 15 Dec 2019 22:43:46 -0800 (PST)
From: Joel Stanley <joel@jms.id.au>
To: linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org,
 Andrew Jeffery <andrew@aj.id.au>
Subject: [PATCH] ARM: dts: aspeed: AST2400 disables hw checksum
Date: Mon, 16 Dec 2019 17:41:32 +1100
Message-Id: <20191216064132.78015-1-joel@jms.id.au>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191215_224349_391475_041E64E1 
X-CRM114-Status: GOOD (  10.27  )
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (joel.stan[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Tao Ren <taoren@fb.com>, Alexander Filippov <a.filippov@yadro.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

There is no need to specify this property in the device tree as the
AST2400 does not have working hardware checksum and disables it in the
driver.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts | 1 -
 arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts  | 1 -
 arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts        | 3 ---
 3 files changed, 5 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
index b1e10f0c85c9..322587b7b67d 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge100.dts
@@ -76,7 +76,6 @@ &uart5 {
 
 &mac1 {
 	status = "okay";
-	no-hw-checksum;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
 };
diff --git a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
index aaa77a597d1a..54e508530dce 100644
--- a/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-facebook-wedge40.dts
@@ -75,7 +75,6 @@ &uart5 {
 
 &mac1 {
 	status = "okay";
-	no-hw-checksum;
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rgmii2_default &pinctrl_mdio2_default>;
 };
diff --git a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
index affd2c8743b1..041f28e3ac10 100644
--- a/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-opp-vesnin.dts
@@ -107,10 +107,7 @@ flash@0 {
 
 &mac0 {
 	status = "okay";
-
 	use-ncsi;
-	no-hw-checksum;
-
 	pinctrl-names = "default";
 	pinctrl-0 = <&pinctrl_rmii1_default>;
 };
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
