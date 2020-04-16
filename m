Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B1461AC6A2
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hc9HVFLdztF+jNolLeKesd9TgCwtR85eJ3OlResFSds=; b=ecVc1pE4Rc4ZKN
	vBM+vGoQyAAzAAIiwWeQDs3HsNbx6RnZJBPOIPDdz5yBslr1yPatwfQknCImnWeMTARQP/eWoFqTb
	g48gqlkOsZafl8RXo//MPvn8kYT0gJpFaaHp7yrQTSkKZ47hQRLVVLqIOOusu7qSHi2OFxkGv/83K
	I3I9mach9wQBwgoQpjae6OGgDZs8a5ACCkvhv3X85uhp030CKG+U2NyC/8Rv1psJGP32c19bXFmKQ
	JtrFUNP7Qk0TJNs/qztDLvkWn5Q+3x87rAlh5sInxnLvIIvVsUTJXag9xzmt+seWndWJsd2bIlc4w
	/PXPEfNWSia45+EKjncQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5j9-0005wn-Gj; Thu, 16 Apr 2020 14:42:51 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5iy-0005wN-M8
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:42:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=C7kfTyYkwsLnHp/E8P08Aix24d2ntiyV2E7RaHpJ+rE=; b=q8dZ9Zlw8dUKlEAdhL9bCiQXi1
 fv2zR0EkSNsnsc+vE8rYzTwDeQCxJxVVIIKW//SEZxH3cY4+Y7I71Bul9FA1zOXdGZawqpHqve9IL
 k2v208wJKay0cfMHxRt5sdZ9QTt27Ze1bdX5oKBt4qX2RH8FDoL7g/of8qXm2wp1ahkY=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jP5ip-0035Un-NP; Thu, 16 Apr 2020 16:42:31 +0200
Date: Thu, 16 Apr 2020 16:42:31 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
Message-ID: <20200416144231.GP657811@lunn.ch>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
 <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_074240_724646_6311D858 
X-CRM114-Status: GOOD (  12.42  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 linux-pwm@vger.kernel.org, Linus Walleij <linus.walleij@linaro.org>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Gregory Clement <gregory.clement@bootlin.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 16, 2020 at 03:37:40PM +0100, Robin Murphy wrote:
> On 2020-04-16 2:50 pm, Andrew Lunn wrote:
> [...]
> > Clocking with Marvell devices has always been interesting. Core IP
> > like this gets reused between different generations of SoCs. The
> > original Orion5x had no clock control at all. Latter SoCs have had
> > more and more complex clock trees. So care has to be taken to not
> > change old behaviour when adding support for new clocks.
> 
> FWIW, that sounds like a good argument for encoding the clock requirements
> of each variant in the of_match_data, so the driver doesn't have to simply
> trust the DT and hope.

Hi Robin

It is not really hope. It is very obvious when it is wrong, the whole
machine stops dead when you are missing a clock. Very simple to test.

	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
