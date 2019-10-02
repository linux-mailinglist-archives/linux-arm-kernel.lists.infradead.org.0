Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C513C8D93
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  2 Oct 2019 18:02:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=SRnwues/sLNzwzu5mRIZK03uHcrQWUoiTMQ3e4+fYwc=; b=UXKuX1KnPVXda3
	OCUnWTdYi2AP/ur5xjye/R322nsF0ignyBdZfjFMv6zBQRJnAdXQvkpyB1Kh28e3fvfQd5SIptgFa
	AHuYks9c8WAQD7GL35GaZB2345ewi1bcSEzDhtManURXk7YZnfTNuqsKyDcVmNShQpL5aq1wqCyrU
	HHTayvzkBz5+PF4XGmQN3nGS+Ex0fi10Xg+MUYYUJs1cJELkWpSnFSvp35saCxjpoGvsOxxXZkM5D
	THTFs4zytp/VarcMPTGv/dpW9hTtKIPsJGdN7/PL9pP1AXtCvfw+gR+JSuQn8cKUWfmwBTNg4KALk
	Vb3XHh9bvFOHDae/JjOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFh4x-0007cw-0p; Wed, 02 Oct 2019 16:02:15 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFh4l-0007bW-Ez
 for linux-arm-kernel@lists.infradead.org; Wed, 02 Oct 2019 16:02:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=ll41zlB5tNuV92/s9U6ns+B+uRyn1BJFTqQZxvbfwAo=; b=I5yLHqB/tqmpk+dC0l7P8enjo
 n2UfJ5xCpiURA9vohaK+tegv4M3TlVDhK+b2+Dng9UB4daug58ngezj6h0E0SHXNVX0BnkRvzNhqu
 MNEpeGovThU05KojrmCvEXfYVPjtYcjZoZxOcS+0YrzuKZtw9TmdqQwFv17cVV6/gDW1Se5Gh0Ti0
 3VeptR+eP/10e/UWprsmA0K5jtId7YiEJKYRAp1ZSSSZ5/Yh6GWUhe9Yc2StD0hTfbXR0Ch3aumQM
 F54PTD5YfeTgaKDXICfVulnNnbd/agnz42lVRqxr+GzvztHVpM3kCs1Qyke92jGSHldBKC80FWpWO
 T3KuAGdpA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:50876)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iFh4b-00019R-6w; Wed, 02 Oct 2019 17:01:53 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iFh4Z-0000rJ-Vq; Wed, 02 Oct 2019 17:01:52 +0100
Date: Wed, 2 Oct 2019 17:01:51 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [GIT PULL] ARM/arm64: arm_pm_restart removal
Message-ID: <20191002160151.GS25745@shell.armlinux.org.uk>
References: <20191002131228.4085560-1-thierry.reding@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191002131228.4085560-1-thierry.reding@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_090203_648178_27D4B6E1 
X-CRM114-Status: GOOD (  17.34  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: arm@kernel.org, linux-arm-kernel@lists.infradead.org,
 Guenter Roeck <linux@roeck-us.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Why was I not copied on these changes (which clearly touch core ARM
code) both the patch series and this pull request?

On Wed, Oct 02, 2019 at 03:12:28PM +0200, Thierry Reding wrote:
> Hi ARM SoC maintainers,
> 
> The following changes since commit 54ecb8f7028c5eb3d740bb82b0f1d90f2df63c5c:
> 
>   Linux 5.4-rc1 (2019-09-30 10:35:40 -0700)
> 
> are available in the Git repository at:
> 
>   https://github.com/thierryreding/linux.git tags/for-5.5/arm-pm-restart-removal
> 
> for you to fetch changes up to 81b3f28283e2f0b03cea2127e9ff78e7c505b3d3:
> 
>   ARM: Remove arm_pm_restart() (2019-10-02 14:56:22 +0200)
> 
> This is the set of changes that we recently discussed that remove all
> uses of the arm_pm_restart symbol and replaces it by usages of the new
> restart handler that Guenter had introduced.
> 
> I've rebased these on top of v5.4-rc1.
> 
> Thierry
> 
> ----------------------------------------------------------------
> ARM/arm64: arm_pm_restart removal
> 
> This set of patches converts all remaining users of the arm_pm_restart
> mechanism for installing reboot hooks to the restart handler mechanism
> and finally removes the arm_pm_restart symbol.
> 
> ----------------------------------------------------------------
> Guenter Roeck (6):
>       ARM: prima2: Register with kernel restart handler
>       ARM: xen: Register with kernel restart handler
>       drivers: firmware: psci: Register with kernel restart handler
>       ARM: Register with kernel restart handler
>       ARM64: Remove arm_pm_restart()
>       ARM: Remove arm_pm_restart()
> 
>  arch/arm/include/asm/system_misc.h   |  1 -
>  arch/arm/kernel/reboot.c             |  6 +-----
>  arch/arm/kernel/setup.c              | 20 ++++++++++++++++++--
>  arch/arm/mach-prima2/rstc.c          | 11 +++++++++--
>  arch/arm/xen/enlighten.c             | 12 ++++++++++--
>  arch/arm64/include/asm/system_misc.h |  2 --
>  arch/arm64/kernel/process.c          |  7 +------
>  drivers/firmware/psci/psci.c         | 12 ++++++++++--
>  8 files changed, 49 insertions(+), 22 deletions(-)
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
