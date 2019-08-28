Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C65AA0991
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 20:34:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1jNAXhx0vlRkDSE6T8fUzxDVoqNYUHUqqN21fxMYUI=; b=m+HVjZcEfqLEf0Xvsk6/T3L7ZC
	tuGR4j7dFGXmLl9awY4ftRSv7yChsvgrTr8pQ3rs2VvuDWxovWM3DJ13KjtevugwcTGHmCPt7anih
	JV9iHUVtK4y1NGNZ20dENmwD7mpxn+bUQv1VsU+S995+6jgBEPoUE4oTqD+ozuUJnCRWs80yzutAZ
	1oly4A1qycsiWXxrYh2XpiTqt18tddT9b4b1dmtKMc4MCjfPhMY5tp7Ecle/gov/PF9ODkPfScOce
	FxX+efEQiVhF3v8u5533HPnqAg2NsZUCRfuGoz68U3gETsktzeNh/i+3Pw3je1MlRpnSFP05LJdc6
	LrVGgoNA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i32mG-0004bf-V0; Wed, 28 Aug 2019 18:34:41 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i32ld-0004Ar-2l
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 18:34:02 +0000
Received: by mail-io1-xd43.google.com with SMTP id q12so1576134iog.4
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 28 Aug 2019 11:34:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=ozNw3NE1JUp9pX6ogvfav5i5ZnpDbmV+xKm3jf0X7EE=;
 b=IdtBb0rvJE9GLEHE60C0qDVcDivvz1Dix/CyDeIeh2jbe1FHOAffT0qEnxaHIw+usM
 gjjciUsJ679hhWLvdLUHPj8J2xDuuHVVL1DZqdzFCYX687nMI0ipAJHvKv9jed4n4Rf7
 f2wQ+WzWA/X6M4EG/3vUOm4MHFTymmvQjm5gWIVklDPYbCtaGLMidTfrChAdpQj5ZnmJ
 j+AW1WxIZuYOpZbJ7lxNes5xL6CHVh/RS1oUDwqG0FrHFVa3jvh7TwkN7TkdkGeEIU/m
 32IieWFw5cVG0oLUlXDFktNea/U1B/iIPD8UILrKPEWMFNWYKi/tqFU5hxc3VvBjVJWr
 EYDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=ozNw3NE1JUp9pX6ogvfav5i5ZnpDbmV+xKm3jf0X7EE=;
 b=fh7dsSziTRQUnO+TnKD2iY+HfW8EVunG2PsTT7r9IyurfWy8aR2GRc7GmT1gFY+mkB
 iozlrcy1qMG3LUFf1d54e8ejhLesPtF/gGJEcdSHKXlrQqrSyKtimZ+Ir3bYvjV9H7Hw
 1UyfLnNVHKtkhhbCUtYJP2qZu1pTGgEbD9kmjr1l7o9f/VEt88c8HwncHlmlbc4Wuz2C
 U2+5QwoYbOZHrQ+KXN3tNNAloOAVwxMRYxkZ0zZjRgc8qu4i9oKUpVtkcoEw8p3T20S2
 u7Bo/7Ee3ZnjTYxdJnvq1PJPON/KPeNQLRxXISoNSMymO4LNcYbk8mVHI+yOqyzAwzS+
 Dvtw==
X-Gm-Message-State: APjAAAXVeo+1omi7dngT0vhwpmGPzTALNXrqPqfF144VTIWfQiD9sLG5
 qIoCbRak9nlPLU58tt28JOE=
X-Google-Smtp-Source: APXvYqwoFvpIV1gSugWa+3bteD7X9nYd2/H9p8V+wAO7w9aMkOxysmMwfOPC+IGkS5Bsdt0+TlVjPQ==
X-Received: by 2002:a6b:710a:: with SMTP id q10mr1869231iog.273.1567017240350; 
 Wed, 28 Aug 2019 11:34:00 -0700 (PDT)
Received: from localhost.localdomain (c-73-37-219-234.hsd1.mn.comcast.net.
 [73.37.219.234])
 by smtp.gmail.com with ESMTPSA id o3sm2494650ioo.74.2019.08.28.11.33.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 28 Aug 2019 11:33:59 -0700 (PDT)
From: Adam Ford <aford173@gmail.com>
To: linux-omap@vger.kernel.org
Subject: [PATCH 3/3] ARM: dts: am3517-evm: Fix missing video
Date: Wed, 28 Aug 2019 13:33:51 -0500
Message-Id: <20190828183351.822-3-aford173@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190828183351.822-1-aford173@gmail.com>
References: <20190828183351.822-1-aford173@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_113401_123326_F95D8DC7 
X-CRM114-Status: GOOD (  14.93  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (aford173[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (aford173[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Tony Lindgren <tony@atomide.com>, Russell King <linux@armlinux.org.uk>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

A previous commit removed the panel-dpi driver, which made the
video on the AM3517-evm stop working because it relied on the dpi
driver for setting video timings.  Now that the simple-panel driver
is available in omap2plus, this patch migrates the am3517-evm
to use a similar panel and remove the manual timing requirements.

Fixes: 8bf4b1621178 ("drm/omap: Remove panel-dpi driver")

Signed-off-by: Adam Ford <aford173@gmail.com>

diff --git a/arch/arm/boot/dts/am3517-evm.dts b/arch/arm/boot/dts/am3517-evm.dts
index ebfe28c2f544..a1fd3e63e86e 100644
--- a/arch/arm/boot/dts/am3517-evm.dts
+++ b/arch/arm/boot/dts/am3517-evm.dts
@@ -124,10 +124,11 @@
 	};
 
 	lcd0: display@0 {
-		compatible = "panel-dpi";
+		/* This isn't the exact LCD, but the timings meet spec */
+		/* To make it work, set CONFIG_OMAP2_DSS_MIN_FCK_PER_PCK=4 */
+		compatible = "newhaven,nhd-4.3-480272ef-atxl";
 		label = "15";
-		status = "okay";
-		pinctrl-names = "default";
+		backlight = <&bl>;
 		enable-gpios = <&gpio6 16 GPIO_ACTIVE_HIGH>;	/* gpio176, lcd INI */
 		vcc-supply = <&vdd_io_reg>;
 
@@ -136,22 +137,6 @@
 				remote-endpoint = <&dpi_out>;
 			};
 		};
-
-		panel-timing {
-			clock-frequency = <9000000>;
-			hactive = <480>;
-			vactive = <272>;
-			hfront-porch = <3>;
-			hback-porch = <2>;
-			hsync-len = <42>;
-			vback-porch = <3>;
-			vfront-porch = <4>;
-			vsync-len = <11>;
-			hsync-active = <0>;
-			vsync-active = <0>;
-			de-active = <1>;
-			pixelclk-active = <1>;
-		};
 	};
 
 	bl: backlight {
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
