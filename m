Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 33229339E3
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Jun 2019 23:21:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=89PxGEpmBZlP5ij/GeISk0kuC9uf81RAJsuTD+fY5rw=; b=BFTFgmqthTzkPD
	Wc5uIybXaqXpD3xLNm4kD8IelusClC75bbF4MS8TS2kA/90DB9dVxVv68TT7iiReDP7uw+9bLd2PV
	DOyLv1UDfwXPfYvH/hmdgTxQ+U1k+GMdFGqzY+MnN9xdrMZVmGPKJlX4g2ylESCb0I3boDYwgu0g6
	Ulj2lWQZfv5eQwim5U3LpVgrbMTyF39vpiwdh1KaVfl4VuuG+Wvv05hLAD8xvPH/NZ13a6pD4G2eQ
	Bj/bw9S70tLYpT5kUPcMadIC/DGBm/542JdqiefhtLQ0BsLFR7cnIW3IrMh8j+bf3KNTZZBFWZ4TJ
	t1llmjvWP27f12Wy10hw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hXuOM-0005Zy-Ol; Mon, 03 Jun 2019 21:21:18 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hXuOG-0005Za-38
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Jun 2019 21:21:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5200CA78;
 Mon,  3 Jun 2019 14:21:10 -0700 (PDT)
Received: from mbp (usa-sjc-mx-foss1.foss.arm.com [217.140.101.70])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1326C3F5AF;
 Mon,  3 Jun 2019 14:21:07 -0700 (PDT)
Date: Mon, 3 Jun 2019 22:21:05 +0100
From: Catalin Marinas <catalin.marinas@arm.com>
To: Julien Grall <julien.grall@arm.com>
Subject: Re: [PATCH v5 3/3] arm64/fpsimd: Don't disable softirq when touching
 FPSIMD/SVE state
Message-ID: <20190603212104.mhz7vvj7afb2p3yr@mbp>
References: <20190521172139.21277-1-julien.grall@arm.com>
 <20190521172139.21277-4-julien.grall@arm.com>
 <20190603162534.GF63283@arrakis.emea.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190603162534.GF63283@arrakis.emea.arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190603_142112_141853_86D66D80 
X-CRM114-Status: GOOD (  14.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: kvmarm@lists.cs.columbia.edu, ard.biesheuvel@linaro.org,
 julien.thierry@arm.com, marc.zyngier@arm.com, suzuki.poulose@arm.com,
 will.deacon@arm.com, christoffer.dall@arm.com, linux-kernel@vger.kernel.org,
 james.morse@arm.com, Dave.Martin@arm.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 03, 2019 at 05:25:34PM +0100, Catalin Marinas wrote:
> On Tue, May 21, 2019 at 06:21:39PM +0100, Julien Grall wrote:
> > Since a softirq is supposed to check may_use_simd() anyway before
> > attempting to use FPSIMD/SVE, there is limited reason to keep softirq
> > disabled when touching the FPSIMD/SVE context. Instead, we can simply
> > disable preemption and mark the FPSIMD/SVE context as in use by setting
> > CPU's fpsimd_context_busy flag.
> [...]
> > +static void get_cpu_fpsimd_context(void)
> > +{
> > +	preempt_disable();
> > +	__get_cpu_fpsimd_context();
> > +}
> 
> Is there anything that prevents a softirq being invoked between
> preempt_disable() and __get_cpu_fpsimd_context()?

Actually, it shouldn't matter as the softirq finishes using the fpsimd
before the thread is resumed.

-- 
Catalin

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
