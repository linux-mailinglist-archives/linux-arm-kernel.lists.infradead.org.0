Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0966C180885
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 20:49:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p7dOV27Mj75SRNBmLttm9N7j8nZT/0XUWjAnDOeCMhA=; b=cxp1QXOJsQqNoZ
	r/Th8rBuJGgEQ5dZ18z9WJbiGHcu4Wukp615v88nkUl4DLTFr/lzctUnEMxBdmWN0k0UGKM/9BS6d
	AC/HVQYsQhtp/z8qwtmX1wZDl1EPEN6IxebVshn8IgaLhEeJYOvjh7yKrL7Hg+mJjFCW9JF257dtC
	B7VdNkcJQIy87DeSOOGV9jwgFGnDByteMNLCnPK1yNee7bDrYPgK1TrlLKHA5RYA7eJM4eUpieFAs
	DXLzshM66X2LS81DpA8WoSTmRu3sT6uCKTtS2wKHDK87yoItLFtjIsh8U4NeA9fS4Af+pzqQwzuvi
	5ors7pjEXsmWJCiYGEOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBkst-0001mJ-4z; Tue, 10 Mar 2020 19:49:47 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBksb-0001kX-V2
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 19:49:31 +0000
Received: by mail-pf1-x443.google.com with SMTP id z5so2105148pfn.5
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 12:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=x7SlQ0bsHgZszwUhHBadIYsQ2+v9rQS255Bp3qcZsTY=;
 b=TMgpPbxw0ko1PC3JxLulVtx+EOtLWWSi8eXOYfPX2GTCpCdg/2lBdl98IKRRz0wAl9
 IoedTvSKkzCXBvqx5h1q3KndXz802MaIrSE9GolGUs+oSaC9vCe1dRkMUzq2axRyiJnX
 j+oXEAIEvIAKugR+isAITSQIptoiGEUUg3W7bjQJrqoHScpWtGRl/f2HSEN3u3/eWRDx
 ZkbrwCYemc7nuKSphAFtpDszAPf9sjlfhfRnnS1VNTNb/B4WuuxClKLMVnf96/w2CBFU
 Y2XKEeI/nwSLzWsq0Otj1JC28ETShWQNQuHb/V6u9uAmFkZASm/IaXpqIKYzDrPqqAY5
 SzbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=x7SlQ0bsHgZszwUhHBadIYsQ2+v9rQS255Bp3qcZsTY=;
 b=E4rdmkZNGMAXCs49w11sm6T20UDjDyRRejJN8YrLXw1ellf7FppKg52IkBNft9BfXT
 Baa/wndEI9knOJwWmIUrx/K9lxYQwbXDJ8/YhWtUkO9ACpwZFvTqfdDz0UdhQHNzGd4/
 +WQ/NOiqSLFsr3WFM9x+n+Fq9IaFVAw0/pXMh5Oef9sYSnv4dMzuPM504QoFkUtZ5/bg
 NmnOEPwfH4F1OUtt4jArfv8IND/Vgihb3N5p2TEocmyLyiJvWshH11fQXlMnzbd/XAss
 oWPeoabNfJXBbXO6yY1vO6PbHKEw9nNFOzmQkl+c8dy0qDyWDhs7L8J1bGhoSZ2ubCr+
 po8w==
X-Gm-Message-State: ANhLgQ0H/IDs92i7eYaxX3P2tkSM7k3BCGogYTnC0Dry0Mxs48NzC1WA
 JDPJrIz951HMk56QvkRZ9KA=
X-Google-Smtp-Source: ADFU+vsX0s58xHBrZiNWhQNZ4+BYI9nXUKflY0WKkor13fnLHK+tPp5d03Uw5SXrCIjLbznhdB/0EA==
X-Received: by 2002:a62:880f:: with SMTP id l15mr3796070pfd.218.1583869768082; 
 Tue, 10 Mar 2020 12:49:28 -0700 (PDT)
Received: from localhost.localdomain ([45.114.62.228])
 by smtp.gmail.com with ESMTPSA id d19sm3784490pfd.82.2020.03.10.12.49.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Mar 2020 12:49:27 -0700 (PDT)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCHv3 1/5] devicetree: bindings: exynos: Add new compatible for
 Exynos5420 dwc3 clocks support
Date: Tue, 10 Mar 2020 19:48:50 +0000
Message-Id: <20200310194854.831-2-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200310194854.831-1-linux.amoon@gmail.com>
References: <20200310194854.831-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_124930_003898_7111341E 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
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
 Rob Herring <robh@kernel.org>, Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Add the new compatible string for Exynos5422 DWC3 to support
enable/disable of core and suspend clk by DWC3 driver.
Also updated the clock names for compatible samsung,exynos5420-dwusb3.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Anand Moon <linux.amoon@gmail.com>
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
