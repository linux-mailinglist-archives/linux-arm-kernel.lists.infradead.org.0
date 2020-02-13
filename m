Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 705E715B92B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 06:44:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mwbs2WYFUHmpSQzw+tQKk15wMK1nvo8qQFK1veCXXmA=; b=YUk0N6V/qa2KpR
	sDPuViGG+3+4nQ8yha4/inQwo4ohMVQaDqm8i9js3RYXjGxmYbEL93nNrHyQLaefLXGb2ALlfcr9O
	d3qq5bI3Ai8E5RhzqTJ5RY2PBTDw0bYM9MNHkStSdjsMUfVhgplYff0RWsR1YhTP6/7B6IyZNj9dd
	XHe0ewltosjVyvae5WaFgVntfCQ82kU/u9fBOpN2Voyt7+US8My+qZw7s6vqqixnA0BNh0eK8tGg5
	ONHwhH6fqO9jQNDRGAOl1CqBbvX63Zh4SLUNYwiOwGGWrJwZDJt2Gh8hrXKdhmsfIEs7ZolelqJKA
	GbKZrccE12hi8Eb772tA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j27II-0004v5-2L; Thu, 13 Feb 2020 05:44:10 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j27IA-0004sw-JO
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 05:44:04 +0000
Received: from dragon (80.251.214.228.16clouds.com [80.251.214.228])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 5CEC220873;
 Thu, 13 Feb 2020 05:43:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1581572633;
 bh=4syaKUKu77FngS2/xeaFk/gtszZv6o9gBJ+A5aYg8KU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=RMT4njs9CqOEjaxrgfxN4wrm4Uhh6yv/5opMDMKEcFVMDRrz2yQbvzd3Cwfe7WGL5
 2PHPd0Q7VIzWPMHxRDU5SmLfuRPft18+xurNzc1Kn+7wln6WeOQ7+Bmb/yRt9d/WyK
 PNYEc8J6a3Kya+FiJPg82yFvjKLc1YHh/CuL2jkY=
Date: Thu, 13 Feb 2020 13:43:45 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Peng Fan <peng.fan@nxp.com>
Subject: Re: [RFC 1/4] ARM: imx: use device_initcall for imx_soc_device_init
Message-ID: <20200213054344.GM11096@dragon>
References: <1579167145-1480-1-git-send-email-peng.fan@nxp.com>
 <1579167145-1480-2-git-send-email-peng.fan@nxp.com>
 <AM7PR04MB6981B45633536729EBEB427487310@AM7PR04MB6981.eurprd04.prod.outlook.com>
 <AM0PR04MB448103B7C47B9AA5621A731A88310@AM0PR04MB4481.eurprd04.prod.outlook.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <AM0PR04MB448103B7C47B9AA5621A731A88310@AM0PR04MB4481.eurprd04.prod.outlook.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_214402_659019_AB6708E0 
X-CRM114-Status: GOOD (  14.03  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "linux-arm-kernel@lists.infradead.org"
 <linux-arm-kernel@lists.infradead.org>, Jacky Bai <ping.bai@nxp.com>,
 Anson Huang <anson.huang@nxp.com>,
 "ard.biesheuvel@linaro.org" <ard.biesheuvel@linaro.org>,
 "info@metux.net" <info@metux.net>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "git@andred.net" <git@andred.net>, Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "allison@lohutok.net" <allison@lohutok.net>, Abel Vesa <abel.vesa@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 08:15:54AM +0000, Peng Fan wrote:
> > > Subject: [RFC 1/4] ARM: imx: use device_initcall for
> > > imx_soc_device_init
> > >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > This is preparation to move imx_soc_device_init to drivers/soc/imx/
> > >
> > > There is no reason to must put dt devices under /sys/devices/soc0,
> > > they could also be under /sys/devices/platform, so we could pass NULL
> > > as parent when calling of_platform_default_populate.
> > >
> > 
> > This change will impact various internal test case & userspace lib, I think.
> > Need to ask test team & other developer to double check the impact.
> 
> /sys/devices/soc0 is still there, the patchset only moves
> the platform devices which under /sys/devices/soc0 to /sys/devices/platform

Jacky's concern still stands, as there are many user spaces which will be
broken and need update.

> In this way, we aligned with ARM64. And simplify arch code by moving
> the code to drivers/soc/imx. In future, considering more cleanup,
> we could merge the code to soc-imx8.c, since they share similar
> silicon rev ocotp logic.

Though this is a good thing from maintenance point of view, we do not
want to break user spaces.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
