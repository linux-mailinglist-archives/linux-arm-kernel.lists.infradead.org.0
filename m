Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FEE91706D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 18:57:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Qb4apO9a1mLhoxkIaInknL48oCWlsPEA9ZNMmkzbaQ=; b=SsTqyoOU5mm4oH
	9Cg8aCjBF6FjQzEMkFSsBrITVKqAoulebq1NxQGroG6l71ZiuTTkdWqPuvUtjclTqvvjzzJOyFRmk
	EPmtMLrIvWWkTZMYYF2ZFRjHbmnJrben7KhSCY4OGFyoXsElWf7wXJNaByC4Q0JXNGXb8eZrVeMzS
	ZNIJhGX3/yAimbUas7zaaGUWNxHD5cFbz4AfH6Q7kQxnBWZmvSeAM3uclNGqwgmNXHZBJulE9ihGQ
	DYawg+Q/xZlF2iKiqz/+iofilJI3DsNyEec0/RKb+a9G9+2GaU2A1xUoD8AOpg3dJy/fdxXr5gDMr
	HjBsTlm8vY7CUzqTlfsA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j70wS-0003j0-DQ; Wed, 26 Feb 2020 17:57:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j70wH-0003iN-SQ
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 17:57:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=YGj19SSEh4NZS+XJ9SnfJU1bKAnGI63LN3b4wv12M7w=; b=xX38UGP4V16mODnfTy4JyCbqD
 CyLiniAUCMBJcrREDN4d0BZJm4uBv7I3+T1nSr8Hf49JYIgZ1VMbbluO72tjTEd0fRS/LN6SinN1b
 I04pqMPbS1uGvc33mNsQr/dqnG23VM4SZiAaYFLejRuGxw1z5BGV7az0Lk/UwS3yNx+AVdyoQV716
 OlsuzrbP/iTGaIFNerZVT1hep9k0kvOooX6qcsh015Nm+cAdPSebby7EI011MCopu8Kyg6E1OrKlR
 uBY/t7gE8AAGlVpoye9SSV3k0SFDcZ4V9TF8WARnA8ht0b3Uk3fuEY9Pf5mnaxAdwMfdPGbr2rJD9
 6IBqdSSZA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:53118)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1j70w2-0000bu-13; Wed, 26 Feb 2020 17:57:26 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1j70w0-0000AB-3X; Wed, 26 Feb 2020 17:57:24 +0000
Date: Wed, 26 Feb 2020 17:57:24 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Geert Uytterhoeven <geert@linux-m68k.org>
Subject: Re: [PATCH] ARM: boot: Fix ATAGs with appended DTB
Message-ID: <20200226175723.GF25745@shell.armlinux.org.uk>
References: <CGME20200225144815eucas1p1229ceb0d017b46cbbe2409639a7c1f83@eucas1p1.samsung.com>
 <20200225144749.19815-1-geert+renesas@glider.be>
 <e249c123-8d00-4aa3-34b8-f82d52428966@samsung.com>
 <20200226174905.GE25745@shell.armlinux.org.uk>
 <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAMuHMdW1ojYyWXZpzgiy8PrZnR2PQ9n3SEDrQ7hFFUg0j-jegg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_095741_973070_E05845F4 
X-CRM114-Status: GOOD (  16.56  )
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
Cc: Geert Uytterhoeven <geert+renesas@glider.be>, Arnd Bergmann <arnd@arndb.de>,
 Nicolas Pitre <nico@fluxnic.net>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
 Chris Brandt <chris.brandt@renesas.com>,
 Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= <u.kleine-koenig@pengutronix.de>,
 Eric Miao <eric.miao@nvidia.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Feb 26, 2020 at 06:56:06PM +0100, Geert Uytterhoeven wrote:
> Hi Russell,
> 
> On Wed, Feb 26, 2020 at 6:49 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Wed, Feb 26, 2020 at 07:35:14AM +0100, Marek Szyprowski wrote:
> > > On 25.02.2020 15:47, Geert Uytterhoeven wrote:
> > > > At early boot, register r8 may contain an ATAGs or DTB pointer.
> > > > When an appended DTB is found, its address is stored in r8, for
> > > > extraction of the RAM base address later.
> > > >
> > > > However, if r8 contained an ATAGs pointer before, that pointer will be
> > > > lost, and the provided ATAGs is no longer folded into the provided DTB.
> > > >
> > > > Fix this by leaving r8 untouched.
> > > >
> > > > Fixes: 137e522593918be2 ("ARM: 8960/1: boot: Obtain start of physical memory from DTB")
> > > > Reported-by: Marek Szyprowski <m.szyprowski@samsung.com>
> > > > Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> >
> > The original commit hasn't been submitted, so it can be fixed before it
> > hits mainline if you want.  Let me know what you want to do.  Thanks.
> 
> Fixing the original is fine for me, of course.
> Thanks!

Please submit a replacement for 8960/1, thanks.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
