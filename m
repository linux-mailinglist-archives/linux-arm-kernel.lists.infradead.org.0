Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EF238148B85
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Jan 2020 16:54:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AIjzi0O3gY7auTiWIT86EUeBdskyEox/XSm3t0TTx/Y=; b=e3tlgNimdausVF
	4/SdFttH3VLYbKE2HPl5QJYwRHMNtB93kfh58R1GbpMDetjIqtUDsnms07E6Vk0W3poa64igrg5fm
	3JkREiBJoYLRJsAfi8VoyAAsWg0F5BHk7UYZoMQoFOgNC4BUjLCUv5e+X7wwWdz14q0YEferJooLf
	W2KtN4xv3sdm6zSRKJjjz8/jrxWG/pM/V0bHMoY94MUsZwvbSY34LBaCHYbX2WACqCu+OlIUitJna
	l4q25BA4GBHbNql8jL3GjpfRm27C3sTrw8PY/kMmkFM6QTREWp13FpHBdoPt4R31qjBSlL9U/+ty9
	2/5FAWEnYYhh/j3HnWPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv1IC-00054O-AD; Fri, 24 Jan 2020 15:54:44 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iv1Hr-0004vR-Vj
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Jan 2020 15:54:25 +0000
Received: by mail-ed1-x544.google.com with SMTP id cy15so2813641edb.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 24 Jan 2020 07:54:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=FW6kTXsb+AMUpnGd0Np6dLhfVf8Q9ZDqnV2qmDoDlDE=;
 b=H3TQZGZcdRTBERaePDaluLz/yGmA6niYVpD9lpB8ecfDyAdIUuUiXSQd8yI36Vidj1
 D0WaYtkXfCnSNAgPZZo/bkaXJtGh5R66E29iCC/T9ISpn8d6LL+sSrg1G8jmiF6e0CCs
 SQ5pC3x8QZIbzz3MIMCUDCLrZpRXpaDSS8c26ozw1z/VHREqbvFTaGZXsaQoGOcHw6/4
 o8Fn3TOA51JFwxAtkyn8IeK0zAAzVkg0XDHD/q+NdEjSjtSmZvlE1Yhy5ZOyPde3InKJ
 sZG7sTZ+CHo/7pPyy99yzenIhi+4RDqIgl3PnNxoCEQgNFlHXISYDpdHk3cM1yhijutV
 tI8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=FW6kTXsb+AMUpnGd0Np6dLhfVf8Q9ZDqnV2qmDoDlDE=;
 b=lZJvXgEtZ4Rbj+LnmimJFUL4n5dvNhUphlj/YsQOmK7OaIsj3l5rYSSwixCNYxFH0M
 AfLelPqK98PKoWXEJA/kPuqwCXyrWp2BL+dvNEZs8pM3AihwMyxC4v1us0p+4sE8K5BM
 kkyN3LiyA3ENI4LvUIYZJQvtvAUgOicqBfM1I/03Yey4w3qC65n20J6AGyGWR6zTpOgY
 45/WVZUeZh1VF+2zCJr3y4v0Vwve7QYfw+o5fSNgZpQCFNCoAS6FaEpY4r//iG1LLDZe
 OTvH5Mmk80NaZ3QdA8b/aKYypgowgNwMZHBoyUaZiyCVFZBmkshuSQ0oVsa3e9FdFEe+
 VCGg==
X-Gm-Message-State: APjAAAWqhkiLelGFw1GjxfgPqXfVRZSWr9O+FNApSZ4Stf0Q2WYd+sI6
 9l51in32Uv1O61jMD9Ntga5huZnVqCK4JWp/phw=
X-Google-Smtp-Source: APXvYqyadpmW1cAK9X6qA/FtoBgIZOCZp0Nn/wpY64zn9YMqMvTULjMEpssAp18wfzHjoLPDGP1GgV1rBnKqV/b0NV0=
X-Received: by 2002:a05:6402:799:: with SMTP id
 d25mr3203640edy.221.1579881261869; 
 Fri, 24 Jan 2020 07:54:21 -0800 (PST)
MIME-Version: 1.0
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
In-Reply-To: <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
From: Adam Ford <aford173@gmail.com>
Date: Fri, 24 Jan 2020 09:54:10 -0600
Message-ID: <CAHCN7xKtfKVQeaAg9sjvc3cHjLoAqAX6F-JyvkG5u23w1OG8CA@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_075424_035227_07E10FB4 
X-CRM114-Status: GOOD (  25.58  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [aford173[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [aford173[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Peng Fan <peng.fan@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, "festevam@gmail.com" <festevam@gmail.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 4:39 AM Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wed, Jan 15, 2020 at 3:38 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
> > > On Tue, Jan 14, 2020 at 9:32 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > > >
> > > > There is no SOC_IMX8 currently. Need to introduce one in
> > > > arch/arm64/Kconfig.platforms. But I not see other vendors introduce
> > > > options like SOC_XX. Is this the right direction to add one in
> > > > Kconfig.platforms?
> > >
> > > I think it would be more consistent with the other platforms to have a symbol
> > > in drivers/soc/imx/Kconfig to control whether we build that driver.
> >
> > Ok, I'll add Kconfig entry in drivers/soc/imx/Kconfig for various i.MX SoCs.
>
> I was thinking of one entry for this driver.
>
> > > For some SoCs, we also allow running 32-bit kernels, so it would not be wrong
> > > to allow enabling the symbol on 32-bit ARM as well, but this is probably
> > > something where you want to consider the bigger picture to see if you want
> > > to support that configuration or not.
> >
> > Does the current upstream kernel support 32bit kernels on ARM64 platforms
> > without vendor specific stuff. I recalled that several years ago, NXP people
> > tried to upstream 32bit kernel support, but rejected by you.
>
> We have at least some Broadcom SoCs that are supported this way. As
> long as you can use the same dtb file on a regular multi_v7_defconfig
> I see no problem with doing this.
>
> What I would like to avoid though are ports that require extra code in
> arch/arm/mach-* that is not needed for the 64-bit target, or ports to
> 64-bit hardware that only run in 32-bit mode.
>
> > So Is there any plan to support 32bit kernel on AARCH64 in upstream
> > kernel?
> > Or any suggestions?
>
> I don't think there should be 32-bit kernel running in aarch64-ilp32
> mode. This was discussed way back when the aarch64-ilp32 user
> space patches first appeared.
>
> Generally speaking you are usually better off running an aarch64
> kernel using aarch32 user space, but there may be reasons for
> running an ARMv8 aarch32 kernel on the same hardware and there
> is no technical reason why this shouldn't work for a clean port.
>
> We never really supported ARMv8-aarch32 in arch/arm/ as a
> separate target, but usually building an ARMv7 kernel is close
> enough to ARMv8-aarch32 that things just work. If you would
> like to help out making ARMv7VE and ARMv8-aarch64 proper
> targets for arch/arm/, let me know and we can discuss what parts
> are missing.

I would be interested in learning more about running the i.MX8M in
32-bit mode.  I'm looking at running Linux on a device with < 1GB of
RAM, so having 32-bit pointers and instructions would be preferred.
My preference would be to run as ARMv7 for migration purposes, but I'm
open to alternatives.

Does anyone have any suggestions on where I might find some generic
stuff for either iMX8M or generic ARMv8 docs for doing something like
this?

adam

>
>      Arnd
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
