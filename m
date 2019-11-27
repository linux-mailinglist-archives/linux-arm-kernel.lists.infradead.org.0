Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBABC10B3B1
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:43:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QviRg2ys87UjArvtEhaUnNnMEfFlIAQSsHKq+ZJuyP8=; b=dpakhaqLOeIPZ5
	4plERfgdNeOy6JV+EW5nZ3qkBG2pncFGjXwMQ74NXcpuMex8qWVhFoD/cy/G2Jc2eHZ3qh7hP4XSc
	zvGH64T61bfnj3uBUgmPgL9jljFwnhUZfyf2BQh2xeBIREGgvsTc5WT4g2k3qBuB8P4e8QYMCjKzp
	ANuQH/6JjFth9uoU5G+jFJZkwMV/ZzmCWNR1K9IRuLHW9x2Z3aHU2sBRKrJ8JOS1bjv+b9x6moEqS
	EqXqve1TR6jhITpy83b0WMM4kieDNzLxlUZ+95KYF2gl3I+t/V6suri8cSd0xKnJoXx/Eywj4tw3U
	AeaiWDz1OnhhwaLQIrTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0P3-00016I-0y; Wed, 27 Nov 2019 16:42:57 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0Or-00015B-JW; Wed, 27 Nov 2019 16:42:48 +0000
Received: by mail-pg1-x542.google.com with SMTP id t3so10708768pgl.5;
 Wed, 27 Nov 2019 08:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Xl4Glegm6mdECeLqfmquxCwZlwbSQB4i6Znnj9ZE+DI=;
 b=aaLImqaXXEFyDQoHrPEMGh8ndhdl9gZJuOmHyu+pZZDTZWbfo8bKC+whjrSQVWhuxU
 NYt+PbFK7OG+rEYQVDWtB8A0KHHEIDstj61l0+aHTIFEZ3ibUY4OeJYXrC+28XbcaqqY
 atqmBXE+O4sp1cYypiKae5R6bxlRt8myyVVJ1So1UTPM+Bv2pXNfGlal4+Fo2eYANxA/
 b9F0B4VdjmNO6gO5aXgVhVpAa8kcNBSkcwJzRmb4430VOcNRZAgSNLtP/9Oiq7y1w4ne
 sjDEqe9L1scDSQetQaLeZAncSNqzJT0GL8oFf05RRmWtALJqS5XFvK2+YIZ0W4zrVlL+
 F/pA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Xl4Glegm6mdECeLqfmquxCwZlwbSQB4i6Znnj9ZE+DI=;
 b=lC+52JBUkS3I5X7dLvnzPkDKLF9oDe9WQmCMLlZcXA+jwMvt/JuC+fvD9D4FJFt/AH
 DNGNBzhiDec+AnZ/+n5m+/NMgHHy+d+Gy2VNQOBkRiWB7yJWr8F5WfnzOtBh2AAVCq2n
 EJApTOf2QcIdOd2e/+e+5WfYQG7yaL9HSU4wOBDs+9s10mZPRIemuWatC2WvK5X/Pdgg
 pF7lU4N6gdLAb5+9yfulvAPiUx6xrHLO27u+ZMKyCOvr1YlSlTYb1ks2hNev2By0TDgH
 sawo9b8bDGBN4ms952ynODwvWe0BqJqWho9vYQ3ilH/vhadODGl3gvlGhRAI7KgLJ9lM
 vLVg==
X-Gm-Message-State: APjAAAWPwKrjf72Pq0DZ4kkJ9IENtqOwOR9XEzOIi3aA2XiIYr0YOUfz
 Pw/37kWAmh4pybepr3+Lg4g=
X-Google-Smtp-Source: APXvYqwlDU2Ab8PAuwqLDAc5/btU/U8B8e0EchIgGnZlTuxZOq1jBwxBcCm7mSvfv1ntAHxZjKgsbg==
X-Received: by 2002:a65:590f:: with SMTP id f15mr5870948pgu.381.1574872964385; 
 Wed, 27 Nov 2019 08:42:44 -0800 (PST)
Received: from nishad ([106.51.232.103])
 by smtp.gmail.com with ESMTPSA id v3sm16827100pfn.129.2019.11.27.08.42.37
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 27 Nov 2019 08:42:43 -0800 (PST)
Date: Wed, 27 Nov 2019 22:12:33 +0530
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
Subject: [PATCH 2/5] pinctrl: mediatek: Use the correct style for SPDX
 License Identifier
Message-ID: <2994fb2f3375790e832396cdbb0a279dc8c8839f.1574871463.git.nishadkamdar@gmail.com>
References: <cover.1574871463.git.nishadkamdar@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cover.1574871463.git.nishadkamdar@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_084245_648625_0F668311 
X-CRM114-Status: GOOD (  11.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
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
header file related mediatek mt2712 pinctrl driver.
For C header files Documentation/process/license-rules.rst
mandates C-like comments (opposed to C source files where
C++ style should be used).

Changes made by using a script provided by Joe Perches here:
https://lkml.org/lkml/2019/2/7/46.

Suggested-by: Joe Perches <joe@perches.com>
Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
---
 drivers/pinctrl/mediatek/pinctrl-mtk-mt2712.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/mediatek/pinctrl-mtk-mt2712.h b/drivers/pinctrl/mediatek/pinctrl-mtk-mt2712.h
index ba2356a8ab89..845c408b5fdb 100644
--- a/drivers/pinctrl/mediatek/pinctrl-mtk-mt2712.h
+++ b/drivers/pinctrl/mediatek/pinctrl-mtk-mt2712.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * Copyright (C) 2018 MediaTek Inc.
  * Author: Zhiyong Tao <zhiyong.tao@mediatek.com>
-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
