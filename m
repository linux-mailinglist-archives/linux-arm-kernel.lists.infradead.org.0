Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AC8C186619
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 16 Mar 2020 09:05:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yL/Wm669fouStBH5NX8qNYyjsAX1M0zZ8ps+exdNcfE=; b=HbKTFXR+gtEIv8
	si8V9uUCUYBBvntg1CSnG/H1hHT+fvWEPH68b77xD26kvbcfNOrpQfEMtgxyxIN6RJFcEnU/nupr2
	zZcInxyeX/TYKoea9DVQ3lZbLcqgadZXWb7x7QCOD8wmFRdhcc8d1Ri9kZztPsJSSGIBQbiKHqCCJ
	/5OpZdjPQ5ISFEpjct4BjxiF25U8b1ZBHXqK11dcVpk4gUvrKts0ZrEhYhukSCxNodGG9lfJ3uaxw
	pI63Z3YaMeUp0g1e3KWPqdPvLLW4kvXabNzNoDcTT/Wq5bQhUDArxpfngXhkgysnwvi6XA72KLYrj
	bnv8/RQvprC9oBajqUgw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jDkkt-0004pB-7c; Mon, 16 Mar 2020 08:05:47 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jDkkl-0004nx-12
 for linux-arm-kernel@lists.infradead.org; Mon, 16 Mar 2020 08:05:40 +0000
