Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BEE210B3C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:46:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=oOb2mHmpU3viLQXQdg2lzYNVmLIzFpmLkxB9YS9S8uo=; b=buwcjLHTC7lh4m
	NxUANdeF6+Sr5J7QagjUP/fgefjW22o4ZV4w6Lq4+yQyRvoyXrq7o+VAJ8Q3bvJ6dEBOIgr32G/Ez
	ADWr1oA59AuKKtvzPYCC0KrkXF9YhKlM4ubbrrnDNW6YkMB/KG2wHGEUelalsECqaYgMb18fPhQql
	7kO5p9kNGYCUg/T9L2gHDPrySSGLyiz6P3Cx3zGRzTKdywUjIWPE0KUkDcSlcbOjz0/pUAjVPsY0e
	9vOb4r8jb2U9iHPnjRSXjOcpkOLz13L+j8xpr2PUm14lNma7IGcnCyryxbXaiqlwsdohF89vka7gN
	DbMvcc1C7ALOMmDQz97g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0SH-00036d-3d; Wed, 27 Nov 2019 16:46:17 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0S0-00035t-Cn; Wed, 27 Nov 2019 16:46:01 +0000
Received: by mail-pf1-x442.google.com with SMTP id x28so11298201pfo.6;
 Wed, 27 Nov 2019 08:46:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Tj5ZEHjlL0iZSNA+rHkAWXmN0KEeZgtZHyN1eOwk32Y=;
 b=k9J2Ifpg4j+1FH8t6rWuy0uynpeC4gjGtBp09I2ky9UZukixjIow3FIhPcE2F/M7ED
 Tc9yNQguerPjWujTgAKtdngHQiYwOFy7g8DyinPmwYSOd2biBcy3hDxi+0zd/H2CKPoR
 ZOkXucWQZEweQ9f+CBAle5Wcrb5VK6F2pUWErYXFH7Zt8dQ2FOeuaKDQt0g9/x577lJr
 LbAVBHGx7hv+F+mSttjNRr7LM4CIcFHO5INuzmF7sr1tPLrNn9hSUd+8jgqPNdzoEgWJ
 X2bWOSjbftKm/ad0Yy4j3knPQVjngjsE/9w/L7TXAS5RUx6w1XSKp1uda0Cm/nfUg+m0
 c9Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Tj5ZEHjlL0iZSNA+rHkAWXmN0KEeZgtZHyN1eOwk32Y=;
 b=riujUcdmPC1s4pAEhSKOaGftbr8lwEDuTF/Q9mCTijatXQbD7zp0m8qMjM71MA04Ha
 k54mfFH3u0d/5CksG3m95+ZHfXHXPgh5/8ORUP3w/Crw9XUNM4GqHaMvfOw/kvfszbaP
 Iqh4mXj5jpID18bWVGZQOzy/USdwf+5FEaCW7j9v+2RW7OngItEnSb0mV115XnaTeq2g
 yRVV+cE77V11Cn+/N9ygdKnR7seDooQbB2V7F/XSRCjSj5AbM0yhIGXKiyB2aTJMfK8D
 keK0yEXlR+l5GPApE4hU5SjJcV5nXzaX5Nat6p9FLTbkGSpySw4ddnyFFIQl6VvJjIJG
 +yHA==
X-Gm-Message-State: APjAAAUcOCSfLwjbMQcGxDhIT8UxsYfbmxsOyca4/wO22vcEChn5MflU
 wML7H6ePxBz+yeO+6IPPhA0cwNTVrRSprQ==
X-Google-Smtp-Source: APXvYqzlUwwE1e5ZlvYiDCVGgUwc4Bu633wd7znJmjBhjUROKMtJj5O/PGEBApa4LvO6N5r6fvnykw==
X-Received: by 2002:a62:2686:: with SMTP id
 m128mr48513352pfm.143.1574873159861; 
 Wed, 27 Nov 2019 08:45:59 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id i9sm4113911pfk.24.2019.11.27.08.45.52
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 08:45:59 -0800 (PST)
Date: Wed, 27 Nov 2019 22:15:48 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Andreas =?utf-8?Q?F=C3=A4rber?= <afaerber@suse.de>,
 Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
 Sean Wang <sean.wang@kernel.org>, Linus Walleij <linus.walleij@linaro.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Kevin Hilman <khilman@baylibre.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Joe Perches <joe@perches.com>,
 Uwe =?utf-8?Q?Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH 4/5] pinctrl: sh-pfc: Use the correct style for SPDX License
 Identifier
Message-ID: <5a7ed2e4b58ba7ff2f0638a2435a3a1e1c62c9f6.1574871463.git.nishadkamdar@gmail.com>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1574871463.git.nishadkamdar@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_084600_435723_0C70530D 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (nishadkamdar[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 linux-gpio@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-amlogic@lists.infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This patch corrects the SPDX License Identifier style in
header files related to Reneses Soc pinctrl driver.
It assigns explicit block comment for the SPDX License Identifier.

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/pinctrl/sh-pfc/core.h   | 4 ++--
 drivers/pinctrl/sh-pfc/sh_pfc.h | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/pinctrl/sh-pfc/core.h b/drivers/pinctrl/sh-pfc/core.h
index b5b1d163e98a..5ad0ab8f9e14 100644
--- a/drivers/pinctrl/sh-pfc/core.h
+++ b/drivers/pinctrl/sh-pfc/core.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
  * SuperH Pin Function Controller support.
  *
  * Copyright (C) 2012  Renesas Solutions Corp.
diff --git a/drivers/pinctrl/sh-pfc/sh_pfc.h b/drivers/pinctrl/sh-pfc/sh_pfc.h
index 640d2a4cb838..fff9cbb7a0f8 100644
--- a/drivers/pinctrl/sh-pfc/sh_pfc.h
+++ b/drivers/pinctrl/sh-pfc/sh_pfc.h
@@ -1,5 +1,5 @@
-/* SPDX-License-Identifier: GPL-2.0
- *
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
  * SuperH Pin Function Controller Support
  *
  * Copyright (c) 2008 Magnus Damm
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
