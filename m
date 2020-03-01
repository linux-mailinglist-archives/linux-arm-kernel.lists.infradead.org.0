Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04C1A174FDF
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  1 Mar 2020 22:21:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DczS04QolTXlY33fPN3Rkl6nhThAVVTSW0ZIpY4fmUU=; b=MMNvQGOHJ7vc68
	9rllE9Dd3xKH+S1TfrHAT1jI322q+CyJyPyqzpVaAQlSx8eGO3J2s8x6LmZuzvHuXMcBBhitMs8pp
	eyCPv/6Fatu1k/ergNUwn2DCTGCJkYcEw7fZtRUPWsPtW/gf0FcxowHEe8ovtUbcjUoPXQCIhso02
	lG9q4nz1QE1NADvh7CqNSPsaDZWJkYwoc62xF76KSyOHCItllvyVQTx67zp/jY1mlZmyABzYv8yrI
	h9lSEi7pYeEaTncgk1nQ4hnfQe6GuewKmsgcH+UqDmvWoTLBtfIGwmtbty5bxHAsCzpSap0KLZYaq
	PeMsP/aMAr9tkcr8uq8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8W1F-0007XX-KA; Sun, 01 Mar 2020 21:21:01 +0000
Received: from mail-pj1-x102e.google.com ([2607:f8b0:4864:20::102e])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8W0s-0007Pb-7d
 for linux-arm-kernel@lists.infradead.org; Sun, 01 Mar 2020 21:20:39 +0000
Received: by mail-pj1-x102e.google.com with SMTP id lt1so802591pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Mar 2020 13:20:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mFTyi8DW0IuKC/6+mmSXVV/ifKvMR4lpHSQc45481xg=;
 b=tKpA5ANuIyP8IbtLlptofIZyr5COO4tZDOepft9b/F6Qq0qRXGTA1dzMY+3DTwm8OY
 SIU8qSqVw34+brjuSBKHlNwp5zNP7UMn1QozSMQegBj5Wrb5NfCZ2Uy+5g8XmL8eRLNv
 geuf+ISnAlJDqIXl8ym2HnAi+e5nOL35WDadRWd+JtfqQpJvcN1/fv7kGf75pqxr4kob
 9j1CZIac1mYIRCgL2LxEpc+dOxd7rV1FZQ7TOBwNGGkBMuDj+aRn/cQaFHlksyaFWTMH
 wzDv45QlZK0PjWM/yCHAxJKhqeYReS3DqBWpvZKdkF1+pGpH/PomdWeYTdHA1SnNz/sj
 4sSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mFTyi8DW0IuKC/6+mmSXVV/ifKvMR4lpHSQc45481xg=;
 b=McwU/niAaC4xWTwAbCVhl/1DjoH2GVi1a2mLrqxERw35b08iQIslvmaXUndgwUlb1X
 xfzE8qphlSHhn1Y10lXwjWqDgxfLBZGiCpwycGN+qmriVz/BMwOJkNvz/25hWPXsSE4X
 eR9HoGdafsiXFhiyMMkSeMq7KyurdLAHWo3eaFgqaF1kK4cJ1BW8xvazpPdwjOWCMOpA
 5iCPWrP/I5nWB7IpANmuLoN3foZNBHMRb2WQ4TgYep9s7pSBOlhqYzj9hv2rqYvvv7kj
 W0QNeqlorKDtg+s2iV4W4TI4SU+2jIJJ0iunUMwBAqW2FQCOx8VCnFjmL0710CApDsbh
 Dy8A==
X-Gm-Message-State: APjAAAVvsr+bWmRF0tQh5hJO0bRqgQV9nUx3uk9DUvqmODWM0MlTZjk6
 1NXMFo27L/84p8BNBZGFHlbIe6V6
X-Google-Smtp-Source: APXvYqxxO086EU0oDGLWKKeU0ppH/s01jURiRGoGxAUJ4jJA7gzPeMlYl8zy2POclwE7Yf9VtuasGQ==
X-Received: by 2002:a17:902:8d94:: with SMTP id
 v20mr15411460plo.259.1583097637445; 
 Sun, 01 Mar 2020 13:20:37 -0800 (PST)
Received: from localhost.localdomain ([103.51.74.208])
 by smtp.gmail.com with ESMTPSA id u19sm4547686pgf.11.2020.03.01.13.20.33
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 01 Mar 2020 13:20:37 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv2 1/3] devicetree: bindings: exynos: Add new compatible for
 Exynos5420 dwc3 clocks support
Date: Sun,  1 Mar 2020 21:20:16 +0000
Message-Id: <20200301212019.2248-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200301212019.2248-1-linux.amoon@gmail.com>
References: <20200301212019.2248-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200301_132038_293214_273A13DB 
X-CRM114-Status: GOOD (  13.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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

This patch adds the new compatible string for Exynos5422 DWC3
to support enable/disable of core and suspend clk by DWC3 driver.
Also updated the clock names for compatible samsung,exynos5420-dwusb3.

Signed-off-by: Anand Moon <linux.amoon@gmail.com>
---
Previous changes:
	Added the missing clock name for Exynos5420 complatible
---
 Documentation/devicetree/bindings/usb/exynos-usb.txt | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/usb/exynos-usb.txt b/Documentation/devicetree/bindings/usb/exynos-usb.txt
index 6aae1544f240..220f729ac8eb 100644
--- a/Documentation/devicetree/bindings/usb/exynos-usb.txt
+++ b/Documentation/devicetree/bindings/usb/exynos-usb.txt
@@ -69,7 +69,9 @@ DWC3
 Required properties:
  - compatible: should be one of the following -
 	       "samsung,exynos5250-dwusb3": for USB 3.0 DWC3 controller on
-					    Exynos5250/5420.
+					    Exynos5250.
+	       "samsung,exynos5420-dwusb3": for USB 3.0 DWC3 controller on
+					    Exynos5420.
 	       "samsung,exynos5433-dwusb3": for USB 3.0 DWC3 controller on
 					    Exynos5433.
 	       "samsung,exynos7-dwusb3": for USB 3.0 DWC3 controller on Exynos7.
@@ -82,6 +84,7 @@ Required properties:
                 Following clock names shall be provided for different
                 compatibles:
                  - samsung,exynos5250-dwusb3: "usbdrd30",
+                 - samsung,exynos5420-dwusb3: "usbdrd30", "usbdrd30_susp_clk",
                  - samsung,exynos5433-dwusb3: "aclk", "susp_clk", "pipe_pclk",
                                               "phyclk",
                  - samsung,exynos7-dwusb3: "usbdrd30", "usbdrd30_susp_clk",
-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
