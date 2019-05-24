Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D35F8293FD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 May 2019 10:58:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgdR9B7SJmp3CteXtmkrT8n0F66Var6IWCiFG28YS/4=; b=ETxPxL5Fw4GkKa
	ZPsMM4ocYB+oVpo2vjIZ9zXFRBVD1JeERe2SMe05KEfFZ+OBJgybayjsn03GMVcuMzjtNqoJkOCm+
	k4yw8F+vsS9lrZSf3L5WhkwoB0atvng/HBCZyxj/o3eE/xuziWMSdvuGq7atdLH3GY2rT0AA6idTZ
	mBKUGmT+57WFB29sqr7R36G9K2gw2Urbecyx/d35qVMaziJAsRTXDZmxpCSU1OHhS4Vh+A1HUj7jE
	21g4mVyylikVJV148Zn4Y63hoWwJOC9as7ItZFNtX+gbmrxtB0QUXi6k5e5vbQM1l2msVihGEoaOp
	Fxt+xuibZ7K26JEHJaPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hU61Y-0003wA-Hh; Fri, 24 May 2019 08:58:00 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hU61R-0003v6-3o; Fri, 24 May 2019 08:57:54 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B0AF1A78;
 Fri, 24 May 2019 01:57:50 -0700 (PDT)
Received: from e107155-lin (e107155-lin.cambridge.arm.com [10.1.196.42])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DC0413F5AF;
 Fri, 24 May 2019 01:57:46 -0700 (PDT)
Date: Fri, 24 May 2019 09:57:40 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [RFT PATCH v5 3/5] cpu-topology: Move cpu topology code to
 common code.
Message-ID: <20190524085720.GA13121@e107155-lin>
References: <20190524000653.13005-1-atish.patra@wdc.com>
 <20190524000653.13005-4-atish.patra@wdc.com>
 <20190524081333.GA15566@kroah.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190524081333.GA15566@kroah.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190524_015753_157119_B5FA478B 
X-CRM114-Status: GOOD (  17.73  )
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>, Atish Patra <atish.patra@wdc.com>,
 linux-riscv@lists.infradead.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 Jeffrey Hugo <jhugo@codeaurora.org>, Anup Patel <anup@brainfault.org>,
 Ingo Molnar <mingo@kernel.org>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Sudeep Holla <sudeep.holla@arm.com>,
 Rob Herring <robh+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org, Jeremy Linton <jeremy.linton@arm.com>,
 Otto Sabart <ottosabart@seberm.com>, Andreas Schwab <schwab@suse.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, May 24, 2019 at 10:13:33AM +0200, Greg Kroah-Hartman wrote:
> On Thu, May 23, 2019 at 05:06:50PM -0700, Atish Patra wrote:
> > Both RISC-V & ARM64 are using cpu-map device tree to describe
> > their cpu topology. It's better to move the relevant code to
> > a common place instead of duplicate code.
> > 
> > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > Tested-by: Jeffrey Hugo <jhugo@codeaurora.org>
> > ---
> >  arch/arm64/include/asm/topology.h |  23 ---
> >  arch/arm64/kernel/topology.c      | 303 +-----------------------------
> >  drivers/base/arch_topology.c      | 296 +++++++++++++++++++++++++++++
> >  include/linux/arch_topology.h     |  28 +++
> >  include/linux/topology.h          |   1 +
> >  5 files changed, 329 insertions(+), 322 deletions(-)
>
> What, now _I_ have to maintain drivers/base/arch_topology.c?  That's
> nice for everyone else, but not me :(
>
> Ugh.
>
> Anyway, what are you wanting to happen to this series?  I think we need
> some ARM people to sign off on it before I can take the whole thing,
> right?
>

Greg, I am ready to take ownership. Juri the original author of this file
agreed and I have been reviewing this file since Juri first wrote it.
I am happy to submit a patch assuming maintainership for this file, was
just waiting to hear from you when I asked explicitly you and Juri in
last version of the patch when Will wanted someone from ARM to be reviewer
of this file at-least. I am happy to take over as reviewer or maintainer
which ever you prefer.

Sorry if I was not so clear in my earlier mail.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
