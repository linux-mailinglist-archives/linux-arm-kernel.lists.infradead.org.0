Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6249AB1A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 11:07:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PDIipuaNwcFagl5e174+ifOUG/iLc0Ty2X/wkQYpupA=; b=PIaGGzSdWbhxEK
	W8QCSLAwqD0OUYAhJJRHW4AyvvqKmr3MGF4f/019qrvHIH+EibKapS0af8U+XR0DrUEzGJVG9IsHk
	lQE7xOCDzPlDWo547S+nlNT3LKq+Z596Qb0M0iMdR08vt3CI9F/++1OcG3OkTHMIuXOvw4cIEjewO
	AeednUTt3r1Nl87i1/QGqHzSWyYs0JYlCnuhZl7Zycg5GAbCJ04iQhz1dYhzQ+C5wlivbHyssMxJc
	VhV7eTG3eEeBFVtDS/WkCcCDmNioRhYNrxmzUOSWQCnuwNNC077BCgixJjJ4OhXHYolREVTmXtJZ3
	KkeHGfpkLm7jSs7nRn2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i15Xj-0003sL-51; Fri, 23 Aug 2019 09:07:35 +0000
Received: from mail-wm1-x342.google.com ([2a00:1450:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i15Ug-0000v1-LN
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 09:04:32 +0000
Received: by mail-wm1-x342.google.com with SMTP id k1so8219399wmi.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 23 Aug 2019 02:04:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=tKHSL2TvLdzeYTHakHcSzedmEttI2anacBGRuNcRBkU=;
 b=GmV8Y1qAC14OzfTnstiQTLtSRJ4eKTZc3RCsEia7V/22Us2/TJ6DvracJKrPIOyt0V
 XSWI5ru9VfHDziUruw6sVNCura20aXsw6/OFD+G8Vl6ER+1uaJK3gjk/bs9F/JOojCnA
 NQM6+A3A4avL9YZKxlcRqquhPsVqoR2MaOUU6Su+2xeJJYA6vFWXsv4T9cfqlBvrU3Qw
 7+lilrgMdKAYBbmZ/U/p2dANT24xBrDEr8LHFqmDpq9O5q0qrGywSyMQhqIlGJy4yzu6
 05x1HRk2ngC9gFNXeDvtN3UR39CssrFA71aRJk/3PQR39v+lXHrEDfef0SLrv6ZG49M6
 bK1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=tKHSL2TvLdzeYTHakHcSzedmEttI2anacBGRuNcRBkU=;
 b=ecYYCcmk7L+qpInlRW6q43OOhBXbJ78fFBqcdJAt7CVUDLVG7hqt7F4jRuOn68zH+2
 ghbuiGrxmSrVG2ZSYdbtVgZtipRncp3VECPCvfs18Ixg9YnUgZ+t9eN9psyL5mdcYyIF
 tLQOQ4vL6FtVrUYUtY8tq9mV6d+TRBBE5zf++bPGIxhIDz3raiehC20bAKaEHoGH1j1Q
 m6Kmfs0k0GIzh8LCIYEA6jul0mUhq10O5tkXClCTe+T+rkpyn87Qa2gTRyRQ+2KZdaRg
 MxXP96q8vAJ9YLWVXbasdg7YQLau9ff7dzOit73WX7TwoBTKhxU0Q4Za51EYpj3hnc3i
 MDkw==
X-Gm-Message-State: APjAAAWnlXIsWoGWCQQVirHMsAIO95sPD/biGewpnXOI0CMDlfjBAjjZ
 fQoYWYhDXBbDZwe9mn8TrUJWyw==
X-Google-Smtp-Source: APXvYqyNRvGj3V0YbEVMpMvc8XkM8d3DsccgAZV4aJwajw0WiCJWsTm7i1pRBnGymWb8H802qYaLHw==
X-Received: by 2002:a1c:a584:: with SMTP id o126mr3941416wme.147.1566551065315; 
 Fri, 23 Aug 2019 02:04:25 -0700 (PDT)
Received: from bender.baylibre.local
 (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id x26sm1625544wmj.42.2019.08.23.02.04.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 23 Aug 2019 02:04:24 -0700 (PDT)
From: Neil Armstrong <narmstrong@baylibre.com>
To: khilman@baylibre.com,
	ulf.hansson@linaro.org
Subject: [PATCH v2 5/5] arm64: dts: meson-sm1-sei610: add USB support
Date: Fri, 23 Aug 2019 11:04:18 +0200
Message-Id: <20190823090418.17148-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823090418.17148-1-narmstrong@baylibre.com>
References: <20190823090418.17148-1-narmstrong@baylibre.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_020427_358158_154F0437 
X-CRM114-Status: GOOD (  10.89  )
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
Cc: linux-amlogic@lists.infradead.org, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Neil Armstrong <narmstrong@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the USB properties for the Amlogic SM1 Based SEI610 Board in order to
support the USB DRD Type-C port and the USB3 Type A port.

The USB DRD Type-C controller uses the ID signal to toggle the USB role
between the DWC3 Host controller and the DWC2 Device controller.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
index 66bd3bfbaf91..36ac2e4b970d 100644
--- a/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
+++ b/arch/arm64/boot/dts/amlogic/meson-sm1-sei610.dts
@@ -321,3 +321,8 @@
 	pinctrl-0 = <&uart_ao_a_pins>;
 	pinctrl-names = "default";
 };
+
+&usb {
+	status = "okay";
+	dr_mode = "otg";
+};
-- 
2.22.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
