Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E568F6C00
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 Nov 2019 01:43:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=S4kHWMQYIjSwXhYOYHgaoPj7MbMgaw9Ehvin/hs0uqg=; b=ts4LNfAeGcLSdP
	ba5r8qeOQ+5Tps4hj9VGx5qdVNmLsSDCPZbPuPjp2JwUhzTgeWD2bqxuTBbG38LzxJV2YWGGJm0gk
	XTnOUoC+beiH8JmLM7I6whCBU5osTVGg/7waRrKMloBbCIBNsL4kjhe0HDhafPTtz8HupOLbPdK+u
	pmblmbCWfpNB7p/rSaEDlws3PkbCtahgJeQHHLF00r7MxYwsePLg0n0vyeEH14I+QlpH0ZVKC2uzI
	GqJEaZxrwECvGW80vUvFGAVGvZSoue7tKWwsPUeJMo9yiOX8/9z33VSHQujvANJzNB+i96N8URRG6
	1rgxoT7qmsVvGM06AWrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTxnM-0007u9-Dm; Mon, 11 Nov 2019 00:43:04 +0000
Received: from gloria.sntech.de ([185.11.138.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTxnB-0007sl-H6; Mon, 11 Nov 2019 00:42:54 +0000
Received: from ip5f5a6266.dynamic.kabel-deutschland.de ([95.90.98.102]
 helo=phil.localnet)
 by gloria.sntech.de with esmtpsa (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 (Exim 4.89) (envelope-from <heiko@sntech.de>)
 id 1iTxn7-000616-Qx; Mon, 11 Nov 2019 01:42:49 +0100
From: Heiko Stuebner <heiko@sntech.de>
To: arm@kernel.org
Subject: [GIT PULL 1/2] Rockchip dts32 changes for 5.5 - round 2
Date: Mon, 11 Nov 2019 01:42:49 +0100
Message-ID: <1926436.N9mSsAMzn9@phil>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191110_164253_718687_0A53D30F 
X-CRM114-Status: UNSURE (   9.37  )
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
Cc: linux-rockchip@lists.infradead.org, soc@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi (arm-)soc people,

please find below and in the reply mail round 2 of devicetree patches
targettted at 5.5. The signed tags should summarize the contents
hopefully nicely :-) .

Please pull
Thanks
Heiko

The following changes since commit a562a8acccb3070155aad3db5ac97a80aed2a24b:

  ARM: dts: rockchip: remove some tabs and spaces from dtsi files (2019-10-16 21:26:03 +0200)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git tags/v5.5-rockchip-dts32-2

for you to fetch changes up to bbf8f6fef71a02b297de532364b5217d34f01582:

  ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey (2019-10-31 11:49:56 +0100)

----------------------------------------------------------------
HDMI-audio support for Veyron devices.

----------------------------------------------------------------
Cheng-Yi Chiang (2):
      ARM: dts: rockchip: Add HDMI support to rk3288-veyron-analog-audio
      ARM: dts: rockchip: Add HDMI audio support to rk3288-veyron-mickey

 arch/arm/boot/dts/rk3288-veyron-analog-audio.dtsi | 1 +
 arch/arm/boot/dts/rk3288-veyron-mickey.dts        | 7 +++++++
 2 files changed, 8 insertions(+)




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
