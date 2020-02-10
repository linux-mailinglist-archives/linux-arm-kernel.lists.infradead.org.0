Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6148F15731B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 11:52:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1yFitMfXRno98QIr/xLhWpnkQFQNcBNOFDn86iNX6rk=; b=fHVxS5xTQFJYBs
	EG9BdAETv0gAZhgp0yguhfmdzU2HO6K2MvceGaEstLsXR95aG7IBH6fNwxOy27P4ZL+MtrkHfaGqk
	kOiACFBCPKSWYE/eU/XdW4KpBLW9kcYKD2WpzIXu18LAQJLjh51pUPK3QEIKdYZaKN3tXH/V8+uvO
	IkyROKL7rvjn5eB76lh+LNz/DF8/11CQVR/Pj40MQYAhk11udAoRj37PXFqsdXkgXjlP91ZHrxyOi
	fOXpn9I5rlc0n0vSLER/aDKrmXAM0b2BCM/AZPLvAydYZIZihCUVRfW8jNiX7W+oBScgpC0ohwpsM
	skUIYO1DGboR+y6ikUSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j16fd-0002K5-2L; Mon, 10 Feb 2020 10:52:05 +0000
Received: from mail-pg1-x52d.google.com ([2607:f8b0:4864:20::52d])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j16f5-0001nU-9h
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 10:51:32 +0000
Received: by mail-pg1-x52d.google.com with SMTP id z7so3720457pgk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 10 Feb 2020 02:51:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=+I5Vz5Y/bf9NOZjHVeJmgKIYJ8e4mYf1dL2DgZM3YDI=;
 b=qyJUtXHVXYAu/sr0GivJeiaRTdRUijQCUOsZTbvzKKsYHr7GhenvmmvTt2RpfD8iph
 AtjDY7jm7YX0y6Dd87t7Z5Vf07JU9wmW2AwnzbM8gF60xDyLNTkU6+d8h4MK7MvAjLvL
 HxYu6lKQtgQjAKXwDCnccqlVqs7JORPT2UtAa7SgO3qnEsSAGr2lu/qR8MsPc5SdAeEB
 QWGIZndqchW8XLtK6vso4OB+1La2W7dDfo6lxoS+G7aEyKjlzrSVmBXtd2RVI5XxDAN6
 jZuk8wB8xQbE6qeYwrpChJ2zYTTmjFO7CBjEbY3xWGeWNpyLU3Ghbk3X1qFA+0965K05
 UhNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=+I5Vz5Y/bf9NOZjHVeJmgKIYJ8e4mYf1dL2DgZM3YDI=;
 b=Rh3sYfdVNiriolqcnVZrbbCxESsjkHB6QiL+JS0fxopzq9+4xXRKSCiaNREiNLo5aL
 BEEikmKUPrz6zFUwoZbAnye/IMVJ/+PGETb3oTk6pXTGrpj0ywQ51/SweLXHJOtE0043
 gjbeeAu8WuAT2evb7UTsu82VEpfz+E59Gu2jP8QdqL/CLvj2AlUSq9uEzW46SJG5A33Z
 Z/eQfSUaykFZwpqUTa/m2VYU8PMFUua7z2aoPpgBMjdAIb5rSuESKbU/l7+hrb2o9KYX
 updVJ+dDhAEDDkUYKQ8C54mhJSq5erCGmAvLI0o7vMBuT6OrWaNbkg3rsdFss3BUyzLQ
 Lfpg==
X-Gm-Message-State: APjAAAWEeaUct+cnAn5mfhw398hrBXrmyMeix9/d1qETZWgN24rvq6jp
 MUsuVkp24cJpjjJt6qZgRVA=
X-Google-Smtp-Source: APXvYqyTY6TLRP4Dwq+bD55A2fJN5GgbXaRWBorCCV/tnxDI+KNTYZmNEtNXHHH7SqoTqEwC8KZQPw==
X-Received: by 2002:a63:ed01:: with SMTP id d1mr936995pgi.95.1581331890249;
 Mon, 10 Feb 2020 02:51:30 -0800 (PST)
Received: from localhost.localdomain ([45.114.62.33])
 by smtp.gmail.com with ESMTPSA id g18sm12104833pfi.80.2020.02.10.02.51.26
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 10 Feb 2020 02:51:29 -0800 (PST)
From: Anand Moon <linux.amoon@gmail.com>
To: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Subject: [PATCHv3 3/3] usb: dwc3: exynos: Add support for Exynos5422 suspend
 clk
Date: Mon, 10 Feb 2020 10:51:08 +0000
Message-Id: <20200210105108.1128-4-linux.amoon@gmail.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200210105108.1128-1-linux.amoon@gmail.com>
References: <20200210105108.1128-1-linux.amoon@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_025131_347468_0B64F78E 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:52d listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [linux.amoon[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
dwc3 code and dwc3 suspend clk.

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
2.25.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
