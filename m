Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A1B0610B3A3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:41:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DsGkkP+y3R7DiKg/TPqM1XqbfZZt4VeAsEl2RJF9PL0=; b=H1rIyy2WJ3Lq+2
	x1ctVf3VuIH0ZuuFOO4Nz+RrCylnIM6y8OLLRXTpFA+o3Cuo45WtHIOCaFCambqWEdrg+4QZx5KfH
	Qo+nF/h63zqWX9843mSymKgW4S86NsPhD2M2cCqR7yfIQjZBd5ZsQ9iacXe5o0xsykIOETkBJVP8Y
	I2ugjr7jeRQoVmz/Z/Yyw3teHqapyCK3WeUQPDOFOCyx4fOibH1Te0C/6lIm92EmbIERKPuE2XHv5
	jc0aYxrtaiNCjHSgGipHJCfJjy0dMiMYe0ygatJWImTscSiE+udTlyDAXS3oOz8BZQ4/oJ6Kgd4bc
	i7MHvSiPlsoy1kr0EX0g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0N5-0000fU-E9; Wed, 27 Nov 2019 16:40:55 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0Mv-0000es-IQ; Wed, 27 Nov 2019 16:40:46 +0000
Received: by mail-pl1-x642.google.com with SMTP id bb5so10016384plb.4;
 Wed, 27 Nov 2019 08:40:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=XxnZyGcP9Rmlyi/FludPQAATJUUTPMQYYmErZMfJYoQ=;
 b=e+kP32NcUaqG5wx8/nGkohEXD3ItQ8/aha7ve3XqxfVhMblGDvxeUUyCNi48rX4WAX
 G2RH/hCsTv8YroV9j5FaPEN4in8mhio2C4a6/8xvcdfkxy+4sPu+JgE0eZX7HUuqCimG
 eMy/u5PPC3X3Eee3qtbxFY92aAGsGyLaWdW5Pj56veJNVw4uPbn6T4odwbKXc36gJnCE
 V1IZ5CUqiLZ7f32a4/4vsWG2mZM8X6Y3h/e1lTBU5P9Pf66sd2HzC2py/NWzkZetZOYZ
 YGRF4/bj2J9Z2DtLX3cRou4KkuT5D7LvQVS5uyAeS7K2uX24K9BzRozkqmt9S6vQ0qM8
 ftcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=XxnZyGcP9Rmlyi/FludPQAATJUUTPMQYYmErZMfJYoQ=;
 b=sfNvOvqjnqXdEHwyIaPKw+72BkzBj677G/3V2BVoh0GuzCB9OiBoAyHe/nDP5gdcGQ
 y+IOPkzx9e6XGHFYsC6AsBnHnGFWkHkQbUT6pNXeZK0PJ4UxfRZKf46YkTjy2ZW1wBsZ
 i916SfYxkPf/L2r4A5VyAEN0M8rOwd5MUoNYX47jdo1c0y8niG/OGa/4UrgKbSWlUvgg
 zKBnz7w9JE9WtAZkbJv++vbUFSNoWBbV28WEZ7B7fbriviPf+EAEI2TdnMEkl+n8BVKx
 ZgQXQQx+yze/ihGItle040aY5kux4hNeEjiuMkI0psZ3PiuyhD0r2PtLw7+zY+oHTbam
 M2jA==
X-Gm-Message-State: APjAAAWFal9FI2RSpud9ExllI01JYsXAMCSRMIhXeEdx/5+/2RqPpJov
 8eWrlCq9Eco+BCnOCV17mKUcVqXxpf/WFg==
X-Google-Smtp-Source: APXvYqyOTdv5RtT17pzoqksEp4sCN6AzyskRPbgNbPryeVBL24MqJrBpusefhvfglg/U4YVOO8vpYw==
X-Received: by 2002:a17:902:7586:: with SMTP id
 j6mr5091675pll.43.1574872844265; 
 Wed, 27 Nov 2019 08:40:44 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id y17sm17002645pfl.92.2019.11.27.08.40.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 08:40:43 -0800 (PST)
Date: Wed, 27 Nov 2019 22:10:33 +0530
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
Subject: [PATCH 1/5] pinctrl: actions: Use the correct style for SPDX License
 Identifier
Message-ID: <5b588fc885efca6efdc73869aa4b1eeeb3d6f6c5.1574871463.git.nishadkamdar@gmail.com>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1574871463.git.nishadkamdar@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_084045_609555_BF930D2F 
X-CRM114-Status: GOOD (  11.56  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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
header file related Actions Semi OWL pinctrl driver.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/pinctrl/actions/pinctrl-owl.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/actions/pinctrl-owl.h b/drivers/pinctrl/actions/pinctrl-owl.h
index dae2e8363fd5..feee7ad7e27e 100644
--- a/drivers/pinctrl/actions/pinctrl-owl.h
+++ b/drivers/pinctrl/actions/pinctrl-owl.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * OWL SoC's Pinctrl definitions
  *
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
