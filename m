Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59E4D1D9C2E
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 19 May 2020 18:14:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0EjJg5Z9DqLY2MxPjNeYR5Xa9ZCiqnKAOWk3VesCh5c=; b=tAVjw9w5bHLnvJ
	sVoWdNpF9mQUXzJja8b9yYKL93zJDbTSi6P3LLZ4m9WGvJZz4ATiKNNaSn/rl0uJSdilJONFWDT73
	VNtlx7yqq+74B4LR0Qd8VOoCkUHDnHlZHBLPqc0tQGmk3/cIV8Yyt4vrxrUx9N5bsm596Mcw7G747
	1bIT9kaj1mGLfBB86o5iUUVJjB+wp9gYUQOuDzUv7xluYReKV8kTixuehJGM3aCSbpbMZTBvI7ryb
	foLUn1Z38/t6k0tOumq2X7G59kah2VeYNTa2O6VBVXurMxJxh4uBlR3ieroATx4tfWUKmbDxNR8BP
	UjQZYcXEw69Rmyu4z6sg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jb4tJ-0007r0-LV; Tue, 19 May 2020 16:14:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jb4t9-0007q6-Ft
 for linux-arm-kernel@lists.infradead.org; Tue, 19 May 2020 16:14:45 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 60B3730E;
 Tue, 19 May 2020 09:14:42 -0700 (PDT)
Received: from gaia (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D46BB3F305;
 Tue, 19 May 2020 09:14:40 -0700 (PDT)
Date: Tue, 19 May 2020 17:14:34 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Vladimir Murzin <vladimir.murzin@arm.com>
Subject: Re: [PATCH v4 24/26] arm64: mte: Introduce early param to disable
 MTE support
Message-ID: <20200519161434.GF20313@gaia>
References: <20200515171612.1020-1-catalin.marinas@arm.com>
 <20200515171612.1020-25-catalin.marinas@arm.com>
 <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <a2ad6cbf-2632-3cda-eb49-74ddfbed2cec@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200519_091444_334177_C8183D36 
X-CRM114-Status: GOOD (  18.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-arch@vger.kernel.org, Will Deacon <will@kernel.org>,
 Szabolcs Nagy <szabolcs.nagy@arm.com>,
 Andrey Konovalov <andreyknvl@google.com>,
 Kevin Brodsky <kevin.brodsky@arm.com>, linux-mm@kvack.org,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Peter Collingbourne <pcc@google.com>, Dave P Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, May 18, 2020 at 12:26:30PM +0100, Vladimir Murzin wrote:
> On 5/15/20 6:16 PM, Catalin Marinas wrote:
> > For performance analysis it may be desirable to disable MTE altogether
> > via an early param. Introduce arm64.mte_disable and, if true, filter out
> > the sanitised ID_AA64PFR1_EL1.MTE field to avoid exposing the HWCAP to
> > user.
> > 
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Cc: Will Deacon <will@kernel.org>
> > ---
> > 
> > Notes:
> >     New in v4.
> > 
> >  Documentation/admin-guide/kernel-parameters.txt |  4 ++++
> >  arch/arm64/kernel/cpufeature.c                  | 11 +++++++++++
> >  2 files changed, 15 insertions(+)
> > 
> > diff --git a/Documentation/admin-guide/kernel-parameters.txt b/Documentation/admin-guide/kernel-parameters.txt
> > index f2a93c8679e8..7436e7462b85 100644
> > --- a/Documentation/admin-guide/kernel-parameters.txt
> > +++ b/Documentation/admin-guide/kernel-parameters.txt
> > @@ -373,6 +373,10 @@
> >  	arcrimi=	[HW,NET] ARCnet - "RIM I" (entirely mem-mapped) cards
> >  			Format: <io>,<irq>,<nodeID>
> >  
> > +	arm64.mte_disable=
> > +			[ARM64] Disable Linux support for the Memory
> > +			Tagging Extension (both user and in-kernel).
> > +
> 
> Should it really to take parameter (on/off/true/false)? It may lead to expectation
> that arm64.mte_disable=false should enable MT and, yes, double negatives make it
> look ugly, so if we do need parameter, can it be arm64.mte=on/off/true/false?

My reasoning about arm64.mte= was that 'on' may lead people to think it
does something even when MTE isn't available on the SoC. So I ended up
with an explicit 'disable' in the name. Happy to change it if we don't
drop this parameter altogether (in the absence of valid use-cases).

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
