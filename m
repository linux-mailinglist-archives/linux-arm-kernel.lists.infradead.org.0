Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB9F95BB06
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jul 2019 13:56:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=IK2wEAgJwbBMGoEk8yS7sAnCiKmT/rLpPatinqL2TB8=; b=ikfjVbc6iY/Ces
	zOjWiUyxP1Dlm+Cc2H7HqZNGZ+5ex4jmwq6KFDM4rzykR4prLt8Jf2nCRZSWqeypWWtvD+10e0PFE
	1WsAJTYBNChhifCWSDwDDtNKTo8P+Kd+/Z7kihGA4Om+33rC/RUJez9PU+4x5r5e9N3zPvAW+AW1h
	1Kw+DHi1iVPzAQMAMaAXn41kFmtoxU+14doWPMWvBCrWVfJP4MwXjxl2H6i81gwxWe3tBYc6vzuK/
	oYcaBSNBbSKAWOSYih0wjdAkcSzVWhnJRrrNqWkbdDydAiwHopRbSOV9Zjxa7WCun+c/EdtF5M08K
	INqPG7sRHq2maGrOiivg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hhuui-0000xd-0z; Mon, 01 Jul 2019 11:56:04 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hhuub-0000wm-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 01 Jul 2019 11:55:59 +0000
Received: by mail-wr1-x444.google.com with SMTP id n9so13560634wru.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 01 Jul 2019 04:55:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qmqH9rUtyBqQ8/Pqi8TtxfD5jhJ2Pj45pX1IFFE+c74=;
 b=w90nqpfyUXLoK9HwqQjWvkFBF8kUXPM70Ljq5G3iO0MB/FMV92bgziq8XMCA/p6iTI
 /hXFLYZloGuyJURQm5gfYucvWpGNbSG5hyWaffs0p6+RA6uF27U5vS4F4oxB+CmwEPjX
 Dr0etGwOOqXg08MIYcnKDxgiPhaMJblYiTyg7ymIyM3QtAnxqBSldgKKB8+fnWlXQ9pP
 fZzR1YHzA9xIqoQYSSSXM+6jxOXusnNBrf6MhSM1/gCNCyrcKWcKkiu4bJWaRP13KNX0
 SjsnqJFGw90WL3HMYiZ1FVH0yMFj6RYOmAMhQZrF8oU+WobbyLQJB3XlazBbRxdki0N9
 1c4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=qmqH9rUtyBqQ8/Pqi8TtxfD5jhJ2Pj45pX1IFFE+c74=;
 b=XsYVZIJhe2VV9CAUMERhSmM5aoCRrJpaSY4o3g+ejML0I7dXmqGGoCXVrm8faHAQ9q
 pAvjdn5tHDlIF9RjN/7VKoCLoKT+1ZB+o6VZtNRWIS+WneP/Qxeavd/VnHabKe4NH5A4
 kwxXktXb78wsNElUyGIqOP+4+5Zy/AtLUh8PG3JaYJ813PJJr7I5BSOYIo6HTPlJ4PcZ
 YLNwzac8nuPN2fdTnP/Ck0wbqFc5f9OAWbXKsd65Z6PGkPJxN9u2VoijkoZakAvjT8rR
 l6C+uLhxKPEFJIdolSe8S0tfYFw2h37fSzQwbDooAxDD+VZrGztGwqzyrwu02fD9XE0e
 y6JQ==
X-Gm-Message-State: APjAAAVnSmDYZY0jeikiG8fl7s/1ZuRpDdDdKa2yI/YBoi+4jsnnKhLG
 R2B4QACR2MkZboT7Dg4h5Wv37sPwCz8=
X-Google-Smtp-Source: APXvYqyYKsCFPZS7MzmobncNQun9FRifaopq+RvFcsPDvQx+xuv/xlBF4qmqiCBuSt75XoHIYUdXzA==
X-Received: by 2002:a5d:6508:: with SMTP id x8mr20035348wru.310.1561982155268; 
 Mon, 01 Jul 2019 04:55:55 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr.
 [176.150.251.154])
 by smtp.gmail.com with ESMTPSA id j7sm14210686wru.54.2019.07.01.04.55.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 01 Jul 2019 04:55:54 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com
Subject: [PATCH] arm64: dts: meson-g12a-sei510: enable IR controller
Date: Mon,  1 Jul 2019 13:55:51 +0200
Message-Id: <20190701115551.15618-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190701_045557_479436_A0E5813B 
X-CRM114-Status: GOOD (  10.50  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Enable IR receiver controllera on the SEI510 board.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
index c7a87368850b..12aa7eaeaf68 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-g12a-sei510.dts
@@ -339,6 +339,12 @@
 	pinctrl-names = "default";
 };
 
+&ir {
+	status = "okay";
+	pinctrl-0 = <&remote_input_ao_pins>;
+	pinctrl-names = "default";
+};
+
 &pwm_ef {
 	status = "okay";
 	pinctrl-0 = <&pwm_e_pins>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
