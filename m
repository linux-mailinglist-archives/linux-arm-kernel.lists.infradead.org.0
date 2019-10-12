Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 055BED507E
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 12 Oct 2019 16:51:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4l+CazX9oLrk6GWwj0Vdcgusg71EUrLub5C1VkvypPA=; b=fNQc+MNFxnx9f8
	F8517mk44rIPY+UUMCYOXKCRmDCWENhYeOevv5rkqvuOs5Qs4yW0PpLhkUvaPORH4jCPMou2NJ9qq
	+lyxJKr5DQgctsAwNvdwz/oYs5qPA7A7Kzj3h+jYFQmRMKC7EIhuoYFohv/BrrJAv+V/DrMHj+zsu
	/M++dK7lp7RdkMagzT0payawbHP1MT/6JzbOHwuG46nvzy9znKfqrkceRvyZ4PBhJS7P1Qc678ehg
	XK7l3g8Xow/Au6TC/2T2+jgHIH+XHsQplInnFOhkNuu4vEO4fDvHdbvEXvXIUcFZLxCN9h/R4OgMN
	91gOjLW/5hPKdFieSNpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJIjq-0004aS-U1; Sat, 12 Oct 2019 14:51:22 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJIji-0004Zy-0g
 for linux-arm-kernel@lists.infradead.org; Sat, 12 Oct 2019 14:51:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=i7ymtaLygujOhFiwo49zTSZEZCPO8tXMCxgm0pezR2s=; b=hAvg9nPu2TVljuKMUkImPU848
 LYXKSc76ODWTf61OC3gEkLC78aatum3ybVVU8UwTIdPN/0OoN4AHS8myPuk9IlyoA0ONtbIuLffYH
 TKAxmS9pHWSonD4ibSHmHg5zTTw+M89y+HMnIm0qhXxp5rskKWXVwQvGArKNNOR+CTSbXXcUdqNjO
 Sm8ZZ7M4WWPRwpF6Zd4qm/wdoAFZHbzcbYVZmuZL86O9h7HWqTgO6Xcs5Xz6Ifhqmp/i1aJQa5TMe
 eKaP264pFtnQp0/v0Gy7lZgUdO4HCspF2l8dXCYIpCtaygpSirK57vtDQodvFGHRiq3RhEwFCDKfY
 qpmqKj2/A==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:54848)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iJIjS-0003Hc-3D; Sat, 12 Oct 2019 15:50:58 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iJIjP-0002DS-Bo; Sat, 12 Oct 2019 15:50:55 +0100
Date: Sat, 12 Oct 2019 15:50:55 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH 3/3] arm64: configs: unset CPU_BIG_ENDIAN
Message-ID: <20191012145055.GO25745@shell.armlinux.org.uk>
References: <20190926193030.5843-1-anders.roxell@linaro.org>
 <20190926193030.5843-5-anders.roxell@linaro.org>
 <bf5db3a5-96da-752c-49ea-d0de899882d5@huawei.com>
 <CADYN=9LB9RHgRkQj=HcKDz1x9jqmT464Kseh2wZU5VvcLit+bQ@mail.gmail.com>
 <d978673e-cbd1-5ab5-b2a4-cdb407d0f98c@huawei.com>
 <CAK8P3a0kBz1-i-3miCo1vMuoM39ivXa3oxOE9VnCqDO-nfNOxw@mail.gmail.com>
 <20191011102747.lpbaur2e4nqyf7sw@willie-the-truck>
 <20191011103342.GL25745@shell.armlinux.org.uk>
 <CAK8P3a1ADTc0woWWNjpeqYEtgb=snj264P4QNWOj7ZRMDv8WNg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a1ADTc0woWWNjpeqYEtgb=snj264P4QNWOj7ZRMDv8WNg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191012_075114_059013_E14740E1 
X-CRM114-Status: GOOD (  11.38  )
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
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anders Roxell <anders.roxell@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, John Garry <john.garry@huawei.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Chunrong Guo <chunrong.guo@nxp.com>, Olof Johansson <olof@lixom.net>,
 Will Deacon <will@kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, Oct 12, 2019 at 12:47:45AM +0200, Arnd Bergmann wrote:
> On Fri, Oct 11, 2019 at 12:33 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > 32-bit ARM experience is that telco class users really like big
> > endian.
> 
> Right, basically anyone with a large code base migrated over from a
> big-endian MIPS or PowerPC legacy that found it cheaper to change
> the rest of the world than to fix their own code.

I think you need to step off your soap box!  Big endian isn't going
away, and it likely has nothing to do with code bases.  Just look at
networking and telco protocols.  Everything in that world tends to
be big endian.  BE is what is understood in that world, and there's
little we can do to change it.

Demanding that they switch to LE is tantamount to you demanding that
their entire world change - it ain't going to happen.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
