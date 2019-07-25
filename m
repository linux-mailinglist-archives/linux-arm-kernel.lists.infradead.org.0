Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB1BD759E8
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 23:56:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3HVplJQj+TzgMpIWJptU9OGxU6EBrAh5nXmOXcbcfao=; b=HCIInaK61NSIg1
	jpeQkLVQWsNYhpFRdWUaLPaWuxTWdRtnupkAYz8A/UavPuK1xLZAIyaBHmDeOMb4P/cIlb72IVA5P
	pYoqiBdUadoaJYvnxFdzmYEMefOA49bqKtq6rJDhB0BmSPGGhqPz8I6KcgDt9c0pc7GIfWZM7I9DH
	zxH4H+o+Ts7mzMjVtYN2KC0q2QtrzbibQmqgkFxm9x/GLQQK7Cuwel5rqykbnFH7DA3SmL1A4slb4
	Dvmt8E1OrDxQbOnhtQsfM48ab9krSEbykcJxfNCLSnzrdg/jDwQ3fDaSrKBybyWcytZ2HbyAqi3qk
	7aPPxR8EtoqJmbVAksRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqlic-00083V-Uf; Thu, 25 Jul 2019 21:56:11 +0000
Received: from pandora.armlinux.org.uk
 ([2001:4d48:ad52:3201:214:fdff:fe10:1be6])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqliK-00082j-A5
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 21:55:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=armlinux.org.uk; s=pandora-2019; h=Sender:In-Reply-To:Content-Type:
 MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fzoi6WTT/aaFWW+EuhftGIjPkQCTrBX+tQdM10oXzQs=; b=onQS0xZQENxHyCKqj50vHJgse
 VJTs1WxUKipVOOxrF17e1WtWT2eO9I0521g1Q/wxP2XCIF0Lp2s8fsl0LIn8HMInkmfMIExs94tNr
 IPCIDuPYtKWQcJFT0pSUPHlvA05IvoViM2QLHeEKDW4tDIBV+jn4eDZMgQrjL9iTR4DA4WyYfZDNf
 A/5HlTli48G/GAXowpO5qTNxrRMg0DvqPjieKrU3dYgIrWeDpp6uU3loaHQGfNFta3rxscJdPmjhZ
 KRwRlhmzN2JUYBLFZXVffXFUmYB61SLAwt/2ST9vZUFjtCrECRQHvpATZnm+MqeXjRvLgFhOuiPZA
 uqd3FBcoA==;
Received: from shell.armlinux.org.uk
 ([2002:4e20:1eda:1:5054:ff:fe00:4ec]:44660)
 by pandora.armlinux.org.uk with esmtpsa
 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.90_1)
 (envelope-from <linux@armlinux.org.uk>)
 id 1hqliC-0002Xi-5p; Thu, 25 Jul 2019 22:55:44 +0100
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
 (envelope-from <linux@shell.armlinux.org.uk>)
 id 1hqli8-00062p-5X; Thu, 25 Jul 2019 22:55:40 +0100
Date: Thu, 25 Jul 2019 22:55:40 +0100
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: "George G. Davis" <george_davis@mentor.com>
Subject: Re: [PATCH] ARM: Fix null die() string for unhandled data and
 prefetch abort cases
Message-ID: <20190725215540.GM1330@shell.armlinux.org.uk>
References: <1563589976-19004-1-git-send-email-george_davis@mentor.com>
 <20190720123023.GA1330@shell.armlinux.org.uk>
 <20190725213754.GA29898@mam-gdavis-lt>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190725213754.GA29898@mam-gdavis-lt>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_145552_393595_0F429D4E 
X-CRM114-Status: GOOD (  18.39  )
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

On Thu, Jul 25, 2019 at 05:37:54PM -0400, George G. Davis wrote:
> Hello Russell,
> 
> Thanks for your prompt reply!
> 
> On Sat, Jul 20, 2019 at 01:30:23PM +0100, Russell King - ARM Linux admin wrote:
> > On Fri, Jul 19, 2019 at 10:32:55PM -0400, George G. Davis wrote:
> > > When an unhandled data or prefetch abort occurs, the die() string
> > > is empty resulting in backtrace messages similar to the following:
> > > 
> > > 	Internal error: : 1 [#1] PREEMPT SMP ARM
> > > 
> > > Replace the null string with the name of the abort handler in order
> > > to provide more meaningful hints as to the cause of the fault.
> > 
> > NAK.
> > 
> > We already print the cause of the abort earlier in the dump, and we've
> > also added a "cut here" marker to help people include all the necessary
> > information when reporting a problem.
> 
> For what it's worth, I often receive crash dumps which lack the pr_alert
> messages and only include the pr_emerg messages which this change would at
> least provide extra hints, since the "Internal error" as at EMERG level
> wereas the initial messages are only at ALERT level. It's subtle but for
> cases where the end user has set loglevel such that they only see EMERG
> messages, the change is helpful, to me at least.
> 
> > It's unfortunate that we have the additional colon in the oops dump,
> 
> Agreed, it's rather unfortunate that the string is NULL in these cases.
> 
> > but repeating the information that we've printed on one of the previous
> > two lines is really not necessary.
> 
> It depends on the loglevel the user has set. So perhaps it's not such a
> bad thing to repeat the information?

Or maybe we should arrange for consistent usage of the log levels?

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTC broadband for 0.8mile line in suburbia: sync at 12.1Mbps down 622kbps up
According to speedtest.net: 11.9Mbps down 500kbps up

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
