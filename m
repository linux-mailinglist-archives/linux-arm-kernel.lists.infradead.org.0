Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F104B25E90
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 May 2019 09:13:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GqT0A7PEkcCKXrxQs25ouQZRbdEAM9D32eSa3nmJAxw=; b=A1vgEiL9JlWE7z
	EetDfzAiGQ6gsYFOGJ0dz3YSr9G2soUr5rd4uEcKs45c+qKHlIKrxkO9KFlg/fY4y73yPlM4PIcZz
	Ht8wTSjND8oo2KIehBA80S11EKZ0J9OMxSlx0ne25rBwMUjyXRagjK/u2lLzYKJzY6MsLOje7IDQ/
	HK6iiQCCubJ5rSLFlwoyxOQWjv8hHGWMHOedNfFYVdTs3l/sII3r35NG7VT0WkjcKzRJ8aoBMmgmr
	ftwgsCt2KhKK7hiVtkGZdDhaCbyiVRu6yXfagBKytsbpKo2I1t5RwPK3MgZMnFHGh1Ij31HDGQQHP
	65YAfE0IzS6kKxidJmCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTLR1-0002y4-Cv; Wed, 22 May 2019 07:13:11 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTLQl-0002rD-4R
 for linux-arm-kernel@lists.infradead.org; Wed, 22 May 2019 07:12:56 +0000
Received: by mail-pl1-x644.google.com with SMTP id a5so603127pls.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 22 May 2019 00:12:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=C8bTu6X7CFTpKQj2hlqQMei3Kew6tYJUCMubi9x8LbI=;
 b=GVXyOm2sFRF5KWitsBFnioMb6BvG6y2aTrmjTV6OwCKD0BIk3qaNl7/7JlUAX62yba
 JgsIEW1CTiT8GchF8yPlm2tZqzPRn8KOP5RdFITahy9j6C9kw/mLlxbjcHRIB5kXxhH8
 Jx4hCmyZv+fxLO5wvBoOiyruJp9TI52XM3bTXw8O6J0Fkn8C4Sdc8LPclW1s9U2zEQ5s
 05KmfBnwQDGbrsE7GTvfYqmYYHJ0mlX0QyPErXuj7kyg87Wizxwt1GospRgLxwzR/uGg
 ltNwpyZaZUm/dmptBQp7HZdQpRwmePRd2+81ta8sJyXoeWOjvgjmWH9hFtpg1jUfkTLK
 t/Sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=C8bTu6X7CFTpKQj2hlqQMei3Kew6tYJUCMubi9x8LbI=;
 b=W8ZUiEMz22uo5thsaUK+4EqxRmsfD4pPc6FjSUwg8PLMZdtId0lgBmnIXMiCznx2Iv
 ltEJxlbZ0OTX4ALJbEXiH206fzFvcg4ZZOf3JlcLtZ+9OpjfzXntyjjomb6TnxUJoXrC
 Cp9R29ht5AqLl2lGeTmM5F/n0PEo1Q+hgUsPjh5MGcCr0/7sHxbv/1vMqYpm6ZpZJQxL
 peMNeq1QESPlwbFRsJ1Rz0JOXyL/L6BRYFU6Ubr8z1Yv/CVHrpEW+NGJP4RUt7gvITfU
 jgvpZvgX9frDj+RfEOEkcwK/2r1DHSq1JBD7MObaDfPsWnfCmOpj+gIpEMQLhkTYtIIA
 sHQA==
X-Gm-Message-State: APjAAAXIS67d9czITu0oJK+aRNoCzdd5PLl0uMFRKoM+ryfQh0jlNVEp
 z9hfuef8QUOevml65vwTEysfYBRPStY=
X-Google-Smtp-Source: APXvYqyl/Iw28Z/U3/w5+sDvBf83DFgGZzoQgrqzc8FoY5Bm5jBg7e6viK0u4Kh1ncSODy3ng1nlfw==
X-Received: by 2002:a17:902:7592:: with SMTP id
 j18mr28945645pll.213.1558509174106; 
 Wed, 22 May 2019 00:12:54 -0700 (PDT)
Received: from localhost.lan (c-24-22-235-96.hsd1.wa.comcast.net.
 [24.22.235.96])
 by smtp.gmail.com with ESMTPSA id n127sm22750178pga.57.2019.05.22.00.12.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 22 May 2019 00:12:53 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
To: linux-arm-kernel@lists.infradead.org
Subject: [PATCH 2/3] ARM: dts: imx6: rdu2: Disable WP for USDHC2 and USDHC3
Date: Wed, 22 May 2019 00:12:26 -0700
Message-Id: <20190522071227.31488-2-andrew.smirnov@gmail.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190522071227.31488-1-andrew.smirnov@gmail.com>
References: <20190522071227.31488-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190522_001255_360965_1B644D9B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (andrew.smirnov[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-kernel@vger.kernel.org, Fabio Estevam <festevam@gmail.com>,
 Chris Healy <cphealy@gmail.com>, Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RDU2 production units come with resistor connecting WP pin to
correpsonding GPIO DNPed for both SD card slots. Drop any WP related
configuration and mark both slots with "disable-wp".

Reported-by: Chris Healy <cphealy@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
Cc: Shawn Guo <shawnguo@kernel.org>
Cc: Fabio Estevam <festevam@gmail.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: linux-arm-kernel@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---
 arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi | 6 ++----
 1 file changed, 2 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
index 977d923e35df..5484e4b87975 100644
--- a/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
+++ b/arch/arm/boot/dts/imx6qdl-zii-rdu2.dtsi
@@ -625,7 +625,7 @@
 	pinctrl-0 = <&pinctrl_usdhc2>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 2 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 3 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -638,7 +638,7 @@
 	pinctrl-0 = <&pinctrl_usdhc3>;
 	bus-width = <4>;
 	cd-gpios = <&gpio2 0 GPIO_ACTIVE_LOW>;
-	wp-gpios = <&gpio2 1 GPIO_ACTIVE_HIGH>;
+	disable-wp;
 	vmmc-supply = <&reg_3p3v_sd>;
 	vqmmc-supply = <&reg_3p3v>;
 	no-1-8-v;
@@ -1054,7 +1054,6 @@
 			MX6QDL_PAD_SD2_DAT1__SD2_DATA1		0x17059
 			MX6QDL_PAD_SD2_DAT2__SD2_DATA2		0x17059
 			MX6QDL_PAD_SD2_DAT3__SD2_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D3__GPIO2_IO03		0x40010040
 			MX6QDL_PAD_NANDF_D2__GPIO2_IO02		0x40010040
 		>;
 	};
@@ -1067,7 +1066,6 @@
 			MX6QDL_PAD_SD3_DAT1__SD3_DATA1		0x17059
 			MX6QDL_PAD_SD3_DAT2__SD3_DATA2		0x17059
 			MX6QDL_PAD_SD3_DAT3__SD3_DATA3		0x17059
-			MX6QDL_PAD_NANDF_D1__GPIO2_IO01		0x40010040
 			MX6QDL_PAD_NANDF_D0__GPIO2_IO00		0x40010040
 
 		>;
-- 
2.21.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
