Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 806121A45FF
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 10 Apr 2020 13:55:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1GrxcVhVpYE9MJeyoY9ghFG1yh2rF/WDJLdwXN8dJNg=; b=ejWa84y781oFBo
	1DF41XLFLKcgZr6vWFYb8jhTUljfJrb+j3pQ9hGp4heU/tJj4QRvlS08HhbhslRiKwdgJtj0At8+E
	m7l3G9GacFmL3CoxpCNSTJu+7g21erYgz+J5VTYObtvhomY9dvGnJ1olOr8w4it6yQjibW/c+yRxH
	OrU8xJw8ckYZhkywwp8P7XYvCA4PDajc3JYAuQwvG4Ta1lsB9kfknMlbUP2jc+1ZWSulp1a7gOc1s
	9YAyMd13RjDxZ9Kgi9nyzqTkqrDk2vHarv6BkP05AqG57mZbER6R9bKt7gJsGCK9FlfDigbMlzOeN
	yjiUzmdPPFs3khJa8roA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jMsFQ-0002fP-4w; Fri, 10 Apr 2020 11:55:00 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jMsFJ-0002f4-OT
 for linux-arm-kernel@lists.infradead.org; Fri, 10 Apr 2020 11:54:54 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 33F8220769;
 Fri, 10 Apr 2020 11:54:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1586519692;
 bh=o+CQzbgHOG2tsd35vnw41EOBr4volv2Kz4qD+fukZOU=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=HOJFDPMOO8WGt4clfPskCQhqsc7GzEp6Wi3CvIRqOenKQpGl0DnGbd9nqoGSOuM5e
 rHZWZaWhsuvvKPaN0PJb5yxa+cI0bg7WxiSPu9Dtn6CkhUxVYzUGOlmm1PUYH+mTYw
 0MnRDcAYtLU9QqCtGfVXBC8qgEDs4EQl2/mTCgGY=
Date: Fri, 10 Apr 2020 12:54:46 +0100
From: Will Deacon <will@kernel.org>
To: Hanjun Guo <guohanjun@huawei.com>
Subject: Re: [RFC PATCH v2] arm64: cpufeatures: add support for tlbi range
 instructions
Message-ID: <20200410115446.GA24814@willie-the-truck>
References: <5DC960EB.9050503@huawei.com>
 <20191111132716.GA9394@willie-the-truck>
 <5DC96660.8040505@huawei.com>
 <d4542758f83b3df3ab391341499fecfb@www.loen.fr>
 <c9dfb341-9d14-1a62-0c34-6ec8bd9b4c55@huawei.com>
 <e6d2ad1c5392c2c3503ed8bb7560e04f@www.loen.fr>
 <3b833c82-2c1b-462a-f06f-d4c8b373dac1@huawei.com>
 <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <b24f3c62-128c-c4b2-e1d3-d6ae2162c754@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200410_045453_816113_1960E86E 
X-CRM114-Status: GOOD (  19.52  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Rob Herring <robh@kernel.org>,
 wanghuiqiang <wanghuiqiang@huawei.com>, Anna.Chen@arm.com,
 Zhenyu Ye <yezhenyu2@huawei.com>, catalin.marinas@arm.com,
 suzuki.poulose@arm.com, 'Matteo Carlini' <Matteo.Carlini@arm.com>,
 xiexiangyou@huawei.com, Linuxarm <linuxarm@huawei.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>, tangnianyao@huawei.com,
 Marc Zyngier <maz@kernel.org>, linux-arm-kernel@lists.infradead.org,
 qiuzhenfa@hisilicon.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Apr 10, 2020 at 09:43:49AM +0800, Hanjun Guo wrote:
> On 2019/11/20 9:29, Hanjun Guo wrote:
> > > 
> > > I also wonder if the ARMv8.4-TTL extension (which I have patches for in
> > > the nested virt series) requires the same kind of treatment (after all,
> > > it has an implicit range based on the base granule size and level).
> > > 
> > > In any way, this requires careful specification, and I don't think
> > > we can improvise this on the ML... ;-)
> > 
> > Sure :), the good news is that ARM officially announced will be
> > working with Huawei again.
> > 
> > So if I understand your point correctly, we need steps to take:
> >   - ARM spec needs to make TIBi by range crystal clear and being
> >     written down in the spec;
> >   - Firmware description of supporting TLBi by range in system level
> >     for both FDT and ACPI;
> >   - Then upstream the code.
> 
> Do we have update here? I noticed that the TLBI by rang for SMMU is
> merged for upstream from Rob, any plan or progress for the CPU side?
> 
> Sorry to ping you on the mailling list, our upcoming new chip has
> this feature and it's good to enable it, so it's a bit urgent for us.

Have you tried look at the latest version of the patches rather than
"pinging" old history? We're also in the merge window at the moment, so
please cut us some slack.

I also fail to see the urgency. This thing is a pure performance play, and a
fairly niche one at that. I'm not especially comfortable ripping up our TLBI
code without being able to test it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
