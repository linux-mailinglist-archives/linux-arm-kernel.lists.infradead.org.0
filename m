Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B8CE130136
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  4 Jan 2020 07:35:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ubqYDgYJ43TuF0aBWqXw0eScOISRXwT6qd23lIPRH34=; b=aR4lfXWiynLFXm
	NwpuRZDxMCRONqT+WocTz+QsCeW3bOImib8bNZauIYMO7CncvH5cqB+tr9ewioVD1XPHF+RZLpfXV
	eMeBLX1nYwjwciFoEYDqiCctye55NSeWRmJB4cRvc1ZFSyD5NlIwCHy1YPcwgSIdyh21DOPBqd21p
	v/iL0Uo3Jq5X+qLnMuvas0/c4oGBGi45pzs9EGWo6KtGo3HRDYqZNE0wyoKX3SPvAHO73UKkMjsEG
	bJUo+z33DbHYCPEzCF936qTBXZLhSA3qqfXHFWk1ioLbbXwAwQY+iNm3uk0dJTnF5+e0M9hvL/Mom
	14l4TZQygB8IqN2jk4+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ind1v-0001WU-GD; Sat, 04 Jan 2020 06:35:23 +0000
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ind1n-0001V4-UK
 for linux-arm-kernel@lists.infradead.org; Sat, 04 Jan 2020 06:35:17 +0000
Received: by mail-pf1-x441.google.com with SMTP id x184so24481189pfb.3
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 03 Jan 2020 22:35:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GqJ8ZmfM/PFXKuoIgxtZB8URd70ARnFMr3QCYoyfFA0=;
 b=dounZ2ppJYTKqp51bh8xzI0RyZitcAA3RY3wYe2pbOenDAxwIdyop1p9R2D3XgoYw6
 gVAUHqpKtj5wN3CAcdUSt2K+sdeQU/cHqJNYP0MkOMe2jeqB/xx6Bf4RYkQ0Pp4kpF15
 FJCnCjkXi00z7p/ERiYzPxsI0yMUxe6pRtVw9srlhulWl+f5YQlqdHL11sB354eSsmZd
 /FN9+ODH4EF/b9wGlEp0njgPJ1+RskUyNkzbPTMci++SkCmGP9+X8++tqJpYj2rxwRZq
 KF0+7XtVFr09k8RFkxgb1Uwqd6IAGupOEMExVOp5BuEYe0eNdXdji6aCP/W0kHXBQrEG
 +hMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=GqJ8ZmfM/PFXKuoIgxtZB8URd70ARnFMr3QCYoyfFA0=;
 b=o71G42Qe6d0o6kWgCbpGFswysiH7xdl/nwYaxR1KTQYNZV50esdC51kt0PwLrasZQT
 UBtvXDCsnQ4yAmTYzVHoucnCzSSLmhn8T4yicz3vcqG3z6sWhX7/844c42NBe/wzDvRC
 l19mVGfYEGZxNbPF2FkfC0XCiDCFaszX+ilijKzv9ZJYSbCwpgmaeiKBKOfoIx7KUY6l
 900qQj/Y8koiTxg8YBELt5mkjQP9uhk3g2K03Uw/w7+mExOKjTSHbYfagsOmbCLJQuEa
 SOZ8Bg4qfmCBPSnmlk2O7uYbTLX15QZzwc+MlObH5E4vj0OaFQAgmT8atCTZyen1k4xe
 ltRg==
X-Gm-Message-State: APjAAAVDSYvYpe4s7OE3DmVJA+KLwgZtWyTs+w1POQIPH7YjcNK1RyQg
 5ueIwhDBttQLiKpKSpvIfbc=
X-Google-Smtp-Source: APXvYqwr5GDNc9qscNd3uh0Bu2sGtpzDoHRLmGIpeTafg/WPx1VPd9XTmXJf/hJ1skNSPqxboNByNg==
X-Received: by 2002:a63:2ccc:: with SMTP id s195mr57308380pgs.75.1578119714606; 
 Fri, 03 Jan 2020 22:35:14 -0800 (PST)
Received: from anarsoul-thinkpad.lan (216-71-213-236.dyn.novuscom.net.
 [216.71.213.236])
 by smtp.gmail.com with ESMTPSA id u2sm64761580pgc.19.2020.01.03.22.35.13
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 03 Jan 2020 22:35:13 -0800 (PST)
From: Vasily Khoruzhick <anarsoul@gmail.com>
To: Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org
Subject: [PATCH 0/3] arm64: allwinner: a64: Enable DVFS on A64
Date: Fri,  3 Jan 2020 22:35:02 -0800
Message-Id: <20200104063505.219030-1-anarsoul@gmail.com>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200103_223516_005793_CD98A444 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (anarsoul[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series enables DVFS on Allwinner A64. Operating points table is taken
from BSP kernel.

Icenowy Zheng (1):
  clk: sunxi-ng: add mux and pll notifiers for A64 CPU clock

Vasily Khoruzhick (2):
  clk: sunxi-ng: a64: export CLK_CPUX clock for DVFS
  arm64: dts: allwinner: a64: enable DVFS

 .../allwinner/sun50i-a64-amarula-relic.dts    |   4 +
 .../dts/allwinner/sun50i-a64-bananapi-m64.dts |   4 +
 .../dts/allwinner/sun50i-a64-nanopi-a64.dts   |   4 +
 .../dts/allwinner/sun50i-a64-olinuxino.dts    |   4 +
 .../dts/allwinner/sun50i-a64-orangepi-win.dts |   4 +
 .../boot/dts/allwinner/sun50i-a64-pine64.dts  |   4 +
 .../dts/allwinner/sun50i-a64-pinebook.dts     |   4 +
 .../allwinner/sun50i-a64-sopine-baseboard.dts |   4 +
 .../boot/dts/allwinner/sun50i-a64-sopine.dtsi |   4 +
 .../boot/dts/allwinner/sun50i-a64-teres-i.dts |   4 +
 arch/arm64/boot/dts/allwinner/sun50i-a64.dtsi | 102 ++++++++++++++++++
 drivers/clk/sunxi-ng/ccu-sun50i-a64.c         |  28 ++++-
 drivers/clk/sunxi-ng/ccu-sun50i-a64.h         |   1 -
 include/dt-bindings/clock/sun50i-a64-ccu.h    |   1 +
 14 files changed, 170 insertions(+), 2 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
