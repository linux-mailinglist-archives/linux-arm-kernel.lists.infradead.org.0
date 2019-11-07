Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 982E3F2EEB
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 14:10:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hbFTORW1oLPnlMSn+oTbr93Juzu8X6HXmLSZfjOKYjM=; b=OK4hCp9iMSGiGi
	qDJ6XWp32Fun47EZFc0aNUL9CS6h81bNOSWn13V+T/d1nJQwwNN0LArCHxPM+sSbei+kpzEqDpjvd
	REO87X3PJSxbFdeLwQYSOf53vf8JtVxjpSnBe5Nsf4IUWQvo73iF1qTwd6RiVrCGw6LJaarSBaOPi
	UNJneZsGFU2Hm6bX/OduTNor5+fV2Oi6ZvCHevloyoE5eSM2xlZaHZy/ejZOhCcnbZ+NnAuWWhCyx
	m++zVkDqH7IBLxGfHU10yw3TWjs3+2KhojcMqJP+QJLqDcEAgP07++hBQ5OTi9//aMfCKWcNTA8Ho
	nFMQBjwcM5hCn3Jl5ihw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iShYD-0005ng-U3; Thu, 07 Nov 2019 13:10:13 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iShY2-0005L6-Hd
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 13:10:04 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DBE812075C;
 Thu,  7 Nov 2019 13:10:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573132201;
 bh=9yIVJxkWjl7BjPj14OGq2CsBJA5DOraP3myT5sBtK+M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Rq9CBgm2Xu9BSvw+d5CrMEf9ak35kqN3FdxRvzXXqW4X/b2W8SMBjulhVsIbbLA2E
 gqwgbOB241fmve5DMwLiBSv6Z1GTa5S/XGFlS3neWe7qDxZz8jiJGVsVeHhO0ArzsU
 RhwNJB8vluIPbxsDenN8mkr/HafeZ3doAnaqKErc=
Date: Thu, 7 Nov 2019 13:09:57 +0000
From: Will Deacon <will@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191107130957.GA12929@willie-the-truck>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
 <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
 <20191107121151.GB4948@lakrids.cambridge.arm.com>
 <0ae3e891-87aa-a9ed-05aa-ef96960615b9@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <0ae3e891-87aa-a9ed-05aa-ef96960615b9@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_051002_634569_2DF408D8 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Shaokun Zhang <zhangshaokun@hisilicon.com>,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 01:04:34PM +0000, John Garry wrote:
> > > > > > On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
> > > > > > [I prefer Mark's version, so please reply to indicate whether or not it
> > > > > >     works for you]
> > > > > 
> > > > > Replying on Shaokun's behalf as he appears offline now.
> > > > > 
> > > > > In response to "> If TSV110 is always MT, ":
> > > > > 
> > > > > It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
> > > > > TaishanV110 aka TSV110: one has the MT bit set and the other without.
> > > > 
> > > > Just to check, for the non-MT variant is the SCCL/CCL assignment
> > > > Aff2/Aff1 as with other non-MT parts?
> > > 
> > > We don't support any other non-MT parts for this driver.
> > 
> > The driver claimed to support non-MT parts before TSV110 came around, so that
> > statement confuses me.
> 
> A couple of points on this:
> 
> - We gave up on upstreaming support in this driver for the predecessor SoC,
> which included an A72. You may remember the infamous djtag bus.
> 
> - The wording in the comment "If multi-threading is supported, On Huawei
> Kunpeng 920 SoC " is misleading, as it implies that the part found in Huawei
> Kunpeng 920 is MT, which it isn't always.
> 
> > 
> > For a non-MT TSV110, is Aff2 the SCCL and Aff1 the CCL?
> 
> Yes,
> 
> That's what the
> > existing code (and Shaokun's patch) assumed.
> 
> well I'm going with that as well. Shaokun can confirm the layout.

I'll queue Shaokun's patch for now, since I want to get this to Catalin
tomorrow for 5.5 after spending the night in -next. We can always simplify
the logic later if Mark's patch ends up working out.

Thanks,

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
