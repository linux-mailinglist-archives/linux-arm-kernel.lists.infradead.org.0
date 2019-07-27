Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A2F477B96
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 27 Jul 2019 21:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9kezGBWZ+5a2DD+VfBOY1KugE0E3SNnPvaIVVLx/meg=; b=YqZDxAFSwukGAm
	arnm9gPH1Y3XNRqAJufDhqzLRFKZpdUGUB8PVQjWm7vZVvhLBVov8X+R9W9IcvhxF1ij/5TJYIzrz
	aYGDpFkjjmsfh4m14EH5+6vP2KhGLWhkEBjz/njqvxh+tHacQTE0ITLeGyVeRq7mRXPGbUuf8bE50
	XDwgNgvxImsKofu1MkrAFHqyGr2UcPgHV2HZK1TT96PgHzB2iYFNxkGHPL7GGIOPLBEJEKEMEx+DF
	ub7hQLaXEA91J1CYx+nYR+0c4ITub8ycwRXtws83zhOyrdR8mKmhjNLtIc3hbadvwRCMwvgHgAlPX
	Pauwp4yCLl4KUkKT4bZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hrSfT-0000Vt-4T; Sat, 27 Jul 2019 19:47:47 +0000
Received: from mail-wm1-x341.google.com ([2a00:1450:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hrSes-0000Dp-Kc; Sat, 27 Jul 2019 19:47:11 +0000
Received: by mail-wm1-x341.google.com with SMTP id v19so50267622wmj.5;
 Sat, 27 Jul 2019 12:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=googlemail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=u4zxzrsUGYajoD9B2Tdkb88ZiEEyjMTr1V8RPdE+1UY=;
 b=VLfAIH5SbHDQJcWnj5H522i2JcJ07BE+Zogzg/hd67JVrtQ/SMrYJZcfbNkZ2UQn11
 990VWKwTTuOrjBF318IiUVbLdDT5wu/CkI5NegXtPCqDvW7C5ZZPwIZp3QI7b0cixVNL
 1DJOL0s3HhdLycXuchIAIxwKy9Izek+IjPMrTFqle86YmZuBFaj8QkzS5hMjnUeZRX4x
 Wzupss3SpHykXFCouwWrO6cOydH6MlRZ6HfnuB+FI8xYP/q0yoNexz5Iny0FwGoNXvs9
 JLq5FFJHF0wXXz+QrWFGPfQltGm0HB6Ch7+5CvNbG7OXR+TrctVdnqJuzi226oAfXu/g
 8JDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=u4zxzrsUGYajoD9B2Tdkb88ZiEEyjMTr1V8RPdE+1UY=;
 b=OCt72lZ+p8CGQDJ2TQdul1jo5r0s6lNBGZny5pCcCMTu6w0nhuua/LvwUbZWawso1v
 g/bU2IaVj3u9yHqb7c/cPq/kNK+8aoIy8AVpzme+v5uuRQae2XKpdV3OUMRuskBrLuak
 vvrp7qNkpWAlhzEwvfsr7zHE8BE7OAbdI3c443Dby8ztsbCNprI8+JOfTpvYIPOHrhLq
 rLNU349tNpH9mezNlQKVF/bOJH5zb7PfWA078u2aaR+HYZvvqvU1n3m22fkiY4aQmE2X
 e3rsjwIxEm4vOdIJLx9t8LpLIBpJ23G9xqxwW3v/1xMnSw34XwgBIK1syfV0BepO7C7v
 qBjA==
X-Gm-Message-State: APjAAAXTv2mLdbN7EI4hDjyk1kSphwU4vr/JBsLxiv0Mj/xOU/qW4MLw
 Dr7a0rM5da/XfCblGg625ZsOCDBH
X-Google-Smtp-Source: APXvYqykfdQYXHJvMHLdBsllsqHbIXy+FoSsDdN0ix235Vwv3c8pZV4WMrJhL5yfUaEeSHpjmVRfvQ==
X-Received: by 2002:a1c:b706:: with SMTP id h6mr88410051wmf.119.1564256828803; 
 Sat, 27 Jul 2019 12:47:08 -0700 (PDT)
Received: from blackbox.darklights.net
 (p200300F133C65C00B418D0F4A25A19EC.dip0.t-ipconnect.de.
 [2003:f1:33c6:5c00:b418:d0f4:a25a:19ec])
 by smtp.googlemail.com with ESMTPSA id c4sm44651726wrt.86.2019.07.27.12.47.07
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Sat, 27 Jul 2019 12:47:08 -0700 (PDT)
From: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
To: linux-amlogic@lists.infradead.org,
	khilman@baylibre.com
Subject: [PATCH 1/2] ARM: dts: meson8b: add the nvmem cell with the board's
 MAC address
Date: Sat, 27 Jul 2019 21:46:46 +0200
Message-Id: <20190727194647.15355-2-martin.blumenstingl@googlemail.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
References: <20190727194647.15355-1-martin.blumenstingl@googlemail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190727_124710_671916_6D951046 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (martin.blumenstingl[at]googlemail.com)
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
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 ottuzzi@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Amlogic's BSP kernel defines that all boards with a MAC address stored
in the eFuse have it at offset 0x1b4. It is up to the board to
decide whether to use this MAC address or not:
- Odroid-C1 uses the MAC address from the eFuse
- EC-100 seems to read the MAC address from eMMC

Add the nvmem cell which describes the Ethernet MAC address. Don't
assign it to the Ethernet controller, because depending on the board the
actual MAC address may be read from somewhere else.

Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm/boot/dts/meson8b.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boot/dts/meson8b.dtsi b/arch/arm/boot/dts/meson8b.dtsi
index 30fca9bb4bbe..c7de58b71d08 100644
--- a/arch/arm/boot/dts/meson8b.dtsi
+++ b/arch/arm/boot/dts/meson8b.dtsi
@@ -402,6 +402,10 @@
 	clocks = <&clkc CLKID_EFUSE>;
 	clock-names = "core";
 
+	ethernet_mac_address: mac@1b4 {
+		reg = <0x1b4 0x6>;
+	};
+
 	temperature_calib: calib@1f4 {
 		/* only the upper two bytes are relevant */
 		reg = <0x1f4 0x4>;
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
