Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B2D001420F9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 00:53:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YvVINdZJ8rOB21vtFractwb8Ep0LrRAoOqlH7aGy30I=; b=Y3nZmSCBpAChee
	/a1j3GxUmY7s4pr3++VWDCggJsmAWZWcEihTAQQchs1ABsLKGRs6nnAdrrSlFw92mM3NEyqSw6W4H
	uE+b1jJg2NxNQgK3zzz9B9Okv2DaQtP3K8nl1xcXmjR43cXErp7bwEOL+4SYUf6l+fb660nMvfmtl
	ZUsTbRlsPsrIhPPAnCUs5OCpv7OgMTHei3z7Qxh9AbgFlGGcOeHilkGSPcPBlw7wC0Tepn8gDAIiH
	0YR/ksR5WxAtvQedVLfPQULXHw0b4ufAmR1EbnOx0MzRSpBb3pgzVAGGJnueHPstkT17kfp3tw0Ib
	S4gEmOPCJCbTcNHOtJBA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itKNZ-0006A7-03; Sun, 19 Jan 2020 23:53:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itKNR-00069x-KH
 for linux-arm-kernel@bombadil.infradead.org; Sun, 19 Jan 2020 23:53:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=Content-Type:MIME-Version:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:In-Reply-To:References:List-Id:List-Help:List-Unsubscribe:
 List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=aCQNZQ2lKUvNH5B/2FTn0YhZi5sFdMs/q75BCaxN7oo=; b=Xx1Oo4Jpg4VrpVXpGWl6plDbQn
 /eQ/teTFm4oE9Tot+kxSrOvYwBHHWqEmRGl8Rf8lA3a7ww61SRwg59agEBRFBlVxC9LN6m6xpXPDq
 /ytkQiAN1Ip5fPPn7h4JvgtlJLmqg2c0cnXKsGhH6GiYKsretJhSEH3ooSkGgA/h9rTNZx3JzYQHn
 oEjxbhpDfNd+0OsuBfMRLmn/bt4kTxhg43f9j4UK/3GIMxEpF3AWm4ueqsUJEeBt+7PXUQhT819P4
 HSMYhYL2MOrrfTJ47KlsgGUSUT8X/vVFFyvhCLpxCi5D3CXhUOs19fAoCbcAyevko0+rtmW4y2VvC
 cPC9RrKg==;
Received: from relay11.mail.gandi.net ([217.70.178.231])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itKNM-0004rV-JD
 for linux-arm-kernel@lists.infradead.org; Sun, 19 Jan 2020 23:53:06 +0000
Received: from localhost (lfbn-lyo-1-1913-102.w90-65.abo.wanadoo.fr
 [90.65.92.102]) (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay11.mail.gandi.net (Postfix) with ESMTPSA id 3E10E100002;
 Sun, 19 Jan 2020 23:52:24 +0000 (UTC)
Date: Mon, 20 Jan 2020 00:52:23 +0100
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
 arm@kernel.org, soc@kernel.org
Subject: [GIT PULL] ARM: at91: defconfig for 5.6 #2
Message-ID: <20200119235223.GA92283@piout.net>
MIME-Version: 1.0
Content-Disposition: inline
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on merlin.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.3 URIBL_RHS_DOB          Contains an URI of a new domain (Day Old Bread)
 [URIs: bootlin.com]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.178.231 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Ludovic Desroches <ludovic.desroches@microchip.com>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Arnd, Olof,

A single patch adding pit64 (the sam9x60 clocksource) and SDHCI support
in at91_dt_defconfig so it can generate kernels that will boot on the
sam9x60ek.

The following changes since commit f013dbe4e7205b44ce057ef6aab8853d1c63513d:

  ARM: configs: at91: enable config flags for sam9x60 SoC (2020-01-10 23:40:03 +0100)

are available in the Git repository at:

  git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux tags/at91-5.6-defconfig-2

for you to fetch changes up to 82720a53472db7e4313342bb778a6e6fd910c6c6:

  ARM: configs: at91: enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B (2020-01-20 00:48:33 +0100)

----------------------------------------------------------------
AT91 defconfig for 5.6 #2

 - Add pit64 and sdhci support for at91_dt

----------------------------------------------------------------
Claudiu Beznea (1):
      ARM: configs: at91: enable MMC_SDHCI_OF_AT91 and MICROCHIP_PIT64B

 arch/arm/configs/at91_dt_defconfig | 4 ++++
 1 file changed, 4 insertions(+)

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
