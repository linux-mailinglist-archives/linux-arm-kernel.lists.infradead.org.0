Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BA10123DA8
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Dec 2019 04:05:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=tEXa4Y2O6eTgQOa/ovQgMJc9gRn6NuQXF1/evpSYkMY=; b=TlhuoR+qQO/1+f
	E5QZMleR0vdHOREqwGUgIhstCOHcCC2aAdInmY5rfbzx+pEkcxhHU+AG0vo+NELcGeo/9gRiA0k2+
	R7Q0HmCe9Pk5tWLZGaT57yr3RuxsXGkRq5lw4xbj9izyRc/Hzz/IaPd2NN8fooVAON38xuedgLZrl
	r9OjcZPzawKh1JTrBGSb41AteVAvBwq7o42nvbfuIkTmUYSJQPGBcGQKMQLiTmI3/AJ4KDXQO/DUE
	5ku1uJtoHNYhD5TFu0oU1xUu2CJf7ZUtFOPkjiwMk2kPyCIZif7YVeRdhsFirzswBwp8w9tNWSzHd
	2sZzyyTnawnQdtU4i9qw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ihPdy-0007zq-Ic; Wed, 18 Dec 2019 03:04:58 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ihPdq-0007zH-JH
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Dec 2019 03:04:51 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id AD318206D8;
 Wed, 18 Dec 2019 03:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576638289;
 bh=ZBVlMQS3Efo5A+DA0zxAHU4x5O/v5668a6b5on5I/xk=;
 h=From:To:Cc:Subject:Date:From;
 b=krx8BswHUf6o4YajouOrHUh+piYDKsRsVCZpNtiv6gGJn+V/5NRcAV/ISeepIfjjr
 QR1Uvr0fx+onmwSIvdYspUG3+SPOPkl9H+MD6g7VdhakzrHXn6hBIwMnd23ebxnWY6
 q+cCrsq0mdoEGNqXsO+4NpXD7hW4mgfmho1UrxCE=
Received: by wens.tw (Postfix, from userid 1000)
 id CD7765FCD0; Wed, 18 Dec 2019 11:04:46 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Maxime Ripard <mripard@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>
Subject: [PATCH] clk: sunxi-ng: r40: Allow setting parent rate for external
 clock outputs
Date: Wed, 18 Dec 2019 11:04:31 +0800
Message-Id: <20191218030431.14578-1-wens@kernel.org>
X-Mailer: git-send-email 2.24.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191217_190450_653370_DEF4EA21 
X-CRM114-Status: GOOD (  12.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: stable@kernel.org, Chen-Yu Tsai <wens@csie.org>, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

One of the uses of the external clock outputs is to provide a stable
32768 Hz clock signal to WiFi and Bluetooth chips. On the R40, the RTC
has an internal RC oscillator that is muxed with the external crystal.

Allow setting the parent rate for the external clock outputs so that
requests for 32768 Hz get passed to the RTC's clock driver to mux in
the external crystal if it isn't already muxed correctly.

Fixes: cd030a78f7aa ("clk: sunxi-ng: support R40 SoC")
Fixes: 01a7ea763fc4 ("clk: sunxi-ng: r40: Force LOSC parent to RTC LOSC output")
Cc: <stable@kernel.org>
Signed-off-by: Chen-Yu Tsai <wens@csie.org>
---
 drivers/clk/sunxi-ng/ccu-sun8i-r40.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
index 897490800102..23bfe1d12f21 100644
--- a/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
+++ b/drivers/clk/sunxi-ng/ccu-sun8i-r40.c
@@ -761,7 +761,8 @@ static struct ccu_mp outa_clk = {
 		.reg		= 0x1f0,
 		.features	= CCU_FEATURE_FIXED_PREDIV,
 		.hw.init	= CLK_HW_INIT_PARENTS("outa", out_parents,
-						      &ccu_mp_ops, 0),
+						      &ccu_mp_ops,
+						      CLK_SET_RATE_PARENT),
 	}
 };
 
@@ -779,7 +780,8 @@ static struct ccu_mp outb_clk = {
 		.reg		= 0x1f4,
 		.features	= CCU_FEATURE_FIXED_PREDIV,
 		.hw.init	= CLK_HW_INIT_PARENTS("outb", out_parents,
-						      &ccu_mp_ops, 0),
+						      &ccu_mp_ops,
+						      CLK_SET_RATE_PARENT),
 	}
 };
 
-- 
2.24.0


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
