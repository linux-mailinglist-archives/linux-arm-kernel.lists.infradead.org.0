Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF0311CF8B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 15:16:54 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=htOvSzuXe15CF5tOcz+FlWsZxqHnhUcUVvwI+Bhe1sE=; b=ul8SM1u5hOCqoa
	5JFTCiz6hrtfrN90bxFHGSFgzZWaEOqzC+5Ils9JzdHOsEIaOmNNmwyrnTqEiApzQkTrFKc9HEnNp
	U1dw8rfcwVzzLp2yZR8H0kpL+zoESKQoGRcwzrA9BwOwCADSbUm7voxBNVnJpUV4OJrxC+mgWw0Z3
	EUO56tLmfLYUWfoTDMBiZHj1ADZV77Ovin7H08JjqakZvgqWvqqtGrnmvZiYhX9LfYNvo3bkrS36j
	PxdAgEO2WMAY9/IkmjtyDfzj6k3JJBouBlb/M5GT4OcNp0ehv5O6c0F3bqQ4tQJmIe9AsuchKpivM
	Uf21i82MPjLdVZD73/SQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifPGp-0006MW-HL; Thu, 12 Dec 2019 14:16:47 +0000
Received: from mail-qk1-x743.google.com ([2607:f8b0:4864:20::743])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifPGg-0006Kw-By; Thu, 12 Dec 2019 14:16:39 +0000
Received: by mail-qk1-x743.google.com with SMTP id l124so1690911qkf.8;
 Thu, 12 Dec 2019 06:16:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=6GBGCKakEwAi+SxuWUfOkadj0n7loMWnfnQvA8ShRvQ=;
 b=syayC1RvNDxvD18+kTX/JNogom/aWz14yGuOHeDLj5KjomPtSd37PoGodtbiCvOpdE
 vGIaVlQeTXfMsf9yVKonxDTBX2DP2xlnGPfieK+nH8CDudRSroy1R7g3EVhDc/DfhJ24
 FzrwYjcvm7+7WFEo6oRj4dM8wmPiCC4wedPnKXsxCGCk7S4dIWZF0fodt1DxRPkW9T9l
 CZc/iztXwUpiJe86KApaizcy2cEnJa8T7CFnVOiAfJBtiTZXw8Iu5hXIB/fNwqN+qQEy
 k+VIRKMpPtu/KpcQrMOb3nzGuE9cgLSMypnGsqstWYmxBlvVj99j8AVObaopHS+/5ajL
 vQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=6GBGCKakEwAi+SxuWUfOkadj0n7loMWnfnQvA8ShRvQ=;
 b=iTBaAgRzgIACDnE+DDwyYGSNgdMHYIEzaCseKmcti0MkkfmcByRBpB6X47AnCWSXiu
 ZRYcML7wcapaerjk5/2sym2I9RsqOjbMB+mcBYVHLnBWI6jr0EHsd/+cUcZNRLsEhTcv
 bQMsc8J9aTqFrBZoowBdKjUqa82Ui0BK+s6UKTCtyUuGNj4M6yNwqfm+tiECk3acEffC
 oNvseEU2DFG+TytMMAHXo3DmMojhTCG/AtpzCs4uL4HRxyy8H7xBp9yeDY3JffG32UGh
 GdM8L3plMh9N3gNT//d5+ErpfrcdZ9uam/y5ym5c7a/IImSdp3m3wh+ayWCJKck7lUlj
 pDKA==
X-Gm-Message-State: APjAAAWk5hoEvYnXvAy0ptWseB4YckRcLuZqAUUuIFY4gGlGtAep9Vro
 EB8ea3G63Na32BK7r8uI/iZMmuMsIqEuh1XwCJ0=
X-Google-Smtp-Source: APXvYqy3LZbmIJZqWEtZQRAxI8xuryqKsLm5wgMvxsNC8rWduFKgN8bZg4xqtDDT3Ra7L0z4cOoXyw9CsE4XvMKt3OQ=
X-Received: by 2002:a37:a642:: with SMTP id p63mr8470433qke.85.1576160197345; 
 Thu, 12 Dec 2019 06:16:37 -0800 (PST)
MIME-Version: 1.0
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
In-Reply-To: <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Thu, 12 Dec 2019 15:16:25 +0100
Message-ID: <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
To: Andrew Murray <andrew.murray@arm.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_061638_435829_D35983D1 
X-CRM114-Status: GOOD (  16.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:743 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Vicente Bergas <vicencb@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 =?UTF-8?Q?Stefan_M=C3=A4tje?= <stefan.maetje@esd.eu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Vicente,

Missatge de Andrew Murray <andrew.murray@arm.com> del dia dj., 12 de
des. 2019 a les 1:53:
>
> On Thu, Dec 12, 2019 at 12:12:56AM +0000, Robin Murphy wrote:
> > Hi Vicente,
> >
> > On 2019-12-11 11:38 pm, Vicente Bergas wrote:
> > > Hi,
> > > since v5.5-rc1 the google kevin chromebook does not boot.
> > > Git bisect reports 5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enabled()
> > > unnecessary locking
> > > as the first bad commit.
> > >
> > > In order to revert it from v5.5-rc1 i had to also revert some dependencies:
> > > 5e0c21c75e8c08375a69710527e4a921b897cb7e
> > > aff5d0552da4055da3faa27ee4252e48bb1f5821
> > > 35efea32b26f9aacc99bf07e0d2cdfba2028b099
> > > 687aaf386aeb551130f31705ce40d1341047a936
> > > 72ea91afbfb08619696ccde610ee4d0d29cf4a1d
> > > 87e90283c94c76ee11d379ab5a0973382bbd0baf
> > > After reverting all of this, still no luck.
> > > So, either the results of git bisect are not to be trusted, or
> > > there are more bad commits.
> > >
> > > By "does not boot" i mean that the display fails to start and
> > > the display is the only output device, so debugging is quite difficult.
> >

Another issue that is affecting current mainline for kevin is fixed
with [1]. As usual, I have a tracking branch for 5.5 for different
Chromebooks with some not yet merged patches that makes things work
while are not fixed [2]. For kevin only the mentioned ASoC patch [1]
and the pcie fix [3] should be needed. Other than that display is
working for me on Kevin.

Cheers,
 Enric

[1] https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/commit/?h=for-5.5&id=4bf2e385aa59c2fae5f880aa25cfd2b470109093
[2] https://gitlab.collabora.com/eballetbo/linux/commits/topic/chromeos/somewhat-stable-5.5
[3]  https://lkml.org/lkml/2019/12/11/199

> > Assuming it's a manifestation of the same PCI breakage that Enric and
> > Lorenzo figured out, there's a proposed fix here:
> > https://lkml.org/lkml/2019/12/11/199
>
> It's likely that any PCI driver that uses PCI IO with that controller will
> suffer the same fate.
>
> Vicente - can you try the patch that has been proposed and verify it fixes
> the issue for you?
>
> Thanks,
>
> Andrew Murray
>
> >
> > Robin.
> >
> > > v5.5-rc1 as is (reverting no commits at all) works fine when disabling PCI:
> > > # CONFIG_PCI is not set
> > >
> > > Regards,
> > >   Vicente.
> > >
> > >
> > > _______________________________________________
> > > Linux-rockchip mailing list
> > > Linux-rockchip@lists.infradead.org
> > > http://lists.infradead.org/mailman/listinfo/linux-rockchip
>
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
