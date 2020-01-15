Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0843D13BD9A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 11:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=A6d78H5fEYP9NF2B3yerVmcYlv/4yZoOLvCo5nJ19nU=; b=oo7pSIPjJ8EqzG
	MzD3368slSGYoGVgZn5rvvyLa+0LneKraJAJbn1Ye379+jTz5FuVLZJCcnn8Rv1FPl/o5jkqFZDNt
	qGWRB3T302oQM8q/Afpato/QJQWg3n8SftBGab2JIpXzoZNVakMPN4VAJ46XGfRae/oA2+eVflrZD
	ueMptUx31DOFn0Vih0/pHBu+I8kRihglMTnBVP6FjZgISCdDQGS15z8PDCG60B5Y2iN6Z2Rm0jvyo
	gqd6idSsW4PmcK6AOzFsiyeJO6qKlj1A76YxfphiP1BKfBIgitWJC1URDNcIaVEOWTmrqOJfgVenL
	TZvVxlJkJ+6eAtAx6z9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irg5K-0003hR-8C; Wed, 15 Jan 2020 10:39:38 +0000
Received: from mout.kundenserver.de ([212.227.126.130])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irg52-0003fd-K8
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 10:39:24 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue012 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1MAchM-1iyEbF02jw-00B5Eu for <linux-arm-kernel@lists.infradead.org>; Wed,
 15 Jan 2020 11:39:17 +0100
Received: by mail-qk1-f181.google.com with SMTP id t129so15131339qke.10
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 02:39:15 -0800 (PST)
X-Gm-Message-State: APjAAAXh9rszkS7N61DqxjOUFGs2ruEOVp9yZV8jw9F2jb9ucYgg37mP
 VymYIE5j4UhPChiNzllPJFqqTeXVOSxrgglEK0w=
X-Google-Smtp-Source: APXvYqwwMK8lTh8Q4bOX1GS6jqFFejfcqk8Cm3i2mSsSO69MRnbg256iON7w//dldQ1y9+KiSSdX5+iPUyYpK3QLxNs=
X-Received: by 2002:a05:620a:a5b:: with SMTP id
 j27mr26649069qka.286.1579084754892; 
 Wed, 15 Jan 2020 02:39:14 -0800 (PST)
MIME-Version: 1.0
References: <1578989048-10162-1-git-send-email-peng.fan@nxp.com>
 <20200114081751.3wjbbnaem7lbnn3v@pengutronix.de>
 <AM0PR04MB4481A2FB7E2C56C2386297E888340@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a3x55A8y9kR34zy8YyRhto8uay7PZGbDAufupiNS3+ihA@mail.gmail.com>
 <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB44813A1D55659658E3FA203188370@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 15 Jan 2020 11:38:58 +0100
