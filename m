Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DC001D8A86
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 10:08:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwo7xRYnf2KnMyPy7gIOXBhEOsJnqLNBUQNsX4V0JeI=; b=F/yjXJoO0PSdne
	1fJgCKYYKjBFHcL8rIJmfBZTMs7lSre080QqtiWxGcotgWAyV9PyOtz/BLkahk8YA8anPVIbVE8DI
	DgUIJqko6axxCSGt58JR4bTT2Iqj1cnczdJA111ycJQ2t3TSlVj2KSsd3qjq2+OdKIGk3T/niaQLv
	yT34VEhBuMEr4vmb3J2kpdWkJ9fv84shhgEdmC2sh95+DDI05IDHCU8kpcQ1QLqFFqx2r0xoPSpmc
	Klg6WDW6QS8nN9G5LOnzfLMza1asQWWn5vWeMlAzKsjNQi73DM1k6kyOtEdhwdMfTvS9ut5T6aKFy
	CW6gaRsuFEt5uulXGscg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKeMA-0001cy-Da; Wed, 16 Oct 2019 08:08:30 +0000
Received: from relay6-d.mail.gandi.net ([217.70.183.198])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKeM1-0001cO-6g
 for linux-arm-kernel@lists.infradead.org; Wed, 16 Oct 2019 08:08:23 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay6-d.mail.gandi.net (Postfix) with ESMTPSA id 770F6C000C;
 Wed, 16 Oct 2019 08:08:02 +0000 (UTC)
Date: Wed, 16 Oct 2019 10:08:02 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 0/3] Add new Overkiz Kizbox3 support
Message-ID: <20191016080802.GY3125@piout.net>
References: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191016_010821_378220_13F9AEF3 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.198 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Rob Herring <robh+dt@kernel.org>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/10/2019 14:50:19+0200, Kamel Bouhara wrote:
> Add support for the Kizbox3 Overkiz SAS boards.
> Those boards are based on the Atmel SAMA5D27 SoC.
> 
> Kamel Bouhara (3):
>   dt-bindings: Add vendor prefix for Overkiz SAS
>   dt-bindings: arm: at91: Document Kizbox3 HS board binding
>   ARM: at91: add Overkiz KIZBOX3 board
> 
>  .../devicetree/bindings/arm/atmel-at91.yaml   |   7 +
>  .../devicetree/bindings/vendor-prefixes.yaml  |   2 +
>  arch/arm/boot/dts/Makefile                    |   1 +
>  arch/arm/boot/dts/at91-kizbox3-hs.dts         | 309 +++++++++++++
>  arch/arm/boot/dts/at91-kizbox3_common.dtsi    | 412 ++++++++++++++++++
>  5 files changed, 731 insertions(+)
>  create mode 100644 arch/arm/boot/dts/at91-kizbox3-hs.dts
>  create mode 100644 arch/arm/boot/dts/at91-kizbox3_common.dtsi
> 

All applied, thanks.

-- 
Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
