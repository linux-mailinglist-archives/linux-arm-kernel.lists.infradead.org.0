Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A00B5423
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 19:27:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LY+TodhZAWqbDhTgn9GVHoXw6Y+Q1rv6O73GK9JXyuk=; b=MQKgvl3GtW30LH
	8TX+KkXlJQi9ukNqHS3O9kJXn0KB+XEDWe9P5BhHAjTcezYezM9auq7V88yundbLX8/BRGXkbcZDn
	+DO7Q3GUvxeExmm5n6S4oAhvir+I/+jaZUEFh0TfC27gL/C3z3Ep20WkpfNwHacaezOfkdcdDGdom
	Zoxkh5ZKRa7xXhqdSEs5zcmUFHjz6jpDvfk8Ei3GAHDQR8tac6ygiLclQ8Q79hew1KmVtpnng10pR
	1U/4dtHfDQ2zoi4fq/tyyp6ktQdY2v/bc3OomvjqSQO9yJqwmCvONzlElrD+FesECgLUTj4aee8rD
	MZXcefVVuqpK83Pdw9dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAHG7-0004VN-4O; Tue, 17 Sep 2019 17:27:23 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAHFu-0004UA-3Y
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 17:27:11 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=sCrIBZVGo0peO+Uzee7kafLql6ON3IEIAQABS5oBoAs=; b=Jvo1RKwAS4WxLU0OxF6+jp0Nmd
 kIgssYdP4/7tmzx8r2ZRX7WFIc6FL6QciEsZOTg092mtujdJFcUQpTnXipWzsI+8QUZtF2y+GXTwa
 FenjWvKcKIVV41P6esSy4jxOWoeu8gUao2IuRmpQYAC5ghJzuFs0Ohd+TO/vNXkDdFSU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.89)
 (envelope-from <andrew@lunn.ch>)
 id 1iAHFi-0002bt-H4; Tue, 17 Sep 2019 19:26:58 +0200
Date: Tue, 17 Sep 2019 19:26:58 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: dts: imx6dl: SolidRun: add phy node with 100Mb/s
 max-speed
Message-ID: <20190917172658.GB9591@lunn.ch>
References: <20190915135652.GC3427@lunn.ch>
 <20190917124101.GA1200564@arch-dsk-01>
 <20190917125434.GH20778@lunn.ch>
 <20190917133253.GA1210141@arch-dsk-01>
 <20190917133942.GR25745@shell.armlinux.org.uk>
 <20190917151707.GV25745@shell.armlinux.org.uk>
 <20190917153027.GW25745@shell.armlinux.org.uk>
 <20190917163427.GA1475935@arch-dsk-01>
 <20190917170419.GX25745@shell.armlinux.org.uk>
 <20190917171913.GY25745@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190917171913.GY25745@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_102710_300460_5C9BBF6A 
X-CRM114-Status: UNSURE (   9.59  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 <devicetree@vger.kernel.org>, Baruch Siach <baruch@tkos.co.il>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 tinywrkb <tinywrkb@gmail.com>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

> diff --git a/drivers/net/phy/at803x.c b/drivers/net/phy/at803x.c
> index b3893347804d..85cf4a4a5e81 100644
> --- a/drivers/net/phy/at803x.c
> +++ b/drivers/net/phy/at803x.c

Hi Russell

This won't work. In the kernel logs, you see 

kernel: Generic PHY 2188000.ethernet-1:00: attached PHY driver [Generic PHY]

The generic PHY driver is being used, not the at803x driver.

But i do like your idea, it does fit the problem description.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
