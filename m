Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C9F375AC8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:33:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Yms/ZbTtPvtGkMENy1zO+j7fn+M1PvG/HetoYk3Udz4=; b=ONSd3h0vs9F83U
	OUyv/SxXMxXe7ytcMWTb30B4UKMZHe30dDyh0PNgwcgjBKOd+jbYOScQKqXtG6j6HXz7JWy8qlhAE
	rpVvk2VEBUU/oP+pX8qeGQnVIyEaCR7ZxyQ8Wa0ZyR0mFZat8TRdLLv5HT64w7kIvDhFvnQU3okOp
	e3U2+N8v1138+9bBtp8aB9WebWBrLmlzvlYFCUeDzSvWd+NI2EHn9Awxw2Z7zF9a90wAlZebQ9eOd
	t4Vci/FmbJo+SgSFuv/hM3EcDhtRtBkqub0hINqemFqaD900jEB+dqVZQSCtrgQ7zUqANwJhsF8Cy
	9SIvlYc7U5J/Id9XwrWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmIY-0007cG-MI; Thu, 25 Jul 2019 22:33:18 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmIK-0007bo-7S
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 22:33:05 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=jssmfKZvvecRupRISlMgLXb+1mp99rJbmBQCtx9m1Y4=; b=JbPcWjQiZIeGbgUt8dvIirT/R
 APbfD5i7kBy+LUZztNOZWOzad3p22qKiLN4wicyDFoXmBFlgqcDQ7WDQt1qQU+ezehZvzWOtRR6gh
 89I3k0jiHzWmqNLOT/unjyGwjQPeZbIaQht9b7Bto+GZyIX5X7Y95Cuk2N2D3sH8BoA8wfGKVFhj2
 S03cfMTz8f01Q3z5TNubu0dimWllLwLPn7V9cJa8krxgbWiPpHE/hum7IpLToqQOCWQpt5mqqsZhw
 JU3W8Yxx9XPwm2DSunA3rxodmZk31ibQOQ6AJCpoaEvc4ASo2dnO+YL3OdEf2Lcr5L06Y7SbWlY4p
 2ED5bl16A==;
Received: from shell.armlinux.org.uk
 ([2001:4d48:ad52:3201:5054:ff:fe00:4ec]:37158)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hqmI7-0002i9-LP; Thu, 25 Jul 2019 23:32:51 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hqmI5-000649-1S; Thu, 25 Jul 2019 23:32:49 +0100
Date: Thu, 25 Jul 2019 23:32:49 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190725223248.GO1330@shell.armlinux.org.uk>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
 <20190720123023.GA1330@shell.armlinux.org.uk>
 <20190725213754.GA29898@mam-gdavis-lt>
 <20190725215540.GM1330@shell.armlinux.org.uk>
 <20190725222401.GB29898@mam-gdavis-lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725222401.GB29898@mam-gdavis-lt>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_153304_270563_65A6A8E0 
X-CRM114-Status: GOOD (  22.27  )
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
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Allison Randal <allison@lohutok.net>, open list <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 "moderated list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jul 25, 2019 at 06:24:01PM -0400, George G. Davis wrote:
> Hello Russell,
> 
> On Thu, Jul 25, 2019 at 10:55:40PM +0100, Russell King - ARM Linux admin wrote:
> > On Thu, Jul 25, 2019 at 05:37:54PM -0400, George G. Davis wrote:
> > > Hello Russell,
> > > 
> > > Thanks for your prompt reply!
> > > 
> > > On Sat, Jul 20, 2019 at 01:30:23PM +0100, Russell King - ARM Linux admin wrote:
> > > > On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> > > > > When an unhandled data or prefetch abort occurs, the die() string
> > > > > is empty resulting in backtrace messages similar to the following:
> > > > > 
> > > > > 	Internal error: : 1 [#1] PREEMPT SMP ARM
> > > > > 
> > > > > Replace the null string with the name of the abort handler in order
> > > > > to provide more meaningful hints as to the cause of the fault.
> > > > 
> > > > NAK.
> > > > 
> > > > We already print the cause of the abort earlier in the dump, and we've
> > > > also added a "cut here" marker to help people include all the necessary
> > > > information when reporting a problem.
> > > 
> > > For what it's worth, I often receive crash dumps which lack the pr_alert
> > > messages and only include the pr_emerg messages which this change would at
> > > least provide extra hints, since the "Internal error" as at EMERG level
> > > wereas the initial messages are only at ALERT level. It's subtle but for
> > > cases where the end user has set loglevel such that they only see EMERG
> > > messages, the change is helpful, to me at least.
> > > 
> > > > It's unfortunate that we have the additional colon in the oops dump,
> > > 
> > > Agreed, it's rather unfortunate that the string is NULL in these cases.
> > > 
> > > > but repeating the information that we've printed on one of the previous
> > > > two lines is really not necessary.
> > > 
> > > It depends on the loglevel the user has set. So perhaps it's not such a
> > > bad thing to repeat the information?
> > 
> > Or maybe we should arrange for consistent usage of the log levels?
> 
> Unfortunately, some of the users that I work with have very specific limits
> and requirements for kernel error message logging which are driven by
> performance and/or storage limitations. So it's not always possible to "arrange
> for consistent usage of the log levels" with some users. Meanwhile, these
> messages do show up in logs without the pre-able headers, lacking the string
> which is already available. It's hardly a big deal to re-use the same string,
> especially for the !user_mode(regs) case, where the kernel will oops at
> EMERG loglevel, leaving the NULL string as the reason. I can assure you that
> I've tried to convince these users to change the loglevel but they have their
> reasons for keeping it as they do and I'm unable to convince them otherwise.

Sorry, but I really don't buy this.

By your argument, we should get rid of the pre-amble headers because
they're "not useful" in your eyes...

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
