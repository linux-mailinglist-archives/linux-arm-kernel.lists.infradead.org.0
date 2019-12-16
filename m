Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D0C53120253
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Dec 2019 11:27:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bp9xWhCPeud7fYPZEfhhlI6hIqcMZMwOIHmrT1wVO34=; b=kGcUZPgjAK+efi
	EehG2Ybmc/U/Zm4cQQUZrPGVUkG6DEicKhFkymwsnX1nLv7GHOzTo4K2HcAIA5ihEjTihdCaAL+/h
	xX5+V5EZOj4M7EwbGM3cPfJmN/HyM93Qa7l/7kAE2ZiPj8RCAf9fT/7S85H98q+5A9iyLgvdTv2Zh
	VMhcy8pRq2TaS2SNJIH8xFQO7K28dzFzX/QaQI1wPfw99pC4seYQoP4d4mUFFOhBBTzFq+gmhN+5v
	tGRusmsl8TLA3K4DOkynnhHQaYl8vzv8CpKdzXeICveqp0oK6jFviZqtYD6GGnMNLonivBAkicbLh
	PuPHFHAiLxjqBOaZUmTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ignbP-0005Ee-KT; Mon, 16 Dec 2019 10:27:47 +0000
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ignb1-0004zz-HZ
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Dec 2019 10:27:25 +0000
X-Originating-IP: 90.65.102.129
Received: from kb-xps (lfbn-lyo-1-1670-129.w90-65.abo.wanadoo.fr
 [90.65.102.129]) (Authenticated sender: kamel.bouhara@bootlin.com)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id 47A3FE0008;
 Mon, 16 Dec 2019 10:27:01 +0000 (UTC)
Date: Mon, 16 Dec 2019 11:26:59 +0100
From: Kamel Bouhara <kamel.bouhara@bootlin.com>
To: Codrin.Ciubotariu@microchip.com,
 Nicolas Ferre <nicolas.ferre@microchip.com>,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 0/3] SAMA5D2 i2c bus recovery testing
Message-ID: <20191216102659.GA23978@kb-xps>
References: <20191205140305.1144788-1-kamel.bouhara@bootlin.com>
 <20191216101044.x7m7edrrjn2xtq6h@M43218.corp.atmel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191216101044.x7m7edrrjn2xtq6h@M43218.corp.atmel.com>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_022723_741312_AC660C72 
X-CRM114-Status: GOOD (  16.85  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [217.70.183.196 listed in wl.mailspike.net]
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.70.183.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 16, 2019 at 11:10:44AM +0100, Ludovic Desroches wrote:
> Hi Kamel,
>

Hi Ludovic,

> On Thu, Dec 05, 2019 at 03:03:02PM +0100, Kamel Bouhara wrote:
> >
> > Here are the sama5d2 patches, as there is not pinmux defined in the
> > dtsi. I choosed to only apply it to derivated board as the i2c
> > configuration is specific for each.
> >
> > Of course, it could be great if could test it on the ptc board as well.
> >
>
> The i2c mailing list is missing, can you resend it please.
>

Actually it was not intended to be sent to any mailing list, it is a
mail for Codrin so he can achieve some tests.

> By the way, it fails to apply against next and 5.5-rc1. On which version is it
> based? I assume a cherry-pick should work but git am fails.
>

It's based on 5.4, Im not sure it will apply on next but it should on
5.5, anyway it is a WIP here.

Best Regards,
Kamel

> Regards
>
> Ludovic
>
> > Best Regards,
> > Kamel
> >
> > Kamel Bouhara (3):
> >   dt-bindings: i2c: at91: document optional bus recovery properties
> >   i2c: at91: implement i2c bus recovery
> >   ARM: at91/dt: sama5d2: add i2c gpio pinctrl
> >
> >  .../devicetree/bindings/i2c/i2c-at91.txt      | 10 +++
> >  arch/arm/boot/dts/at91-sama5d2_ptc_ek.dts     | 33 +++++++++-
> >  arch/arm/boot/dts/at91-sama5d2_xplained.dts   | 33 +++++++++-
> >  drivers/i2c/busses/i2c-at91-master.c          | 64 +++++++++++++++++++
> >  drivers/i2c/busses/i2c-at91.h                 |  8 +++
> >  5 files changed, 142 insertions(+), 6 deletions(-)
> >
> > --
> > 2.24.0
> >

--
Kamel Bouhara, Bootlin
Embedded Linux and kernel engineering
https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
