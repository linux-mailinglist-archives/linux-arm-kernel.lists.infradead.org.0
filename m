Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E52A10B3CE
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:48:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cwM39KXo3v8SgXJDWPDUdVhYMs5DoxQm66s6MHzeuwc=; b=BYApnjyfxUlLWn
	Sdk8O6lbf5LXstmZtMzHFy5QfoWoBBPIpLo8hkK6A5FbRMjxsHFZeDHSQhp+C+uwm8c29QZSpXgeb
	bvfjhCc1x/2nUGATT2oFWk7l7SVgj3D0Ejper6dpp8hTSM4nPLbOqO28I4h+wVy/KjbKwBqlbDhI1
	Uo2RGB6jP3BtymUbu3YGJutElcNnY6RaBlvm1HHkwM1K49nUtvywMUwcYyWvTSE0AfRLVsFGGCbR0
	xawA2sTCaI/1/PV5vNbw9odv6YlzzItYAFW6nRK9YC/raf6owUblFYiJUbJiPsPVSBNNwWD4mvTsm
	a8U+lI0+8XWLahsYX7IQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0U7-0003lZ-Ca; Wed, 27 Nov 2019 16:48:11 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0Tu-0003l4-J1; Wed, 27 Nov 2019 16:48:00 +0000
Received: by mail-pl1-x643.google.com with SMTP id g6so1658928plp.7;
 Wed, 27 Nov 2019 08:47:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=9SZAmWvTSiI+gHLgs5Po7ArlmvrbXeX2vqZ4bfPjpcs=;
 b=bVuk4J6e71rPLDTWea4PmbbDyI1l7WwhvvuQPxoo5ZcZ+tUzptPml87q3c50o92rSb
 o5IRsIZ8Egk8d93YITnfjKr+EJHRDVe4wUABMkWcK1SMJqHe8V7WFlZqv13ap+g7Zl0B
 yS66lfpC7NQrIt0Tcrc4CjnhgIvttv5Km/TpjcPQ/PvZW4s/RZKWBIMu0A/pExYsEXc2
 oyd6YM7NZgjUK/fRtLJwE+n6olKwLe5eg/0DIPa1cqW6IZB6x4AODFc2GUAUsScfV27Z
 Bu4piH4y+rcvrkRl+DfEwimTYhXtCxyeXVQ4BJcvHWkD42uGT+UwxEkxARnoMaw25qTN
 KCvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=9SZAmWvTSiI+gHLgs5Po7ArlmvrbXeX2vqZ4bfPjpcs=;
 b=rNNnbHywR8LcnCK5s0DeYoNqllLfwStZBAsx9n2m4Hv2zaaKUNvDErrggoH3t0yYiN
 /fKFMN3LQ+CnvSYyy1WfeB/qD5/zUK3cz3ubNsNWchHild+E5xj4WdVHXiHw4aQfqLkQ
 ZEa8HC8+pSoZrhr7kmwHWHhxDxogMqMtKuvHUqVLimbIH5nEqFP6QpBFvquUg33IBx0f
 b65TD/6TjQzAbMw2l/y5Sf5OIc9SCTD2xs5BY1rTT1oDyl205hYZz1ceKhInmy1xLWM/
 wCVmNoNULEeo3SfzuDwfjdmIPDTXWIN+XhMOng8pxFxqtzTI0nhERGsElHkz8ZDQ/HTY
 UOxA==
X-Gm-Message-State: APjAAAXsQ+SY7nQuQ5x2tvj0UcN1PBhJCNv0Ct/EfGh5wyU5UFCC3Vlm
 Xd3sItcFbJbjPw0lqJ40uGY=
X-Google-Smtp-Source: APXvYqzi9jGmQiu2kA4LX2jnITpm6qRbd3wi313jRCjlpWXyLG1o/AqnWEHm4gPv739pkR1Ong4KUQ==
X-Received: by 2002:a17:902:b702:: with SMTP id
 d2mr5147195pls.104.1574873277975; 
 Wed, 27 Nov 2019 08:47:57 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id i9sm4117846pfk.24.2019.11.27.08.47.50
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 08:47:57 -0800 (PST)
Date: Wed, 27 Nov 2019 22:17:46 +0530
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
Subject: [PATCH 5/5] pinctrl: stm32: Use the correct style for SPDX License
 Identifier
Message-ID: <14bb695da50f7af8499e7dfc32c2ab753d92a3e9.1574871463.git.nishadkamdar@gmail.com>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1574871463.git.nishadkamdar@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_084758_632461_84DB5364 
X-CRM114-Status: GOOD (  11.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
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
header file related to STMicroelectronics pinctrl driver.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/pinctrl/stm32/pinctrl-stm32.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/stm32/pinctrl-stm32.h b/drivers/pinctrl/stm32/pinctrl-stm32.h
index ec0d34c33903..b0882d120765 100644
--- a/drivers/pinctrl/stm32/pinctrl-stm32.h
+++ b/drivers/pinctrl/stm32/pinctrl-stm32.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) Maxime Coquelin 2015
  * Copyright (C) STMicroelectronics 2017
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
