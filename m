Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 383531D366E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 18:26:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2hMzaF9mbTH5BVN1x7OpVwxYl5wROcYZ+uD6KEYite0=; b=eD4H7gGgPfQFF9
	Z0O3rYer9MQmc2TP8YZx4A6R/gyyX4jgh1QFeEIgeIuDN+Teu8lvXWw3kk6kSM1npLxmF/6hdae2u
	5e4eagis+f8pejjKkVv3wWoyhN/zga/KCezXC/cZtC7WBBo5bHB+9yzI7W+gTkmyZYg4s5+p/Yi26
	xVWLMndPSs8hGuePHCidzNbWMpg5DllXHsBlEso6X8pUSgnmKS/PBMEEYSMcJ6s7XYsUjKYZMnmYU
	tGQ/PdKLUjDoTp5LjsEoMvsNkdkw57RdIa7VBVh0R4w/w+1yDbQ9FgSTHY88Sd4VYzjZ6EOsYZMbQ
	lWmv1PWV35sbt24T+q9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZGgN-0000b0-Fh; Thu, 14 May 2020 16:26:03 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZGg6-0000Z5-Vc
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 16:25:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=JPLZxXuF7yodRZCXQ3CE5KPziLgfM5ayWE6A7Api2Yw=; b=FlwveDtae04WSkTVrnUsh/Uz2
 rc+TJuHh3HuX+v4pWvszHH8plZHnisShvsa8yuPOuylYEkV8weNRvI+/A91lVTelbRrfkWFoY6DiZ
 oor/RfX0HFp5tjonY0rRmqA0fViASjaJoULZguSioBF7jT+yHzoFOtRBtxWWAlac0eKPSsgjj4N+s
 nJWWJmCWSuzdRzNOoWgRivuptGuWEPIhPB0RcJIVHSvQzgduoQUbK/nyWpXI/ca4uOz4cTkieTywQ
 j0IoxY5po7/VCqkxtXQ4P8sE6p2MPc1mjspLACxenttU1woKLN8DGr7RfhBnI72XoaGtzy2p4gQrF
 zDFXA639g==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:40240)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jZGfw-0000fU-St; Thu, 14 May 2020 17:25:37 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jZGfv-0000hD-S4; Thu, 14 May 2020 17:25:35 +0100
Date: Thu, 14 May 2020 17:25:35 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Arnd Bergmann <arnd@arndb.de>
Subject: Re: ARM: static kernel in vmalloc space
Message-ID: <20200514162535.GP1551@shell.armlinux.org.uk>
References: <20200503145017.GA5074@afzalpc>
 <CAK8P3a3OC5UO72rTDWi6+XgmExJmkATEjscq8hns8Bng06OpcQ@mail.gmail.com>
 <20200504091018.GA24897@afzalpc>
 <CAK8P3a25sZ9B+AE=EJyJZSU91CkBLLR6p2nixw_=UAbczg3RiQ@mail.gmail.com>
 <20200511142113.GA31707@afzalpc>
 <CAK8P3a0=+aBJLTvHOskTv=tba_s5b5MzWrYG8mxH3iLNy4hfBw@mail.gmail.com>
 <20200512104758.GA12980@afzalpc>
 <CAK8P3a1DQWG1+ab2+vQ2XCAKYxPUjJk5g3W3094j-adDXSQfzQ@mail.gmail.com>
 <20200514111755.GA4997@afzalpc>
 <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAK8P3a2PNZY-9L9+SFDLtrp731ZGo6Nbs-7jY6E2PwWXa0kfKw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_092547_168873_D353F9BB 
X-CRM114-Status: GOOD (  18.15  )
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

On Thu, May 14, 2020 at 02:41:11PM +0200, Arnd Bergmann wrote:
> On Thu, May 14, 2020 at 1:18 PM afzal mohammed <afzal.mohd.ma@gmail.com> wrote:
> > On Tue, May 12, 2020 at 09:49:59PM +0200, Arnd Bergmann wrote:
> >
> > > Any idea which bit you want to try next?
> >
> > My plan has been to next post patches for the static kernel migration
> > to vmalloc space (currently the code is rigid, taking easy route
> > wherever possible & not of high quality) as that feature has an
> > independent existence & adds value by itself.  And then start working
> > on other steps towards VMSPLIT_4G_4G.
> >
> > Now that you mentioned about other things, i will slowly start those
> > as well.
> 
> Sounds good.
> 
> > > Creating a raw_copy_{from,to}_user()
> > > based on get_user_pages()/kmap_atomic()/memcpy() is probably a good
> > > next thing to do. I think it can be done one page at a time with only
> > > checking for
> > > get_fs(), access_ok(), and page permissions, while get_user()/put_user()
> > > need to handle a few more corner cases.
> >
> > Before starting w/ other things, i would like to align on the high
> > level design,
> >
> > My understanding (mostly based on your comments) as follows,
> > (i currently do not have a firm grip over these things, hope to have
> > it once started w/ the implementation)
> >
> > 1. SoC w/ LPAE
> > 2. TTBR1 (top 256MB) for static kernel, modules, io mappings, vmalloc,
> >         kmap, fixmap & vectors
> 
> Right, these kind of go together because pre-LPAE cannot do the
> same TTBR1 split, and they more frequently have conflicting
> static mappings.
> 
> It's clearly possible to do something very similar for older chips
> (v6 or v7 without LPAE, possibly even v5), it just gets harder
> while providing less benefit.

Forget about doing this for anything without a PIPT cache - or you're
going to end up having to flush the data cache each time you enter or
exit the kernel.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
