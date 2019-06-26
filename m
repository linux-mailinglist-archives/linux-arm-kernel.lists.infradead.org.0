Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E71C655DF3
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 03:48:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Ju/btiP7SdFLyzFJcWxYsTDZr7Vo3DJnU2RdpB63Ek=; b=QLL4BKnJsgZR5w
	inrWr7WaRb5UTpDqeBe1mV0nNMpuTyYvZJQg16AuzFhtTvkn0kcFxn75nZqa6mspgY4BbCbvp09Ot
	FI+owBYUJrf1NIQDTtfPQrK8mKVyci7ZPytIVV8mNm9FO8+IbrohlFMrj1wt5T6dwOaJZnhq+D8uW
	LQh0KP3trkUzbGK2XP6kFjUF2fM2X3AY3Ysp8MMnDOB3qLzCpdUkJ0z7i7lNqG/rngSQbhnSpaVzl
	a4WMjM0Fw17Y7vW9aM6YToZI1Biep/isNpf+8pTqELk2nThgh8Zq3zQMFJa/nyac1VHJggw3FzwYJ
	G55h+hQRWnA2mL4fvGUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfx3I-0003Rr-VT; Wed, 26 Jun 2019 01:48:48 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfx35-0003RS-14
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Jun 2019 01:48:37 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DB962204EC;
 Wed, 26 Jun 2019 01:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561513713;
 bh=owx0wb73EThTywYU6i4ubKi+rzMy9J4WHHfleArB/18=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=u8ZU/YsWhOTzSHtSwsmM366q41qcBEyYxSzxdgmENcJkpGLICtMl5wiW50x49IAUu
 Vi/HWoPXC/PgOIQOpKsotM8hCZScDpPh3QZ8QRQALeL68p9JjF/AXdMwUTGannjXx2
 6cQMRAOrgyNVoTlLbD2xspGNDQIBJroGQznNNP3k=
Date: Wed, 26 Jun 2019 09:48:16 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 1/7] i.MX drivers change for 5.3
Message-ID: <20190626014815.GE16146@dragon>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625124538.wrxlx6mk3vtyij3m@localhost>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190625124538.wrxlx6mk3vtyij3m@localhost>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_184835_252585_144D1777 
X-CRM114-Status: GOOD (  15.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Stefan Agner <stefan@agner.ch>, Li Yang <leoyang.li@nxp.com>,
 arm@kernel.org, linux-imx@nxp.com, kernel@pengutronix.de,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jun 25, 2019 at 05:45:38AM -0700, Olof Johansson wrote:
> On Tue, Jun 25, 2019 at 03:52:59PM +0800, Shawn Guo wrote:
> > The following changes since commit a188339ca5a396acc588e5851ed7e19f66b0ebd9:
> > 
> >   Linux 5.2-rc1 (2019-05-19 15:47:09 -0700)
> > 
> > are available in the Git repository at:
> > 
> >   git://git.kernel.org/pub/scm/linux/kernel/git/shawnguo/linux.git tags/imx-drivers-5.3
> > 
> > for you to fetch changes up to db10496c0064ba3355936de801cd3ba0b6711bd1:
> > 
> >   soc: imx: Add i.MX8MN SoC driver support (2019-06-24 09:15:57 +0800)
> > 
> > ----------------------------------------------------------------
> > i.MX driver changes for 5.3:
> >  - Add i.MX SCU based SoC bus driver for i.MX8QXP SoC support, which
> >    talks to SCU firmware for getting SoC ID and revision.
> >  - Update soc-imx8 bus driver to read imx8mm soc revision from anatop.
> >  - Add i.MX8MN SoC bus support into soc-imx8 driver.
> >  - Various small improvements on soc-imx8 bus driver.
> > 
> > ----------------------------------------------------------------
> > Anson Huang (6):
> >       soc: imx: Add SCU SoC info driver support
> >       soc: imx: soc-imx8: Avoid unnecessary of_node_put() in error handling
> >       soc: imx: soc-imx8: Correct return value of error handle
> >       soc: imx8: Fix potential kernel dump in error path
> >       soc: imx8: Use existing of_root directly
> >       soc: imx: Add i.MX8MN SoC driver support
> 
> Given that these were posted at the same time, it seems silly to post a patch
> with a fix right after -- they should probably be squashed before sending out
> (or when applying).

Hmm, soc-imx-scu is the new SoC bus driver added during this development
cycle, but all those improvements are around soc-imx8 driver which
landed on 5.2 release.

> Anyway, minor nit. Merged the branch.

Thanks, Olof.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
