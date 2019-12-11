Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B3D11BDC0
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 21:17:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Message-ID:
	Subject:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=bB9nC0vjRI4U9lwEFgkvnHCHL8ncHgrpB5oCps2a0oM=; b=bU8fRuZQYMCmvp
	OJbDTRr4BXrQc9n+N7RNaxbozmtjn5oRi0kKCzFhywnHDa509jLpfRZwqcInftJC0u449qTSQ2wOZ
	xy7BnZos+W8bW/61+DrN4lX2EqEihqLgLQDCzAI4CsP9UL48AOQqcj1xW4jgdpxRYPUKHHzUp64/B
	r+PD0H1gR+5LwjrI2eH/WPFFKgQh/Gk0kOGeFVF7yCWv/Pqf0bq2DeIvkaXe+ogtBAZHO8UYV2QHX
	W39NXvyR3FYG2XvBmeFhOGUn/Kq3GvlXC48+QDv+C3FcSdnBwEehDAmDG8Q4PAYJIIvNN++iF7v/N
	4JndND1p1T3o1HCY5h1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if8QS-00039E-Ek; Wed, 11 Dec 2019 20:17:36 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if8QK-00038f-IC
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 20:17:29 +0000
Received: from localhost (mobile-166-170-223-177.mycingular.net
 [166.170.223.177])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E6BBF20836;
 Wed, 11 Dec 2019 20:17:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576095447;
 bh=4r2Iy5r3yltzkOi+Ue/uCbrEJloSfsHyNrQQPZ6a91M=;
 h=Date:From:To:Cc:Subject:In-Reply-To:From;
 b=K4rsURO1d1nG/9CUOU21PXHxDAlfjKTIYvivgtNsYl2RHhWnxioV5ZWBR5AvTs0VK
 ouL+9ULhlT2NOagYYFpOiUEp/E5LJNw/znAZJQl9HBw5tUbqd5CwjrZ8AfaYQk25T8
 Zm3bYJLHCtPdebAetY0QRpkGCgDR477M8hji3lBA=
Date: Wed, 11 Dec 2019 14:17:25 -0600
From: Bjorn Helgaas <helgaas@kernel.org>
To: Andre Przywara <andre.przywara@arm.com>
Subject: Re: [PATCH] pcie: Add quirk for the Arm Neoverse N1SDP platform
Message-ID: <20191211201725.GA30513@google.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191211110049.54a2d6f3@donnerap.cambridge.arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_121728_642889_8E373716 
X-CRM114-Status: GOOD (  26.43  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid 0.0 FAKE_REPLY_C           No description available.
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 linux-acpi@vger.kernel.org, linux-pci@vger.kernel.org,
 Andrew Murray <andrew.murray@arm.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Len Brown <lenb@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Dec 11, 2019 at 11:00:49AM +0000, Andre Przywara wrote:
> On Tue, 10 Dec 2019 08:41:15 -0600
> Bjorn Helgaas <helgaas@kernel.org> wrote:
> > On Mon, Dec 09, 2019 at 04:06:38PM +0000, Andre Przywara wrote:
> > > From: Deepak Pandey <Deepak.Pandey@arm.com>
> > > 
> > > The Arm N1SDP SoC suffers from some PCIe integration issues, most
> > > prominently config space accesses to not existing BDFs being answered
> > > with a bus abort, resulting in an SError.  
> > 
> > Can we tease this apart a little more?  Linux doesn't program all the
> > bits that control error signaling, so even on hardware that works
> > perfectly, much of this behavior is determined by what firmware did.
> > I wonder if Linux could be more careful about this.
> > 
> > "Bus abort" is not a term used in PCIe.
> 
> Yes, sorry, that was my sloppy term, also aiming more at the CPU
> side of the bus, between the cores and the RC.
>
> >  IIUC, a config read to a
> > device that doesn't exist should terminate with an Unsupported Request
> > completion, e.g., see the implementation note in PCIe r5.0 sec 2.3.1.
> 
> Yes, that's what Lorenzo mentioned as well.
> 
> > The UR should be an uncorrectable non-fatal error (Table 6-5), and
> > Figures 6-2 and 6-3 show how it should be handled and when it should
> > be signaled as a system error.  In case you don't have a copy of the
> > spec, I extracted those two figures and put them at [1].
> 
> Thanks for that.
> So in the last few months we tossed several ideas around how to
> work-around this without kernel intervention, all of them turned out
> to be not working. There are indeed registers in the RC that
> influence error reporting to the CPU side, but even if we could
> suppress (or catch) the SError, we can't recover and fixup the read
> transaction to the CPU. Even Lorenzo gave up on this ;-) As far as I
> understood this, there are gates missing which are supposed to
> translate this specific UR into a valid "all-1s" response.

But the commit log says firmware scanned the bus (catching the
SErrors).  Shouldn't Linux be able to catch them the same way?

The "all-1s" response directly from hardware is typical of most
platforms, but I don't think it's strictly required by the PCIe spec
and I don't think it's absolutely essential even to Linux.  If you can
catch the SErrors, isn't there a way for software to fabricate that
all-1s data and continue after the read?

> > Even ECAM compliance is not really minor -- if this controller were
> > fully compliant with the spec, you would need ZERO Linux changes to
> > support it.  Every quirk like this means additional maintenance
> > burden, and it's not just a one-time thing.  It means old kernels that
> > *should* "just work" on your system will not work unless somebody
> > backports the quirk.
> 
> I am well aware of that, and we had quite some discussions
> internally, with quite some opposition.  ...

The main point is that *future* silicon should be designed to avoid
this issue.  I hope at least that part was not controversial.

If we want to take advantage of the generic PCI code supplied by
Linux, we have to expect that the hardware will play by the rules of
PCI.

Bjorn

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
