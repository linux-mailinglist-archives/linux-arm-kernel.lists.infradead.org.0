Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FBB211838E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 10:28:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=7H6+E/gHTZwGOx0XL0lSUqferDi3tEkO7+Szd7I5uos=; b=tYE
	dwkYJKgOtYmvHu6GXWG4DzldXAWWXyTbo2+jVbhAznFLWYi2O5VNi1aGxs/3fNzqfNu1yfJrf0FGA
	ZShMMf8W6yqkDJ2WqWSv5nSyWHVdW8fFpk4CZPf/aDupPk4YDeYVNJoJNghQcTtJ+mH3WIgt6AZgo
	ZWa5zW+aHo/zqsiYuMKP0X6eLtxAqW5gea4tm6XwWSoEqeMcEoeEl07psjz7UYKjkyYbSixpr+v1i
	XwDFGFytBpCdzonYBLFAJ0v/H0LoDTTYrM3RkQ0ngTc6fMWDiSTLFXjPxc9ddmdr28PyJiMv77D8A
	bLwly/PaSMK+N8gNvAZnl1lgCinG1Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iebon-0002ys-E8; Tue, 10 Dec 2019 09:28:33 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieboe-0002xu-2o
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 09:28:25 +0000
Received: by mail-wr1-x441.google.com with SMTP id z7so19069926wrl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Dec 2019 01:28:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=from:to:cc:subject:date:message-id;
 bh=oAs8ibnr4mvDvPDKIG5QSiRq0APvvSSUYr3TLtcey1c=;
 b=sRuRnggVkOKW6gbGS0j4n40P5A5fQbUOobxwjiMP8vC9THrPFc2kSF5OBow4+CPsFO
 42q7uSXgtaaQwSCHuv4e3jT8OtwPJNtT/3LeczYeqEbuQPOG1SLv4L/+dg/I5x4vIOyG
 olG8nEl8m68kZcMAfr0B+sM20uCCB6f3SEdFOpbbo31lDCpklzMvYZLdRgq+KPDcx6M0
 FgqTTsyPZLDLuCs6Z70pc4wMgI4tw+dGiTI5NRTL6woVqUASQfmBlKAZaqHxagugWO1r
 UF9+nPUkHjVKdFVxa9fg+lsHoEehhLL1RS7gX9z+2ChPy0UzCJmdhiYovWXijyowGyqx
 AIwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=oAs8ibnr4mvDvPDKIG5QSiRq0APvvSSUYr3TLtcey1c=;
 b=CNGZ/xXvdmTQfnJr3jGO1F9WK2F4HrF3xMw0yEuWZR7ZJLCjdGhvpncpLZMDtpyARE
 HryY2D3XWI3F5WTUYD605OItgVjpqiAc/3r3gmdsIvJfjRxXM/5sBSdPQ5PhhCB9FC1g
 e+zwwyb9QHk9qvHj46EWvGVLEtXJxpiBtbgQ+E1fvrPbAZjR0IlMPm2ctGJp4+I5LnGp
 E0XLbTOkyru4mvq/dqt4iNNQYsOXLDDNtNdwiLIW5sHeaT8eszkZBAWXKGuNEkTv0i1C
 r+ISApkreBg2paLJeDTfZez/A6ReNyAtj0AoPuu38+is5fczwd2pMGfnxTDE58CJncSR
 qfKg==
X-Gm-Message-State: APjAAAUoXHbYpoY4iyloDQRM1YlkhO2lZogJRQlgNr/L9A4N60EIbMDC
 SH7Rb78XwhCn+TYE5usytBR/Tw==
X-Google-Smtp-Source: APXvYqxItV/IdHWtVOSgaK4JqtnqK9fn7jjy/+Xj1c+6KcVGaRa6Cjx+549x4dxDF3wFheCoAD/vXw==
X-Received: by 2002:adf:f311:: with SMTP id i17mr2001059wro.81.1575970102448; 
 Tue, 10 Dec 2019 01:28:22 -0800 (PST)
Received: from localhost.localdomain ([51.15.160.169])
 by smtp.googlemail.com with ESMTPSA id o15sm2602560wra.83.2019.12.10.01.28.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Tue, 10 Dec 2019 01:28:21 -0800 (PST)
From: Corentin Labbe <clabbe@baylibre.com>
To: mark.rutland@arm.com, mripard@kernel.org, robh+dt@kernel.org,
 wens@csie.org, georgii.staroselskii@emlid.com,
 aleksandr.aleksandrov@emlid.com
Subject: [PATCH] ARM: dts: allwinner: restore hdmi_con_in node
Date: Tue, 10 Dec 2019 09:28:07 +0000
Message-Id: <1575970087-11667-1-git-send-email-clabbe@baylibre.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_012824_124877_E31125F7 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Corentin Labbe <clabbe@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Compiling today next (20191210) fail to build with
arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts:53.25-55.4: ERROR (phandle_references): /soc/hdmi@1ee0000/ports/port@1/endpoint: Reference to non-existent node or label "hdmi_con_in"

This patch fixes the build by restoring this node.

Fixes: b120a822ef10 ("ARM: dts: allwinner: Split out non-SoC specific parts of Neutis N5")
Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 .../allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts  | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
index fb96d356055e..d6cc6592cfa3 100644
--- a/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
+++ b/arch/arm64/boot/dts/allwinner/sun50i-h5-emlid-neutis-n5-devboard.dts
@@ -15,6 +15,17 @@
 		     "emlid,neutis-n5",
 		     "allwinner,sun50i-h5";
 
+	connector {
+		compatible = "hdmi-connector";
+		type = "a";
+
+		port {
+			hdmi_con_in: endpoint {
+				remote-endpoint = <&hdmi_out_con>;
+			};
+		};
+	};
+
 	vdd_cpux: gpio-regulator {
 		compatible = "regulator-gpio";
 		regulator-name = "vdd-cpux";
-- 
2.23.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
