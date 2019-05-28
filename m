Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C7F2C854
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 28 May 2019 16:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ACAreOrMJBcOpNYmoTZIckTkbFoZ4eH9fxIn3V5S8Y=; b=cNDtPykrDyy9sC
	BpThpgEg0XmrWrOHoCGnOo5XEImeY7xNLi4QOhgxWlgVmEmcGHFoJu1QHgzB5ahBxenoMT9eqY0pA
	l5/2aWC/turgr7EACY99M1/R1xJHgrMKE2aARrNlTtgRdqmr93Mzd1CRKD4FmVMUAmtc750LJvU0W
	iW2qoc8gbfTWY1kzTGcy0mN5641wU/YJvm6ARZmjvkYOHRmq+W8GvYe/lNaroxAKjXKHTvA0KjIW0
	0nwT2Op7duzO1/Ny34BimYQRRzrzygBwl33S8lCVQQHWI8Cl2GFb6KTz2DEDwXSIUyHr7PGlZB+M2
	OobM2qD22g6N6cbG/+rw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hVcnW-00057r-FH; Tue, 28 May 2019 14:09:50 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hVcnO-00057L-SW
 for linux-arm-kernel@lists.infradead.org; Tue, 28 May 2019 14:09:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0836D80D;
 Tue, 28 May 2019 07:09:40 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0F8363F5AF;
 Tue, 28 May 2019 07:09:36 -0700 (PDT)
Date: Tue, 28 May 2019 15:09:34 +0100
From: Mark Rutland <mark.rutland@arm.com>
To: Michal Hocko <mhocko@kernel.org>
Subject: Re: [PATCH V3 2/4] arm64/mm: Hold memory hotplug lock while walking
 for kernel page table dump
Message-ID: <20190528140934.GC26178@lakrids.cambridge.arm.com>
References: <1557824407-19092-1-git-send-email-anshuman.khandual@arm.com>
 <1557824407-19092-3-git-send-email-anshuman.khandual@arm.com>
 <20190515165847.GH16651@dhcp22.suse.cz>
 <20190516102354.GB40960@lakrids.cambridge.arm.com>
 <20190516110529.GQ16651@dhcp22.suse.cz>
 <20190522164212.GD23592@lakrids.cambridge.arm.com>
 <20190527072001.GB1658@dhcp22.suse.cz>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190527072001.GB1658@dhcp22.suse.cz>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190528_070942_929345_80029CD7 
X-CRM114-Status: GOOD (  27.54  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: cai@lca.pw, ira.weiny@intel.com,
 Anshuman Khandual <anshuman.khandual@arm.com>, catalin.marinas@arm.com,
 david@redhat.com, will.deacon@arm.com, linux-kernel@vger.kernel.org,
 logang@deltatee.com, james.morse@arm.com, cpandya@codeaurora.org,
 arunks@codeaurora.org, akpm@linux-foundation.org, osalvador@suse.de,
 mgorman@techsingularity.net, dan.j.williams@intel.com,
 linux-arm-kernel@lists.infradead.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 27, 2019 at 09:20:01AM +0200, Michal Hocko wrote:
> On Wed 22-05-19 17:42:13, Mark Rutland wrote:
> > On Thu, May 16, 2019 at 01:05:29PM +0200, Michal Hocko wrote:
> > > On Thu 16-05-19 11:23:54, Mark Rutland wrote:
> > > > On Wed, May 15, 2019 at 06:58:47PM +0200, Michal Hocko wrote:
> > > > > On Tue 14-05-19 14:30:05, Anshuman Khandual wrote:

> > I don't think that it's reasonable for this code to bring down the
> > kernel unless the kernel page tables are already corrupt. I agree we
> > should minimize the impact on other code, and I'm happy to penalize
> > ptdump so long as it's functional and safe.
> > 
> > I would like it to be possible to use the ptdump code to debug
> > hot-remove, so I'd rather not make the two mutually exclusive. I'd also
> > like it to be possible to use this in-the-field, and for that asking an
> > admin to potentially crash their system isn't likely to fly.
> 
> OK, fair enough.
> 
> > > > > I am asking because I would really love to make mem hotplug locking less
> > > > > scattered outside of the core MM than more. Most users simply shouldn't
> > > > > care. Pfn walkers should rely on pfn_to_online_page.
> > 
> > Jut to check, is your plan to limit access to the hotplug lock, or to
> > redesign the locking scheme?
> 
> To change the locking to lock hotpluged ranges rather than having a
> global lock as the operation is inherently pfn range scoped.

Ok. That sounds like something we could adapt the ptdump code to handle
without too much pain (modulo how much of that you want to expose
outside of the core mm code).

> > > > I'm not sure if that would help us here; IIUC pfn_to_online_page() alone
> > > > doesn't ensure that the page remains online. Is there a way to achieve
> > > > that other than get_online_mems()?
> > > 
> > > You have to pin the page to make sure the hotplug is not going to
> > > offline it.
> > 
> > I'm not exactly sure how pinning works -- is there a particular set of
> > functions I should look at for that?
> 
> Pinning (get_page) on any page of the range will deffer the hotremove
> operation and therefore the page tables cannot go away as well.
> 
> That being said, I thought the API is mostly for debugging and "you
> should better know what you are doing" kinda thing (based on debugfs
> being used here). If this is really useful in its current form and
> should be used also while the hotremove is in progress then ok.
> Once we actually get to rework the locking then we will have another
> spot to handle but that's the life.

Great.

FWIW, I'm happy to rework the ptdump code to help with that.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
