Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E6C4211D7F9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 21:39:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=D+n2H75P3KoEn131mQ1/A8SOso1aN8O/R6yGo3EFfxs=; b=NFQc4YsU5NICK9
	UGs7fRQv64/4ASwE0H8m0iuKbwJpKPwjBG+osvMh6LsNThr9N84fb43/cC2CBUe9oR5VMH46Qredu
	rENmtZGHxQHx8KTkkZLfGwBkW0NxsLU7t11bcR8s3khTjnADWsRI1k50cVBdGafJj2FmsGwhVhiM3
	poH7hRpCADM6Wgzq0y2P3fVpy6QFmIsnxk2W4GgbD+DefQCapR3Z913CdezDzNtibB3VdJfk9d27B
	jNIeo9bCjQNCUjFwoZtpYS7qrwpyyxZLygHIPCiirYgeOPsaze4732onq/Hyy+8dgv+U0tBgKTfGM
	S5HQ4eNkl7hW9Q8kE6Dg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifVFL-0002vS-D7; Thu, 12 Dec 2019 20:39:39 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifVFC-0002uS-AL; Thu, 12 Dec 2019 20:39:32 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44702328;
 Thu, 12 Dec 2019 12:39:29 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 855263F718;
 Thu, 12 Dec 2019 12:39:28 -0800 (PST)
Date: Thu, 12 Dec 2019 20:39:27 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Vicente Bergas <vicencb@gmail.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Message-ID: <20191212203925.GH24359@e119886-lin.cambridge.arm.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
 <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
 <CAFqH_50pJVQT3uqtpVgqn4ijfdPMzHoE1ns_KARH+_cKe+3NRg@mail.gmail.com>
 <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <792cf6ab-26c4-40a4-90b0-a99e620548f4@gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_123930_445695_05634A9C 
X-CRM114-Status: GOOD (  21.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>,
 Enric Balletbo Serra <eballetbo@gmail.com>, linux-pci@vger.kernel.org,
 Shawn Lin <shawn.lin@rock-chips.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Robin Murphy <robin.murphy@arm.com>,
 Stefan =?iso-8859-1?Q?M=E4tje?= <stefan.maetje@esd.eu>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 07:40:06PM +0100, Vicente Bergas wrote:
> On Thursday, December 12, 2019 3:16:25 PM CET, Enric Balletbo Serra wrote:
> > Hi Vicente,
> > =

> > Missatge de Andrew Murray <andrew.murray@arm.com> del dia dj., 12 de
> > des. 2019 a les 1:53:
> > > =

> > > On Thu, Dec 12, 2019 at 12:12:56AM +0000, Robin Murphy wrote:
> > > > Hi Vicente,
> > > > =

> > > > On 2019-12-11 11:38 pm, Vicente Bergas wrote:
> > > > > Hi,
> > > > > since v5.5-rc1 the google kevin chromebook does not boot.
> > > > > Git bisect reports 5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enable=
d()
> > > > > unnecessary locking
> > > > > as the first bad commit.
> > > > > =

> > > > > In order to revert it from v5.5-rc1 i had to also revert
> > > > > some dependencies:
> > > > > 5e0c21c75e8c08375a69710527e4a921b897cb7e
> > > > > aff5d0552da4055da3faa27ee4252e48bb1f5821
> > > > > 35efea32b26f9aacc99bf07e0d2cdfba2028b099
> > > > > 687aaf386aeb551130f31705ce40d1341047a936
> > > > > 72ea91afbfb08619696ccde610ee4d0d29cf4a1d
> > > > > 87e90283c94c76ee11d379ab5a0973382bbd0baf
> > > > > After reverting all of this, still no luck.
> > > > > So, either the results of git bisect are not to be trusted, or
> > > > > there are more bad commits.
> > > > > =

> > > > > By "does not boot" i mean that the display fails to start and
> > > > > the display is the only output device, so debugging is quite diff=
icult.
> > > > =

> > =

> > Another issue that is affecting current mainline for kevin is fixed
> > with [1]. As usual, I have a tracking branch for 5.5 for different
> > Chromebooks with some not yet merged patches that makes things work
> > while are not fixed [2]. For kevin only the mentioned ASoC patch [1]
> > and the pcie fix [3] should be needed. Other than that display is
> > working for me on Kevin.
> > =

> > Cheers,
> >  Enric
> > =

> > [1] https://git.kernel.org/pub/scm/linux/kernel/git/broonie/sound.git/c=
ommit/?h=3Dfor-5.5&id=3D4bf2e385aa59c2fae5f880aa25cfd2b470109093
> > [2] https://gitlab.collabora.com/eballetbo/linux/commits/topic/chromeos=
/somewhat-stable-5.5
> > [3]  https://lkml.org/lkml/2019/12/11/199
> > =

> > > > Assuming it's a manifestation of the same PCI breakage that Enric a=
nd
> > > > Lorenzo figured out, there's a proposed fix here:
> > > > https://lkml.org/lkml/2019/12/11/199
> > > =

> > > It's likely that any PCI driver that uses PCI IO with that controller=
 will
> > > suffer the same fate.
> > > =

> > > Vicente - can you try the patch that has been proposed and verify it =
fixes
> > > the issue for you?
> > > =

> > > Thanks,
> > > =

> > > Andrew Murray
> > > =

> > > > =

> > > > Robin.
> > > > =

> > > > > v5.5-rc1 as is (reverting no commits at all) works fine when
> > > > > disabling PCI:
> > > > > # CONFIG_PCI is not set
> > > > > =

> > > > > Regards,
> > > > >   Vicente.
> =

> Hi Robin, Andrew and Enric,
> thank you all for the quick responses!
> I can confirm that patch [3] fixes the issue reported in this email and
> that [1] fixes the other issue reported on the other email.

Pleased to hear this is working for you now.

Are you happy to give a tested-by tag for [3]?

Thanks,

Andrew Murray

> =

> Regards,
>  Vicen=E7.
> =


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
