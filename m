Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C0951D41C2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 May 2020 01:40:41 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YBOdzKhhBkJB4AFeYcU+eEYWSSn0JeRZxOVCe1FNLPE=; b=qOt9hwndnnjZ+X
	P4cHQjcAlnrDn3iG8PyVkiXh1gB3bkhoHn7NgWE3XQZepFwmRQHt5MucwLFFzGMQn4PIQ9crfjtw6
	sGFBFSemwz5Zysm6sebUffLesnMPPmBLH0hzZX/CJqEjOl2En6v0uXNnPceHuTq1S6Qh5yRH+LWia
	FJTQ2aJ3sP9qHqP5wP+VUDQbK833xd5MZbIUhUn8EjXplXvITuTDaT9YhdNe52rZ7oj70JYa68pcV
	q35njIgXa8bOxD6QZ5FrVdCi446CU32zUYH28DgaDZcr2r5+Hgtf/KQDR95YbfGYtk1iYyVC+iqVr
	cfsRNZJU574oJH4pGkBQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZNSp-0003Xc-FT; Thu, 14 May 2020 23:40:31 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZNSf-0003Wj-Sy
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 23:40:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=w6BkmSCK+9PvyslXlTzZk3UIk7P2/MFM4deljPFam9A=; b=NB7CejObDlLA77BJZUE81lycY
 MeDeTt5CYKPIKdhx9O50BLP04pUP9vAZJFhY/TWIj9EWXUt1odSpUbJPGCye+BD/5Ps/yfCG+LR6W
 7sU725RS2Rw5rnS9SCCeA6LPtl6bJ0hl2FM9oxM+9ZB9GHrpNYtUFgvZax6TEVCZoRkEbJtW+BKhI
 mOKX7L8AqEQp3ULi3r3Japa6hJYqtoCsNaPCe5eew+wkv5h1eF1SL1TvHCP03k3CF7U5559kiHGjQ
 1O1O7A/oUW98eQkLHRFGYZUUxyfoIDIehKaJDQthWBXknuJEgaEzj0W8MzD19UWwr1GpBhet4es3k
 wtnkXT9mA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:60542)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jZNSZ-00026B-TD; Fri, 15 May 2020 00:40:16 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jZNSY-0000z1-21; Fri, 15 May 2020 00:40:14 +0100
Date: Fri, 15 May 2020 00:40:14 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200514234013.GQ1551@shell.armlinux.org.uk>
References: <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
 <20200514162535.GP1551@shell.armlinux.org.uk>
 <CAK8P3a2KR+O5Ua5hsNgzLQV5-V1pat6JH_WM10Es-oUhXO2OgA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2KR+O5Ua5hsNgzLQV5-V1pat6JH_WM10Es-oUhXO2OgA@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_164021_934946_5AED799C 
X-CRM114-Status: GOOD (  14.50  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: afzal mohammed <afzal.mohd.ma@gmail.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 14, 2020 at 11:12:01PM +0200, Arnd Bergmann wrote:
> On Thu, May 14, 2020 at 6:25 PM Russell King - ARM Linux admin
> <linux@armlinux.org.uk> wrote:
> > On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> > > On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> 
> > > It's clearly possible to do something very similar for older chips
> > > (v6 or v7 without LPAE, possibly even v5), it just gets harder
> > > while providing less benefit.
> >
> > Forget about doing this for anything without a PIPT cache - or you're
> > going to end up having to flush the data cache each time you enter or
> > exit the kernel.
> 
> Right, let's forget I said anything about v5 or earlier ;-)
> 
> I expected the non-aliasing VIPT caches to work the same as PIPT, can
> you clarify if there is something to be aware of for those? I see that some
> ARMv8 chips and most ARMv6 chips (not OMAP2 and Realview) are
> of that kind, and at we clearly don't want to break running on ARMv8 at
> least.

There are some aliasing VIPT implementations on ARMv6, but I don't
remember how common.

> Anyway my point was that it's best to only do it for LPAE anyway, everything
> else being a distraction, as the only non-LPAE SoCs I could find with
> support for over 2GB are some of the higher-end i.MX6 versions and the
> original highbank.

Yep.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
