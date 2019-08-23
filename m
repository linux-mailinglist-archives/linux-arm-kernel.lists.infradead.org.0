Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E54E89AD9E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 12:52:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8JbSPsdBDqiNpGVU47GeHr9XuhEzYh649wW7Ye+4U2M=; b=ueBPg+J+FLIEf5
	4n6HT4mTRJbuUrSkCSCH/rkq8+fOkw0NWKpwSEjOq26b2ve9D/KM0izScIeCzUjgtWJ+6k2IXZMDl
	XhOI/hYtD24x0mMMQV6GFygWS2ICkxB3EjbUwPOhQaBaMuQPOEdaU2s30rEjvUe3z6ep4Tx7cH4b/
	N115Xxqu2ckidfJzKS+B5hbpKODBsGb9v6FqIukHBodGWm7qrlzWSojd6qosblSSuokzyI6BIlS7r
	qTgaIDcm/Ipg+yLXwQOtYsaL7H5p41WoIJIn85kLmHHJIJyKzuMoFn/rnEwo1g4H9o4hvfyd3NBcq
	2Iq6zCRWJDK+Rr3Dqmmw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i17Af-0007Kj-Oj; Fri, 23 Aug 2019 10:51:53 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i17AX-0007Jq-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 10:51:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=rV5X87m2aVqvDyTVi9a6HowY/GyHB5VKLCi2GkCc/3U=; b=tjNEkBlgX2N/B2l3X1g+NoyZu
 hkDt1Rsb7Keu46ouFXQi0jsTqHid4G7fyRp9JKvYVfF+aju3zu8YQaanWmYCiJhvsOfxd3sH7cC+h
 CvA5LXEj48rUIGz4//lebn/Vo+t+VkDgABlo8k3RhsQWMoLDOONu70LBIVdvfs1dYndKU/HAgUL2h
 gyiw8vJrzM379DK9x5bn4LBm4s8yLXVwN9UEiXnsJpnkW5IbXFsiURr1yLpIUUq3BsRMO+5zhce8z
 NLB8G1celxCrEH7vlQvrlpIL+11RcifC6WexTVKhYn9AzduRMeAAmYU/KcF2IlMVgdVTlAzUkT4Uz
 a1kQkmc3g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:48402)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i17AD-0004Be-I5; Fri, 23 Aug 2019 11:51:25 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i17A9-0000BF-9q; Fri, 23 Aug 2019 11:51:21 +0100
Date: Fri, 23 Aug 2019 11:51:21 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Subject: Re: Regression in 5.3-rc1 and later
Message-ID: <20190823105121.GA13294@shell.armlinux.org.uk>
References: <faaa3843-09a6-1a21-3448-072eeed1ea00@googlemail.com>
 <20190823103654.GX13294@shell.armlinux.org.uk>
 <8ab59d01-348e-9ac1-2944-5e98acd9b1f8@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8ab59d01-348e-9ac1-2944-5e98acd9b1f8@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_035145_473871_18536AB7 
X-CRM114-Status: GOOD (  13.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: linux-arch@vger.kernel.org, daniel.lezcano@linaro.org,
 linux-mips@vger.kernel.org, linux-kselftest@vger.kernel.org, arnd@arndb.de,
 huw@codeweavers.com, andre.przywara@arm.com,
 Chris Clayton <chris2553@googlemail.com>, will.deacon@arm.com,
 LKML <linux-kernel@vger.kernel.org>, ralf@linux-mips.org, salyzyn@android.com,
 paul.burton@mips.com, linux@rasmusvillemoes.dk, 0x7f454c46@gmail.com,
 catalin.marinas@arm.com, pcc@google.com, tglx@linutronix.de,
 sthotton@marvell.com, shuah@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 23, 2019 at 11:43:32AM +0100, Vincenzo Frascino wrote:
> Hi Russell,
> 
> On 8/23/19 11:36 AM, Russell King - ARM Linux admin wrote:
> > Hi,
> > 
> > To everyone on the long Cc list...
> > 
> > What's happening with this?  I was about to merge the patches for 32-bit
> > ARM, which I don't want to do if doing so will cause this regression on
> > 32-bit ARM as well.
> > 
> 
> The regression is sorted as of yesterday, a new patch is going through tip:
> timers/urgent and will be part of the next -rc.
> 
> If you want to merge them there should be nothing blocking.

I don't have access to the tip tree.

I'll wait a kernel release cycle instead.

Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
