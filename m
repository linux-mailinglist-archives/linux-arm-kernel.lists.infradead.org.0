Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5836175B27
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 01:15:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ui0EJ9XloGppFBdpbMoY3n+DrrJ6AnfiGb5x3c9iizY=; b=m4IjBwV+4s6q9M
	v+JOx9fsR0A8exAZe5a7VoKTq8K0A++qIxvNxK6/hkpsKvV/wLRj5aDa70kMdWn2TyN4FhCpYhJUC
	1usrPqL3EhL1MDy6g5dCfKW5cvDJWqOVq82gqMCAfTIFZ9Tu9580/Rz11qjgIXFCoc1lnqiXyg5V2
	PUp8wBwkVlzRRVp+khSEfzVsh2Jg9A9vB4Q0WmFREsh+OjHzESNNRwORLthRCmPctZQpv2VUGRMwT
	RzyoUu/SqbM1u5COB4aEO5A8oSMhRZyz/TxRaSZvRsLd08M2EiMr4wDyURyTf/n0+3sb1owNDQXNC
	3dyHkVaS88Ur0VtNV/cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqmxf-0001iA-Qi; Thu, 25 Jul 2019 23:15:47 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqmxP-0001hb-Cu
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 23:15:32 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hqmxI-0004Gl-Hn from George_Davis@mentor.com ;
 Thu, 25 Jul 2019 16:15:24 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Thu, 25 Jul
 2019 16:15:22 -0700
Date: Thu, 25 Jul 2019 19:15:21 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190725231520.GC29898@mam-gdavis-lt>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
 <20190720123023.GA1330@shell.armlinux.org.uk>
 <20190725213754.GA29898@mam-gdavis-lt>
 <20190725215540.GM1330@shell.armlinux.org.uk>
 <20190725222401.GB29898@mam-gdavis-lt>
 <20190725223248.GO1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725223248.GO1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-08.mgc.mentorg.com (147.34.90.208) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_161531_440283_84E55FEC 
X-CRM114-Status: GOOD (  28.92  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [192.94.38.131 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Florian Fainelli <f.fainelli@gmail.com>,
 Allison Randal <allison@lohutok.net>, open list <linux-kernel@vger.kernel.org>,
 "Eric W. Biederman" <ebiederm@xmission.com>,
 Thomas Gleixner <tglx@linutronix.de>, "moderated
 list:ARM PORT" <linux-arm-kernel@lists.infradead.org>,
 Souptick Joarder <jrdr.linux@gmail.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hello Russell,

On Thu, Jul 25, 2019 at 11:32:49PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jul 25, 2019 at 06:24:01PM -0400, George G. Davis wrote:
> > Hello Russell,
> > 
> > On Thu, Jul 25, 2019 at 10:55:40PM +0100, Russell King - ARM Linux admin wrote:
> > > On Thu, Jul 25, 2019 at 05:37:54PM -0400, George G. Davis wrote:
> > > > Hello Russell,
> > > > 
> > > > Thanks for your prompt reply!
> > > > 
> > > > On Sat, Jul 20, 2019 at 01:30:23PM +0100, Russell King - ARM Linux admin wrote:
> > > > > On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> > > > > > When an unhandled data or prefetch abort occurs, the die() string
> > > > > > is empty resulting in backtrace messages similar to the following:
> > > > > > 
> > > > > > 	Internal error: : 1 [#1] PREEMPT SMP ARM
> > > > > > 
> > > > > > Replace the null string with the name of the abort handler in order
> > > > > > to provide more meaningful hints as to the cause of the fault.
> > > > > 
> > > > > NAK.
> > > > > 
> > > > > We already print the cause of the abort earlier in the dump, and we've
> > > > > also added a "cut here" marker to help people include all the necessary
> > > > > information when reporting a problem.
> > > > 
> > > > For what it's worth, I often receive crash dumps which lack the pr_alert
> > > > messages and only include the pr_emerg messages which this change would at
> > > > least provide extra hints, since the "Internal error" as at EMERG level
> > > > wereas the initial messages are only at ALERT level. It's subtle but for
> > > > cases where the end user has set loglevel such that they only see EMERG
> > > > messages, the change is helpful, to me at least.
> > > > 
> > > > > It's unfortunate that we have the additional colon in the oops dump,
> > > > 
> > > > Agreed, it's rather unfortunate that the string is NULL in these cases.
> > > > 
> > > > > but repeating the information that we've printed on one of the previous
> > > > > two lines is really not necessary.
> > > > 
> > > > It depends on the loglevel the user has set. So perhaps it's not such a
> > > > bad thing to repeat the information?
> > > 
> > > Or maybe we should arrange for consistent usage of the log levels?
> > 
> > Unfortunately, some of the users that I work with have very specific limits
> > and requirements for kernel error message logging which are driven by
> > performance and/or storage limitations. So it's not always possible to "arrange
> > for consistent usage of the log levels" with some users. Meanwhile, these
> > messages do show up in logs without the pre-able headers, lacking the string
> > which is already available. It's hardly a big deal to re-use the same string,
> > especially for the !user_mode(regs) case, where the kernel will oops at
> > EMERG loglevel, leaving the NULL string as the reason. I can assure you that
> > I've tried to convince these users to change the loglevel but they have their
> > reasons for keeping it as they do and I'm unable to convince them otherwise.
> 
> Sorry, but I really don't buy this.
> 
> By your argument, we should get rid of the pre-amble headers because
> they're "not useful" in your eyes...

For user_mode(regs), the system will remain running and logs may be
checked on the running system as usual in conjuction signal handler
exception handling. So no, I don't agree that the pre-amble headers are
"not useful", in fact, they are quite useful for interactive and automated
debugging of user faults, and of course most normal deployment cases which
retain full message logs on disk. It's only for the !user_mode(regs) case,
in some embedded deployment cases, where the change is intended to provide more
insight which may be missing otherwise, in admittedly limited use cases.

My last argument in favor of applying the change is this: the string
pointer is already loaded in a register and so likely costs less instructions
and time to simply pass it onto arm_notify_die() compared to the
cost of loading a NULL string pointer into a register. For the user_mode(regs)
case, the string is not used and cost nothing to pass along. For the !user_mode(regs)
case, it provides information which may be missing otherwise depending on the
loglevel.

Thanks again for your prompt replies and consideration!

-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
