Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 600AB1BE977
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 23:02:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=64BnuAe+D8dQMAdLs1wxPp6jZRHpbHgvogHA0N7wpVc=; b=GbOpGvJJz3qg+I
	nYj8vcHmk0hvqKP40gHBXYGoDha+fULLANUPLO1lS+rxhbIczEEBZ2arMlfqWNPowlSU7nm1tL3rw
	t7+oWmaQMiEu9bo4ptzVIhd2UOJy+zvfIlivcO788jhMJxtzFZphqJwRBdUtB1+9eMzn+6asxEXQ8
	tGKk6CwbYKQ5rdhwWvf/wBmEeCjCn/EntoHrqshAiNk9iIyA+Ktp2GulzS8TFO52elipJKK6Fs6Oc
	EDqFdAdqDoeRt+vPyOU95aj+peE38VYAvoq666aWPHDkfhrwHcAhKY35Jdi9BBrP4+p4EnbmWnpWX
	T0GvrXdgImIynSM4ZSRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTtqY-0001lE-LU; Wed, 29 Apr 2020 21:02:22 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTtn1-0005FI-U7
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Apr 2020 20:58:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id m10so3130766oie.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 29 Apr 2020 13:58:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mCsNkb20GktgvT3EVSg7e0Ed7fNCWMt0hSKRdrZhvDs=;
 b=tbSTk3jwRmodiwIiLvhYV7XfHG9Wbo8Oe3CG3roAr5Km8cNT3xEakIqlBST8dy5P/N
 Kc73pzicgf33NjKHcblwvVXf5Z9o3DNAJCOG4kjUv4WKp1hUwDQrOjdT/i3qcH/0he8b
 DWhBx0+oBG+01eyXbqE+N/r4TaGzQIfZ2ENgpSXZhTAv4NYLfNr7YhDxPXZDjOB8hhoo
 owdxN9LlwRoIl+yN73nqK1zR0mgs9RQJC/WhRiYzAtQzqZWWpOluoJe0V7DtKobzGYNH
 XUPWFZjTPPYMN/JNDQYGCNqrVVH+JvgS3BdR3aIpjgXwA1JGoZofaGBDtrWlffRblVhX
 sDNg==
X-Gm-Message-State: AGi0PuY/l1W03xb4+XUQ22zJv0xk1FJptMhwGF9PsdF+qcZ12iVc3LUe
 /MS6M/+DLTx3Of7bw2aoeg==
X-Google-Smtp-Source: APiQypIMdJYtJ48k8tsFDlemNM2E4VC1cOVOCiiaXWDZFhkxrRyppPOhxj91cmywM1r4IIPVqeGw1w==
X-Received: by 2002:aca:2807:: with SMTP id 7mr123603oix.15.1588193922725;
 Wed, 29 Apr 2020 13:58:42 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id z13sm653162oth.10.2020.04.29.13.58.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 29 Apr 2020 13:58:42 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Linus Walleij <linus.walleij@linaro.org>,
 Liviu Dudau <liviu.dudau@arm.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Sudeep Holla <sudeep.holla@arm.com>
Subject: [PATCH v2 10/16] mfd: vexpress-sysreg: Use devres API variants
Date: Wed, 29 Apr 2020 15:58:19 -0500
Message-Id: <20200429205825.10604-11-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200429205825.10604-1-robh@kernel.org>
References: <20200429205825.10604-1-robh@kernel.org>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_135843_998777_0298996B 
X-CRM114-Status: GOOD (  11.38  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Kevin Brodsky <Kevin.Brodsky@arm.com>, Sebastian Reichel <sre@kernel.org>,
 Will Deacon <will@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Lee Jones <lee.jones@linaro.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Use the managed devm_gpiochip_add_data() and devm_mfd_add_devices()
instead of their unmanaged counterparts. With this, no .remove() hook is
needed for driver unbind.

Cc: Liviu Dudau <liviu.dudau@arm.com>
Cc: Sudeep Holla <sudeep.holla@arm.com>
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Lee Jones <lee.jones@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
Acked-by: Liviu Dudau <liviu.dudau@arm.com>
Signed-off-by: Rob Herring <robh@kernel.org>
---
 drivers/mfd/vexpress-sysreg.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mfd/vexpress-sysreg.c b/drivers/mfd/vexpress-sysreg.c
index 90a4eda2ba2b..9fb37fa689e0 100644
--- a/drivers/mfd/vexpress-sysreg.c
+++ b/drivers/mfd/vexpress-sysreg.c
@@ -140,9 +140,9 @@ static int vexpress_sysreg_probe(struct platform_device *pdev)
 	bgpio_init(mmc_gpio_chip, &pdev->dev, 0x4, base + SYS_MCI,
 			NULL, NULL, NULL, NULL, 0);
 	mmc_gpio_chip->ngpio = 2;
-	gpiochip_add_data(mmc_gpio_chip, NULL);
+	devm_gpiochip_add_data(&pdev->dev, mmc_gpio_chip, NULL);
 
-	return mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
+	return devm_mfd_add_devices(&pdev->dev, PLATFORM_DEVID_AUTO,
 			vexpress_sysreg_cells,
 			ARRAY_SIZE(vexpress_sysreg_cells), mem, 0, NULL);
 }
-- 
2.20.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
