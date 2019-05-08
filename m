Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE6717E64
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  8 May 2019 18:45:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=U5Z4hQTDvKnFdPsa6UrX51wn9E9zxDSVo5gghwc2Xh0=; b=OpLQjpuFB9QXUP
	sjMUEOevEmwSJPfMMVg34iQsgn1ajR8AwkgkG77Edt1Sg7xOUCoczGFQPRaq+2LvHV4xzLLbh3k7m
	bdnLPAyNRxXDALWmwnwQ1QFMacGVdyXA211+pb/mQsuIXBPZf71OKw1tmG7a7oWAzSwEq9nspMk3T
	J2wPdOVLUqGEr8W5ufxbK0nEKthcKlyVJAYQGg/fC9HPuCeN+MCJUSMind7Rc8lfnc0PEvXzVlcUg
	ofoUXjebEGdbBsCiOryvT5Fg63PcCbG/+46EG5P6ue9z95sJqq38HP7/ySSV0Pj1IoJhbDPyfbrJT
	1N2Weklyzvx5nruxaKgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hOPh5-0007zS-Ib; Wed, 08 May 2019 16:45:23 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hOPgy-0007z6-ME
 for linux-arm-kernel@lists.infradead.org; Wed, 08 May 2019 16:45:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8CE71374;
 Wed,  8 May 2019 09:45:14 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 55D523F238;
 Wed,  8 May 2019 09:45:12 -0700 (PDT)
Date: Wed, 8 May 2019 17:45:06 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [PATCH v3 0/5] arm64: SPE ACPI enablement
Message-ID: <20190508164506.GA21553@e107155-lin>
References: <20190503232407.37195-1-jeremy.linton@arm.com>
 <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <5eaa1607-4bf0-a320-e9cf-2d51eca912c6@huawei.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190508_094516_733714_FDE4C03E 
X-CRM114-Status: GOOD (  22.88  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, lorenzo.pieralisi@arm.com, will.deacon@arm.com,
 john.garry@huawei.com, rjw@rjwysocki.net, linuxarm@huawei.com,
 Jeremy Linton <jeremy.linton@arm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 linux-acpi@vger.kernel.org, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, lenb@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Sat, May 04, 2019 at 07:06:19PM +0800, Hanjun Guo wrote:
> Hi Jeremy, Mark,
>
> On 2019/5/4 7:24, Jeremy Linton wrote:
> > This patch series enables the Arm Statistical Profiling
> > Extension (SPE) on ACPI platforms.
> >
> > This is possible because ACPI 6.3 uses a previously
> > reserved field in the MADT to store the SPE interrupt
> > number, similarly to how the normal PMU is described.
> > If a consistent valid interrupt exists across all the
> > cores in the system, a platform device is registered.
> > That then triggers the SPE module, which runs as normal.
> >
> > We also add the ability to parse the PPTT for IDENTICAL
> > cores. We then use this to sanity check the single SPE
> > device we create. This creates a bit of a problem with
> > respect to the specification though. The specification
> > says that its legal for multiple tree's to exist in the
> > PPTT. We handle this fine, but what happens in the
> > case of multiple tree's is that the lack of a common
> > node with IDENTICAL set forces us to assume that there
> > are multiple non-IDENTICAL cores in the machine.
>
> Adding this patch set on top of latest mainline kernel,
> and tested on D06 which has the SPE feature, in boot message
> shows it was probed successfully:
>
> arm_spe_pmu arm,spe-v1: probed for CPUs 0-95 [max_record_sz 128, align 4, features 0x7]
>
> but when I test it with spe events such as
>
> perf record -c 1024 -e arm_spe_0/branch_filter=0/ -o spe ls
>
> it fails with:
> failed to mmap with 12 (Cannot allocate memory),
>
> Confirmed that patch [0] is merged and other perf events are working
> fine.
>
> I narrowed this issue down that mmap() failed to alloc 4M memory
> in perf tool but seems have no relationship with this SPE patch set,
> then I'm lost, could you take look please?
>

Thanks for pointing this out. I had last tested SPE only with v5.0 and
missed completely to check on v5.1. FWIW, I can reproduce this issue
on v5.1

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
