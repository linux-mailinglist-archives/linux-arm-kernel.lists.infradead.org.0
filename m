Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3109314A5D0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 15:13:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iYqC0Nqaaql9GFvrsIGc3RRPkdTYMXIvLj28TM6DrEU=; b=EePr3feOO5Rg7s
	QG84sDtx8qXHMRGPNHhABsOQKvOKp4PjkYVfnVfbsqPjPlFaLIIaZr+Oqzb0PaIglunbH16gXAGmi
	kj8Kno+8Rj8KstYnyHlhmsd1ZkxiezXcj6DnFru/iNw1SNNqnikQ0hlyU642tvKy7ocKmyQcFV7Gs
	IbOB8FT2nzYj20n3pdRETqkldroU1wxbP40cc3A3Sdz+8s5nJmRe7PIfdumzMfWGSVW/bUlIxZezt
	DHLEZ2mUby2Cjky47TaU2vRLRyV0GfRsNJFu+JaoC7/1rhQLUXaNaLIaVO+6G/K4AcSTqn3W4+aPL
	An2jVLe5CkFNLGua1l8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw58G-000310-Jr; Mon, 27 Jan 2020 14:12:52 +0000
Received: from mout.kundenserver.de ([212.227.126.135])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw586-00030L-Bs
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 14:12:43 +0000
Received: from mail-qk1-f181.google.com ([209.85.222.181]) by
 mrelayeu.kundenserver.de (mreue011 [212.227.15.129]) with ESMTPSA (Nemesis)
 id 1Myb09-1jo37j3ABZ-00z0Mz for <linux-arm-kernel@lists.infradead.org>; Mon,
 27 Jan 2020 15:12:38 +0100
Received: by mail-qk1-f181.google.com with SMTP id h23so9718196qkh.0
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 06:12:38 -0800 (PST)
X-Gm-Message-State: APjAAAWRCeDDANo4Og9P1tlj9l/cgs5jh4XzMGmNWX0+eXLCvo/BGNYd
 HmZWO7lXhAVEBJr0c4EdNCPPwUQ6YPf7cLmJjNc=
X-Google-Smtp-Source: APXvYqyqkXSPHKaHYaA/H+oE3DOuo2nHc6OjSUgoQDX3Sn/WOCgNZb3dWH6MiCz5XzO50aznK8fftZ2JxIouPMX9yfU=
X-Received: by 2002:a37:84a:: with SMTP id 71mr16274917qki.138.1580134357497; 
 Mon, 27 Jan 2020 06:12:37 -0800 (PST)
MIME-Version: 1.0
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
 <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
 <AM0PR04MB4481E1AACAC4285D49E721AD880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
 <CAK8P3a30vieqOdend-o+_1AesAQCN97cW6KtQmAgV3uhDWi_jw@mail.gmail.com>
 <AM0PR04MB4481724FC5F8345502860B08880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481724FC5F8345502860B08880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Jan 2020 15:12:21 +0100
