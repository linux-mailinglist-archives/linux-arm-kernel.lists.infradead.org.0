Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CF79B7A663
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=65fwW1f0TAwGXgYStQAYXYzOdhxhCAdekHBgxl99/No=; b=qqGvC4sRr7EttZ
	Od/AnYUJRi3WfDFnzram4P2foe2XGqM2DFSfrPzRg6LF2nozfI9NSrfkQT0I8WyO0sTXaBHOSGULS
	TU460jLWJx2Ae9LQ1gmUgiYkpoSb8mcUWAN2heuVYbge8FoVQDbT8zucx3X4oZLpTV0pv8KnQhb5X
	5yyHR2EGivazrOd2gkGlU+Keiy/mVKpLzeRO078UZtkYLYFD5xbV5PjvuTgWkFJ2dzD0TKLnmq+OS
	ok8QWYGgP/rT5r240GFj9PS6YN+qMNOjYmnBzsXXX6t6R0de6vmg9+vyfeFkCzSZed9bQA6j2LkcR
	tjw+dOVT4bBcwJ40FWRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsPtc-0004QI-Vu; Tue, 30 Jul 2019 11:02:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsPtW-0004Pt-DF
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:02:15 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=8Evoy48nmtUEP14ctAQrisi69YEAvFPcmML655E68VU=; b=II2UQgX8QgyPk2rVNFmil7JY1
 uB8ScT1LS9EKcqeuufjFZPGQHBCGq5NDRxZBJBaXqCQ/bj016eTD91oTWLkSHmPkt2E0CxcGMeSDz
 N0AdSJpiaJScXQ2RHpOC6IvlTccsnrPmLDIeRV9p5zbcqo5SCAK6EwczYqHP2xplWOv4qUo3B/G63
 4dCpkKJGFvdkWcv2wNtpJJN3F6hinOlBNxC3vPVeIgvSdvZsqTAbTookueqlGysXz2k8FKBcGmf2w
 7pNNW7qAA8ApAhs/2AiMWi+lKlNabz9p0vFBn+RqJzsalZBwUuJ4yYSR29yC4uI635Pns124FYkGE
 QRyuhmejw==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:38834)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hsPtR-0004nx-SN; Tue, 30 Jul 2019 12:02:10 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hsPtM-00029s-Tn; Tue, 30 Jul 2019 12:02:04 +0100
Date: Tue, 30 Jul 2019 12:02:04 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Chunyan Zhang <zhang.lyra@gmail.com>
Subject: Re: [PATCH] ARM: check stmfd instruction using right shift
Message-ID: <20190730110204.GB1330@shell.armlinux.org.uk>
References: <20190722071122.22434-1-zhang.lyra@gmail.com>
 <20190722071419.22535-1-zhang.lyra@gmail.com>
 <CAAfSe-tPVsMjmu0CoUATGRGevCpgqk999-rpfMuXqZ-V9ft7gg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAAfSe-tPVsMjmu0CoUATGRGevCpgqk999-rpfMuXqZ-V9ft7gg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_040214_453847_C58FD646 
X-CRM114-Status: GOOD (  16.55  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Lvqiang Huang <lvqiang.huang@unisoc.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Jul 30, 2019 at 03:18:31PM +0800, Chunyan Zhang wrote:
> Gentle ping
> 
> probably this patch was missed or entered into spam?

Please submit it to the patch system, thanks.

> 
> On Mon, 22 Jul 2019 at 15:14, Chunyan Zhang <zhang.lyra@gmail.com> wrote:
> >
> > From: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
> >
> > In the commit ef41b5c92498 ("ARM: make kernel oops easier to read"),
> > -               .word   0xe92d0000 >> 10        @ stmfd sp!, {}
> > +               .word   0xe92d0000 >> 11        @ stmfd sp!, {}
> > then the shift need to change to 11.
> >
> > Fixes: ef41b5c92498 ("ARM: make kernel oops easier to read")
> > Signed-off-by: Lvqiang Huang <Lvqiang.Huang@unisoc.com>
> > Signed-off-by: Chunyan Zhang <zhang.lyra@gmail.com>
> > ---
> >  arch/arm/lib/backtrace.S |    2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
> > index 7d7952e..926851b 100644
> > --- a/arch/arm/lib/backtrace.S
> > +++ b/arch/arm/lib/backtrace.S
> > @@ -70,7 +70,7 @@ for_each_frame:       tst     frame, mask             @ Check for address exceptions
> >
> >  1003:          ldr     r2, [sv_pc, #-4]        @ if stmfd sp!, {args} exists,
> >                 ldr     r3, .Ldsi+4             @ adjust saved 'pc' back one
> > -               teq     r3, r2, lsr #10         @ instruction
> > +               teq     r3, r2, lsr #11         @ instruction
> >                 subne   r0, sv_pc, #4           @ allow for mov
> >                 subeq   r0, sv_pc, #8           @ allow for mov + stmia
> >
> > --
> > 1.7.9.5
> >
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
