Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 15599170692
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:50:01 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y3oiTjfxeoGrWLS6ARLdfFxKklYg4kUNEE2+KEuwaww=; b=dsW4Lf/wQIuN8Y
	BlI9YujtEgme9s88ywPK+GiwPXJTK7W/OpBZHaawqbI3qi2VoiXUHCYhUDJ3RRapCDZQ6sRFJuwo2
	1OF4l9pxZbUqiNfxsgkEWjPO8BPkvKYV8oMpEH/L8XWVPSxo0UdLzl4JdZF8j9NnOhT666/MA87S1
	pdsSbcFLL41K3av3ifDpHxSvyIhMJYC2SEkcqA4iB2JHW6YauciJDLuwYkcnpT4MVhm/xQE97QCiw
	XG8M9leAlJg2VqUOuRl+2ZAoSOx3nV/QCEarBIiPGCJdFfkhXUVATI6bVjNIY84yFlc/gK/RPtGkw
	Uk5RHYyW06M8OJwTeN2A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70oo-0008Uv-Pb; Wed, 26 Feb 2020 17:49:58 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70oV-0008M6-DR
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:49:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=x4Vj5piDPv46jmto0S7kmzvMB3oeWgg0MLt8q+7J4pg=; b=X6G/6ilIcCd1TgGGgK+EjpM9H
 YeSpKBMXuBd0P6L1c1In2MmwfFSlk+y3/LR9g4MWSKAtjqupNwvexTcrfOa2i7G4KOZFg+LqFa7mL
 Uyb7HqBUxvXggFxapouOssHYL+sac+84WVWKFEZNBCB3E7GTDP2FP5rZzkvrE2TvSQPHahtsZCOyz
 /93Wf6cSUY/ScvGy4ad5pg5ZnqX12cPJy858sASWPVsPqWqVZDWWtVozIxc33kYefFs9QsSR896Hz
 p/FGW7P/75xIZM5YMNFNDGNVxgich89QGMaLlXdZxt9PWMwhh9M3VIM2o2jvNnJC8DRj7uIz1Ts/m
 4dfpdcGJA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53116)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j70o4-0000ZM-Bz; Wed, 26 Feb 2020 17:49:12 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j70nx-0000A1-E1; Wed, 26 Feb 2020 17:49:05 +0000
Date: Wed, 26 Feb 2020 17:49:05 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Marek Szyprowski <m.szyprowski@samsung.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
Message-ID: <20200226174905.GE25745@shell.armlinux.org.uk>
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_094939_476399_5877F37A 
X-CRM114-Status: GOOD (  12.70  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
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
Cc: Arnd Bergmann <arnd@arndb.de>, Nicolas Pitre <nico@fluxnic.net>,
 linux-kernel@vger.kernel.org,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> Hi Geert,
> 
> On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> > At early boot, register r8 may contain an ATAGs or DTB pointer.
> > When an appended DTB is found, its address is stored in r8, for
> > extraction of the RAM base address later.
> >
> > However, if r8 contained an ATAGs pointer before, that pointer will be
> > lost, and the provided ATAGs is no longer folded into the provided DTB.
> >
> > Fix this by leaving r8 untouched.
> >
> > Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>

The original commit hasn't been submitted, so it can be fixed before it
hits mainline if you want.  Let me know what you want to do.  Thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
