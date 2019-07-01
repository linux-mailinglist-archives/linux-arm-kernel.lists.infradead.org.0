Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B665F5B7A6
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 11:14:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=brDGCz19eXhuj81x+qeMHUrtPDk7ZwtsKTM5a6J0xqo=; b=X40yuBzHHcyLhd
	0rbmbgNcnIgkwWx4PoGnoAoH/gv3HVo338TynOSPllaRnWFbDCrQn8VRCJTBKf/ZkydkKNL89tsq8
	a+MqGSJZIgj/8faAbPVvJiNZ63APIGOg51jWBEgqcEYcMC3oIOV68Aoj0BulWEyQlGZQJV5ND59hS
	vsn6s5DbEkeGFICVvMG8qDxuU7oFXD3jTXvQN+P2cGjYQm1sxg/IyBZlQefC4oQGKBfEJv2xhtO30
	097eiFEmHtxBLtRvnUJbx7xyLQq4sItmk80cIdi3I1CzIZWhDwW91V7dik0YHfUh2CndKdyj0ta7z
	9X7lsUZVnZhgEzvOBXXQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhsNt-0003gz-P0; Mon, 01 Jul 2019 09:14:01 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhsN7-0003Du-6t
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 09:13:16 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so15011060wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 02:13:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qYJwtVX2r7KnFTDIFCTGswCpHKhjGFZMmXuYYyexqis=;
 b=r81XUdllxw5uXCyKEsvqIiwFjD4+Lrm0Imlfz2u7g/nBUVEQ/H/q2CcOkbeh1IoekK
 XqmukpLUNFQgaTn4IzOvgmZdqpd98YvfrZ7VM1YVyM7O5eDofTXxiSS1mEh+NDA/Dbr/
 Z3rI9N48FtEgbYu/2B2DhrOANpStsKc6vG9zfUvuIwAIhkKO792IlVEEN/ne/3TDpBV2
 UMhi4YZeH4ltR34+Y1erlZG1nyZ5RNqBMezdYHN4zSt9QqeyPrjfBFHM9wEpAnv1QO1z
 /3GabGCSPZoKQPdlx6VzaT707o+ONkoZ9Yy3YgxKcPSkOCS95zyEqQqYpKHXjSJMRrcy
 iJ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qYJwtVX2r7KnFTDIFCTGswCpHKhjGFZMmXuYYyexqis=;
 b=RrpUoPJiJTOWUextKR8KYAKtWZZOlH3n4LNsy/VlLqhm5JdSzzxFmfUkZF/vzljCRA
 rxrxI/IXbyCTn/9ZbUWai7LaT3wF+3vPB9TP8GxtN2NWuk/WrNzziwGcSCMwxo/0BC+L
 och+UiXUwgU+dAHmfIoAvn+2N00Byoz80CkvNc7AbZKdmr0GaD+X0KC96HEHn38tZwzt
 XvQqqMcUX6tUJ8d3yLeM3DwJxWzyjWAbMjGPIHOycHn9oOypJV3UfOdHGulKN9+2RV68
 0BHMXKskrye/t5cXlaBDHeNyMy+8Oc46nzbxPPp3i1gvmCvmxXL5cl25/kKDCW3KX/YF
 sYYA==
X-Gm-Message-State: APjAAAWA95FvcEl9CNE4FRuuDQBrguv9xdXIUJGVpY9n1nUuDZT1DUQ9
 mUVKvkV79hjKwWDWfrD3NMfesw==
X-Google-Smtp-Source: APXvYqyKAKMyxCAc6vR2xD8svMCql407vi8e1s9D1IiPlHCg1OCzLfGcgLf5UyySc+lgVIZBWOUuTA==
X-Received: by 2002:a05:600c:303:: with SMTP id
 q3mr16802095wmd.130.1561972391870; 
 Mon, 01 Jul 2019 02:13:11 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id i16sm6305659wrm.37.2019.07.01.02.13.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 02:13:11 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v3 01/14] pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
Date: Mon,  1 Jul 2019 11:12:45 +0200
Message-Id: <20190701091258.3870-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701091258.3870-1-narmstrong@baylibre.com>
References: <20190701091258.3870-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_021313_266030_F6D34D00 
X-CRM114-Status: GOOD (  11.40  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing pinmux for the pwm_a function on the GPIOE_2 pin.

Reviewed-by: Kevin Hilman <khilman@baylibre.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pinctrl/meson/pinctrl-meson-g12a.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-g12a.c b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
index d494492e98e9..f69af4fa7cf8 100644
--- a/drivers/pinctrl/meson/pinctrl-meson-g12a.c
+++ b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
@@ -801,6 +801,9 @@ static const unsigned int remote_ao_input_pins[]	= { GPIOAO_5 };
 /* ir_out */
 static const unsigned int remote_ao_out_pins[]		= { GPIOAO_4 };
 
+/* pwm_a_e */
+static const unsigned int pwm_a_e_pins[]		= { GPIOE_2 };
+
 /* pwm_ao_a */
 static const unsigned int pwm_ao_a_pins[]		= { GPIOAO_11 };
 static const unsigned int pwm_ao_a_hiz_pins[]		= { GPIOAO_11 };
@@ -888,6 +891,7 @@ static struct meson_pmx_group meson_g12a_aobus_groups[] = {
 	GROUP(i2c_ao_slave_sda,		3),
 	GROUP(remote_ao_input,		1),
 	GROUP(remote_ao_out,		1),
+	GROUP(pwm_a_e,			3),
 	GROUP(pwm_ao_a,			3),
 	GROUP(pwm_ao_a_hiz,		2),
 	GROUP(pwm_ao_b,			3),
@@ -1192,6 +1196,10 @@ static const char * const remote_ao_out_groups[] = {
 	"remote_ao_out",
 };
 
+static const char * const pwm_a_e_groups[] = {
+	"pwm_a_e",
+};
+
 static const char * const pwm_ao_a_groups[] = {
 	"pwm_ao_a", "pwm_ao_a_hiz",
 };
@@ -1290,6 +1298,7 @@ static struct meson_pmx_func meson_g12a_aobus_functions[] = {
 	FUNCTION(i2c_ao_slave),
 	FUNCTION(remote_ao_input),
 	FUNCTION(remote_ao_out),
+	FUNCTION(pwm_a_e),
 	FUNCTION(pwm_ao_a),
 	FUNCTION(pwm_ao_b),
 	FUNCTION(pwm_ao_c),
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
