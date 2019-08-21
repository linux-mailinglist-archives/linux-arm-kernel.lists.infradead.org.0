Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0B4898089
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 21 Aug 2019 18:47:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CdYrdQRejcSCHxslTWi2CxJ75AkCzu67UwDyU8EXFQs=; b=gvuA9ElPDRRDiR
	btLHtl7rHyRupKGaUYpOJHYjgN5Rtbh9PqB3kqggfyJbIi9/3IR/i8LUcKbxt2oPvKQl/Rhyg4ZeZ
	1Qs95KCh9bVZGiRXK1DmKvG9lVys3Fj0gNKnhBJ2ybxHe0h5yokRCIm7KprNI036UGFbTwF//Ywk5
	onm5S/U+cNWE7yDaS5cq7rs6FFZRrHVud9h3ffsrrOORVf3YuBKqbaQhm6qcA0Fc1JPW/TtfXJJ4y
	1WNgustu3usaPqm0nbxAiDOWkr3Cslr52/k82z9jo2hD5+zmU/L9WrUoeltPdWHgU8pIn2+ILxcB4
	An9BiUIydAm8qV1iDdRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i0TlW-0008Sy-8E; Wed, 21 Aug 2019 16:47:18 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i0TlN-0008SQ-QM
 for linux-arm-kernel@lists.infradead.org; Wed, 21 Aug 2019 16:47:11 +0000
X-Originating-IP: 86.207.98.53
Received: from localhost
 (aclermont-ferrand-651-1-259-53.w86-207.abo.wanadoo.fr [86.207.98.53])
 (Authenticated sender: alexandre.belloni@bootlin.com)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 0EA291C0008;
 Wed, 21 Aug 2019 16:46:58 +0000 (UTC)
Date: Wed, 21 Aug 2019 18:46:58 +0200
From: Alexandre Belloni <alexandre.belloni@bootlin.com>
To: Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <uwe@kleine-koenig.org>
Subject: Re: [PATCH 7/9] ARM: dts: at91: at91sam9xx5ek: Style cleanup
Message-ID: <20190821164658.GL27031@piout.net>
References: <20190812212757.23432-1-uwe@kleine-koenig.org>
 <20190812212757.23432-7-uwe@kleine-koenig.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812212757.23432-7-uwe@kleine-koenig.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190821_094710_004048_CBF0D46F 
X-CRM114-Status: UNSURE (   8.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.197 listed in list.dnswl.org]
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
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/08/2019 23:27:55+0200, Uwe Kleine-K=F6nig wrote:
> - newline between properties and sub-nodes
> - use tags from included dtsi instead of duplicating the hierarchy
> =

> There are no differences in the generated .dtbs
> =

> Signed-off-by: Uwe Kleine-K=F6nig <uwe@kleine-koenig.org>
> ---
>  arch/arm/boot/dts/at91sam9g15ek.dts |  12 +-
>  arch/arm/boot/dts/at91sam9g25ek.dts |  89 +++++-----
>  arch/arm/boot/dts/at91sam9g35ek.dts |  22 +--
>  arch/arm/boot/dts/at91sam9x25ek.dts |  36 ++--
>  arch/arm/boot/dts/at91sam9x35ek.dts |  43 +++--
>  arch/arm/boot/dts/at91sam9x5ek.dtsi | 265 ++++++++++++++--------------
>  6 files changed, 224 insertions(+), 243 deletions(-)
> =

Applied, thanks.

-- =

Alexandre Belloni, Bootlin
Embedded Linux and Kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
