Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F028F1B4361
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:37:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VFSekR+omXItdASAwRBZ+HOk/F7bw3QcOBXE9E8aAK8=; b=JjBYgFyHJ9Zq6h
	26l5s/xqCqwOobeVBktmpscJ+TTZu77Qev+d9gTMzO8ObcHo+RXBpYF8bmLLQhY47G1e/YBIOSGeY
	h/JzRKVC5zQPLFHNNyp9jSHYqsjLW+PNVg7psjA1s5KSclxli5JaNLcCxU8cdTCPwDXfvkcwEojlQ
	dLbZy8On5UFRPjg3zEDs1ISde6gYChvG8HdPbf+Sd9O8NFI/Ivfovvvg9jlcKQKeZnoGB9h9rZW8p
	yURcIen72fYawlt9C2D/Qa/mmBRkH3EdqsFEDPkjP+FM//uIfwa5d5mHzRASbbghXIr8D040NWiU6
	qHAZpqb+CK1y1L6CgRSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDgh-0002LO-Vv; Wed, 22 Apr 2020 11:37:08 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDgX-0002GG-Bo
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:37:00 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=DChLa/dPBSszzKMIV61f+9s61HKeSO67ObxSI6JlPU8=; b=r3V2XHXqI6RG5O+1BgLr3gSap
 hyx2fsVOKps1Kn2fQjSbmo468UxGjQJ4dawkeVHzd7n7L/8nzG+iCSYFPjFKoV0f63v29Us0zsCjb
 u+BJN0M6ZyRmCMRNyUpvgb/i/xsDx43MWMIhkYljBf+qp2z/QMZsMluPIU3ad/8r5280VCDNCrKTi
 XVLGe7JZ9g7ZsXOqPDdHX+QSahrkWfr2UkXNloROBhvzFgRc4JX5o5WzteVpFqY/atfW/pRhW0JWV
 VILml7ApKHZqKf/Rf6YIthDZRJ+OiBPw6cMzPfDlORcL4HunRPnJF/GdJponAnKmADiJQvTG0nZVK
 vU3uTfqAQ==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:49576)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1jRDgF-0007qA-Ao; Wed, 22 Apr 2020 12:36:39 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1jRDg7-00087J-L4; Wed, 22 Apr 2020 12:36:31 +0100
Date: Wed, 22 Apr 2020 12:36:31 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: alpha_one_x86 <alpha_one_x86@first-world.info>, huziji@marvell.com,
 linux-mmc@vger.kernel.org, ulf.hansson@linaro.org, adrian.hunter@intel.com
Subject: Re: 2 bug repport
Message-ID: <20200422113631.GN25745@shell.armlinux.org.uk>
References: <408ebea1-725d-2f8e-7d26-a2cb4d7754d3@first-world.info>
 <20200422082836.GL25745@shell.armlinux.org.uk>
 <5a67104f-1286-2cb0-d01e-8aa61c9f7e48@first-world.info>
 <20200422111025.GM25745@shell.armlinux.org.uk>
 <50004568-09e5-719b-ec4a-c09882767a6a@first-world.info>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <50004568-09e5-719b-ec4a-c09882767a6a@first-world.info>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200422_043657_403998_3076D6DD 
X-CRM114-Status: GOOD (  27.64  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Adding back those who *need* to be copied.  Please be more careful
with your replies.  As I said, those others are for your benefit,
not for mine, as they are more likely going to be able to help you.

Thanks for confirming that it is indeed a regression with 5.6
kernels.

Over to the Adrian/Ulf/others now...

On Wed, Apr 22, 2020 at 07:15:18AM -0400, alpha_one_x86 wrote:
> Hi,
> 
> On multiple hardware I had tested 4.20, 5.6.6, again 4.20, 5.6.6, again
> 4.20.
> 
> The problem is only with 5.6.6, never with 4.20
> 
> On 2020-04-22 07:10, Russell King - ARM Linux admin wrote:
> > On Wed, Apr 22, 2020 at 07:00:11AM -0400, alpha_one_x86 wrote:
> > > Hi,
> > > 
> > > It's regression because on the kernel 4.20 all is working.
> > PLEASE do not drop the Cc list.  The Cc list is for YOUR benefit.
> > 
> > You can't say that without going back and checking.
> > 
> > SD cards are flash media, and they fail in weird and stupid ways.
> > Flash media itself only has a limited number of write cycles before
> > the memory irrevocerably fails.  SD cards have firmware on them to
> > manage the flash media to perform wear leveling.  Firmware can be
> > buggy and cause problems.  I've had SD cards become completely
> > inaccessible because of a firmware failure.
> > 
> > So, after finding a problem on a later kernel with SD cards, you
> > need to confirm the regression by checking whether the previously
> > working kernel continues to behave correctly (indicating a kernel
> > regression) or whether it behaves the same (indicating a failure of
> > the SD card.)
> > 
> > If you're not willing to do that, I'm afraid we will have to discount
> > your bug report since it doesn't contain the information necessary to
> > make a proper evaluation of what may be going on.
> > 
> > > Cheers,
> > > 
> > > On 2020-04-22 04:28, Russell King - ARM Linux admin wrote:
> > > > On Wed, Apr 22, 2020 at 03:03:57AM -0400, alpha_one_x86 wrote:
> > > > > Hi,
> > > > > 
> > > > > On mcbin platform I have uSD problem, repported but no reply on linux kernel
> > > > > bugzilla, https://bugzilla.kernel.org/show_bug.cgi?id=207083
> > > > > 
> > > > > Any idea what patch try?
> > > > I think that's a question for the MMC people.
> > > > 
> > > > If you go back to your working 4.20 kernel, does the problem go away?
> > > > If so, it sounds like a regression in the MMC subsystem.  If not, I
> > > > wonder if it could be the uSD card going bad.
> > > > 
> > > > However, I suspect the former.  I've seen one instance here where a
> > > > Clearfog GT8k (Armada 8040 based just like the mcbin) running 5.6 with
> > > > the rootfs on eMMC completely lost the ability to talk to the eMMC to
> > > > the point that the machine had to be power cycled to recover it -
> > > > merely rebooting did not.  I don't know the cause - the initial failure
> > > > had vanished from the kernel logs, and because the eMMC was no longer
> > > > accessible, the rsyslog files did not contain the details either.
> > > > I've since setup remote logging, and I'm currently waiting for it to
> > > > happen again.  I couldn't say if _that_ is a regression because I
> > > > haven't been using the GT8k until very recently, and I tend not to use
> > > > eMMC/uSD on the Macchiatobin that runs 24x7.
> > > > 
> > > -- 
> > > alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
> > > Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
> > > IT, OS, technologies, research & development, security and business department
> > > 
> -- 
> alpha_one_x86/BRULE Herman <alpha_one_x86@first-world.info>
> Main developer of Supercopier/Ultracopier/CatchChallenger, Esourcing and server management
> IT, OS, technologies, research & development, security and business department
> 

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 10.2Mbps down 587kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
