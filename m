Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D0E4155BEA
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Feb 2020 17:36:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=aUH1d56TBrQLvLR+yx9ISv8wmdLywsk8GkgJEj4WDF8=; b=hqt11WzrzUona7
	vU6yH1dSJ8BSyJJ2NQ9Tp5yOzm3W1+4CW1prZNHOWULbzqs3wcvdHCPj7Xzu/QCF+/j9J/SP/hnu2
	KqLVWLFTXwJbYC6ee/xXuEANQP8+Wsr8CdajU2PZpdDYtGthqVP8160fJFcM6GoY75bYmfW9SwCaa
	asu4u0PXHMRVjPVedP0HnFHbz1I4mYo2MZKI6iXJrVtLLznfgVrBYdCztKLBSK1ugF7Q9FMplPg9i
	w4iFGnooh4PZ94gsIVY+EWzwqI2Xp18X1Y+MrZi6OPVjq10LHmJ10exdAXE9lhXx5T/ZRIrlF144b
	jbyU3A9t1vVcfI5j5FdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j06cU-0001sL-1k; Fri, 07 Feb 2020 16:36:42 +0000
Received: from muru.com ([72.249.23.125])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j06cN-0001rR-8Z
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Feb 2020 16:36:36 +0000
Received: from atomide.com (localhost [127.0.0.1])
 by muru.com (Postfix) with ESMTPS id 349C98047;
 Fri,  7 Feb 2020 16:37:14 +0000 (UTC)
Date: Fri, 7 Feb 2020 08:36:23 -0800
From: Tony Lindgren <tony@atomide.com>
To: Kees Cook <keescook@chromium.org>, Nicolas Pitre <nico@fluxnic.net>,
 Russell King <rmk+kernel@armlinux.org.uk>
Subject: Re: Nokia N900 on 5.4 and 5.5
Message-ID: <20200207163623.GA64767@atomide.com>
References: <79b91017-b52a-8aff-4b9c-913ae655f7bf@wizzup.org>
 <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <185CD173-C13C-4D56-B3DE-9A8D7784963C@goldelico.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200207_083635_349568_CC38C4D9 
X-CRM114-Status: GOOD (  12.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [72.249.23.125 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Ivaylo Dimitrov <ivo.g.dimitrov.75@gmail.com>,
 Aaro Koskinen <aaro.koskinen@iki.fi>,
 "H. Nikolaus Schaller" <hns@goldelico.com>, Merlijn Wajer <merlijn@wizzup.org>,
 linux-omap <linux-omap@vger.kernel.org>, "Arthur D." <spinal.by@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

* H. Nikolaus Schaller <hns@goldelico.com> [200207 15:52]:
> 
> > Am 07.02.2020 um 15:54 schrieb Merlijn Wajer <merlijn@wizzup.org>:
> > 
> > Hi,
> > 
> > I've tried to build 5.4.18 and 5.5.2 for the Nokia N900, using
> > omap2plus_defconfig. Using appended DTB, like so:
> > 
> > $ cat arch/arm/boot/zImage arch/arm/boot/dts/omap3-n900.dtb > zImage.dtb
> > $ mkimage -A arm -O linux -T kernel -C none -a 80008000 -e 80008000 -n
> > zImage -d zImage.dtb uImage
> > 
> > But they both fail to boot for me - the device resets almost instantly:
> > 
> >> data abort
> >> 
> >>    MAYBE you should read doc/README.arm-unaligned-accesses
> >> 
> >> pc : [<8000c878>]          lr : [<80008160>]
> >> sp : 803c46c8  ip : 003a1870     fp : 003a1848
> >> r10: 803ba890  r9 : 00caa42c     r8 : 80000100
> >> r7 : 000007a3  r6 : 803a9878     r5 : 80000100  r4 : 80008000
> >> r3 : 00004e6c  r2 : 00019fa8     r1 : 803a9878  r0 : 00000000
> >> Flags: nZcv  IRQs off  FIQs on  Mode SVC_32
> >> Resetting CPU ...
> >> 
> >> resetting ...
> > 
> > Full log below. I tried the same with "-Os" instead of "-O2" ; to no avail.
> > 
> > Any clue what could be up?
> 
> I can only tell that I have successfully running 5.5.2 on GTA04A5 (dm3730
> but with our own defconfig). This may reduce the number of problem areas
> a little.

Looks like there's a regression in general for appended dtb booting that
was caused by commit 9f671e58159a ("security: Create "kernel hardening"
config area"). With that change we now get STACKPROTECTOR_PER_TASK
selected by default with Kconfig.

Merlijn, care to try to disable STACKPROTECTOR_PER_TASK in your
.config to see if that helps?

Not sure why appended dtb boot now breaks though.. Could be just the
zImage uncompressing over dtb again? Any ideas?

Regards,

Tony

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
