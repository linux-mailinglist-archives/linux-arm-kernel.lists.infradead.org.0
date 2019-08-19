Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71B6094DDE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 21:26:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fyyyeQt90Q+vJKCL8k3ndyprtBqYoXZHeW28P6Rbw5Q=; b=nO9bAg6abUktez
	NWMBDULe5tDF5P7M9T1TspwTJ3kNvQavTfpNpijBqZOsBpCH9vmPRP/hTAP/PMRzfzjVwf7yhRh7r
	yy8q0/Oq4NlxSJwZYo0d1DvdvDNLeMlEZahXUf5M+tY+y1UG03PnLmsR6tEUqVziZBKyn8cPk1Uiu
	h1RraQOKUjvwms/EOQna/GVQINFbaAHMVRmeLetan0NfNrkjIwz70woBf4Dfd9twUZi+VAclbtmkp
	7llPPCT0IM58QP2KQbAbw5kmGSRWBg4YBzlGVM2ys5ZG6COiYEJ+Nc6Iniq6YMlhDEWbRheBwbcJR
	ZeNMz2YnBO3osYAdhPvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hznI2-0008Rc-Re; Mon, 19 Aug 2019 19:26:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hznHY-0008Qs-Ek
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 19:25:33 +0000
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 62E72206C1;
 Mon, 19 Aug 2019 19:25:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1566242732;
 bh=8vRsvS2UGGwvEnAdIxjo2i3ETJRhz5Wf5lCbKvVguOs=;
 h=From:To:Cc:Subject:Date:From;
 b=l8OJWcmughWZuDP3/XDpGNVsTiZDTfTDaJoWhgDX7iEKwDp3iUkFyIwxIpEObvfDB
 Dxtbxko+4GaOBxk8wZiQ13pSL+1HsW8evfVGhzlbp8+WJPdkAHfJonqwQRp8KVAmtK
 v71cIdSd3diqeCyi3v7A/LtO6rFr8tZgxPKslgh0=
From: Maxime Ripard <mripard@kernel.org>
To: Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <mripard@kernel.org>,
 lgirdwood@gmail.com, broonie@kernel.org
Subject: [PATCH 00/21] ASoC: sun4i-i2s: Number of fixes and TDM Support
Date: Mon, 19 Aug 2019 21:25:07 +0200
Message-Id: <cover.e08aa7e33afe117e1fa8f017119d465d47c98016.1566242458.git-series.maxime.ripard@bootlin.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190819_122532_521590_5BFA7863 
X-CRM114-Status: UNSURE (   9.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: codekipper@gmail.com, alsa-devel@alsa-project.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

From: Maxime Ripard <maxime.ripard@bootlin.com>

Hi,

This series aims at fixing a number of issues in the current i2s driver,
mostly related to the i2s master support and the A83t support. It also uses
that occasion to cleanup a few things and simplify the driver. Finally, it
builds on those fixes and cleanups to introduce TDM and DSP formats support.

Let me know what you think,
Maxime

Marcus Cooper (1):
  ASoC: sun4i-i2s: Fix the MCLK and BCLK dividers on newer SoCs

Maxime Ripard (20):
  ASoC: sun4i-i2s: Register regmap and PCM before our component
  ASoC: sun4i-i2s: Switch to devm for PCM register
  ASoC: sun4i-i2s: Replace call to params_channels by local variable
  ASoC: sun4i-i2s: Move the channel configuration to a callback
  ASoC: sun4i-i2s: Move the format configuration to a callback
  ASoC: sun4i-i2s: Rework MCLK divider calculation
  ASoC: sun4i-i2s: Don't use the oversample to calculate BCLK
  ASoC: sun4i-i2s: Use module clock as BCLK parent on newer SoCs
  ASoC: sun4i-i2s: RX and TX counter registers are swapped
  ASoC: sun4i-i2s: Use the actual format width instead of an hardcoded one
  ASoC: sun4i-i2s: Fix LRCK and BCLK polarity offsets on newer SoCs
  ASoC: sun4i-i2s: Fix the LRCK polarity
  ASoC: sun4i-i2s: Fix WSS and SR fields for the A83t
  ASoC: sun4i-i2s: Fix MCLK Enable bit offset on A83t
  ASoC: sun4i-i2s: Fix the LRCK period on A83t
  ASoC: sun4i-i2s: Remove duplicated quirks structure
  ASoC: sun4i-i2s: Pass the channels number as an argument
  ASoC: sun4i-i2s: Support more channels
  ASoC: sun4i-i2s: Add support for TDM slots
  ASoC: sun4i-i2s: Add support for DSP formats

 sound/soc/sunxi/sun4i-i2s.c | 660 ++++++++++++++++++++-----------------
 1 file changed, 372 insertions(+), 288 deletions(-)

base-commit: d45331b00ddb179e291766617259261c112db872
-- 
git-series 0.9.1

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
