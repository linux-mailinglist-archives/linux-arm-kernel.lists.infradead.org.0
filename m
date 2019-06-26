Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DE515652C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 11:07:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJEVCSwrhGeRB/f0f8F2ZoZlosMX1e/8VNX0V0NFG4M=; b=rb0i9hIEK1AVQq
	8f9CjGLmxCUK8oo2PLYvmzR43moULRQu5hrDB6sypzmd6xLGrQAb+9JqtGifCmTUw3jQ5AUPWYbIF
	1rqwHkXOEbyBSzUikGK546OpkQeykMXkS6+Kj9jjb/l8pRJJr7MWRFqjtcjWbWNitIwJaOpJkctMr
	eE9e/5/D7aTsv7erHUTjSsncwnz6H0I0GMPXfY0vIDPgEz6kssVfO58cb0vabYnPf3wPx3wwdtDxX
	9W6VdR6ohbRR+nPH4Ig8BW6UsWjbsZdXSgHdDgAGIpLCHlssN4ergTuzSKEceb8xWepoTbz4lQNc2
	IxZDwvqOjxTi4HQcCDnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg3u6-0002yK-Hl; Wed, 26 Jun 2019 09:07:46 +0000
Received: from mail-wr1-x443.google.com ([2a00:1450:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg3t1-0002Ww-1C
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 09:06:40 +0000
Received: by mail-wr1-x443.google.com with SMTP id n4so1740011wrw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Jun 2019 02:06:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LYe7DDXQIL9cgrU/J6+VemHeiSBNByBQZKqrYUm/eeo=;
 b=IZqNG4EfbttnhxMV2QVAFvrf6vu4GQ9PI6Nso+6ApbR26KHmMJbjaKClJPn6E8EwzJ
 M4fiqHw1Kc8wiwFms+DATHH4T1c7EAfmdHOUTPBhj2rHWElIVkFxfquftNP5Nyms1LT0
 EWDBVhaDfz0DV/O6jLwx8U0GE+3sDgHtyor0/ME4mLv8QB1t2ky7GYK+aqkrJLqFF4pW
 RO+vFGcHywf+f/8/D20FUSQVt/4koC5zevXCTdGVlvsj/AGDz3q/VCY6OfcibA0kbKEA
 zm59NkZUXbwHy3ni+n8VHieAyW4eC40UXpewg7qRbE710/pLNgOsVHZn8yZx8SyfNCjd
 boJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LYe7DDXQIL9cgrU/J6+VemHeiSBNByBQZKqrYUm/eeo=;
 b=siBIU6UpZcynGwkmmrQ3Cva/H99RWoH4XmT4hpcEWN7GfbVgLJK3CE//f5AW62LUmH
 5DNQtTD3Ww+ed6bcf2/AZorF7gYvgkRVGnw36aXSkdQ6xT4pYwpkE9dHDh1wJ0c0zJDq
 rfXXpUB3V1NVEtsjsF990LNDAVLFtSfZpGHwyLPqu14iPhV2W/dkP2LTxMpL8fhQpflw
 eYqao2eUSgpkSAADk5Mi/OLVGGyrdMeY80grxGr6S8OaVcCbuXn/oH6q+fY6L5vDgKJq
 bjhBFlRpuAxjojY191MfAF1aCwURjy8ZpG7AhhZ+IBKUPjWMm5ONYiR++oyG/2pE70tx
 gNrQ==
X-Gm-Message-State: APjAAAU5bS1rRb5ltAM3Tk3y0SP1PchKCJuEHfXouRdw8Hlg+jICbNpt
 ZxpIUav6FzuJ41vEz0WS8+psyg==
X-Google-Smtp-Source: APXvYqyxjpfHTQzVG2c8KK9cmuSDK8HOXSqc8Faf7OuNvUlQtReJFxvDWffzUoHhiuLi3+ZLFL0ilg==
X-Received: by 2002:adf:f04d:: with SMTP id t13mr2744391wro.36.1561539997693; 
 Wed, 26 Jun 2019 02:06:37 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o6sm1925797wmc.46.2019.06.26.02.06.36
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Wed, 26 Jun 2019 02:06:36 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT v2 01/14] pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
Date: Wed, 26 Jun 2019 11:06:19 +0200
Message-Id: <20190626090632.7540-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190626090632.7540-1-narmstrong@baylibre.com>
References: <20190626090632.7540-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_020639_078571_0A7B9919 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 martin.blumenstingl@googlemail.com, linux-kernel@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the missing pinmux for the pwm_a function on the GPIOE_2 pin.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 drivers/pinctrl/meson/pinctrl-meson-g12a.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/pinctrl/meson/pinctrl-meson-g12a.c b/drivers/pinctrl/meson/pinctrl-meson-g12a.c
index 3475cd7bd2af..582665fd362a 100644
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
