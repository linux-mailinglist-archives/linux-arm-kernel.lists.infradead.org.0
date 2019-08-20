Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83D3596322
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 16:54:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rNHjxbOOdfM3qiXR5dqu96VHJ3d6IGIULO5RW3yCxiU=; b=hj9DttiF8RCvxb
	rJtOjYk0eiSysPEVqtrKYD1YUVfoNEUUZwJxAsqGCVG9Zj4Ta5vh7/lge8AWY4CLRK5q//lY/YYes
	Hfg9YoKlh85XrX4NNcVM5Yl1lDrLoCduVG/ktWnO7Et63rrtQ3jLlSrFyKDVkHSgwKfUP7eNBWNTN
	ODdKzTTkASDZsIritXpmaLmYtPVd3DOE561Ym5D2bJiiKdz0xY+k6TZ92y08xAShfVApuOEKSwpt7
	FsgsCQ8bAIN0F+BDNcMACO16zNtxW9mz4zsMNDU7khEFtgqNcMuSULBNXE/6VmEffHpinnyZ/M+IL
	fzL0xnkuYKWAgpltTVwA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05WK-000157-Oo; Tue, 20 Aug 2019 14:54:00 +0000
Received: from vps.xff.cz ([195.181.215.36])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05W7-00013P-Ba
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 14:53:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=megous.com; s=mail;
 t=1566312824; bh=py02IQSJ2y0fP6mE701P/T7DLz5rHrBBsdi+SrYtmAQ=;
 h=From:To:Cc:Subject:Date:From;
 b=ihT3jfMZjyNKOOmCAeVt8DagRKcxrgxjzBtMNrrsWuA2kW/0aWuyGUxkSeqV3zmDF
 DR8RbXPdWB0aunx4ASN4un+qj3dbjsy6VQ9bOV82+6a5KJ1i6hIjs1eEfFfqrBW1cW
 4zQmFKTHoUOoKsCOJgwVFpzgGDvjG2WzldaFI9rU=
From: megous@megous.com
To: "David S. Miller" <davem@davemloft.net>, Rob Herring <robh+dt@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Giuseppe Cavallaro <peppe.cavallaro@st.com>,
 Alexandre Torgue <alexandre.torgue@st.com>,
 Jose Abreu <joabreu@synopsys.com>,
 Maxime Coquelin <mcoquelin.stm32@gmail.com>
Subject: [PATCH 0/6] Add ethernet support for Orange Pi 3
Date: Tue, 20 Aug 2019 16:53:37 +0200
Message-Id: <20190820145343.29108-1-megous@megous.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075347_738442_B56CEDAD 
X-CRM114-Status: UNSURE (   8.67  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Ondrej Jirman <megous@megous.com>

This series implements ethernet support for Xunlong Orange Pi 3 board, by:

- making small cleanups of existing dwmac-sun8i code
- adding DT bindings docummentation
- adding support for phy-io-supply to dwmac-sun8i code
- adding DT configuration for Orange Pi 3 board

For some people, ethernet doesn't work after reboot because u-boot doesn't
support AXP805 PMIC, and will not turn off the etherent PHY regulators.
So the regulator controlled by gpio will be shut down, but the other one
controlled by the AXP PMIC will not.

This is a problem only when running with a builtin driver. This needs
to be fixed in u-boot and should not prevent these patches from being
merged.

This evolved out of the Orange Pi 3 patches series, as I didn't want
to stretch that out any longer.

Please take a look.

thank you and regards,
  Ondrej Jirman

Ondrej Jirman (6):
  dt-bindings: net: sun8i-a83t-emac: Add phy-supply property
  dt-bindings: net: sun8i-a83t-emac: Add phy-io-supply property
  net: stmmac: sun8i: Use devm_regulator_get for PHY regulator
  net: stmmac: sun8i: Rename PHY regulator variable to regulator_phy
  net: stmmac: sun8i: Add support for enabling a regulator for PHY I/O
    pins
  arm64: dts: allwinner: orange-pi-3: Enable ethernet

 .../net/allwinner,sun8i-a83t-emac.yaml        |  8 ++
 .../dts/allwinner/sun50i-h6-orangepi-3.dts    | 40 ++++++++++
 .../net/ethernet/stmicro/stmmac/dwmac-sun8i.c | 74 ++++++++++++-------
 3 files changed, 96 insertions(+), 26 deletions(-)

-- 
2.22.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
