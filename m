Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B2075ABB
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 26 Jul 2019 00:24:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=F6ZNNQs6TF5BtHwFqV3kuvUDhdFS09GxUKY/3FcKyh0=; b=qDopT10DkGVukR
	OZAkVOtwjFSIdxkeQQv7CFUU7P57VLO6Zh4bZjPnIzFNcEowde+mtNNJkrg0JktlBQ3u1MhSoFXGj
	qml98gKPttoF83+IfpojYFbCyvpcildHNMNMtZ7ik+o0oj4eqc6hfxLqZTnJebYaryWFqZf4Nobus
	tT/1Tu4Lpx+J8t/G1aVjLmnfwH/NtsQb2jYf5SekQCk80wUJRgu+3Tr0m8iKImSw3aqwHDLgRSTVN
	LNBv8S9HOqREkIEiihPF8XWXe9EUCNNHnLCRhO5BnX8rrnjbttTUjpVkp/A93m9ZkST2ZeTOarqKc
	IhgMnKlq0eFZPVDW246A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqm9u-0003jI-SX; Thu, 25 Jul 2019 22:24:22 +0000
Received: from relay1.mentorg.com ([192.94.38.131])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqm9e-0003iU-DX
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 22:24:07 +0000
Received: from svr-orw-mbx-01.mgc.mentorg.com ([147.34.90.201])
 by relay1.mentorg.com with esmtps (TLSv1.2:ECDHE-RSA-AES256-SHA384:256)
 id 1hqm9c-0007Ly-SM from George_Davis@mentor.com ;
 Thu, 25 Jul 2019 15:24:04 -0700
Received: from localhost (147.34.91.1) by svr-orw-mbx-01.mgc.mentorg.com
 (147.34.90.201) with Microsoft SMTP Server (TLS) id 15.0.1320.4; Thu, 25 Jul
 2019 15:24:02 -0700
Date: Thu, 25 Jul 2019 18:24:01 -0400
From: "George G. Davis" <george_davis@mentor.com>
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190725222401.GB29898@mam-gdavis-lt>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
 <20190720123023.GA1330@shell.armlinux.org.uk>
 <20190725213754.GA29898@mam-gdavis-lt>
 <20190725215540.GM1330@shell.armlinux.org.uk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725215540.GM1330@shell.armlinux.org.uk>
User-Agent: Mutt/1.5.24 (2015-08-30)
X-ClientProxiedBy: svr-orw-mbx-02.mgc.mentorg.com (147.34.90.202) To
 svr-orw-mbx-01.mgc.mentorg.com (147.34.90.201)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_152406_458808_F58DA5E9 
X-CRM114-Status: GOOD (  22.82  )
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

On Thu, Jul 25, 2019 at 10:55:40PM +0100, Russell King - ARM Linux admin wrote:
> On Thu, Jul 25, 2019 at 05:37:54PM -0400, George G. Davis wrote:
> > Hello Russell,
> > 
> > Thanks for your prompt reply!
> > 
> > On Sat, Jul 20, 2019 at 01:30:23PM +0100, Russell King - ARM Linux admin wrote:
> > > On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> > > > When an unhandled data or prefetch abort occurs, the die() string
> > > > is empty resulting in backtrace messages similar to the following:
> > > > 
> > > > 	Internal error: : 1 [#1] PREEMPT SMP ARM
> > > > 
> > > > Replace the null string with the name of the abort handler in order
> > > > to provide more meaningful hints as to the cause of the fault.
> > > 
> > > NAK.
> > > 
> > > We already print the cause of the abort earlier in the dump, and we've
> > > also added a "cut here" marker to help people include all the necessary
> > > information when reporting a problem.
> > 
> > For what it's worth, I often receive crash dumps which lack the pr_alert
> > messages and only include the pr_emerg messages which this change would at
> > least provide extra hints, since the "Internal error" as at EMERG level
> > wereas the initial messages are only at ALERT level. It's subtle but for
> > cases where the end user has set loglevel such that they only see EMERG
> > messages, the change is helpful, to me at least.
> > 
> > > It's unfortunate that we have the additional colon in the oops dump,
> > 
> > Agreed, it's rather unfortunate that the string is NULL in these cases.
> > 
> > > but repeating the information that we've printed on one of the previous
> > > two lines is really not necessary.
> > 
> > It depends on the loglevel the user has set. So perhaps it's not such a
> > bad thing to repeat the information?
> 
> Or maybe we should arrange for consistent usage of the log levels?

Unfortunately, some of the users that I work with have very specific limits
and requirements for kernel error message logging which are driven by
performance and/or storage limitations. So it's not always possible to "arrange
for consistent usage of the log levels" with some users. Meanwhile, these
messages do show up in logs without the pre-able headers, lacking the string
which is already available. It's hardly a big deal to re-use the same string,
especially for the !user_mode(regs) case, where the kernel will oops at
EMERG loglevel, leaving the NULL string as the reason. I can assure you that
I've tried to convince these users to change the loglevel but they have their
reasons for keeping it as they do and I'm unable to convince them otherwise.

Thanks!


-- 
Regards,
George

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
