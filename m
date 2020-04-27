Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 189731BB20C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 Apr 2020 01:33:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=VjOfXnUEl4nSbAnc2XEm3eTntLUz+LW/uR935uHiQG8=; b=PB5wN2I3iEXLjK
	ex39frhssFNXtHFqjGaO7Dos4njZ2NB9smDC8MlYtfhnA6BrnyWvXxV65wBXlcbRFtt0t+nFrBOYV
	5rs6nBnd9SDeegAi0i1pN3h5/Vq56WopEzIJcaTHvDNDLshtGI5Ut4/aAMLFpVnQfbcbJbRXC1j02
	Hf+GQKrKLnyeGsHZcFeSd9peQnNbnx36oweiDXsE1Qe5cwsjPRlVK37BfYgfEf1adQoS0LkHhJKOu
	/238xeqXGxAoNEX5XkbqRlBHXGUDjBFC4S9DaoYrPnSxCA15mDQVoH0CRlxpoxHDuDq6y5/wa8UR7
	FluQdhH4X1mgGjZf8z7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTDFR-0000D3-A1; Mon, 27 Apr 2020 23:33:13 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTDFJ-0000By-WF
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 23:33:07 +0000
Received: by mail-pl1-x643.google.com with SMTP id w3so7597628plz.5
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Apr 2020 16:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=psE/TVWQ8r0hHEn8TaByg+EQGlqN2iYLLSNjuoRCa9k=;
 b=b8SHhWvZTnoeLLp7IhgorcpvGtX2VBtc6vtxpVWuQoeDabjj0nAmuP6/TiuQUuiRNh
 etINFZ53Wf2AxOzz/nSnynJ4yALdIG4FmtD9L7neNUYUJq9Z2xbTJRF74DW8l6RrICQy
 4m3riY6RULFDgxpguilcjn9XbHCWm0rHcTDJs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=psE/TVWQ8r0hHEn8TaByg+EQGlqN2iYLLSNjuoRCa9k=;
 b=G3MEQ5SAEZ3sK/mH8W5aQwjrK8TPhAAn/aD4ihxCKc8NP4VWGGIPpitUjOJJwCuihu
 lthswh4rW+WLv/HRfvJy429+KakjVV8uk3PvzMZjZIMerghNPgjnTkE5PKhDluRG5Ryt
 FN7DLQLqbfovNt0jM2meJvEiM+dO602nf3auf+hCUo9IpZFnVKIOzdzbtUTm8+w9V+OJ
 nzcanrq5Pjqq8NzewutOnk6Et/CqFdtPO+j0yulXrBLE1TdvEEglqH/Qce/av0iMPz2Y
 oUU16HLYAsCAQaCNrYeAsAYfCdmpGP0X3dXi2WxSlqN1TP96BY9D/asrXb2eQ/GO/B++
 To+Q==
X-Gm-Message-State: AGi0PuanFiFyhI/xa4kxCAyO4jdCuDpW1JDIFkdV6L90obicoZImNvWG
 HLUECn8hH8ihKu6lQScAX7wmLA==
X-Google-Smtp-Source: APiQypIltu09rqzr9JI0Ay36qw8wC98n1LszdiP6AYWaeNG61gnrxNMq7cNJFmvmNXJIZr8u6f1mqQ==
X-Received: by 2002:a17:902:a98a:: with SMTP id
 bh10mr24753613plb.340.1588030381558; 
 Mon, 27 Apr 2020 16:33:01 -0700 (PDT)
Received: from evgreen-glaptop.cheshire.ch
 ([2601:646:c780:1404:1c5a:73fa:6d5a:5a3c])
 by smtp.gmail.com with ESMTPSA id u15sm308980pjm.47.2020.04.27.16.33.00
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 27 Apr 2020 16:33:00 -0700 (PDT)
From: Evan Green <evgreen@chromium.org>
To: Mark Brown <broonie@kernel.org>
Subject: [PATCH] spi: pxa2xx: Apply CS clk quirk to BXT
Date: Mon, 27 Apr 2020 16:32:48 -0700
Message-Id: <20200427163238.1.Ib1faaabe236e37ea73be9b8dcc6aa034cb3c8804@changeid>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_163306_059456_0EDA72E9 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-arm-kernel@lists.infradead.org,
 Shobhit Srivastava <shobhit.srivastava@intel.com>,
 linux-kernel@vger.kernel.org, Evan Green <evgreen@chromium.org>,
 linux-spi@vger.kernel.org, Haojian Zhuang <haojian.zhuang@gmail.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robert Jarzmik <robert.jarzmik@free.fr>, Daniel Mack <daniel@zonque.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

With a couple allies at Intel, and much badgering, I got confirmation
from Intel that at least BXT suffers from the same SPI chip-select
issue as Cannonlake (and beyond). The issue being that after going
through runtime suspend/resume, toggling the chip-select line without
also sending data does nothing.

Add the quirk to BXT to briefly toggle dynamic clock gating off and
on, forcing the fabric to wake up enough to notice the CS register
change.

Signed-off-by: Evan Green <evgreen@chromium.org>
Cc: Shobhit Srivastava <shobhit.srivastava@intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
---

I don't actually have a BXT (Broxton/Apollolake?) system to test this.
To be honest I suspect the issue is there in older generations as well,
but I couldn't get Intel to confirm that, so this seemed like the
only safe change.
---
 drivers/spi/spi-pxa2xx.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/spi/spi-pxa2xx.c b/drivers/spi/spi-pxa2xx.c
index 73d2a65d0b6ef..20dcbd35611a7 100644
--- a/drivers/spi/spi-pxa2xx.c
+++ b/drivers/spi/spi-pxa2xx.c
@@ -150,6 +150,7 @@ static const struct lpss_config lpss_platforms[] = {
 		.tx_threshold_hi = 48,
 		.cs_sel_shift = 8,
 		.cs_sel_mask = 3 << 8,
+		.cs_clk_stays_gated = true,
 	},
 	{	/* LPSS_CNL_SSP */
 		.offset = 0x200,
-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
