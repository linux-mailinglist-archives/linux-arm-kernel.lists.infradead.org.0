Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17223688B7
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jul 2019 14:13:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=eH8U1wqOy9dTI9svJ+mS7ozrY1VEI6+DNuNbrzpQFeM=; b=Z5KYBTBCykhXBC
	2vFv+zim4ISgDRJK5GBPWIxQgRxYGKrBSDazMO6FqN/v63NZ/4kLs+hj88Rr1hHS4xUpYs+33Eoj6
	wr+pqyBxNPdmQeSTNw/E/KSDSXFW9ODjp/n9UEEiUH+WoSdKVWlf5IdTQl3Cw1P3lBW3mqMWii0r0
	EX8c9XVX6AKUdm33hkCzwusBLz/sru3uCngMv5QPqLgZPm7fHCpo09jScFx0xjm128lmqsfVYhsmO
	bFY73Ec6BAonbaYJYvbs0p4oEoGUdDWQhqp5RdSPee/X5QKkQh+c5P7uVW0QCuqM0a4hyqpeBeWeM
	WPiC/eB0tumUkrMdBJOg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hmzqt-000880-1g; Mon, 15 Jul 2019 12:13:07 +0000
Received: from gofer.mess.org ([2a02:8011:d000:212::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hmzqg-000871-9n
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jul 2019 12:12:56 +0000
Received: by gofer.mess.org (Postfix, from userid 1000)
 id 3D79460523; Mon, 15 Jul 2019 13:12:45 +0100 (BST)
Date: Mon, 15 Jul 2019 13:12:45 +0100
From: Sean Young <sean@mess.org>
To: =?iso-8859-1?Q?Cl=E9ment_P=E9ron?= <peron.clem@gmail.com>
Subject: Re: [PATCH v5 04/13] media: rc: sunxi: Add RXSTA bits definition
Message-ID: <20190715121244.2vrsw6qa4fgp72fn@gofer.mess.org>
References: <20190607231100.5894-1-peron.clem@gmail.com>
 <20190607231100.5894-5-peron.clem@gmail.com>
 <20190610095243.7xwp4xhauds22qzw@flea>
 <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJiuCcfyjGTBbsjZQYj2p3KD6O-WaXhFe5NZrnKQwJYACmatUw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190715_051254_482183_03F3A526 
X-CRM114-Status: GOOD (  13.24  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Maxime Ripard <maxime.ripard@bootlin.com>,
 linux-sunxi <linux-sunxi@googlegroups.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Rob Herring <robh+dt@kernel.org>, Mauro Carvalho Chehab <mchehab@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sun, Jul 14, 2019 at 04:32:22PM +0200, Cl=E9ment P=E9ron wrote:
> Hi Sean,
> =

> You acked the whole v3 series but this patch has been introduced in v5
> could you ack this one too?

Acked-by: Sean Young <sean@mess.org>

Thanks

Sean

> =

> Thanks,
> Cl=E9ment
> =

> =

> =

> =

> On Mon, 10 Jun 2019 at 11:52, Maxime Ripard <maxime.ripard@bootlin.com> w=
rote:
> >
> > On Sat, Jun 08, 2019 at 01:10:51AM +0200, Cl=E9ment P=E9ron wrote:
> > > We are using RXINT bits definition when looking at RXSTA register.
> > >
> > > These bits are equal but it's not really proper.
> > >
> > > Introduce the RXSTA bits and use them to have coherency.
> > >
> > > Signed-off-by: Cl=E9ment P=E9ron <peron.clem@gmail.com>
> >
> > Acked-by: Maxime Ripard <maxime.ripard@bootlin.com>
> >
> > Maxime
> >
> > --
> > Maxime Ripard, Bootlin
> > Embedded Linux and Kernel engineering
> > https://bootlin.com

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
