Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 92A5458367
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 15:25:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=n46AxMhffBvI6xM3IYYO5JMi6T3/pwh25u8T0wytSz0=; b=Hc30woHVbf9Lax
	CvSOU8Lf6VVtwrwY3H/pCKj2JAQvAB9GMsDeFGBK0mnC1cHDYaJRhX3FBJU5p780uMR9+drawV6/Z
	FgeemXc2OvlYNffinadIRuudoP34v0/k/IuInxdFG5VApDveQ5QAb8WfDpBGZRf732SOcwyA7XkDv
	KmNzr67dfDGw0vGyufDq8uwK7c/usLBCw99BFE8SgzfxGV/Db43CaoKWSTPb+fIsQBQ5yPR58IO1s
	X5gOeBWo15js2x0zj8qkApX/kkMo68Sx2hKxq4brGTNgZJlD4X+dWa+5RuMvMM6CWPJ75febYHCIk
	ZfnZzmsVyqzvUbELBKpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgUPK-0007f3-9L; Thu, 27 Jun 2019 13:25:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgUP7-0007eN-O0
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 13:25:35 +0000
Received: from dragon (li1322-146.members.linode.com [45.79.223.146])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D12BF2083B;
 Thu, 27 Jun 2019 13:25:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1561641932;
 bh=w2SC4VYm03MQAPbz/YsHm8t6Cjeg9h6Qj4WqFfY+BSo=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=MooxybR33LNhd5GP5XnYf3Kde7Fw/cYxPVfBbR0fxr7B3ZuLs1PyLHVirILEGlTqR
 ADzJInG9pAUVyDE0bIFZux/ih455tx1Ew7z9nhlAy3Cjc3IbaCmW+c4FXO4HHryyqS
 ti2gjL3kT9AhvqmDI/UfUGmBmbUbDnkyf8UUe1HU=
Date: Thu, 27 Jun 2019 21:25:12 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Olof Johansson <olof@lixom.net>
Subject: Re: [GIT PULL 7/7] i.MX defconfig changes for 5.3
Message-ID: <20190627132511.GA15900@dragon>
References: <20190625075305.29082-1-shawnguo@kernel.org>
 <20190625075305.29082-7-shawnguo@kernel.org>
 <20190625123234.ytva26bkeyqevtwc@localhost>
 <20190626020213.GF16146@dragon>
 <CAOesGMiWqgBdxZ+XRexxLSEkZ_WuegxgqLmJ4=iBvhTxAJ_okQ@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAOesGMiWqgBdxZ+XRexxLSEkZ_WuegxgqLmJ4=iBvhTxAJ_okQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_062533_802158_4BBDE71F 
X-CRM114-Status: GOOD (  12.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 ARM-SoC Maintainers <arm@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 Sascha Hauer <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 10:14:25AM +0800, Olof Johansson wrote:
> On Wed, Jun 26, 2019 at 10:02 AM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> > On Tue, Jun 25, 2019 at 05:32:34AM -0700, Olof Johansson wrote:
> > > > Anson Huang (6):
> > > >       arm64: defconfig: add support for i.MX system controller watchdog
> > > >       ARM: imx_v6_v7_defconfig: Enable CONFIG_THERMAL_STATISTICS
> > > >       ARM: imx_v6_v7_defconfig: Add TPM PWM support by default
> > > >       arm64: defconfig: Enable CONFIG_QORIQ_THERMAL
> > > >       arm64: defconfig: Add i.MX SCU SoC info driver
> > >
> > > An SoC info driver shouldn't need to be =y, I think? It exports no in-kernel
> > > interfaces, so it should do just fine as a module.
> >
> > Hmm, soc_device_match() comes out of SoC bus subsystem and will be used
> > by device drivers to identify SoC.
> 
> Ah, yes of course. But don't we usually use compatible for this?

Yes, we do.  But soc_device_match() is now preferred over compatible,
since it can even identify the SoC revision while compatible usually
cannot.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
