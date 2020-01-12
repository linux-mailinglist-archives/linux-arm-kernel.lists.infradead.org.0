Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9922138613
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 12 Jan 2020 12:47:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hzQZS9Sb/mXySB4GJAdPgw3YjvJQT+ayRm4/7Vin2+o=; b=HYY8CVmzmYenDT
	MLp2mNqS9A8IsXMBbcYKYZhtpDN7LEl6FAL7Rzfv3bcu7K9faQYNSgw0kX5BU4/qwz7nsvt2oG+KD
	WWtGT/Swu+6WOn4WB8JVP0jlJA9LkHBsstgwNvCyJ37gICjtD9kZvkf8cBYGrWPcqP46GCqIdz7p6
	BImeBw6qJ9RSbT+UkJ5BXfbgGFVD4uPxM21irIX614xbgTl3ILxUWVpDhkbHG/vhLbwpJdqHtaRJk
	y+gQGCX724L1URDMsfciw/eogTqWhLve/4cGTe0x8NXPedkoXa3J5vIKvZFB+ugUdbp+e6GwD91X9
	MblP5MF1QJR9P/U+seMQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iqbiZ-0007LA-Kk; Sun, 12 Jan 2020 11:47:43 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iqbiR-0007Km-UL
 for linux-arm-kernel@lists.infradead.org; Sun, 12 Jan 2020 11:47:37 +0000
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr
 [90.89.68.76])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 905CA214AF;
 Sun, 12 Jan 2020 11:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1578829655;
 bh=oM1is3UlWlPeDYiJP0EU3c2y9htL1a435f7KfIsFYp8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=pMCaZmKWRyXgOeMlUNez+uWd0vp87yvupKS2rW37rzCNEECVETSaY56aggM26vcAC
 odiZtH1Ml+9Rt0rGVWc9kgyOj1+0kktZicmerPlFvxmuaP3Fumv5QzLBFUgT0UKFMR
 huQcKntGq/d5B3aOcf4gORLYeRrEPRYiMQ9BDuxs=
Date: Sun, 12 Jan 2020 12:47:32 +0100
From: Maxime Ripard <mripard@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL] Allwinner arm64 Defconfig Changes for 5.6
Message-ID: <20200112114732.xem5jx3pago4pqtc@gilmour.lan>
References: <3b09a9b4-9d46-4f05-9c4d-420b93f0f88b.lettre@localhost>
 <20200111062349.esn2rfeppbt4b5kv@localhost>
 <20200111090942.su7j3v3dvfbfhmrr@gilmour.lan>
 <20200111225820.b2qlfi3vaegqyyby@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200111225820.b2qlfi3vaegqyyby@localhost>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200112_034736_000367_DF5A9F47 
X-CRM114-Status: GOOD (  25.68  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: soc@kernel.org, arm@kernel.org, Chen-Yu Tsai <wens@csie.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Jan 11, 2020 at 02:58:20PM -0800, Olof Johansson wrote:
> On Sat, Jan 11, 2020 at 10:09:42AM +0100, Maxime Ripard wrote:
> > Hi Olof,
> >
> > On Fri, Jan 10, 2020 at 10:23:49PM -0800, Olof Johansson wrote:
> > > On Fri, Jan 10, 2020 at 06:13:57PM +0100, Maxime Ripard wrote:
> > > > Hi,
> > > >
> > > > Please pull the following changes for the next release.
> > > >
> > > > Thanks!
> > > > Maxime
> > > >
> > > > The following changes since commit e42617b825f8073569da76dc4510bfa019b1c35a:
> > > >
> > > >   Linux 5.5-rc1 (2019-12-08 14:57:55 -0800)
> > > >
> > > > are available in the Git repository at:
> > > >
> > > >   https://git.kernel.org/pub/scm/linux/kernel/git/sunxi/linux.git refs/tags/sunxi-config64-for-5.6
> > > >
> > > > for you to fetch changes up to cb4132672f76954ddc234aa343b4d2a1f1b8437a:
> > > >
> > > >   arm64: defconfig: Enable DRM_SUN6I_DSI (2020-01-02 10:30:35 +0100)
> > > >
> > > > ----------------------------------------------------------------
> > > > Two patches to enable the new thermal sensor driver found on newer
> > > > Allwinner SoCs and to enable the MIPI-DSI controller.
> > >
> > > This adds a SUN8I_THERMAL that I can't find in the tree? (this also goes for
> > > the 32-bit branch)
> >
> > This is a new driver that got merged through the thermal tree and
> > should be in 5.6 as well:
> > https://git.kernel.org/pub/scm/linux/kernel/git/thermal/linux.git/commit/?h=thermal/linux-next&id=730a45ccd9322dd918a5dcaf8ae1482400fa5b23
>
> The way we have been handling this is that we add the config options
> after the merge window instead. Because right now, if someone runs
> savedefconfig, they disappear.
>
> So, please submit after -rc1 (but not too far after) to enable new
> drivers merged in that window.

Ok, I'll send them right after -rc1 then ...

> > > Also, is there a reason to have it =y, or would =m suffice? I see that RCAR is
> > > =y, but we should revisit that as well.
> >
> > That driver is used for thermal throttling which is pretty critical
> > for us since the boards can get pretty hot, pretty fast (and they
> > don't have a pretty wide temperature operating range either), so it
> > felt natural to have it as y?
>
> The problem with this is that all platforms now have to pay the price
> of keeping this driver in memory even if it's not needed on that
> hardware. This is why we're pushing back on drivers being statically
> built in on the large shared defconfigs.
>
> Loading it from ramdisk is usually done early enough that it works out for
> these cases, or from rootfs if needed.

And with the options as module. Thanks!
Maxime

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
