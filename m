Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 725C8194F72
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 27 Mar 2020 04:04:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=odE1DIMB7JSO/Y5lyOOK9TCa+SMFWUtYn1DEAFMeAd4=; b=FaeWv13t0tWhfp
	U7/RW3Zqi6eEXkKYgh/ZQa+cZLlZx6G8cDI3EpWQHoiIDRCnDh0XbTpar/D254ckZ1kM290ebpdFj
	WUc9cktNUILM1XTb6hMITgwtduWlbiY324fAP6NOIyhG2R0MvhlM3Hrv+tBKHRANs5IJHSQbd0P4f
	cLoeSIUqQZYnKjaNhoPa7o9kSibHc8vUN3cbhEPO22hwp+m/9XO01Uh1i50EXx3yCZhhzZGaLG/fF
	YbfBwdMayKudTGMpg6ehNR3Jeinko0AT3FJmxpo7pYYH2pDjN2N7nAQKm4XOwZ7fIro9rUxWjEPBq
	23Oxodct+dt1bJBZUTjQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jHfIX-0004Cf-1E; Fri, 27 Mar 2020 03:04:41 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jHfIN-0004A0-W3; Fri, 27 Mar 2020 03:04:33 +0000
Received: from wens.tw (mirror2.csie.ntu.edu.tw [140.112.30.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EC95620787;
 Fri, 27 Mar 2020 03:04:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1585278271;
 bh=6y12TvNjGQ59pOhao3h7PXzCpe1LrErO1ZETO+Q38/8=;
 h=From:To:Cc:Subject:Date:From;
 b=oBVc4pwmUnHocEPPHYmexfW8XvqTWf1SifihhT9bbCZczSyCXwKHOQHMC5zApG36V
 hVen6Haxaoaqede+i3aptmdkwJ+AswxVxjx3RPGV7dkki4mCp/VNYC5SIR7ZnDGVLQ
 +RQ8lPAlVwa0aUVtnvN8d4xLxegjP1JIMWsQqizo=
Received: by wens.tw (Postfix, from userid 1000)
 id 2E8525FD2A; Fri, 27 Mar 2020 11:04:26 +0800 (CST)
From: Chen-Yu Tsai <wens@kernel.org>
To: Heiko Stuebner <heiko@sntech.de>,
	Rob Herring <robh+dt@kernel.org>
Subject: [PATCH 0/6] arm64: dts: rockchip: misc. cleanups
Date: Fri, 27 Mar 2020 11:04:08 +0800
Message-Id: <20200327030414.5903-1-wens@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200326_200432_055138_9676AA86 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-rockchip@lists.infradead.org, Chen-Yu Tsai <wens@csie.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Chen-Yu Tsai <wens@csie.org>

Hi,

Here are a bunch of cleanups for rk3399 and rk3328.

  - Some dtc warnings were silenced, however a few still remain.
    Found those while making device tree overlays

  - Replaced some hardware specific device node names, such as dwc3
    and rk808, with generic names

  - Fixed MMC numbering for roc-rk3399-pc with mezzanine

The series is based on linux-next 2020-03-24. For some reason 2020-03-26
doesn't boot.

Please have a look.

Regards
ChenYu

Chen-Yu Tsai (6):
  arm64: dts: rockchip: rk3399-roc-pc: Fix MMC numbering for LED
    triggers
  arm64: dts: rockchip: rk3328: Replace RK805 PMIC node name with "pmic"
  arm64: dts: rockchip: rk3328: drop non-existent gmac2phy pinmux
    options
  arm64: dts: rockchip: rk3328: drop #address-cells, #size-cells from
    grf node
  arm64: dts: rockchip: rk3399: drop #address-cells, #size-cells from
    pmugrf node
  arm64: dts: rockchip: rk3399: Rename dwc3 device nodes to make dtc
    happy

 arch/arm64/boot/dts/rockchip/rk3328-evb.dts    |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328-rock64.dts |  2 +-
 arch/arm64/boot/dts/rockchip/rk3328.dtsi       | 18 ------------------
 .../dts/rockchip/rk3399-roc-pc-mezzanine.dts   |  8 ++++++++
 .../arm64/boot/dts/rockchip/rk3399-roc-pc.dtsi |  4 ++--
 arch/arm64/boot/dts/rockchip/rk3399.dtsi       |  6 ++----
 6 files changed, 14 insertions(+), 26 deletions(-)

-- 
2.25.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
