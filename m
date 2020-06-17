Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA3C21FCC38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 13:26:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/4TduPEDtEJiMEl70t+VFnKgnYJ/Rpt51yxmF6vVwkA=; b=WHWBQkcklt8Xl6
	7CbvGSU43VF00oSGG5OnBAjRmPMVjw41wxheRwo4BT3iDkM+jeYMhy1qiGeVs9dvWZLXV7OtQ1kU0
	mgjWh2gf95BjlqiphNXQgDjcgyUpV29euI5Yvpk8/aJrko6lh6ekf7XgNnMPF5shCdLT1MgyUhcuG
	6mUD6U6moVubkD6czMkpo5XM8wfBPJatLEEpSZPnGTHzwLkq9w6gwdX0oDoE6cS6OSVj6YGBbVvFQ
	Kr7CNNkQPUn3aAEId+dr5+8rdu2HAGnFCsV0kpKXnZ7pb7Kyop9q8DoRWnBR2qviseWrr0oiW/Vwo
	ACe2vajsJcL7TicRAQMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWCa-00035P-1w; Wed, 17 Jun 2020 11:25:56 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWCQ-00034v-SJ
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 11:25:48 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id DAC23208B3;
 Wed, 17 Jun 2020 11:25:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1592393146;
 bh=W594DViUjrIetKV1VqEvjPiBD/hTtwpui+EbbP9Kj1M=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jhvfeYbWqVCQE27JPT//05UBtgQRxoihtA8d+SyuljO/pDs81WxU4S4CN95QxxSkm
 oTdJUVkk3BtDj0x6Hl4R2hV6tkTVSrZ3il0gokpHIZmrkJPlawNmbZ9Hj+Yzw8Bz/i
 7XQu4LTEb/Hq0zUTNQzOI2Iiy7wVfcx1V0tVd1Ps=
Date: Wed, 17 Jun 2020 12:25:42 +0100
From: Will Deacon <will@kernel.org>
To: Marc Zyngier <maz@kernel.org>
Subject: Re: Query regarding ERRATUM_1418040
Message-ID: <20200617112542.GB3503@willie-the-truck>
References: <1ce7dad5-a981-5968-cc34-7648faea8636@codeaurora.org>
 <062be27686369d28bd2054a54c307400@misterjones.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <062be27686369d28bd2054a54c307400@misterjones.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_042546_931898_44D6006F 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Neeraj Upadhyay <neeraju@codeaurora.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Jun 17, 2020 at 12:19:16PM +0100, Marc Zyngier wrote:
> On 2020-06-17 09:55, Neeraj Upadhyay wrote:
> > I have query regarding the errata 1418040 [1]. Here, on kernel exit to
> > EL0 64 bit mode, will it always enable ARCH_TIMER_USR_VCT_ACCESS_EN;
> > and override any other erratas, which might require EL0 direct vct
> > access to be disabled for 64 bit also?
> 
> So far, I am not aware of any erratum that would require traps of CNTVCT_EL0
> to EL1 when running AArch64 userspace for CPUs that are affected by
> ARM-1418040. If such an erratum exists, it would have to be handled
> separately.
> 
> > Also, this errata applies
> > mitigation for all CPUs (on return to 32 bit EL0), even if, not all
> > cpus are impacted by the errata?
> 
> Indeed. There isn't much we can do to avoid it here, unless you want to read
> some per-CPU variable that tells you whether the CPU is affected. This would
> add to the cost of the mitigation , and isn't an appealing prospect.

Hmm, but in conjunction with the previous point, doesn't this mean if
some CPUs are affected by an erratum which requires CNTVCT trapping for
AArch64 and others are affected by 1418040, then the former won't actually
be trapped?

Maybe we should preserve ARCH_TIMER_USR_VCT_ACCESS_EN for AArch64 tasks
instead of setting it unconditionally?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
