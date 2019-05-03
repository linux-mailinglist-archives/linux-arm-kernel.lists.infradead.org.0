Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E7F04128DB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  3 May 2019 09:29:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=j1agit8eR0KtIjgR0tnsp4S20oYOLYU16x7b2xGl9IE=; b=DGSVyu6fePidWY8uk6EiLpl52J
	5mgbBfrDGSclIgMtetMP1JIQ47jEZ7kG6jbHFjQrXd05wMkoJ0mONnU8ZT9rH3NCXsKJ1iQj10Ywa
	jtO4fNslV7GceJ0Y0Zdk/yHZzTujF42b6G7vuN3KbGSiaf9YicIM/jNVygaoocmW4PqA0kfYN7CI1
	0k7ShuWdKa3Z7wHYw5hBJ1DleRtG/a0oxalmFr+lSOaNWnGWOJml+Jz2BSsZ+Ld9NnNZUtWy2KAfk
	FeuG4oaKCoAt5zPQMwU3D/dHSozem0caIYTC7skzukgs4QoJkBFQFfxA4mtqzlLVEinZrN4wMt6z6
	eTVKUxpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hMSdg-00080v-N4; Fri, 03 May 2019 07:29:48 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hMScb-0006j0-I9
 for linux-arm-kernel@lists.infradead.org; Fri, 03 May 2019 07:28:56 +0000
Received: by mail-pg1-x544.google.com with SMTP id f6so2304496pgs.8
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 May 2019 00:28:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=iV91r0hSgx47A83AU5LfJSSAdebNF8xkPCOvty2B81w=;
 b=f0kMsjpx0hReZbqS9A/IXDD04OeHrLmjwND+PaKZnv0lNFwIvz1+8f/D0fcaBpcjIr
 3THia+s7KlQAPC75y6kfAM5tFbhKhcK34VvYtG4SXXajH/prr3rBdObYEUimYeMrLHAM
 W9stvHHEUJWhi/4TWXlJBqWsT9hZSZP2hS/A+mhwG5KMLY0Nh0oFW2fr+lFayywX4In0
 iEQuIFu8AXL/SFXCBXSjZJiu/68s0Vcvab2mgf6lLgypQd+wNuiqu6e7aGeAz40vry7K
 0QXiQC5eQDPBGYe90V+j2Vs6Ek4/nQiUNNjl0nkv+uApUE6juP602HM41dGAu2IDWZsd
 3cWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=iV91r0hSgx47A83AU5LfJSSAdebNF8xkPCOvty2B81w=;
 b=afm8qIKadxtLE0vPHZ0vdp60FQw8VEAS2J/pv/ert9DlvrB3mJvNUih2xcWyZIM4Kc
 DE56bZ1iJMH5Z+j4TwZy5UzCXHcd65dUiuGdRHB8w19UoIfDjvQ2SRs/8B6AEzAuidGU
 w3l6TDgyvtDbKiondTpxRmJw/W4HQbxPRotapX1aO62u2HCT430HzJNCcfKHLSR8bGKJ
 c8CT2s1LIMtJ1MaSwhOQb5tT+rBswXABKqEd9H/eFGf8W3IerKHw7Qn1s32eZDXB+SR8
 jXMI5NtbGQRKaPt20pFLgbbEkXdx7ThtM4LJGTyp81REKlTMLEsHcw8SoOYP8WU4uFWq
 w90Q==
X-Gm-Message-State: APjAAAXClqWTeIdJz2EudXAR9qcP+GiDJnz3qqteC7twxs1HecPUcvMT
 I/UTQI7BsHrz+FmFVua0Krc=
X-Google-Smtp-Source: APXvYqx3mHSYhYaU9e7dYSrcNlJV0QAsUNqmUsZfT1vnGpilYcYIfUsnBG2kbbtSGDGI8szlCy5aNg==
X-Received: by 2002:a63:534f:: with SMTP id t15mr8595106pgl.445.1556868521022; 
 Fri, 03 May 2019 00:28:41 -0700 (PDT)
Received: from localhost (68.168.130.77.16clouds.com. [68.168.130.77])
 by smtp.gmail.com with ESMTPSA id c18sm2318243pfc.0.2019.05.03.00.28.40
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 03 May 2019 00:28:40 -0700 (PDT)
From: Yangtao Li <tiny.windzz@gmail.com>
To: lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 maxime.ripard@bootlin.com, wens@csie.org, jic23@kernel.org,
 knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net
Subject: [PATCH 7/7] iio: adc: sun4i-gpadc-iio convert to SPDX license tags
Date: Fri,  3 May 2019 03:28:13 -0400
Message-Id: <20190503072813.2719-8-tiny.windzz@gmail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20190503072813.2719-1-tiny.windzz@gmail.com>
References: <20190503072813.2719-1-tiny.windzz@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190503_002842_352503_D8083B34 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (tiny.windzz[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
 Yangtao Li <tiny.windzz@gmail.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Updates license to use SPDX-License-Identifier.

Signed-off-by: Yangtao Li <tiny.windzz@gmail.com>
---
 drivers/iio/adc/sun4i-gpadc-iio.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/iio/adc/sun4i-gpadc-iio.c b/drivers/iio/adc/sun4i-gpadc-iio.c
index 9b6fc592f54c..cf2bf3ab3342 100644
--- a/drivers/iio/adc/sun4i-gpadc-iio.c
+++ b/drivers/iio/adc/sun4i-gpadc-iio.c
@@ -1,11 +1,8 @@
+// SPDX-License-Identifier: GPL-2.0+
 /* ADC driver for sunxi platforms' (A10, A13 and A31) GPADC
  *
  * Copyright (c) 2016 Quentin Schulz <quentin.schulz@free-electrons.com>
  *
- * This program is free software; you can redistribute it and/or modify it under
- * the terms of the GNU General Public License version 2 as published by the
- * Free Software Foundation.
- *
  * The Allwinner SoCs all have an ADC that can also act as a touchscreen
  * controller and a thermal sensor.
  * The thermal sensor works only when the ADC acts as a touchscreen controller
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
