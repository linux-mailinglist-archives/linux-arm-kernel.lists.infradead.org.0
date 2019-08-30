Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E571A4091
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 31 Aug 2019 00:29:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=swlnTdF65hPeGskxRNSuQ7G+60v7FM4Fi57TiLu6Vio=; b=L8SSEwU8I5yLUo
	vrR/LSsla50u4wT8CLgzqJqyv3DL9JG3xdejZVA5teuvjwFfkblh1iHIJH+y5x6hPKbHdykrQFdrN
	qvdFSjPc9FzJuKn1T+vStmtBxkOgxC2t8Phf9d4MHzcpJHkA0WqUcA8/AfBWnc9gluS0Ff/puwbz/
	jLxm42UlvEqNMU9pVR0vHSHrI4w9OfaMBo/YVVBnv7EP01/3Tf/Am5C8HiDejWHz1meNo+oWVCGM0
	L/YUmQxFsFoR1dJUrBlFEY/4FaVfjgtH2SFKRcAEeaTEIRJFrLuA6qv5U7UOSsSf3CjeTRS7IeFwy
	99zDsA8R7juz1oi4I33g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3pOy-00019X-4V; Fri, 30 Aug 2019 22:29:52 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3pOm-00018g-SJ
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 22:29:42 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=BWWRszBDY8GYUUZj497FcR9Z0dm6vMXF/gAZdr1ItkU=; b=folcv0CYTG/fwfjtFT9od8gVs
 LmEkdhrber88LNPUMfbnmY4rZ5fcd6bEa4DdOxmDoMu8xDExn/Ah5NsTeoI67i87J4KX+zvMgMHIb
 Ws9JXOfrWIwDKAxjHZQtmgeB4RYPXtOCted2vh317YUbPEILBPMVpm3trknP9hAJMv6/Y2wgPA+WP
 wNCmXpqm4dfbnsqB6hRtF87ZAG3KuEF6wLqrmulnjvI4Q/59G99z2HxGzlO9ADkFfPthetXTJumhD
 23Mnjr5oNCzxiwqoWuV2HZnjQQPp2jL64KL9cYbdk5DXvRG6sWjdB3OTqaVm3UT3YlCBvws4YFgZW
 XWmelzPCA==;
Received: from shell.armlinux.org.uk
 ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:39464)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1i3pOJ-00013m-HY; Fri, 30 Aug 2019 23:29:11 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1i3pOE-0000Tw-MP; Fri, 30 Aug 2019 23:29:06 +0100
Date: Fri, 30 Aug 2019 23:29:06 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "Eric W. Biederman" <ebiederm@xmission.com>
Subject: Re: [PATCH] arm: fix page faults in do_alignment
Message-ID: <20190830222906.GH13294@shell.armlinux.org.uk>
References: <1567171877-101949-1-git-send-email-jingxiangfeng@huawei.com>
 <20190830133522.GZ13294@shell.armlinux.org.uk>
 <87d0gmwi73.fsf@x220.int.ebiederm.org>
 <20190830203052.GG13294@shell.armlinux.org.uk>
 <87y2zav01z.fsf@x220.int.ebiederm.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <87y2zav01z.fsf@x220.int.ebiederm.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_152940_911671_0E424ED0 
X-CRM114-Status: GOOD (  26.18  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: kstewart@linuxfoundation.org, gustavo@embeddedor.com,
 gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 Jing Xiangfeng <jingxiangfeng@huawei.com>, linux-mm@kvack.org,
 sakari.ailus@linux.intel.com, bhelgaas@google.com, tglx@linutronix.de,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Aug 30, 2019 at 04:02:48PM -0500, Eric W. Biederman wrote:
> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> 
> > On Fri, Aug 30, 2019 at 02:45:36PM -0500, Eric W. Biederman wrote:
> >> Russell King - ARM Linux admin <linux@armlinux.org.uk> writes:
> >> 
> >> > On Fri, Aug 30, 2019 at 09:31:17PM +0800, Jing Xiangfeng wrote:
> >> >> The function do_alignment can handle misaligned address for user and
> >> >> kernel space. If it is a userspace access, do_alignment may fail on
> >> >> a low-memory situation, because page faults are disabled in
> >> >> probe_kernel_address.
> >> >> 
> >> >> Fix this by using __copy_from_user stead of probe_kernel_address.
> >> >> 
> >> >> Fixes: b255188 ("ARM: fix scheduling while atomic warning in alignment handling code")
> >> >> Signed-off-by: Jing Xiangfeng <jingxiangfeng@huawei.com>
> >> >
> >> > NAK.
> >> >
> >> > The "scheduling while atomic warning in alignment handling code" is
> >> > caused by fixing up the page fault while trying to handle the
> >> > mis-alignment fault generated from an instruction in atomic context.
> >> >
> >> > Your patch re-introduces that bug.
> >> 
> >> And the patch that fixed scheduling while atomic apparently introduced a
> >> regression.  Admittedly a regression that took 6 years to track down but
> >> still.
> >
> > Right, and given the number of years, we are trading one regression for
> > a different regression.  If we revert to the original code where we
> > fix up, we will end up with people complaining about a "new" regression
> > caused by reverting the previous fix.  Follow this policy and we just
> > end up constantly reverting the previous revert.
> >
> > The window is very small - the page in question will have had to have
> > instructions read from it immediately prior to the handler being entered,
> > and would have had to be made "old" before subsequently being unmapped.
> 
> > Rather than excessively complicating the code and making it even more
> > inefficient (as in your patch), we could instead retry executing the
> > instruction when we discover that the page is unavailable, which should
> > cause the page to be paged back in.
> 
> My patch does not introduce any inefficiencies.  It onlys moves the
> check for user_mode up a bit.  My patch did duplicate the code.
> 
> > If the page really is unavailable, the prefetch abort should cause a
> > SEGV to be raised, otherwise the re-execution should replace the page.
> >
> > The danger to that approach is we page it back in, and it gets paged
> > back out before we're able to read the instruction indefinitely.
> 
> I would think either a little code duplication or a function that looks
> at user_mode(regs) and picks the appropriate kind of copy to do would be
> the best way to go.  Because what needs to happen in the two cases for
> reading the instruction are almost completely different.

That is what I mean.  I'd prefer to avoid that with the large chunk of
code.  How about instead adding a local replacement for
probe_kernel_address() that just sorts out the reading, rather than
duplicating all the code to deal with thumb fixup. 

> > However, as it's impossible for me to contact the submitter, anything
> > I do will be poking about in the dark and without any way to validate
> > that it does fix the problem, so I think apart from reviewing of any
> > patches, there's not much I can do.
> 
> I didn't realize your emails to him were bouncing.  That is odd.  Mine
> don't appear to be.

Hmm, so the fact I posted publically in reply to my reply with the MTA
bounce message didn't give you a clue?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
