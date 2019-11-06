Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C84F1702
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 Nov 2019 14:28:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=09c2lduts2z2VOhfJWHsaZYbjgv0t5KiwAbRXffP3/Y=; b=V/l
	7RczhNKMdYXCDHbiJmKy1GAywbll+KvcBnrLFIODi0GL3FvpTz5gp8Sl1NG0Pj9xE68aJp3eXrWKO
	zqZuHSdjNOMo4s66jx4deIGkrnsNgB18fRAsF53y1H1fIhi17nHvtYPfGP43M7LTbYmPuavuAxZ8e
	LJk5LoyfsGACKQa4QbKdgYuLh00Ak7cDgl+o51649awL2NdW1NIXFCEI+swIW/Y7Qrf+0PKiWcCGp
	OynaIBWe/M72VOX01oVplxs11B5eL2BDSSluWy1I+DLvXE+pXJ+VtT4Cuo51j1XA+snTDHRe4Tju6
	y6+p0cJuvmC82d6hsSTCCuWhria+RiA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSLMk-0003H7-Fg; Wed, 06 Nov 2019 13:28:54 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSLMS-0003Ca-I3
 for linux-arm-kernel@lists.infradead.org; Wed, 06 Nov 2019 13:28:40 +0000
Received: by mail-pl1-x644.google.com with SMTP id y24so11418251plr.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 06 Nov 2019 05:28:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=1g5bmlvDJmzq0j8rw+Hyiq1h7w7jIJ4WDcwt2PpU20g=;
 b=Mo4TAU7fRjbhRaWWEK1LJyvn+DSxubqpdHRD94G9troWEwzLz8YYrBRIS2KdSpX3dT
 FeMeoDlj7TwE3SHuoLTBKK+WrPKt4gh0PazZ1g5ozZLTZDY1XPVJRgI7Y3gApyFnHK/1
 3cFeLTF1BcFuj3Ip+HCsBdu5/XN6JIT4IO2nzkU8wdkue1G52cekATxLLxxMGq70HiPj
 KD2SMv14UvZ/GkEikI7a62KpToNHUOtEaKhrhhq5wGD66CXnWhHliySQH/pY23OEUsqG
 8z4GOFi9XOisHIgTNfRfMeAu0z6FY4WyKVzYa8WTLixMCLiMNJsQHO1OZjQ+X00OG6p4
 2vrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=1g5bmlvDJmzq0j8rw+Hyiq1h7w7jIJ4WDcwt2PpU20g=;
 b=tEaVzuH5RI38I7iCQj7FlgfrKJSxX0ETVZxhMUeLPrLjGuJi9hpClvwSADxKUwkk+7
 3b5G7tUXPUqr5Y5aYLDoNDK/e1Pyix/NdwuOe4MSqeni20ZPAYI1ZoIg/qbGVNpLALz3
 sdLAeKzOAp6ghgUF1w7rUcxm5XDBBPaeiSmut8CSRt7RS82qKRmQeM1nD7OtdChF4utZ
 xQjWyBHw11IHn+KZuSOFV0lrDTuLX0yLAihH49pHDqo0Juca72QMuwbVmWJBriNhUFCn
 Tuy+mjP7iH0hA2EbOGwQKTwXsPLu+6M5yfekpXii0b6qvWZ8zb/Y/njGCBs2GT/7mDPJ
 RA2w==
X-Gm-Message-State: APjAAAVgDlT/BNIm4pr2o7YZsDaCha21DPtAw9SBxCOoBshJa0W6oOEg
 t/CsFcAhort33brWdBflYku6Dw==
X-Google-Smtp-Source: APXvYqyAyMf4Opoy7bESQRlotkkR0kSWU/mPg+gqk7EyqL30BQrBho6L7bwwesWM6v5WR7oQnljBAw==
X-Received: by 2002:a17:902:ac90:: with SMTP id
 h16mr2681286plr.147.1573046915172; 
 Wed, 06 Nov 2019 05:28:35 -0800 (PST)
Received: from localhost ([49.248.202.230])
 by smtp.gmail.com with ESMTPSA id x20sm23085573pfa.186.2019.11.06.05.28.34
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 06 Nov 2019 05:28:34 -0800 (PST)
From: Amit Kucheria <amit.kucheria@linaro.org>
To: linux-kernel@vger.kernel.org, edubezval@gmail.com,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Guillaume La Roque <glaroque@baylibre.com>,
 Heiko Stuebner <heiko@sntech.de>, Javi Merino <javi.merino@kernel.org>,
 Jonathan Hunter <jonathanh@nvidia.com>, Jun Nie <jun.nie@linaro.org>,
 Krzysztof Kozlowski <krzk@kernel.org>, Kukjin Kim <kgene@kernel.org>,
 Matthias Brugger <matthias.bgg@gmail.com>, Shawn Guo <shawnguo@kernel.org>,
 Thierry Reding <thierry.reding@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>, Zhang Rui <rui.zhang@intel.com>
Subject: [PATCH 00/11] thermal: clean up output of make W=1
Date: Wed,  6 Nov 2019 18:58:16 +0530
Message-Id: <cover.1573046440.git.amit.kucheria@linaro.org>
X-Mailer: git-send-email 2.17.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191106_052836_624769_8BE4D8D0 
X-CRM114-Status: GOOD (  11.57  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [49.248.202.230 listed in dnsbl.sorbs.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-rockchip@lists.infradead.org, linux-mediatek@lists.infradead.org,
 linux-tegra@vger.kernel.org, linux-amlogic@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cleanup output of make W=1 inside drivers/thermal. This should allow us to
focus on real issues that tend to get lost in the noise much better.

There is no functional change. This series was generate on top of
linux-next from 20191105.

Regards,
Amit

Amit Kucheria (11):
  thermal: of-thermal: Appease the kernel-doc deity
  thermal: cpu_cooling: Appease the kernel-doc deity
  thermal: step_wise: Appease the kernel-doc deity
  thermal: devfreq_cooling: Appease the kernel-doc deity
  thermal: max77620: Appease the kernel-doc deity
  thermal: mediatek: Appease the kernel-doc deity
  thermal: rockchip: Appease the kernel-doc deity
  thermal: samsung: Appease the kernel-doc deity
  thermal: tegra: Appease the kernel-doc deity
  thermal: amlogic: Appease the kernel-doc deity
  thermal: zx2967: Appease the kernel-doc deity

 drivers/thermal/amlogic_thermal.c    |  6 +++++-
 drivers/thermal/cpu_cooling.c        |  1 +
 drivers/thermal/devfreq_cooling.c    |  3 ++-
 drivers/thermal/fair_share.c         |  4 ++--
 drivers/thermal/gov_bang_bang.c      |  4 ++--
 drivers/thermal/max77620_thermal.c   |  2 +-
 drivers/thermal/mtk_thermal.c        | 12 ++++++------
 drivers/thermal/of-thermal.c         |  2 +-
 drivers/thermal/rockchip_thermal.c   | 22 ++++++++++++++++------
 drivers/thermal/samsung/exynos_tmu.c |  5 ++++-
 drivers/thermal/step_wise.c          |  4 ++--
 drivers/thermal/tegra/soctherm.c     | 15 +++++++++++++--
 drivers/thermal/user_space.c         |  4 ++--
 drivers/thermal/zx2967_thermal.c     |  1 +
 14 files changed, 58 insertions(+), 27 deletions(-)

-- 
2.17.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
