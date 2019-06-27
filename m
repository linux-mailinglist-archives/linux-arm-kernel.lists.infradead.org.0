Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0127B580A6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 12:41:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UkG891Sm37UeNzjfcJdhH/Fmv58VteNbpOEve+opRUI=; b=tcfqqXY/cKDPDm
	CP/GAItBU5oittjRZD+ebeoRC8vl1/tyysTofB6Nu1osOpRCfxZemSt+mOf23JQT8pwHJ7VRjcxSL
	E+swfLXdd/H1d3TTTg53aMT1xmsu4I0D/uurhjvp+UZc3/GluyF/4sWgsdgzvCNOgPfjsiUwDPbFl
	oyoIm906si2cDy4k97HOItGnFivqIF/K+ZqOeBU4cLGVIUVMMjFsbpQrnPvBwsR1R6ustKca/HV6r
	m2cqAsiDBe3uN5d48GEmc2WWRgGHznrt0JaXh/rpkzqjeShhLG9yyFWL8c68tg4vbXb4BXRxO+4lM
	ZTA4+YtI8+9ozCAiLBwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgRq9-0002dh-Ss; Thu, 27 Jun 2019 10:41:17 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgRpi-0002S6-Eh; Thu, 27 Jun 2019 10:40:51 +0000
Received: from wf0413.dip.tu-dresden.de ([141.76.181.157] helo=phil.localnet)
 by gloria.sntech.de with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.89)
 (envelope-from <heiko@sntech.de>)
 id 1hgRpg-0007Qx-O0; Thu, 27 Jun 2019 12:40:48 +0200
From: Heiko Stuebner <heiko@sntech.de>
To: linux-rockchip@lists.infradead.org
Subject: Re: [PATCH 1/3] clk: rockchip: add clock id for watchdog pclk on
 rk3328
Date: Thu, 27 Jun 2019 12:40:48 +0200
Message-ID: <3064210.M1lX7hhosJ@phil>
In-Reply-To: <20190615153032.27772-1-heiko@sntech.de>
References: <20190615153032.27772-1-heiko@sntech.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_034050_657855_BCBB1238 
X-CRM114-Status: UNSURE (   6.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: sboyd@kernel.org, mturquette@baylibre.com, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-clk@vger.kernel.org,
 papadakospan@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am Samstag, 15. Juni 2019, 17:30:30 CEST schrieb Heiko Stuebner:
> Needed to export that added clock.
> 
> Signed-off-by: Heiko Stuebner <heiko@sntech.de>

applied all 3 patches to relevant branches for 5.3

Cheers
Heiko



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
