Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 61D921AC64D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 Apr 2020 16:38:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=DUF6qzTfA5G6xh546nijDgy0OTARb+6lsBUSTpmrEj8=; b=VJBjyOBY2RbXgT/urFy+SlDHh
	neHjPo5hhsHMMqTDUx4YDgm1Xg5+p01JyOKdC0sQ+Yc2fN85TtyDe36+etXoLBN2NkPChbSpnxnbG
	75Nlxk6PUkKi+T/fsRITmhtYY+YJqTfDWDn4lNnadftcEN9zvDsoQqYHelaht1JkAkturbclyqQRf
	9ZNbgpJHzRQkjr1svLcPB2kcpSh3jZQi536H67aCgMp0M3mQXOVPK3P0rIoJEEMJo5EW4WwK7zDE5
	SlzVx9mEow7q+Kwnn7/ZcWKJgQPYuW0LY7OMhvFTiInWCk5qBjodHGTIlsq6TYZAs9YFhGXrkUDNH
	6g19wFZrA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jP5eL-0000hU-FW; Thu, 16 Apr 2020 14:37:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jP5eC-0000gP-JL
 for linux-arm-kernel@lists.infradead.org; Thu, 16 Apr 2020 14:37:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E2C181FB;
 Thu, 16 Apr 2020 07:37:43 -0700 (PDT)
Received: from [10.57.59.184] (unknown [10.57.59.184])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 98FB63F237;
 Thu, 16 Apr 2020 07:37:41 -0700 (PDT)
Subject: Re: [PATCH RFC 0/6] PWM fan support on Clearfog gt8k
To: Andrew Lunn <andrew@lunn.ch>, Linus Walleij <linus.walleij@linaro.org>
References: <20200329104549.GX25745@shell.armlinux.org.uk>
 <CACRpkdaL4-Z36aKOVW4o2MtCG9fbqm4gxZN3QjejVRPBZrzxxA@mail.gmail.com>
 <20200416135039.GL657811@lunn.ch>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <5c7cb0ff-bf49-640a-3c4a-ef71495af7b7@arm.com>
Date: Thu, 16 Apr 2020 15:37:40 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200416135039.GL657811@lunn.ch>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200416_073744_685849_C5B32D4D 
X-CRM114-Status: GOOD (  13.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Jason Cooper <jason@lakedaemon.net>,
 linux-pwm@vger.kernel.org, Gregory Clement <gregory.clement@bootlin.com>,
 Russell King - ARM Linux admin <linux@armlinux.org.uk>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Thierry Reding <thierry.reding@gmail.com>,
 Uwe Kleine-Konig <u.kleine-koenig@pengutronix.de>,
 Bartosz Golaszewski <bgolaszewski@baylibre.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-04-16 2:50 pm, Andrew Lunn wrote:
[...]
> Clocking with Marvell devices has always been interesting. Core IP
> like this gets reused between different generations of SoCs. The
> original Orion5x had no clock control at all. Latter SoCs have had
> more and more complex clock trees. So care has to be taken to not
> change old behaviour when adding support for new clocks.

FWIW, that sounds like a good argument for encoding the clock 
requirements of each variant in the of_match_data, so the driver doesn't 
have to simply trust the DT and hope.

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
