Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BABAF3F2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 03:28:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8Lf5Nkauf+mx6L0x/K0MWgSpln4Knhc0J+oC2CaBvYU=; b=nput+A+n7mDMji
	tSZfOJcXlhReRQNeb7X9Olz0CxfGJM4Czw0ZdvvfHv/3cGFV5XCWTVfKrq4gC2EHUqSZVgyk8vqZc
	4dHHtegOK1guOJQHdPqcPPBSiBsvgrg77EX5ZMjjHFp1+9PFiTz9Of6UHtLX5O+m9KfgyUREWxwAX
	kxWPCA1vGW+9+AfZxKIsKJZMS8M/kTMIHOpBE6S44aab49vzbs2KnMnWXXf6VrYIIoAwqE6NsQAt2
	3k1876zzvpikLGekjaqAql/s8f4M9ozwL1zmyGUlfHCKYC/2CDiG45likj+mOdf0xiQt370bUv1+m
	YBL2nxPmzontzsdtgQOQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7rQr-000583-Sx; Wed, 11 Sep 2019 01:28:29 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7rQc-00057j-3n
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 01:28:15 +0000
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
 (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDC4820872;
 Wed, 11 Sep 2019 01:28:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1568165292;
 bh=NN0eCX+BFSK/E5ghHeuqCVnPnA/PptedR3QMN8Seo6s=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=NYWAHqmHQhOU2yEh/Wn6JWQW2g4Nah7vdw27z/ZUy6L02Y3f4U85pNAhgwSJA/ku0
 gxzX5en7JLvcnE+hpOZc2znjVapu4UiIJi4AtW3Y5w0RVqHbBjuaKy1aEsBle7dr/r
 jZLo7r5V5t/fTJsKOr1Tfe/D3uLpFRq/Q07AuyQc=
Date: Wed, 11 Sep 2019 09:28:02 +0800
From: Shawn Guo <shawnguo@kernel.org>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [GIT PULL 1/7] i.MX drivers update for 5.4
Message-ID: <20190911012800.GA13923@dragon>
References: <20190825153237.28829-1-shawnguo@kernel.org>
 <CAK8P3a17J5aOyKN=q=CLQevUYeRFd0qpE_e5Cz8rSErbrMONyw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a17J5aOyKN=q=CLQevUYeRFd0qpE_e5Cz8rSErbrMONyw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_182814_180938_C0DBBE7A 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
 SoC Team <soc@kernel.org>, arm-soc <arm@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Sep 03, 2019 at 10:58:51PM +0200, Arnd Bergmann wrote:
> On Sun, Aug 25, 2019 at 5:33 PM Shawn Guo <shawnguo@kernel.org> wrote:
> >
> 
> > i.MX drivers update for 5.4:
> >  - A series from Anson Huang to add UID support for i.MX8 SoC and SCU
> >    drivers.
> >  - A series from Daniel Baluta to add DSP IPC driver for communication
> >    between host AP (Linux) and the firmware running on DSP embedded in
> >    i.MX8 SoCs.
> >  - A small fix for GPCv2 error code printing.
> >  - Switch from module_platform_driver_probe() to module_platform_driver()
> >    for imx-weim driver, as we need the driver to probe again when device
> >    is present later.
> >  - Add optional burst clock mode support for imx-weim driver.
> 
> Pulled into arm/drivers.
> 
> The module_platform_driver_probe() change looks like it should have been
> in a bugfix branch, and I think there were some other patches that would
> qualify in your other pull requests:
> 
> a95fbda08ee2 ("ARM: dts: imx7-colibri: disable HS400")
> 9846a4524ac9 ("ARM: dts: imx7d: cl-som-imx7: make ethernet work again")
> 7cb220a75ff3 ("arm64: dts: lx2160a: Fix incorrect I2C clock divider")
> f64697bd0b9e ("arm64: dts: ls1028a: fix gpio nodes")
> 
> There may have been good reasons to not include them in the fixes
> pull request, but my feeling is that you could be a little more aggressive
> in categorizing bugfixes for backports or adding Cc:stable tags.

Okay, noted.  I was generally relying on author's opinion whether it's a
critical bug fix and should have stable tag.

Shawn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
