Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE23420203C
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 20 Jun 2020 05:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Message-ID:Date:To:From:Subject:
	References:In-Reply-To:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1VoizCJvTN6ZkWkJKj1UNtrv1yJcMFqkk5uTgq0K1oI=; b=fU7o7C+6MxsIay
	uKm4IISfhqo0BqkWrDSc2KDTZtGE0kHyJFBJ1cQgIMlXIlIGOMeiMXTNf5Gw5js0ALUT9ixw6ZW1T
	EH1t9Cum/lPE2VO9st2SUEs89TJ/Kad0XvcClOzZ7EpXjDiCNHwpROuF8LneMb9N5jHFIen0H/Qi5
	lhQM8ru0GD9S4lVymdGukKQPsuSuXMZF/5KjcMgmnKImbglcMz8Zq8ZRvDfnLWgoJpKY3mVMaR1Z5
	qePo72D4XYqRN387a6zoupLE01tNVSIe4JOla46yEuD16P3Hoh0YHKDjRK2rJbJ7ELoceFUOqqWWg
	r7V+fQRMVr7iBju6savg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jmUAj-0008Oz-JB; Sat, 20 Jun 2020 03:28:01 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jmUAZ-0008Oe-Bg
 for linux-arm-kernel@lists.infradead.org; Sat, 20 Jun 2020 03:27:52 +0000
Received: from kernel.org (unknown [104.132.0.74])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EFD4D2311C;
 Sat, 20 Jun 2020 03:27:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592623671;
 bh=0D6JZ8JJv1a/lkBSX1+FdTETTuYln1rEbfJkzQ3aeIc=;
 h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
 b=dRnvzJHI96sK/XqX8w3zM4LBGiCx16DduRQbOw7gST6lLGy+8pwDiXq81ZFdTFwAo
 gwGbbDy2ZZtEwRWQnSCgwnNygk5XL8JmnnvXheu4j8JpO+ikEmYz21tW+GPGF7aUGp
 dG7xlWdsPgc0r13aifchT1eNWBpaJgTYcATK7xm8=
MIME-Version: 1.0
In-Reply-To: <AM6PR04MB4966B94CFAE642E6AF5AEF79809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
References: <1591687933-19495-1-git-send-email-Anson.Huang@nxp.com>
 <1591687933-19495-4-git-send-email-Anson.Huang@nxp.com>
 <AM6PR04MB49660A10856A3746C7103394809A0@AM6PR04MB4966.eurprd04.prod.outlook.com>
 <DB3PR0402MB39163BC04E4E5F4F6A22F6D4F59A0@DB3PR0402MB3916.eurprd04.prod.outlook.com>
 <AM6PR04MB4966B94CFAE642E6AF5AEF79809B0@AM6PR04MB4966.eurprd04.prod.outlook.com>
Subject: RE: [PATCH V2 3/9] clk: imx: Support building SCU clock driver as
 module
From: Stephen Boyd <sboyd@kernel.org>
To: Abel Vesa <abel.vesa@nxp.com>, Aisheng Dong <aisheng.dong@nxp.com>,
 Andy Duan <fugang.duan@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 Daniel Baluta <daniel.baluta@nxp.com>,
 Leonard Crestez <leonard.crestez@nxp.com>, Peng Fan <peng.fan@nxp.com>,
 Stefan Agner <stefan.agner@toradex.com>, allison@lohutok.net, arnd@arndb.de,
 festevam@gmail.com, gregkh@linuxfoundation.org, info@metux.net,
 kernel@pengutronix.de, linux-arm-kernel@lists.infradead.org,
 linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org, linux@armlinux.org.uk,
 mturquette@baylibre.com, oleksandr.suvorov@toradex.com, s.hauer@pengutronix.de,
 sfr@canb.auug.org.au, shawnguo@kernel.org, tglx@linutronix.de,
 yuehaibing@huawei.com
Date: Fri, 19 Jun 2020 20:27:50 -0700
Message-ID: <159262367025.62212.11651547971712516448@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200619_202751_415695_F622C07A 
X-CRM114-Status: GOOD (  12.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Quoting Aisheng Dong (2020-06-17 18:58:51)
> > From: Anson Huang <anson.huang@nxp.com>
> > > > +obj-$(CONFIG_MXC_CLK_SCU) += mxc-clk-scu.o
> > >
> > > Like i.MX pinctrl, I'm not sure if it's really necessary to build core
> > > libraries as modules. Probably the simplest way is only building
> > > platform drivers part as module. And leave those core libraries built in kernel.
> > > This may make the code a bit cleaner.
> > >
> > 
> > Will discuss this with Linaro guys about it, previous requirement I received is all
> > SoC specific modules need to be built as module.
> > 
> 
> Okay. AFAIK it's not conflict.
> You still make drivers into modules.
> Only difference is for those common libraries part, we don't convert them into module
> Which is less meaningless.
>  

What is the benefit of making the core part of the SoC driver not a
module? From the module perspective it should be perfectly fine to make
it a module as well, and then depmod will sort out loading modules in
the right order.

This is for android right?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