Received: from mail-qt1-f169.google.com ([209.85.160.169]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1MILru-1j8Cr237HI-00ELsX for <linux-arm-kernel@lists.infradead.org>; Mon,
 16 Mar 2020 09:05:32 +0100
Received: by mail-qt1-f169.google.com with SMTP id h16so13348989qtr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 16 Mar 2020 01:05:32 -0700 (PDT)
X-Gm-Message-State: ANhLgQ2GS+2RQBrpGCv0agl58MmEhbC/CjQAUp6dyknUz2K3FFU7JLMQ
 TRgWHl2yaJvSRSTyMqTo2Tujnn3PIPT1uE1TW8I=
X-Google-Smtp-Source: ADFU+vscHuj0T93JjgojfKfyFtbyqwhr+FzDIfyfzVkaoXDOWQcAs9KVhaCUmDBS62IUcGSpwhk7Bx9472iMoIVCU1o=
X-Received: by 2002:ac8:5193:: with SMTP id c19mr23911589qtn.204.1584345931621; 
 Mon, 16 Mar 2020 01:05:31 -0700 (PDT)
MIME-Version: 1.0
References: <1584070036-26447-1-git-send-email-peng.fan@nxp.com>
 <1584070036-26447-4-git-send-email-peng.fan@nxp.com>
 <CAK8P3a14BU5uHEqkVyWkeFVmxA1hJifQE+GkXFgmn59s_TL+Rw@mail.gmail.com>
 <AM0PR04MB4481E7BC1DF01CFC975577A088F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481E7BC1DF01CFC975577A088F90@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 16 Mar 2020 09:05:15 +0100
X-Gmail-Original-Message-ID: <CAK8P3a2F4oREw8AgNqQo18hLfVG4GcMJ72bST6EBd_KYhsRfsA@mail.gmail.com>
Message-ID: <CAK8P3a2F4oREw8AgNqQo18hLfVG4GcMJ72bST6EBd_KYhsRfsA@mail.gmail.com>
Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:XxO9hLglPlR8N0Oz1MKnbOLGuno/egaDvFRVN36BkbZVopBAuRq
 zSwJ9oN3RAudTPat6x50bP8CbddeYqAp9/PmSh40QVZf93XfuY8reD5iA82hJJWqj+/KVfs
 tjphHF7VOB7IbeJbviq32gqdp+mNTynaldsI6PSo5Na9fXF8ElDNpFLha3et5HUe6nBYiey
 4kPmCb/6Kuw2RrMcfo+Ww==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:enNTud4CxYU=:5EkUxv9F40i9rf9fkao2er
 aQ134meo/iPPHLEnBQyN8QOpeuNmv1VNj2pxR0dTZJkJiexautKyhWAaxsYjYESLwdwyG7ziH
 1vGAisS852xDMnJJ5ZDkfGi8L9gT1h9w6TT9pA0cuaw1s/8NDkluOGcgiLWokrvDYGQlgIYgT
 St4fSLdNSljDoXLRsqNzR2shL0x5uApS2rrEE84V+97o3kW5yUoXoa+HpB/3aVCoDTi3mC2Wq
 SNPXx/SvYmA7Senac1RQmztG3GgV+JjW42DOGjM3bWc7i29Kifs17KrpLwf990zNSB+bJ0TWK
 RVC+AgmFmQrKBfwkeifWp97TedKvWOWIq4YkyrleU/bCxI693HMAmx522nMQqjlD13Nl2bKnP
 IJaIodPXLxvFFv3qdu9SWiKfVMwMXgzbdoCAkZ6keliDp5XxeBuMR9gTYTf8DPGS3PsTJYbdS
 gcyuhtuMFnMO3zP3fZnHTjRH+n2jR0aToeawNpL07GREC2VfAMiJXj92HqUaAV15SDpW940gV
 aUlBVw4d35ee4+d+FOB9QFH1OGJ9pXrlyfRiLN7wfRMlBceHkS088TdgLaDvLuD6R24tQ3vjy
 mwmI8v5YxTukCh+4t+wxizovDelIjkIoSC6zUDmsw69vjFq7gGU5Z3PgSIPAC0/WtT1RMr7Y9
 /JtcGTUDMhqp9sKIJLU72Af6VG2EHSsPmVpoxyAZcffw597B9rU2rDVceic3bj+UE0o8FwKLI
 bENz4ieALo0D4Fui/CoXyqrJrXM8xHTztzeEq0Kza2KkjGQZepyBKAsClC7oF8HLwv444X+AE
 5425HpAg9QitZ73DzEXiJKtfHwcTXuLJsSPNNJyAsoG5SFD83Q=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200316_010539_362600_66A04610 
X-CRM114-Status: GOOD (  17.33  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [212.227.17.10 listed in wl.mailspike.net]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>,
 Linus Walleij <linus.walleij@linaro.org>, Abel Vesa <abel.vesa@nxp.com>,
 Anson Huang <anson.huang@nxp.com>, Stephen Boyd <sboyd@kernel.org>,
 Fabio Estevam <festevam@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Stefan Agner <stefan@agner.ch>,
 "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Shawn Guo <shawnguo@kernel.org>, linux-clk <linux-clk@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 16, 2020 at 7:43 AM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH 3/3] soc: imx: select ARM_GIC_V3 for i.MX8M
> >
> > On Fri, Mar 13, 2020 at 4:34 AM <peng.fan@nxp.com> wrote:
> > >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > > Select ARM_GIC_V3, then it is able to use gic v3 driver in aarch32
> > > mode linux on aarch64 hardware. For aarch64 mode, it not hurts to
> > > select ARM_GIC_V3.
> > >
> > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > ---
> >
> > Acked-by: Arnd Bergmann <arnd@arndb.de>
> >
> > > diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig index
> > > 70019cefa617..0b69024296d5 100644
> > > --- a/drivers/soc/imx/Kconfig
> > > +++ b/drivers/soc/imx/Kconfig
> > > @@ -21,6 +21,7 @@ config SOC_IMX8M
> > >         bool "i.MX8M SoC family support"
> > >         depends on ARCH_MXC || COMPILE_TEST
> > >         default ARCH_MXC && ARM64
> > > +       select ARM_GIC_V3
> >
> > It would seem sensible to also drop the dependency on the 'default'
>
> If drop default, we need enable this config option in ARM64 defconfig,
> I would leave it as is for now.

I meant making it 'default ARCH_MXC' so it gets enabled for both
32-bit and 64-bit i.MX configurations, not just 64-bit.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
