Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E35CE4D13F
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Jun 2019 17:02:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qJEVCSwrhGeRB/f0f8F2ZoZlosMX1e/8VNX0V0NFG4M=; b=Inap3N1r8PDaxP
	UVk/KATXN5uKNrJ3bj1VxI9/HDQQ4rixcjQSLT3nJ/NAcrMx3xPmW9YJAFzkWQksiPiOXEx7h+VK5
	69lL/pJXvXthPj+Sbqdl384K4RKerzGs4rjf9MHeAWcTXtF6Wfr0soVXtQeWJFUVzE2P2G6Mm2hM5
	Lxpvlu0WRxrhm19Qpya1gouI9eK+2dgNHbV/6aS+QihYxnk+ApER7h0yZsjJ1K5UA8syws/8uYONp
	bR7FCN+/IoE2ca4GSSKHblbQg2nyq04RyXtwBguEcTnp6bL8t1vagxC7HHytNN8rScBcUxXDoy1Pb
	/27M2RASaHixkwfb+6ig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdyZp-0003u4-AC; Thu, 20 Jun 2019 15:02:13 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdyY3-0003BN-DO
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Jun 2019 15:00:25 +0000
Received: by mail-wm1-x342.google.com with SMTP id u8so3515695wmm.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Jun 2019 08:00:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=LYe7DDXQIL9cgrU/J6+VemHeiSBNByBQZKqrYUm/eeo=;
 b=SZ6V1yjLoHGVxYhYdXZ8SkshTMpt0KSi4NFSU2/xx/+B0QFCZ/xBQx3++HsNUvz09q
 f8371/tpFqWte+O1B0mJZDY/m+oXsJXHnkEbSDAAnhNkUO8PnzGSlg4II9sJ3hdcTjOd
 J9WFwVcXw1Db8/Z5WDM1EbNM6t7arljsdr1fNxbt9cblHpMLQs1tfjOgBG2COUK6/X/6
 7OSdVHmMLNv3VZoB/VKHC6lVJjxUgqUX9LPBujDSjUYkKdwn8GW7yX10YVjW2J9tabmQ
 cir+m7HPer+bOdYUNrInyBmC6SndMtZN6uaPzr+/1Qtquu9r+rrXslmH7bFbqZz3QtqX
 JdnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=LYe7DDXQIL9cgrU/J6+VemHeiSBNByBQZKqrYUm/eeo=;
 b=uPsMyzUXX5fEdY9veugRkC415OT4Tvqyzhynd8ez4Ur90/4QWkfFjOn23QnCAQVlTY
 rD7T2LKZUDSngUvtWPe4J7Xe7994U3SPzuaCQ+engasBAo5MshSlISSRS2vaF5K/NwyZ
 hOxS4VUui+RQXAA2oHkU6352Gn64fgCzgneEIgyQmGicYk5tUTzegMEhxCv0W9RTuwTv
 yw2ihOIhQbebNiORGGSKCxrcN7bFK6BhdoybZ3UuNLK6K+/h8rQocVn7y93e+IA6bDm1
 OjJFYKa4YZgbwLXKx2vpDJcR34nBgNMevdQcpda61OvPoi33on/vlee65wK9YtzYMvim
 /bmQ==
X-Gm-Message-State: APjAAAWRxiWyeUNsHjaV8RNALeEYlpOMmuIfL4lhA6+SxPdIgBcWioMt
 gNVZEFXoUQDK3Q1+6NlwGpBz/g==
X-Google-Smtp-Source: APXvYqyNNg0N3Vh+whUhU6uiroJxzDG3nOrILtRfiPwOSwkxjLjsRkVzUds9/M79qG+gl3Xaq9YOhg==
X-Received: by 2002:a1c:3587:: with SMTP id c129mr69933wma.90.1561042821614;
 Thu, 20 Jun 2019 08:00:21 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id o126sm6802520wmo.1.2019.06.20.08.00.20
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 20 Jun 2019 08:00:20 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: jbrunet@baylibre.com,
	khilman@baylibre.com
Subject: [RFC/RFT 01/14] pinctrl: meson-g12a: add pwm_a on GPIOE_2 pinmux
Date: Thu, 20 Jun 2019 17:00:00 +0200
Message-Id: <20190620150013.13462-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190620150013.13462-1-narmstrong@baylibre.com>
References: <20190620150013.13462-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190620_080023_447749_E0800573 
X-CRM114-Status: GOOD (  11.16  )
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
 linux-amlogic@lists.infradead.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
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
