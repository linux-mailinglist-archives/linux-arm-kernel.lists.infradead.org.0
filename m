Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 004B4352BF
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  5 Jun 2019 00:32:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=c/4MmiyvtdCQuVDdp2wz9189fU6QvXy5LMnJvs4fVh0=; b=Hey4awDv/NIwQH
	bQZtvyxUkbv8DJbpdBecOUCgmBrD2XwVIQjwLeGMZhjx46yURk34IPz1tEc79zQnlcPM8rUFlKWKg
	y5a8UQyqTJmbkvtx12Qa+tIJ1gg01MJDHmXgsHNgb/FcNgbKxDmj8Q0O6P3K5fhphFgDGaNQy2WKM
	MJzJ6ZKBVxTNrSeSIjuWXSyNkQaMMPF9xD+6r57QsfmhBIrcuTzQ0GmPFyH0q0zOSjqndrIZ9RaGQ
	NZt16s3ATUzaqPZTS6gAKn31+V3vOiYrjZeuKtI9m/We5Yyit10u9DAWep212El+r4jcB7JSl/bzR
	Xprv76Hqv5/o0VgcwA2w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYHye-0002rv-9u; Tue, 04 Jun 2019 22:32:20 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYHyW-0002qv-MC
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 22:32:14 +0000
Received: by mail-pl1-x643.google.com with SMTP id g21so8913091plq.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 04 Jun 2019 15:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7LrsWOu9H08D9VnyWoK4aMKFSqz39fLtN0sqw4NiYmE=;
 b=a6SMCfW3Grszq2AuhWerX+Qret6+CW6/s7WM7ae6WCeNv1pzOjPcAAjhxtm4SMJcGw
 bep+z6ve4HsBKKv2+9WzO3L68i4ehYfGyamPfhQOqc4dcrn70qgWiT9PBsSdV4ohOYs5
 63QbziAKVPMzQ/8C7IHZCEsYkvSNHeIsA6E/Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=7LrsWOu9H08D9VnyWoK4aMKFSqz39fLtN0sqw4NiYmE=;
 b=ZSib1y80IbNFSsMQPrKIpcshMSmt3ATHzUML3kIGvBVFNDS2TfHpWhhxaV41kIINs+
 u6fN6cPz7xTEGoz9RhcZIQfp7Fh6j/8JDaYRQH8ng+GYFK0ia5ov5G/A5M6pO0hT+T4s
 6BJAvW85ztzIeLTfXfKRQ0THc9nD32cGs9A2qWeMBsV7r+HhPK2Y+a9yD9yH9e8kv20/
 jme+JwDuC6ry37trjN2iwnXKc9/oytuhrqUFlY2gx9wD3pkPRRgtCivG5lhCvNTNaXpo
 c2Dxfi0IujJt9KT1eBC+G0ZIbzthE27ds2FtbpD/u9fSkxXwzAe9boDuRZLntYBzi1iA
 ALkw==
X-Gm-Message-State: APjAAAVCpSnnRq+5fchM424tk22KZBzF/sxOo8eVf9tDk/pVeWyHwwiJ
 pcWLxmyvVvJojEGf2rvoYRkeZA==
X-Google-Smtp-Source: APXvYqyP3mL6L3hXGIHj9/i/mpdSFQYcVM5JqdDzD0ZqHoQlEFBlN2xJ2cgV7XcUdPhRNGofv0hBsw==
X-Received: by 2002:a17:902:6ac4:: with SMTP id
 i4mr37076584plt.75.1559687531967; 
 Tue, 04 Jun 2019 15:32:11 -0700 (PDT)
Received: from tictac2.mtv.corp.google.com
 ([2620:15c:202:1:24fa:e766:52c9:e3b2])
 by smtp.gmail.com with ESMTPSA id i5sm642508pjj.8.2019.06.04.15.32.10
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 04 Jun 2019 15:32:11 -0700 (PDT)
From: Douglas Anderson <dianders@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Subject: [PATCH] clk: rockchip: Remove 48 MHz PLL rate from rk3288
Date: Tue,  4 Jun 2019 15:31:59 -0700
Message-Id: <20190604223200.345-1-dianders@chromium.org>
X-Mailer: git-send-email 2.22.0.rc1.311.g5d7573a151-goog
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_153212_724914_C0DBB3BE 
X-CRM114-Status: GOOD (  14.05  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
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
Cc: Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 Douglas Anderson <dianders@chromium.org>, linux-kernel@vger.kernel.org,
 Urja Rannikko <urjaman@gmail.com>, linux-rockchip@lists.infradead.org,
 mka@chromium.org, seanpaul@chromium.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

The 48 MHz PLL rate is not present in the downstream chromeos-3.14
tree.  Looking at history, it was originally removed in
<https://crrev.com/c/265810> ("CHROMIUM: clk: rockchip: expand more
clocks support") with no explanation.  Much of that patch was later
reverted in <https://crrev.com/c/284595> ("CHROMIUM: clk: rockchip:
Revert more questionable PLL rates"), but that patch left in the
removal of 48 MHz.  What I wrote in that patch:

> Note that the original change also removed the rate (48000000, 1,
> 64, 32) from the table.  I have no idea why that was squashed in
> there, but that rate was invalid anyway (it appears to have an out
> of bounds NO).  I'm not putting that rate in.

Reading the TRM I see that NO is defined as
- NO: 1, 2-16 (even only)
...and furthermore only 4 bits are assigned for NO-1, which means that
the highest NO we could even represent is 16.

Signed-off-by: Douglas Anderson <dianders@chromium.org>
---

 drivers/clk/rockchip/clk-rk3288.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/clk/rockchip/clk-rk3288.c b/drivers/clk/rockchip/clk-rk3288.c
index 152a22a69b04..51a26ff600a1 100644
--- a/drivers/clk/rockchip/clk-rk3288.c
+++ b/drivers/clk/rockchip/clk-rk3288.c
@@ -101,7 +101,6 @@ static struct rockchip_pll_rate_table rk3288_pll_rates[] = {
 	RK3066_PLL_RATE( 216000000, 1, 72, 8),
 	RK3066_PLL_RATE( 148500000, 2, 99, 8),
 	RK3066_PLL_RATE( 126000000, 1, 84, 16),
-	RK3066_PLL_RATE(  48000000, 1, 64, 32),
 	{ /* sentinel */ },
 };
 
-- 
2.22.0.rc1.311.g5d7573a151-goog


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
