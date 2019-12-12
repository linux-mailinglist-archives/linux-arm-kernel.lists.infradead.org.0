Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0661D11C1AC
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 01:53:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XTF3LqVD9DZqwO3OfogysZfvW6uWqjXYBJcKky3QdEk=; b=BUipG1CfG4KHa4
	psey+TcXJtbBXK12ephSOeNa8QYqJ/QfxUC4+fBt6q65cCcM9P384R+zbHz0mPDMNl/KnzBCT7yZT
	jQb3DilFAxdH7VCXUlbYmjJL+TFbd+0/nYzVhoT8Qm7m0XKGYhdss0Z9O8uJ5yEDatEGmeUan/7vJ
	QweZzOjtoNCeLgCKbJld0hnwCspxT5UlJ6ZRkz1RLJTim+OHH8Z53Zg2fkcIudDQeuq5G5ABUqzn0
	+M62Tjo9cjsclDeUGlaPVAJMPp00Sr2Jtga4bJBvPUEmXxxk4GUVlO8sudT7YttX5JXMGO8/u/moY
	LNVgIutLlxqY4FAX38uw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifCj7-0007bJ-9b; Thu, 12 Dec 2019 00:53:09 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifCiw-0007ae-7R; Thu, 12 Dec 2019 00:52:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8AAB431B;
 Wed, 11 Dec 2019 16:52:57 -0800 (PST)
Received: from localhost (unknown [10.37.6.20])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D035B3F52E;
 Wed, 11 Dec 2019 16:52:56 -0800 (PST)
Date: Thu, 12 Dec 2019 00:52:55 +0000
From: Andrew Murray <andrew.murray@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [REGRESSION] PCI v5.5-rc1 breaks google kevin
Message-ID: <20191212005254.GE24359@e119886-lin.cambridge.arm.com>
References: <58ce5534-64bd-4b4b-bd60-ed4e0c71b20f@gmail.com>
 <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <166f0016-7061-be5c-660d-0499f74e8697@arm.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_165258_311646_A995830B 
X-CRM114-Status: GOOD (  15.48  )
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
 Heiko Stuebner <heiko@sntech.de>, Frederick Lawler <fred@fredlawl.com>,
 linux-pci@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>,
 "Rafael J. Wysocki" <rafael.j.wysocki@intel.com>,
 Liam Girdwood <lgirdwood@gmail.com>, Vicente Bergas <vicencb@gmail.com>,
 linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org,
 Mark Brown <broonie@kernel.org>, Philipp Zabel <p.zabel@pengutronix.de>,
 Bjorn Helgaas <bhelgaas@google.com>,
 Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
 Mika Westerberg <mika.westerberg@linux.intel.com>,
 Stefan =?iso-8859-1?Q?M=E4tje?= <stefan.maetje@esd.eu>,
 linux-arm-kernel@lists.infradead.org, Heiner Kallweit <hkallweit1@gmail.com>
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 12:12:56AM +0000, Robin Murphy wrote:
> Hi Vicente,
> =

> On 2019-12-11 11:38 pm, Vicente Bergas wrote:
> > Hi,
> > since v5.5-rc1 the google kevin chromebook does not boot.
> > Git bisect reports 5e0c21c75e8c PCI/ASPM: Remove pcie_aspm_enabled()
> > unnecessary locking
> > as the first bad commit.
> > =

> > In order to revert it from v5.5-rc1 i had to also revert some dependenc=
ies:
> > 5e0c21c75e8c08375a69710527e4a921b897cb7e
> > aff5d0552da4055da3faa27ee4252e48bb1f5821
> > 35efea32b26f9aacc99bf07e0d2cdfba2028b099
> > 687aaf386aeb551130f31705ce40d1341047a936
> > 72ea91afbfb08619696ccde610ee4d0d29cf4a1d
> > 87e90283c94c76ee11d379ab5a0973382bbd0baf
> > After reverting all of this, still no luck.
> > So, either the results of git bisect are not to be trusted, or
> > there are more bad commits.
> > =

> > By "does not boot" i mean that the display fails to start and
> > the display is the only output device, so debugging is quite difficult.
> =

> Assuming it's a manifestation of the same PCI breakage that Enric and
> Lorenzo figured out, there's a proposed fix here:
> https://lkml.org/lkml/2019/12/11/199

It's likely that any PCI driver that uses PCI IO with that controller will
suffer the same fate.

Vicente - can you try the patch that has been proposed and verify it fixes
the issue for you?

Thanks,

Andrew Murray

> =

> Robin.
> =

> > v5.5-rc1 as is (reverting no commits at all) works fine when disabling =
PCI:
> > # CONFIG_PCI is not set
> > =

> > Regards,
> >  =A0Vicente.
> > =

> > =

> > _______________________________________________
> > Linux-rockchip mailing list
> > Linux-rockchip@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-rockchip

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
