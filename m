Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BAEA2B0110
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 18:15:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Wpsvp8gzAt5Dpz+jPmsiBUefptIIsIliLwB7VmDHc/0=; b=SjJyYnUCD4f1uX
	WT/MwRCg4ocBXzYXOY0oppIBYShB0dQzAyaOGh3WARh2jKe0fw6xuRtQg+taavInV9RTp1NS4hDbD
	h3U9NNh9jpwPYH3QmCckMpHavHQqe/JyDrd6fX+kA8WroRgCZG08R1sg2vwb7Xd8FCbTa4qjUTF6s
	PpT45UKp9wHC1k1vbEHgNy9vBt6GT8gUyycDp3s2ZxdkAb3gIgBg9dKjp6gnJ3tpCoHdodmx+e6Vp
	2xD/QYZc4BI8PL2sMOuZtnefhZ+7u96IcC+jtJKY5hNGk+D92tL+X/vkwWNi14vbS7UIOrrkYJKr3
	YDKVVUW10ypRmMY8AFGA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i85H1-0005CM-Tq; Wed, 11 Sep 2019 16:15:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i85Gf-0005C1-F4
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 16:14:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 35E8628;
 Wed, 11 Sep 2019 09:14:49 -0700 (PDT)
Received: from e107533-lin.cambridge.arm.com (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 17DC83F67D;
 Wed, 11 Sep 2019 09:14:47 -0700 (PDT)
Date: Wed, 11 Sep 2019 17:14:41 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: James Morse <james.morse@arm.com>
Subject: Re: offline CPUs shown in sysfs core_siblings mask
Message-ID: <20190911161441.GB5433@e107533-lin.cambridge.arm.com>
References: <c1596783-cd14-8247-3c42-faa052c5c066@inria.fr>
 <4568af7d-724e-5ee7-3ba1-87a5db662447@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <4568af7d-724e-5ee7-3ba1-87a5db662447@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_091453_549028_4D1CBA9B 
X-CRM114-Status: GOOD (  16.93  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org,
 Jeremy Linton <Jeremy.Linton@arm.com>, Brice Goglin <Brice.Goglin@inria.fr>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Sep 11, 2019 at 05:06:24PM +0100, James Morse wrote:
> Hi Brice,
> 
> (CC: +Jeremy)
> 
> On 9/11/19 2:23 PM, Brice Goglin wrote:
> > We have a report from a user of hwloc/lstopo on ThunderX2 that complains
> > that offline CPUs are shown in sysfs cpu core_siblings files.
> 
> Hmmm, this doesn't happen on my TX2, running mainline:
> root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
> 00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,ffffffff
> root@eglon:/sys/devices/system/cpu# echo 0 > cpu0/online
> root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
> 00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,fffffffe
> root@eglon:/sys/devices/system/cpu# echo 1 > cpu0/online
> root@eglon:/sys/devices/system/cpu# cat cpu1/topology/core_siblings
> 00000000,00000000,00000000,00000000,ffffffff,ffffffff,ffffffff,ffffffff
> 

Commit 7f9545aa1a91 ("arm64: smp: remove cpu and numa topology information when hotplugging out CPU")
is the patch that introduced that changes to update the sibling masks when
CPUs are hotplugged out. Before that patch the behaviour was same as you
describe. AFAIK, they were not marked stable and never backported.

> 
> > Only 8 online logicial CPUs, but 56 are shown in these masks. This is on
> > RHEL7 with a kernel 4.14.0-115.2.2.el7a.aarch64 but I couldn't find any
> > significant change in Linux git.
> 
> Could you try a recent mainline kernel?
> 
> Does your system have an ACPI PPTT table? (I assume its ACPI)
> 
> Prior to the ACPI PPTT table handling, it wasn't possible for an arm64 ACPI
> system to know about packages and threads.
>

Indeed yes, but not sure if that fixes the above mentioned issue.

> 
> > I guess thread_siblings has the same behavior but I couldn't test it.
> 
> (this would depend on the firmware table too)
>

If the above commit doesn't fix it, then it's a bug. I didn't test them on
SMT systems for sure.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