X-Gmail-Original-Message-ID: <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
Message-ID: <CAK8P3a29=KWrhO8uu7mMS2gbeCGpkL7Q-xaaUVO2wcVD9MN93g@mail.gmail.com>
Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:tqMfwIpm+LkIQv0C7y48ks5n5fxdYHJ3s7I9OkJgss8vXw1W0U9
 5RGDM9TcptBeR1yJQ8JV1gA4FVpWy0KToW+ic45miUSVXfyS0juEfr/GU5vs9AOdXOMxy+/
 ZudHdOYzd0P04wG+ux6HQHeGCxUACC7UXJ/TuZfauqtcHbBKaFfKTORwIp0+TAiNHCz68ou
 4ftJnz97J/vUlwPVdPa4Q==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:ucFLAM4w/R0=:EbP0XZTz+r8YyBS3ToGpYQ
 ANj6g4dAJyVAK+Q23/FXa95+ekkbmo03rk/fZYiHArvPbSpWPd+CXz5WnzFpkLabs3lsrM739
 fZJ/KAvVpPSwzOzVIt/wC0o3pFzrQBQPHBbgzcQNcXuSxWEJ2dXZUGLYPOYmjiyavKt8lm2ZI
 ZoAhv4bA5OBSoMB1Ay/05A7nim+ma2cI9nmpfMtF7eFUEtG+sTuehRhr+RbkBexvL7WW4QcvS
 i52odP1jcLy3u0ACevM2qvcSVGY2QDjRoGnzK3WDG/lEeiA8ekuZlNBlpGMZJ0exZFpWRLuF3
 bL1tc9aiWTPpOIuPcL3CYSHQd53ZJg3oCswHqL3SqS2I3NH5pZbUhROrR+x0H74PQrO0hYiFP
 Lwz2pI3BAL05eJpSF8/v6zYiusHUeI6KbG8cdbwbFAlJ+X5kG6zfH7oVrkRtjWBWFpj0UHaC8
 7diYgqlBw8UnJBRMDSyA/cyUvOJLlu2IeLepm9THVGNvSWW4XOyMOVhnzMrmXgriD0t3jpWuH
 VoYxJYTgG1A/ICFuXXilz0bePkaE4SyHKiduAXhKYu9z54ZSPy5XBfDgV/vfCRSm2CQQ2dgJe
 cuueQIuMflGRMOVpesJO/SSvCglN3OQAgRptpTasTTzxG3qDCNT7/5hkjVFOd49qBNmUGFUk/
 HXP8X4yN6Oll2hJ5YifafQszZK3lsrWomorD7D0NE0JW8FoZfuwhl8R9RWQcQAOa/uxGj4xKV
 2jmG7gznWtxSq3pBJd1SQUTXhFhnO9Mb+OQlHVVurKFf2lA4lDUHDPdLdMOZKROQFyRd7cRCX
 CXwDKBvcCyC3Uf8EV3dI5RHgKX/F+RQ7NpSv+x01DSWyBmHVpGztslgudcmOyVeepeVb5RHHu
 MMj7GuKCycobQR9TbwTQ==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_023920_955483_6C02784B 
X-CRM114-Status: GOOD (  23.34  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.130 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Abel Vesa <abel.vesa@nxp.com>, Anson Huang <anson.huang@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jan 15, 2020 at 3:38 AM Peng Fan <peng.fan@nxp.com> wrote:
> > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when CONFIG_ARM64
> > On Tue, Jan 14, 2020 at 9:32 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > Subject: Re: [PATCH] soc: imx: Makefile: only build soc-imx8 when
> > >
> > > There is no SOC_IMX8 currently. Need to introduce one in
> > > arch/arm64/Kconfig.platforms. But I not see other vendors introduce
> > > options like SOC_XX. Is this the right direction to add one in
> > > Kconfig.platforms?
> >
> > I think it would be more consistent with the other platforms to have a symbol
> > in drivers/soc/imx/Kconfig to control whether we build that driver.
>
> Ok, I'll add Kconfig entry in drivers/soc/imx/Kconfig for various i.MX SoCs.

I was thinking of one entry for this driver.

> > For some SoCs, we also allow running 32-bit kernels, so it would not be wrong
> > to allow enabling the symbol on 32-bit ARM as well, but this is probably
> > something where you want to consider the bigger picture to see if you want
> > to support that configuration or not.
>
> Does the current upstream kernel support 32bit kernels on ARM64 platforms
> without vendor specific stuff. I recalled that several years ago, NXP people
> tried to upstream 32bit kernel support, but rejected by you.

We have at least some Broadcom SoCs that are supported this way. As
long as you can use the same dtb file on a regular multi_v7_defconfig
I see no problem with doing this.

What I would like to avoid though are ports that require extra code in
arch/arm/mach-* that is not needed for the 64-bit target, or ports to
64-bit hardware that only run in 32-bit mode.

> So Is there any plan to support 32bit kernel on AARCH64 in upstream
> kernel?
> Or any suggestions?

I don't think there should be 32-bit kernel running in aarch64-ilp32
mode. This was discussed way back when the aarch64-ilp32 user
space patches first appeared.

Generally speaking you are usually better off running an aarch64
kernel using aarch32 user space, but there may be reasons for
running an ARMv8 aarch32 kernel on the same hardware and there
is no technical reason why this shouldn't work for a clean port.

We never really supported ARMv8-aarch32 in arch/arm/ as a
separate target, but usually building an ARMv7 kernel is close
enough to ARMv8-aarch32 that things just work. If you would
like to help out making ARMv7VE and ARMv8-aarch64 proper
targets for arch/arm/, let me know and we can discuss what parts
are missing.

     Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
