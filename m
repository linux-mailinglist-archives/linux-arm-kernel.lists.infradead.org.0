Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 041E6188E6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 May 2019 13:26:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PAJtvdIAkBsWDSzEwGRt4BxTM+b+qUOBjPVe8mDv518=; b=TgHhERXDTZSdpf
	cxLa4Pl4bKb6j9UVQP9BjIeHvFwK50NCqMo4q2AHUDZ3+9S/s6Y+A68ft5prAootCj+cEq0AmGBgb
	sR3UYO4LUU8jwZBZvufDqCj1jezLQGMnVmyyqatEWGb0Af4UMCx9dbgxungjWpGQo7RVGbBdz1tRY
	BztwluKLUZpwVslbjTF5jCBIGnHe99SjC/wE+0w1HVhBdMN3H70nHuXfU9mn2KYjWbr4KiuBf2sY0
	3sSq5hJxjgAhM9eVWtdHeC0HXoA1q+whvlAKuCQ+YRwkt5EtN7oye9NnRPlR+/T06/Ya90tCNwZNc
	c2iyZBhB53nSI7KzKaRw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOhBe-0006og-7G; Thu, 09 May 2019 11:26:06 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOhBW-0006oB-S8
 for linux-arm-kernel@lists.infradead.org; Thu, 09 May 2019 11:26:00 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Ludovic.Desroches@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="Ludovic.Desroches@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Ludovic.Desroches@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 dkim=none (message not signed) header.i=none;
 spf=Pass smtp.mailfrom=Ludovic.Desroches@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.60,449,1549954800"; d="scan'208";a="32281473"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 09 May 2019 04:25:57 -0700
Received: from localhost (10.10.76.4) by chn-sv-exch02.mchp-main.com
 (10.10.76.38) with Microsoft SMTP Server id 14.3.352.0; Thu, 9 May 2019
 04:25:56 -0700
Date: Thu, 9 May 2019 13:25:12 +0200
From: Ludovic Desroches <ludovic.desroches@microchip.com>
To: <arm@kernel.org>, Arnd Bergmann <arnd@arndb.de>, Kevin Hilman
 <khilman@kernel.org>, Olof Johansson <olof@lixom.net>
Subject: Re: [RESEND GIT PULL] ARM: at91: SoC for 5.2
Message-ID: <20190509112512.uc5swsgutd6x5cgq@M43218.corp.atmel.com>
Mail-Followup-To: arm@kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Kevin Hilman <khilman@kernel.org>, Olof Johansson <olof@lixom.net>,
 linux-arm-kernel@lists.infradead.org,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>
References: <20190429164354.bxngd2shia4qhyuv@localhost>
 <20190430053540.31846-1-ludovic.desroches@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190430053540.31846-1-ludovic.desroches@microchip.com>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190509_042558_938313_D13C820E 
X-CRM114-Status: GOOD (  15.46  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On Tue, Apr 30, 2019 at 07:35:40AM +0200, Ludovic Desroches wrote:
> Hi Olof,
> 
> Sorry, effecively I missed the tag when doing the PR, here is the new one.
> 
> Regards
> 
> Ludovic
> 
> The following changes since commit 9e98c678c2d6ae3a17cb2de55d17f69dddaa231b:
> 
>   Linux 5.1-rc1 (2019-03-17 14:22:26 -0700)
> 
> are available in the Git repository at:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/at91/linux.git tags/at91-5.2-soc
> 
> for you to fetch changes up to 2725d70aa5138284ba2cebf0ef51dd23e0c9ea21:
> 
>   ARM: at91: pm: do not disable/enable PLLA for ULP modes (2019-03-28 11:05:53 +0100)
> 
> ----------------------------------------------------------------
> AT91 SoC for 5.2
> 
>  - PM changes for SAM9X60
> 
> ----------------------------------------------------------------

Is this new PR okay (and the defconf one)? I have not seen them merged.

Regards

Ludovic

> Claudiu Beznea (8):
>       ARM: at91: pm: introduce at91_soc_pm structure
>       dt-bindings: arm: atmel: add binding for SAM9X60 SoC
>       ARM: at91: pm: initial PM support for SAM9X60
>       ARM: at91: pm: keep at91_pm_backup_init() only for SAMA5D2 SoCs
>       ARM: at91: pm: add support for per SoC wakeup source configuration
>       ARM: at91: pm: add ULP1 support for SAM9X60
>       ARM: at91: pm: disable RC oscillator in ULP0
>       ARM: at91: pm: do not disable/enable PLLA for ULP modes
> 
>  .../devicetree/bindings/arm/atmel-at91.txt         |   1 +
>  arch/arm/mach-at91/at91sam9.c                      |  18 ++
>  arch/arm/mach-at91/generic.h                       |   2 +
>  arch/arm/mach-at91/pm.c                            | 193 ++++++++++++++-------
>  arch/arm/mach-at91/pm_suspend.S                    | 111 ++++++++----
>  include/linux/clk/at91_pmc.h                       |   1 +
>  6 files changed, 232 insertions(+), 94 deletions(-)

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
