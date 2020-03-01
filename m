Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2F5A174FE1
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 22:21:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BpcEFOnUPQxnAPMFSnHYIAB7e5UkXj3QaR+HVXYqnl8=; b=D1CtoTgeWqgnB3
	oVntgZCkKIHPQt1XS7NUTjr5MXtVNMrP3Tp/Sul3ciIbEBz/P7YfrH7YK9BrkNgMFKrt6pp5CqozK
	vYqUsek7a8yCQ5noa10JhlsYVKqFFtemVpZ0E9IcogtH9l3NF+woussEkVXYJakf+ZtGvHrrKALtX
	/lqwFy56LzmIyR2HZONPjJCwDF/VZgpA3l9MlElkJUmjpr4jemCPq1yyCnoeUDBiE7X7+jj5KfJvy
	NYF5YT3rKCANLuaZZl7N5U5eO87z6pRlQ2GxKRi6BJi6Ae0hb6QcCMqK5wQPVSIrcmoJlD5wQgrWT
	IilGjqUqeYjxz+fNgvuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8W1i-00083Q-Ui; Sun, 01 Mar 2020 21:21:30 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8W10-0007a4-Hn
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 21:20:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id y1so3365190plp.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 13:20:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=D6dnU3YCYSZUcdITT9tRm2FU4sfYo2G5AyV3xv+G08o=;
 b=MgqWfHeI0HYwF89+XYqy06+aARmL6UTcW9w64ZmEKNGLgJWHqfPaY2/BjjcxpeSmOg
 drJB2EsgzlbcfszvaC/s77CI5iWgYl4eAZAritTid4/RvPI6EPf57V0I+CC+nGjPaNlH
 fjW3FRuhURZIEjsLXEZOB53t6MYxEkm6vXJYu7cLfmL+Q1XDifYbhVJEXArvmb4R1yWw
 dhQYZ6Al24wX7bxpEz+/YdGgfiRmHkr2xfonMXtUOLJx6yHmkeWr7rslE8ov7T+VxT0K
 R7t8BvLQ/qpdW+w55dkMKSPgxnbZPxHnS8zerjNIFgrYCjSAxQPWkeVG12L8maX2gzJH
 cz6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=D6dnU3YCYSZUcdITT9tRm2FU4sfYo2G5AyV3xv+G08o=;
 b=Eq7K6FAGO0+24yEfKk9cxzEsOqG18Ct/abWCDmwaQiyEKlOE1qtkdhklHHCj+x++tD
 0/rWNyzfxT+BM0IvApbyTKF/ClQTqil+IXQg6LpD2d3gOEANuNQ6xhdsohBNtYYRiYtw
 IF3UzGtiiIm1vmJ1idfEWZmm8ykBR4BT0EgtCJSNkq+ToSIheyLPRCYdyit425f+t2iv
 PAE/RQ6xNLgn/0kIrMtKzVFmaUWKanchKS2Dp2KMHWrIRZwUnuVEq55ihP13ckybjA7U
 TiwEs0tVfsD13DKRGhaD9yedb0Ozumc+OodK5w3PQXhSfr0MHRjuxKqwwMTQNxwpdSHZ
 iMbQ==
X-Gm-Message-State: APjAAAVWvgBvip1UZm7tYtTbmXfhmE3yLjV/ENzXdCk+EE/6zZDN2yfH
 Kli9oIPkf7iZHWkOMH/h7Wg=
X-Google-Smtp-Source: APXvYqz5y/2XYySv8A042ORhLqlk6CxHi1FMncc8+lWZy0TS48OgPtnqt5PE2f7/b+21BO2umkDcZw==
X-Received: by 2002:a17:90a:928c:: with SMTP id
 n12mr18093932pjo.45.1583097645413; 
 Sun, 01 Mar 2020 13:20:45 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id u19sm4547686pgf.11.2020.03.01.13.20.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 13:20:44 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 3/3] usb: dwc3: exynos: Add support for Exynos5422 suspend
 clk
Date: Sun,  1 Mar 2020 21:20:18 +0000
Message-Id: <20200301212019.2248-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200301212019.2248-1-linux.amoon@gmail.com>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_132046_616610_5B1DF4D1 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-samsung-soc@vger.kernel.org,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh+dt@kernel.org>,
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
Append the Power Managment State control by the suspend clk for USB3.0
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
