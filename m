Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E02AFAE95
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 11:32:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l9twzIWMs1GBvUpffRPjmzlfkLRnZ4ZGEE2SxBHEY8Q=; b=NenDjtpf50Q+en
	yoyoXQ1WJ5MRjR2uGSc1htMyEnJ8pPsThjxWdjtUDQqZzlgCU9869YJmlb/dxUsu7B8xaoW+Aes6O
	TPdOuhDJkrNGKZ3RCavsEoVMYkUIeTne1MjLCTf9vWTnsaex1xub50NfSssI/7q2fVHCznRO5NulN
	+6xS56ot+kozXviJzONVaR3LYdlOdvh6nyXp7PpZGaYlI9l+q6+KeeFxhMZ3GJo7GKpBtDdxCMAlT
	BHsSzmFQ5/1hk8Kg9VWEWUpQBCY47qGl6KFqgv3+mNVdySzDEEU0Jd80ll5VUZ28ZhOfLUXD0fdq8
	72x3e8TnfTJl5nQ+bOuQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUpwi-0000Fl-J2; Wed, 13 Nov 2019 10:32:20 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUpwZ-0000Ew-QF
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 10:32:13 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=6kTYcY6cpyy5llPwJ7N/vU69PHHlS2avthqvOc/6Zi8=; b=AIBnTVIWDXTQwFEx88OnyedhR
 IT7vFNnd6U5b0NBNkjKbK1TYzlbPBJP2sjqTfcD/njKYUoZ81kAbrA1r9D5Wmfu4B29WijtJb/e01
 i+JyhnAF0mH04TbKC/u+v+ZOLBOn+WllY8roxOFz+CDZlsiFKUGOyVEfoWJvRhwHrAeqSa3A+OIov
 lM7uIBp5CO/1FVyflkFTnK82XyjlrWf16yYbTCD4hMHdnXRl4/kaeYpsYGI/SqywT00le0QeURH9e
 PP6AUgHP0CFMRos13UMF9Rg56kVoh1zgOBUlqHUxo1ryUMJV6p8iPQadNDJfNCzEFRir7zHPkpR+Y
 BXMoMGHWA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:34912)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1iUpwJ-0003We-59; Wed, 13 Nov 2019 10:31:55 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1iUpwF-0002NO-2l; Wed, 13 Nov 2019 10:31:51 +0000
Date: Wed, 13 Nov 2019 10:31:51 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v2] buffer: Fix I/O error due to ARM read-after-read hazard
Message-ID: <20191113103150.GL25745@shell.armlinux.org.uk>
References: <20191112130244.16630-1-vincent.whitchurch@axis.com>
 <20191112160855.GA22025@arrakis.emea.arm.com>
 <20191112180034.GB19889@willie-the-truck>
 <20191112182249.GB22025@arrakis.emea.arm.com>
 <CAHk-=wg4vi27mnMVgZ-rzcEdDAjTXrY1Jyz3+=5STcY0bw4-jQ@mail.gmail.com>
 <20191113102357.GA25875@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191113102357.GA25875@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_023212_011361_485CDDFB 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2001:4d48:ad52:3201:214:fdff:fe10:1be6 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Jens Axboe <axboe@kernel.dk>, Richard Earnshaw <Richard.Earnshaw@arm.com>,
 Vincent Whitchurch <rabinv@axis.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Vincent Whitchurch <vincent.whitchurch@axis.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Nov 13, 2019 at 10:23:58AM +0000, Will Deacon wrote:
> On Tue, Nov 12, 2019 at 10:39:01AM -0800, Linus Torvalds wrote:
> > On Tue, Nov 12, 2019 at 10:22 AM Catalin Marinas
> > <catalin.marinas@arm.com> wrote:
> > >
> > > OK, so this includes changing test_bit() to perform a READ_ONCE.
> > 
> > That's not going to happen.
> 
> Ok, I'll stick my neck out here, but if test_bit() is being used to read
> a bitmap that is being concurrently modified (e.g. by set_bit() which boils
> down to atomic_long_or()), then why isn't READ_ONCE() required? Right now,
> test_bit takes a 'const volatile unsigned long *addr' argument, so I don't
> see that you'll get a change in codegen except on alpha and, with this
> erratum, arm32.

I'm not entirely clear what you're suggesting, so I'll just pick the
scenario that I think you're talking about - but I'm not sure it's the
one you're intending.

Using test_bit() in one thread and set_bit() on the same bit in another
thread without locking is going to be racy by definition.  It's entirely
possible for:

	Thread 1			Thread 2
	bit = test_bit(...);
					set_bit(...);
	/* use bit */

and here, bit == 0 but the bit has been set by thread 2.  Use of the
result from test_bit() is inherently a non-atomic operation.

This is why we have test_and_set_bit() and friends that atomically test
that a bit is clear before setting it.  Where this is especially
important is for some filesystems, as they use test_and_xxx_bit() to
manage their allocation bitmaps.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