X-Gmail-Original-Message-ID: <CAK8P3a3VcPhPDskzrGL2UZJz1YK+7nGLC3S0soY0c78j3=LVwg@mail.gmail.com>
Message-ID: <CAK8P3a3VcPhPDskzrGL2UZJz1YK+7nGLC3S0soY0c78j3=LVwg@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:brkF5o1rTJjvE/o4G/LdI1QgH7TeywfK/q/HEsxl1ORje8HNdjT
 HfVijSvsGTbzm11/T/khRGOahobtw1kWTcTkPvlx8WxPc3MnUKMaSuUOjf/9FMI8PzHQS3J
 BxDwm6565kU4jEASgfdZtzVof3psoFKQUNVFSK0FYktzUtk5iXrhupmxF391kWpILeFHa/9
 R11sbig6yspbN6lj4C06w==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:tdLQhLB1yM8=:x2YimBxIuFzntD0m/QKCd7
 54yQXkWywzgN6CtslZUl1h9BuJc/9tmvo0Tp7z5+aYi9WGnNyEX5APjwW0GeS8HYpCripFj/U
 oGx/Kmk8OJnHFqRtbA47cxtSokff1GtLWjgC8buT9ed1fLrriyyU07d0ytQiHiduuMYWxuW37
 Unf7uhrtE6FasVR4Hi/avP5PT8XX0vpG9rREasNLGiFnqzFDk9x/8/d2V/qEineFqEH42nYFs
 ZfRPqI3vNuWX7zw4ijgP5sotMnCLDA5bl2r/3TFzWXUfcDSx3zYTjVIP18mkX6CMNKVKmZDbn
 jagr9+EwPNJOAa0/BJsKph8ICjRjyWho1u08Y4S+G/W6tD2XrNbI2EOJ+3ziVxtr62gzc9uD7
 gWBlIUb8VfzN32+GAFGBIYPIO8CaGveYxhPb/wnyGNs8yacn/Tw5eBmlNLFJ1R+nwut71Hwou
 zkX8Y9O9DG/E6sFoorZYGeotQiv2b8W+qkou2xPmql79pl7BSA9xKT7tWPriCysh6AJyB/ecP
 OrcRAeLnjDFejaTpLIsicdKslHF73uxj1eQm5NHs0PlForP4fi3Ry7RA//kBir3c7+ZnBzs5E
 OAqDpBhgplPcSgUeSzkGGcLQpcF9swP6cO2INwjyUUCojuOrVyLAYspJ0mJMYP6vymGePS/k0
 khqCUCRoXRz6aagUkK2/vpUHDS/+nBta/4ZMyNzi39kZVICY4yf1yzz+7WIt/X51VQD1rujEI
 SHVL1kPNGNduj/TSGfTgO4/Ks5afl8OZEqcgmkboAbnYWfh8mX8gS8En9cEIkEqikKe2AMfpb
 hHgSIxpkb2rSOLUOfML92OdoJnxi9HxvNC2bU7LU7TQmqa8Wt0=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_061242_696129_9D5DF5F2 
X-CRM114-Status: GOOD (  20.62  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.135 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "will@kernel.org" <will@kernel.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "krzk@kernel.org" <krzk@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "olof@lixom.net" <olof@lixom.net>, "shawnguo@kernel.org" <shawnguo@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 27, 2020 at 2:22 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> > Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
> > driver
> >
> > On Mon, Jan 27, 2020 at 1:33 PM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > > Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for
> > > > imx8 soc driver
> > > >
> > > > On Mon, Jan 27, 2020 at 10:44 AM Peng Fan <peng.fan@nxp.com> wrote:
> > > > >
> > > > > From: Peng Fan <peng.fan@nxp.com>
> > > > >
> > > > >
> > > > > V2:
> > > > >  Include Leonard's patch to fix build break after enable compile
> > > > > test Add Leonard's R-b tag
> > > > >
> > > > > Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family Add
> > > > > SOC_IMX8M for build gate soc-imx8m.c Increase build coverage for
> > > > > i.MX SoC driver
> > > >
> > > > The changes all look good to me, but I'd just do it all in one
> > > > combined patch, as the changes are all logically part of the same
> > > > thing. You can leave Leonard's fix as a [PATCH 1/2]  if you want, but the
> > rest should clearly be a single change.
> > >
> > > There is a arm64 defconfig change, should it be also included in the single
> > change?
> >
> > Good point, that one is probably better left separate indeed.
>
> Since the defconfig change needs stay alone in a patch,
> merge other patches into one might not be good. The patchset
> I did is to make sure the soc-imx8m.c could always be built. If
> I merge the others into one, without the defconfig patch set CONFIG
> option to y, soc-imx8m.c will not be built. This might break git bisect
> to check the soc-imx8m.c
>
> So I prefer not to merge the others into one patch. Do you agree?

I'm generally not too worried about intermittent defconfig breaks during
bisection, as the defconfig is not use all that much in practice. Splitting
the other changes into separate patches wouldn't help here either
unless you want to spread it out over multiple merge windows.

I'd probably just put it all in one patch (including the defconfig change)
in this case, alternatively you could add a 'default ARCH_MXC && ARM64'
to the Kconfig symbol.

       Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
