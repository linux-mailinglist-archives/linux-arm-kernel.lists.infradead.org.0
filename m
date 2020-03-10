Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D990E18088C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:50:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Stt/xVPVfyG4AP4u9JjfOmeiPz2VYfNxW5NH4Pbbt6E=; b=jBRILXQdX1M9AO
	++SW/v+431FQy4Md3+Pz5TkHlFJCWTEESnZqoBJmux/QmbRSWMlYmAHoav4oKm0gkyiw7mapDY7YZ
	Qdy3ea5RRFjUYjA1siRG/pFwmVEMJeG549Q86YPP9PArfTWjaSLDJ2NvdY9EKW7l6kDHQgSPdHWpI
	4De524hHNJCw/r/mxL8eyp8XHJ2z+S7fC/h04tDQkMywmqfZ/SbDY1exsitx/MXENgsd3Q2At7oTJ
	aQuUuI00H4qjk42bQi3etbdwhjr+qI+YuJtZL8ppx8tvE1viKv0rqutt6JcltZX0XtUSxSIhI+iSU
	OaZLWXans9NReui8Md4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBktk-0003h9-KG; Tue, 10 Mar 2020 19:50:40 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksq-0001vM-Ht
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:49 +0000
Received: by mail-pf1-x441.google.com with SMTP id 23so5190311pfj.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=qy+AMvg+nSvSC0ONVo240hNIxIkSB0OeFrGgfVG5/JQ=;
 b=Ryl8SeA+3eogYZ6yPC1SyQIH0votU+mlri3VVKOquAkHVa+fCFv5+PY9+tRb3y/TG9
 wNcmZ7oGBLJwE0SyMVjO4rPq2UTrWs3y0Wf2N8cthoIha2UmDdlv3foUJgkgqvAPmWX4
 ZwO+McwVCHwuPAhcl3VWZ6ubnsb/EFV67Qm/rVfnpBzvf0AIL3yFbTY3IEyfc9Jpjt4i
 DicuxNzeb4Fh4gG9Cpd+kk9aJnAtZvb5pbbFztVE/Xw7clyfaIXvyB7bFcSbruEm/4Gc
 tj5xoyrfXLDTTj1ZxCCsN30qlAlEr+H0OeTyeC8wbe1GLL4idYtuQiGQp8bkWsjWjes5
 MCog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=qy+AMvg+nSvSC0ONVo240hNIxIkSB0OeFrGgfVG5/JQ=;
 b=G/t42DUV3BZWAPPl5U+tl1kRKrJR0JIkAhH6gTc/LC06eGcIgLUTEhgtwkPlq0BZNF
 9X7qx6TcGvvXUFRvsXXzmhlSfWFrcr3c80u3qm6Fbw4PKX/4jozi0E38FwHHazA+PvOl
 HvuUFvo1QBRBcWe7KLK93BQ+d4G8ciunXsyv9q87l3SRTkn+zrBMBmJ10TMTFkOPYh5H
 JDYQldDXI550Sqzph3HBNW72t9YSDXbH7pImhxRt0TUhyebo+klAyXFgEO85IpTYBR0p
 3jquuXbvRW7OxuzQKRIx5EK9jnaubu/l3uUaNuJlBdymnPLj0hw3x7LuRwB8qjc4jlDf
 lWLg==
X-Gm-Message-State: ANhLgQ0ZES44NRB8vPCXbMVxQl327XVAUnR9ExP+QL/LJZ+97qrY+wMI
 NyGnFh5Rka26YdcYMnYkXTo=
X-Google-Smtp-Source: ADFU+vs2n4qmIA2s6IYw23zn3QxspN7ea/eADdMqXUX6lRw9+Nj+HTWuyikX+b/VavTLEPf/k/KcXA==
X-Received: by 2002:a62:1552:: with SMTP id 79mr10399764pfv.215.1583869783177; 
 Tue, 10 Mar 2020 12:49:43 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:42 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 4/5] usb: dwc3: exynos: Add support for Exynos5422 suspend
 clk
Date: Tue, 10 Mar 2020 19:48:53 +0000
Message-Id: <20200310194854.831-5-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310194854.831-1-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124944_663361_5206AA61 
X-CRM114-Status: GOOD (  13.35  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Felipe Balbi <balbi@kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 Tomasz Figa <tomasz.figa@gmail.com>, Krzysztof Kozlowski <krzk@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>, Rob Herring <robh+dt@kernel.org>,
 Kukjin Kim <kgene@kernel.org>, Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Exynos5422 DWC3 module support two clk USBD300 and SCLK_USBD300
so add missing code to enable/disable code and suspend clk, for this
add a new compatible samsung,exynos5420-dwusb3 to help configure
dwc3 code and dwc3 suspend clock. Suspend clock controls the PHY power
change from P0 to P1/P2/P3 during U0 to U1/U2/U3 transition.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
 drivers/usb/dwc3/dwc3-exynos.c | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/drivers/usb/dwc3/dwc3-exynos.c b/drivers/usb/dwc3/dwc3-exynos.c
index 90bb022737da..48b68b6f0dc8 100644
--- a/drivers/usb/dwc3/dwc3-exynos.c
+++ b/drivers/usb/dwc3/dwc3-exynos.c
@@ -162,6 +162,12 @@ static const struct dwc3_exynos_driverdata exynos5250_drvdata = {
 	.suspend_clk_idx = -1,
 };
 
+static const struct dwc3_exynos_driverdata exynos5420_drvdata = {
+	.clk_names = { "usbdrd30", "usbdrd30_susp_clk"},
+	.num_clks = 2,
+	.suspend_clk_idx = 1,
+};
+
 static const struct dwc3_exynos_driverdata exynos5433_drvdata = {
 	.clk_names = { "aclk", "susp_clk", "pipe_pclk", "phyclk" },
 	.num_clks = 4,
@@ -178,6 +184,9 @@ static const struct of_device_id exynos_dwc3_match[] = {
 	{
 		.compatible = "samsung,exynos5250-dwusb3",
 		.data = &exynos5250_drvdata,
+	}, {
+		.compatible = "samsung,exynos5420-dwusb3",
+		.data = &exynos5420_drvdata,
 	}, {
 		.compatible = "samsung,exynos5433-dwusb3",
 		.data = &exynos5433_drvdata,
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
