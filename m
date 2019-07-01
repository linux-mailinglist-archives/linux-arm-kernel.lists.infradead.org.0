Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6472550FB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 17:07:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZIU4k3dBsr7RDIZYrig2Gm1yBAZSpe5oaWViOczRivQ=; b=kcdIe5Meu8O2Dw
	dnETscgAI+VXxV+yGVPMtEueKr++FwcB4G4mj6ECH7txdnrzftVyMU/6GXFjT9385zFF6HjjF8qxN
	52uYF9fXzqeix/HeQiMjs6yK7xUBQ5eqkMrKOMDAxDJozK3TPAYTxcYxSlAUdbHcYGhLvaImnww+s
	NGSjTmWL5cWU0HAsasxPFg9ZpbSPU0gT7GuZzJHYREfCzgZIkqiZqd5Y3BRcyaXlYhqWrGqzokQdT
	frajcNajoFreBvYXXfZjikTtRxmZhrNO37X5uwdclddSoqK2Nvo33h8Ilxpqdj6BbylBt4LeWftUJ
	ZfCcPDx/bZUYTichxo+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfQZ0-0003t8-8z; Mon, 24 Jun 2019 15:07:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hfQYo-0003sH-9a; Mon, 24 Jun 2019 15:07:11 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CDAD3344;
 Mon, 24 Jun 2019 08:07:07 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B07D13F71E;
 Mon, 24 Jun 2019 08:07:04 -0700 (PDT)
Date: Mon, 24 Jun 2019 16:06:58 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Russell King <linux@armlinux.org.uk>
Subject: Re: [PATCH v7 4/7] arm: Use common cpu_topology structure and
 functions.
Message-ID: <20190624150658.GA1623@e107155-lin>
References: <20190617185920.29581-1-atish.patra@wdc.com>
 <20190617185920.29581-5-atish.patra@wdc.com>
 <20190619121057.GE1360@e107155-lin>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190619121057.GE1360@e107155-lin>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_080710_381582_8C08B844 
X-CRM114-Status: GOOD (  19.03  )
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
 Atish Patra <atish.patra@wdc.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Otto Sabart <ottosabart@seberm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 19, 2019 at 01:10:57PM +0100, Sudeep Holla wrote:
> Hi Russell,
>
> On Mon, Jun 17, 2019 at 11:59:17AM -0700, Atish Patra wrote:
> > Currently, ARM32 and ARM64 uses different data structures to represent
> > their cpu topologies. Since, we are moving the ARM64 topology to common
> > code to be used by other architectures, we can reuse that for ARM32 as
> > well.
> >
> > Take this opprtunity to remove the redundant functions from ARM32 and
> > reuse the common code instead.
> >
> > To: Russell King <linux@armlinux.org.uk>
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Tested-by: Sudeep Holla <sudeep.holla@arm.com> (on TC2)
> > Reviewed-by : Sudeep Holla <sudeep.holla@arm.com>
> >
> > ---
> > Hi Russell,
> > Can we get a ACK for this patch ? We are hoping that the entire
> > series can be merged at one go.
>
> It would be nice to get this in for v5.3 as it's almost there.
> Are you fine with these changes ?
>

Do you have any objections with this patch ? We plan to merge through
RISC-V tree, please let us know. It has been acked-by all the other
maintainers.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
