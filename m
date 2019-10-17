Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F73DB616
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 20:25:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=THFi6FVo8gwKGigFEy/InxIwTdfsCNYa+4oMW7WOVVQ=; b=k/MDjDw9orKliU
	BGTyw1NJYDZQq2HELfEzOjc53wW28+6tuPUvj/fxGZmHmAZAm4D7930kTbcDFtbE5pT+oZxRrbvvx
	jPsfUBx4sy0+ggWsm+N6CjF66te2l0ruRazMvF/a5R2eBR4WD64kY2OhrGH24xkP9PAHFzYoqrGpF
	xEyrx72koKn/FN5/Gx1EAwlk6e9Izav/kv2ZRuN2klSYLF/ifghYoXFXydZNCgDMdJGFG2i/5LwwJ
	RsZlfWPg7dYhwl/9891T7YgERxVt81gbZqYhE9PPkPanAZjqlYf/sud44aQ2rxKsc/31YtC96KcVH
	c3t/D6jrX22CgIVhYpwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLAT6-0000jy-4K; Thu, 17 Oct 2019 18:25:48 +0000
Received: from vps0.lunn.ch ([185.16.172.187])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLASr-0000iL-RX; Thu, 17 Oct 2019 18:25:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
 s=20171124; h=In-Reply-To:Content-Type:MIME-Version:References:Message-ID:
 Subject:Cc:To:From:Date:Sender:Reply-To:Content-Transfer-Encoding:Content-ID:
 Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
 :Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:List-Subscribe:
 List-Post:List-Owner:List-Archive;
 bh=NzDPVs1BOLZ/9v1I/jx6wbo7cilX1Fk11KMmOCph3h8=; b=jXr3BphEGakjeTyjFBpCWWwPC4
 WIq5J7LW+vcv1COSR7pPUOKnTQ7O5v60mNt1v51TBSvUenxJ3b4EnuQgJbMeFoVu1/ZTcElwV/+jw
 lIPd4gAf89BfpZDaNKCKIcXtr/kh1gyq7a5WCoHlqdYPHfFoaczrFqRCvuGtDTXcA0zU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.92.2)
 (envelope-from <andrew@lunn.ch>)
 id 1iLASf-0005v4-8D; Thu, 17 Oct 2019 20:25:21 +0200
Date: Thu, 17 Oct 2019 20:25:21 +0200
From: Andrew Lunn <andrew@lunn.ch>
To: Stefan Wahren <wahrenst@gmx.net>
Subject: Re: lan78xx and phy_state_machine
Message-ID: <20191017182521.GU17013@lunn.ch>
References: <20191014140604.iddhmg5ckqhzlbkw@beryllium.lan>
 <20191015005327.GJ19861@lunn.ch>
 <20191015171653.ejgfegw3hkef3mbo@beryllium.lan>
 <20191016142501.2c76q7kkfmfcnqns@beryllium.lan>
 <20191016155107.GH17013@lunn.ch>
 <20191017065230.krcrrlmedzi6tj3r@beryllium.lan>
 <6f445327-a2bc-fa75-a70a-c117f2205ecd@gmx.net>
 <20191017174133.e4uhsp77zod5vbef@beryllium.lan>
 <388beb72-c7e6-745a-ad39-cfbde201f373@gmx.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <388beb72-c7e6-745a-ad39-cfbde201f373@gmx.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_112533_893130_91CB5BA2 
X-CRM114-Status: GOOD (  14.21  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [185.16.172.187 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Woojung Huh <woojung.huh@microchip.com>, Daniel Wagner <dwagner@suse.de>,
 netdev@vger.kernel.org, UNGLinuxDriver@microchip.com,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 07:52:32PM +0200, Stefan Wahren wrote:
> Hi Daniel,
> 
> Am 17.10.19 um 19:41 schrieb Daniel Wagner:
> > Hi Stefan,
> >
> > On Thu, Oct 17, 2019 at 07:05:32PM +0200, Stefan Wahren wrote:
> >> Am 17.10.19 um 08:52 schrieb Daniel Wagner:
> >>> On Wed, Oct 16, 2019 at 05:51:07PM +0200, Andrew Lunn wrote:
> >>>> Please could you give this a go. It is totally untested, not even
> >>>> compile tested...
> >>> Sure. The system boots but ther is one splat:
> >>>
> >> this is a known issues since 4.20 [1], [2]. So not related to the crash.
> > Oh, I see.
> >
> >> Unfortunately, you didn't wrote which kernel version works for you
> >> (except of this splat). Only 5.3 or 5.4-rc3 too?
> > With v5.2.20 I was able to boot the system. But after this discussion
> > I would say that was just luck. The race seems to exist for longer and
> > only with my 'special' config I am able to reproduce it.
> okay, let me rephrase my question. You said that 5.4-rc3 didn't even
> boot in your setup. After applying Andrew's patch, does it boot or is it
> a different issue?

Hi Stefan

I would say i fixed a real issue with my patch. I will submit it to
David for stable. The problem has come to light because Danial is
using the kernel ipconfig and NFS root. That makes the race condition
hit every time. But the issue could happen under other conditions as
well.

    Andrew

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
