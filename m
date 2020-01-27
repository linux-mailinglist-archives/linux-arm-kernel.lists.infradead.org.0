Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EA7314A4B5
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Jan 2020 14:13:20 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=lig7fW0Wupc5kz8sXA5tq+IqSOCMtnsL12EYwlt+r/8=; b=aBgw+VoLqHilE+
	VdwT9N7nCLZWKY94BHrGdSB9IR8qAI85YRL+TAMLtNT0MVrSaw2dRVWq1H5iAgDWYglKB//Qw5azD
	SWIaPv7zOapJ9zOw7jMDZs6RJ3v0SoUCZJXB1IrUqAV3YkR+TnZpw/idRKeAfIoKt6OzwVrKM0Pn7
	gYhB0FbBIFy8vGuQVmtC47KOVdah6Pg6meETBM/eddXuBmfegxQlPV62Nztau9Vgax2lkVnxEZw+h
	22zPaCKA/zximA7SdsXeyO1XjZpBNhTvhZ/SmJsZbOYAdrrFldXkOjWtArfBHJyT0/YOZ0fmKb18n
	aKguVuDCQ6WcZgrgLuHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iw4CS-00040Z-AT; Mon, 27 Jan 2020 13:13:08 +0000
Received: from mout.kundenserver.de ([212.227.17.10])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iw4CI-0003zj-UL
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Jan 2020 13:13:00 +0000
Received: from mail-qk1-f173.google.com ([209.85.222.173]) by
 mrelayeu.kundenserver.de (mreue107 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1Msqty-1jkStT25aC-00t9ZP for <linux-arm-kernel@lists.infradead.org>; Mon,
 27 Jan 2020 14:12:55 +0100
Received: by mail-qk1-f173.google.com with SMTP id t204so8658143qke.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 27 Jan 2020 05:12:55 -0800 (PST)
X-Gm-Message-State: APjAAAWCEW+NAtZQjW7D4/lpiDcNdx56L5mc9Jk8qaAi0VI1SXVU4qGq
 Whm0BTqEwUf/jShKwfDjqDHSEo0schpwYElnmvU=
X-Google-Smtp-Source: APXvYqxbvFpeiM8Jlbq76v1COK9TQt9IgHSB9reHtWof52+MxgY5qWFvlyLbK38KNCc7xX0a4X/9uw7X/O9LDCisT4g=
X-Received: by 2002:a05:620a:12e1:: with SMTP id
 f1mr15895676qkl.394.1580130774164; 
 Mon, 27 Jan 2020 05:12:54 -0800 (PST)
MIME-Version: 1.0
References: <1580117979-4629-1-git-send-email-peng.fan@nxp.com>
 <CAK8P3a2YLo4rNBXu9NhvKv6QOFUcZhCVXNR4XJe_0Kc_RJ=ubA@mail.gmail.com>
 <AM0PR04MB4481E1AACAC4285D49E721AD880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
In-Reply-To: <AM0PR04MB4481E1AACAC4285D49E721AD880B0@AM0PR04MB4481.eurprd04.prod.outlook.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 27 Jan 2020 14:12:38 +0100
X-Gmail-Original-Message-ID: <CAK8P3a30vieqOdend-o+_1AesAQCN97cW6KtQmAgV3uhDWi_jw@mail.gmail.com>
Message-ID: <CAK8P3a30vieqOdend-o+_1AesAQCN97cW6KtQmAgV3uhDWi_jw@mail.gmail.com>
Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
 driver
To: Peng Fan <peng.fan@nxp.com>
X-Provags-ID: V03:K1:4FXphTFotlqkU2XmuRUMxLnr66ANb36XW+0U1+uhmYg76Cyo/n3
 Jq1I2x33OB8pDK0UZtTLirJGVEXd70zsiYSeK/KZduThdQayghoIpAGl6tvaO/X95en621a
 lUhKN72OXhdrmGC2qTG3bYq4ChxRWqEcraY/QAe3fAKYXi3raOf9f0Osp8dVKIX7nc8DxVG
 12xD1daRuqUF26AGYjstA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:M47u4wEdLis=:H9WQbcixl4W6gr4HxsRChb
 jGHFCDoDY+/3pNLaftv0MTJUfyE0VrPBLzAzrIjkCE/DGiMWx1i6tFZCcUcAGlV1ZH0gyN3EW
 +MF3823181womN5WPyeP3BwMKWRAkzUTUbQO2G4X6r+00Qw3lsC0wJI+8Ft9qWXK7jgUUb97C
 FOG+XhnZ9wXdjAHzm70ljfOEwVg0WAHsXDo4F6iGJ62KoJ3Kvi+EokXK4L3DBiojWwy/ZTsYU
 rakY/qbilCE3SpHiTUBklq+hUWiAcaMfYFd06yQ3uZ600UhAYAlYqUaX3GFO+ZgvzG4Z9bYJv
 fzKFrOsVnYiKFRETQsf6LyizTmdP19mrwwLNmfpJHbZ1X5UWgnRysrIHxZRqPMALyWlCquF6Z
 PKBt4BawBjYhSu/2rQQCQwNdGXFv2UTvLwcpVfYIfGP59yAiAteQIyWogLfgA+73M2tqLATo0
 ag+AnPs/HMEOabiQ1QBvn1D4t4J6TaZeBpYMpB7OitIOl/SYEkz8EWw0XYayoQIHbH43bjAw/
 lIRBDSNkCm5TLMB7w5K8tfm0tjXu/tUK5UlRcgv6UFsfH6lbviN0yN4TllLz/TgPIvbXtUlfM
 067l8lc/ppz/fYfDOCm8sjtIYAua9AsLT3TTTmHffSFSJAFKSSXta8etZSQJl2pOF4XlNSx3c
 vrG3loleb0ENEB4C8T3P3LknVMrxV+GIhi/xJZMHcDGb4Ngr0LsoxDQ39fiME8o+DlsDq5UOX
 iYd9bt7B6NuzGZ8shAAf9VT8kP3vUmPl06yxMvEiYsfOP7D814HBVUFFaaGL5EHazJAniuIaN
 g7yLBb1NpRrtgqs/7djmbT+XOZMaqRw9B5nMjdQM22KHdqk4jU=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200127_051259_269393_9D3FC584 
X-CRM114-Status: GOOD (  14.63  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.17.10 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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

On Mon, Jan 27, 2020 at 1:33 PM Peng Fan <peng.fan@nxp.com> wrote:
>
> Hi Arnd,
>
> > Subject: Re: [PATCH V2 0/5] soc: imx: increase build coverage for imx8 soc
> > driver
> >
> > On Mon, Jan 27, 2020 at 10:44 AM Peng Fan <peng.fan@nxp.com> wrote:
> > >
> > > From: Peng Fan <peng.fan@nxp.com>
> > >
> > >
> > > V2:
> > >  Include Leonard's patch to fix build break after enable compile test
> > > Add Leonard's R-b tag
> > >
> > > Rename soc-imx8.c to soc-imx8m.c which is for i.MX8M family Add
> > > SOC_IMX8M for build gate soc-imx8m.c Increase build coverage for i.MX
> > > SoC driver
> >
> > The changes all look good to me, but I'd just do it all in one combined patch, as
> > the changes are all logically part of the same thing. You can leave Leonard's fix
> > as a [PATCH 1/2]  if you want, but the rest should clearly be a single change.
>
> There is a arm64 defconfig change, should it be also included in the single change?

Good point, that one is probably better left separate indeed.

      Arnd

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
