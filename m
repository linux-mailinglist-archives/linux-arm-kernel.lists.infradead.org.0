Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E65C5778A1
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 14:13:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PksEx5EYAYOZ94G+lPtVugFr/bdctDKugPRN/Asyf74=; b=CnJY3CQ0EUdlIX
	+LV7iiSvXNwoNTepZlOLO7B4vhs1o+C5bVakZ6B/Pa+RRZsemmCddmwr6P9oO3kXZJxOUXwwWWWt4
	3r+gq50Ey0EWr+3v8eE2Hg307PyME9dPU3MColiTQJ5Ews3rAupDzI61uLDeqUAjVOULwhXN5QYOF
	0RF8e4LdYGCoJlICwCB38MkZB5op4qaEfQRH5IV7aG2lcUb5/By/qO7s400h+j6cHpaz+wkZ4oP1X
	IGcjqmT/kHlllLLEB2Nnbdxm0ngcERF+7AAYlKzZ4gmd2ttk4fF8nZMbboP2kVbYBOS/0M6erFfaA
	rjNynTui73YqTztpDG7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrLZc-0001GY-L9; Sat, 27 Jul 2019 12:13:16 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrLZR-0001DU-Vq; Sat, 27 Jul 2019 12:13:07 +0000
Received: by mail-wr1-x444.google.com with SMTP id f9so56987525wre.12;
 Sat, 27 Jul 2019 05:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=5qILRtduAUfIHbRYJc2OqUYhBvVLfrX/ZR6fVK293Dg=;
 b=OMghRo1khsXGsH/E3U8li8QeP9nGMpoQ9pv8NdPqjMB11WNhVxf0zBgRIA5t+7cSE/
 CiL566CDiElHLOqEQkSY0JUFMUZbo+BL0oS/AAAqjq+hHV5tREnSs6Gs5rCv9g23JxQJ
 3n4dNgJ5IZrjjena3mYsGgu4L1ywaQAjFhaKaubM5KIZHt+SD4h+HtCgyNJhrlA4VlxI
 3hWTX3sFLoAsvdzLjlxs3CSjq71HDgET2c0K/RCjy3f2JKmzV1dYwWIIE5iPkxNzaWwy
 CZQiXrOyaL+p5v9lP4jPT7Cuz00G39ecfbKPyVh1O2sCsbrwelERx6vOC4WkqV1re5Ei
 C4SQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=5qILRtduAUfIHbRYJc2OqUYhBvVLfrX/ZR6fVK293Dg=;
 b=WFiCkcKr3HU1Fefgt1Xz9ne6G+t8AL66SweHymCakxd3NC4QlOfikLR6uAE0mhO2rF
 Rv+FL+Y5W6Q5emcmcMWuE6hHY7ObcnKqElz/F9BTvW7GahSyFbFn/PMASLWz75nCEqUz
 kbger7hNdF0Od9bh0vRTMxVV4Ddb0aj2ySpbE4kTDNLgJwrKfn0Mh2TwLxS76ydo9Eaj
 xWlQ0mi97+rjyUhSvHagujO6S6uIJ6SUkpdhbX0Ca5YB1t0tm+vsLfspXjYyrU8ijqjr
 OOLlxJJ3rUptVceEYNP5jtygv7p68Qry3ttXaF47w95tkI+ldvxstizH3/PVRITB86OD
 Fb5Q==
X-Gm-Message-State: APjAAAXtmbwyAyb0JmYd7R2nKVpmlZgDAzGqzukm9axU41pBVsuVTr4A
 0NIwXn1Jf1A2OdFYQD5vGwillNqp
X-Google-Smtp-Source: APXvYqwNsLsnl3W1cQVmOuElc6fGGraRV+A5W8UDKBaaQI954FwVDQ69i9eU6haQms0rDvfSR4mkLg==
X-Received: by 2002:adf:9ece:: with SMTP id b14mr59108580wrf.192.1564229584036; 
 Sat, 27 Jul 2019 05:13:04 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id
 o26sm111786569wro.53.2019.07.27.05.13.03
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 05:13:03 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH v2 1/4] ARM: dts: meson8b: add the PWM_D output pin
Date: Sat, 27 Jul 2019 14:12:54 +0200
Message-Id: <20190727121257.18017-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
References: <20190727121257.18017-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_051306_023452_4D34B441 
X-CRM114-Status: GOOD (  10.07  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The PWM_D output is used for the VDDEE PWM regulator which supplies for
example the Mali GPU on the EC-100 and Odroid-C1 boards. Add the output
pin the VDDEE regulators can be added.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index fba2c70c2fda..30fca9bb4bbe 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -361,6 +361,14 @@
 			};
 		};
 
+		pwm_d_pins: pwm-d {
+			mux {
+				groups = "pwm_d";
+				function = "pwm_d";
+				bias-disable;
+			};
+		};
+
 		uart_b0_pins: uart-b0 {
 			mux {
 				groups = "uart_tx_b0",
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
