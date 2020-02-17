Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC23D16080C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 03:20:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=fJdPKxBWCH0TbIenxaSf/8YOwuJfqcoGxm54qwRLg+4=; b=fFAmhup+4gAQ0X
	QQJxFB5C+8rdepEkNXjOCSn58PKYo6Mei0efmQk40FH5UsMRbPnVwNIltr1ctE+KINU4FW8ZeDaQY
	2TarP4IZA82B5S7VTNhmjpSnS/MwG7uqwEUdeFMlq8+CTOH1uEjCNodkvRy1nNmzt2oUp/yigpEn6
	zxdSnXlAYgrrphZU7duukS5VJOrEf3uzJyvL1NGywaVBQYE+wSmkmQUryhTWnC1F0Vj2rYnpIwk7N
	XyjHnoI02ioSnCS0rGrGCsGc0M98eazuYrZHtDSinMc8p+1fqfkRf/wGAuBpAuZC1aAIy6wy0LP/b
	4ulzr3xL+A9NlI2vAYpg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3W1B-0007Rl-9R; Mon, 17 Feb 2020 02:20:17 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3VzP-0005zT-PC
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 02:18:29 +0000
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailnew.nyi.internal (Postfix) with ESMTP id 97B6D6D65;
 Sun, 16 Feb 2020 21:18:19 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
 by compute5.internal (MEProxy); Sun, 16 Feb 2020 21:18:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sholland.org; h=
 from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding; s=fm2; bh=81rmcCzH+99CIb8JzKCPF7IB0i
 Cso38cvLYNenVDvQ8=; b=KgZOC9omNh/Mhbz59mykqHg/w1bH45ClosPkO/Fgoz
 MZVm8v1NXpcRoWPtlrKLqnSUQy3XJt9Qtbwk+B4Be+fx9uqNRxS6QrsdAjy1byID
 O/JYdYWsZyCRnagTztvOpA44PadmDw3sSOpvQ8olhgxD/t/XOycyMoJFMxiKhPB5
 NMzKive9HuRPjrq6dk7gU6M0SjswTEjjbNWdYJIc4SaY6iO+PP710It1TDEGQm0k
 0mzXt0E7CGx9FvrZhwNY7jMFteLPBCBswZZ2//OVAni0hTmD/YubQdLNZEfJiH3d
 dh5HkyOkweAb/f93iMMdLOYqgH5U9VMmXZ6N0YSevXGg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-transfer-encoding:date:from
 :message-id:mime-version:subject:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=81rmcCzH+99CIb8Jz
 KCPF7IB0iCso38cvLYNenVDvQ8=; b=tZ4rjemRHjhvYRn8IWa88dxrN+aJ7aByz
 81isJQx4xCyoJkN1ETHReI0CHGcSnX8REs5smKf6AWPv98T8AEUQ8kmLrduG7do0
 L15QVoc1XNNomtXRu0ZCQDBtSPbHHBoEN9gXJtGcoISYE8FO76fI4deQO/OJSmW5
 pXlkS0cCeRCtWQY1teiJjRjSlWXkthdJBK6STYvVDtrEGv8ynxGX5KQKaHJH2Wj9
 iMoBjLF7MCrWKW9inTL9057KwaQXitloWMtAx5Tao9+XKX36TIgKNKgm0U2nCjxr
 +7tdT5IZr0MOPSYGV0kKAdUnRYCn2mV7OQCf1sYVlWWF973jXAV6Q==
X-ME-Sender: <xms:5vdJXg3nqOvn_wGRRoRCPDwqghJu_I90lH075V3kuV08-Z8QTSnS0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrjeehgdegfecutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpefhvffufffkofgggfestdekredtredttdenucfhrhhomhepufgrmhhuvghlucfj
 ohhllhgrnhguuceoshgrmhhuvghlsehshhholhhlrghnugdrohhrgheqnecukfhppeejtd
 drudefhedrudegkedrudehudenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhep
 mhgrihhlfhhrohhmpehsrghmuhgvlhesshhhohhllhgrnhgurdhorhhg
X-ME-Proxy: <xmx:5vdJXiHPqr_iZzZGKOLSoK8hMUwQFvTT2CWrCjnhDYhfRk3Fe6LmGQ>
 <xmx:5vdJXt7kJxB7BEVbcvSeo_2a3KP_GrteIFqNl0cO1okB5I20m02Kwg>
 <xmx:5vdJXov0YxKj6xnnkjebkZWvv228FAN7ew_FqYDVxI36OBFxt8tEhQ>
 <xmx:6_dJXr0UGR0mFYcqrcV5ahNxO4ZvGbeiGrxNaoWWqto1dCWm1TSr2w>
Received: from titanium.stl.sholland.net
 (70-135-148-151.lightspeed.stlsmo.sbcglobal.net [70.135.148.151])
 by mail.messagingengine.com (Postfix) with ESMTPA id 2A1443060BE4;
 Sun, 16 Feb 2020 21:18:14 -0500 (EST)
From: Samuel Holland <samuel@sholland.org>
To: Mark Brown <broonie@kernel.org>, Liam Girdwood <lgirdwood@gmail.com>,
 Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Vasily Khoruzhick <anarsoul@gmail.com>, Luca Weiss <luca@z3ntu.xyz>
Subject: [PATCH 0/8] ASoC: sun50i-codec-analog: Cleanup and power management
Date: Sun, 16 Feb 2020 20:18:05 -0600
Message-Id: <20200217021813.53266-1-samuel@sholland.org>
X-Mailer: git-send-email 2.24.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200216_181827_970837_45D5E8DB 
X-CRM114-Status: UNSURE (   6.00  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, Samuel Holland <samuel@sholland.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

This series performs some minor cleanup on the driver for the analog
codec in the Allwinner A64, and hooks up the existing mute switches to
DAPM widgets, in order to provide improved power management.

Samuel Holland (8):
  ASoC: sun50i-codec-analog: Fix duplicate use of ADC enable bits
  ASoC: sun50i-codec-analog: Gate the amplifier clock during suspend
  ASoC: sun50i-codec-analog: Group and sort mixer routes
  ASoC: sun50i-codec-analog: Make headphone routes stereo
  ASoC: sun50i-codec-analog: Enable DAPM for headphone switch
  ASoC: sun50i-codec-analog: Make line out routes stereo
  ASoC: sun50i-codec-analog: Enable DAPM for line out switch
  ASoC: sun50i-codec-analog: Enable DAPM for earpiece switch

 sound/soc/sunxi/sun50i-codec-analog.c | 174 ++++++++++++++++----------
 1 file changed, 109 insertions(+), 65 deletions(-)

-- 
2.24.1


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
