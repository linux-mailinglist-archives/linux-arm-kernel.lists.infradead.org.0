Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C8DD51B8704
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Apr 2020 16:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CHQO5ZiYTxKtORHjidKfvwTGMT032EMISzD8Ta74aZw=; b=gtSc/A1r9M8ECB
	7bELsr41lfXNHBmxsCaTRv+6meop/ibOIsx08j1IFcBc3GMMXMrZkn9UXejVlLsI4/bQvsG/KtgNq
	I0MqfYBsyMQnahukdvi2owaWXqLOD5IsxQ9+DxLG5AIZwcyNHgsH/Mt3/lwhf7uNVNLyxbh64t11z
	q2mw68yPL4GWYyBi7yF3SC5+kiH0LAQXOJzIDRsFC7llR1DO232FLImu6bSaL/NIABkV7Sdh2WRHs
	VqCQDNjILmJ1UTW4K7R/sNeYLjOblmFGzknVKDvoITb1TxmXphQk63fqs46umvPVAnM9XUo9vrXXI
	qYrPsvl1YqcB3VptkSTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSLmc-0007ge-Le; Sat, 25 Apr 2020 14:27:54 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSLmQ-0007fo-6W
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Apr 2020 14:27:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=xTv5JGxl6ff2VSj7pnCq3lqI+Obybeaogy17/UmpEkE=; b=DM3e/3qRUe39byKsIilMqY4ClY
 aDF+XZ4AQZg9r1Rg4Pzl1ax/+Vouz8j5yTtjryTmusjJ3P5Cuv/IxZqc1zwnEcIyNGvzFjAxKuqc5
 gky3Rh6sbSSPsXxLuzxd73tEE5oTlPz/vWGFcCFJ54VeBGZRLwLTf5VDp89BBrgOSbyo=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.93)
 (envelope-from <andrew@lunn.ch>)
 id 1jSLmK-004ksc-Sb; Sat, 25 Apr 2020 16:27:36 +0200
Date: Sat, 25 Apr 2020 16:27:36 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: "Brian J. Tarricone" <brian@tarricone.org>
Subject: Re: [PATCH] arm/dts: Add DT block for Netgear ReadyNAS NV+ v2 LCD
 panel
Message-ID: <20200425142736.GC1095011@lunn.ch>
References: <20200425022409.2093354-1-brian@tarricone.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200425022409.2093354-1-brian@tarricone.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200425_072742_237837_34F42C98 
X-CRM114-Status: UNSURE (   7.12  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: gregory.clement@bootlin.com, jason@lakedaemon.net,
 linux-arm-kernel@lists.infradead.org, sebastian.hesselbarth@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 24, 2020 at 07:24:09PM -0700, Brian J. Tarricone wrote:
> The NV+ v2 has a WH1602 LCD panel (which is just a rebranded HD44780),
> similar to the Netgear RN104, just with different GPIO assignments.
> 
> Signed-off-by: Brian J. Tarricone <brian@tarricone.org>

Hi Brian

The change itself looks O.K.

However, please could you change the subject to follow what other
kirkwood DT patches use:

arch/arm/boot/dts$ git log --oneline kirkwood-*
15382b7ea298 ARM: dts: kirkwood: synology: Fix rs5c372 RTC entry
644763224169 ARM: dts: kirkwood: ts219: disable the SoC's RTC
6a3b25173cd4 arch: arm: dts: kirkwood-rd88f6281: Remove disabled marvell,dsa reference
cb92e40411ef arch: arm: dts: Remove disabled marvell,dsa properties
b5f034845e70 ARM: dts: kirkwood: Fix polarity of GPIO fan lines
eb59e0920331 arm: dts: kirkwood*.dts: use SPDX-License-Identifier for board using GPL-2.0+
b3820aa10c1b arm: dts: kirkwood*.dts: use SPDX-License-Identifier for boards using GPL-2.0+/MIT
e7822263a7a5 arm: dts: kirkwood*.dts: use SPDX-License-Identifier for boards using GPL-2.0
5beaf4d7ce9e ARM: dts: kirkwood: Fix "debounce-interval" property misspelling

Yes, there is a bit of variance, but something like

ARM: dts: kirkwood: Readynas nv2: Add LCD panel

Thanks
	Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
