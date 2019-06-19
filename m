Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 557A14B7B2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 14:11:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mSX3zpXwbnFGfe4yMeqf5tF6pWsUzNx0rChnc2t+QCo=; b=Z54JjnOpMrdMBs
	5da/5rqTmRbpFM6ROGYhAfe3h3vDDLjV23OIaxUM2Eo7g6GBjCrSFZagNBFYkvl0paDBaYIqOGj0r
	ymNokuK2oKcJVi0IEb3RC2b7UVMQ1rL2LBUVo2LBEy8IsRNeqUIyIlz7+uWFEVU3SaDxXBYCw8D/c
	WMt15JqeYCI68n2JzX7mIZOpbnvLH+D+Buoin/waSo0HrjRxhcvxyR297JH5CemLwFwdv9NhNchj6
	j22VeN0s7Ox+Kl/2C6Fm1y4WBg4aS6olQOFImjxE01acycqB54NKQSPcYb9RMPEK1gmZs0b+Hle8U
	TqZA+CtznMKxWPsCYUdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdZQp-0003Nw-VZ; Wed, 19 Jun 2019 12:11:15 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdZQf-0003NP-4P; Wed, 19 Jun 2019 12:11:06 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 103F7360;
 Wed, 19 Jun 2019 05:11:03 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CD1263F738;
 Wed, 19 Jun 2019 05:10:59 -0700 (PDT)
Date: Wed, 19 Jun 2019 13:10:57 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Atish Patra <atish.patra@wdc.com>, Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v7 4/7] arm: Use common cpu_topology structure and
 functions.
Message-ID: <20190619121057.GE1360@e107155-lin>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-5-atish.patra@wdc.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190617185920.29581-5-atish.patra@wdc.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_051105_224171_96D82F0B 
X-CRM114-Status: GOOD (  14.66  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Richard Fontana <rfontana@redhat.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Anup Patel <anup@brainfault.org>, Ingo Molnar <mingo@kernel.org>,
 devicetree@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Jonathan Cameron <Jonathan.Cameron@huawei.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Otto Sabart <ottosabart@seberm.com>, Sudeep Holla <sudeep.holla@arm.com>,
 "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Russell,

On Mon, Jun 17, 2019 at 11:59:17AM -0700, Atish Patra wrote:
> Currently, ARM32 and ARM64 uses different data structures to represent
> their cpu topologies. Since, we are moving the ARM64 topology to common
> code to be used by other architectures, we can reuse that for ARM32 as
> well.
> 
> Take this opprtunity to remove the redundant functions from ARM32 and
> reuse the common code instead.
> 
> To: Russell King <linux@armlinux.org.uk>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
> Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
> 
> ---
> Hi Russell,
> Can we get a ACK for this patch ? We are hoping that the entire
> series can be merged at one go.

It would be nice to get this in for v5.3 as it's almost there.
Are you fine with these changes ?

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
