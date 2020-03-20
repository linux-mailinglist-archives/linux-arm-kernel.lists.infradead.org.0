Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D088C18C999
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Mar 2020 10:09:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=zYbns03sEI0kII4LKEiPLNx45jDWLDWtJd1fbdp4mmw=; b=kV+DkVjQ4dno4ijR0Dk5D9rj4
	9s9SXBnJI/xy3peHCsruw2aI/kfUeVOlo/mDH/2WKXwQNT7YCNiqYK0KRd/HtdMZ5DiSemRUbyf44
	pmCroSHJyE4sWNh64tl19bVBdfbjLNFTdG7nlMqJWx8m3aA99v29U7CUvnet/eE7+KSrZt1Hlio28
	UrzYk1VgXmmx8CPNNKJpmR//0h44tVTvs6qS/UhH9NdFjDMotmddlVotKF4PhAKytPFS+IMghhD32
	olvIXzlv5i3dW4wEcb3b1GEVzV/an/fo7+fw/vLpzHKzslH7yEqz86BFJ0Drp+K+gI+bsROMjjFL5
	7HdP3yWTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jFDf0-0006aW-65; Fri, 20 Mar 2020 09:09:46 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jFDer-0006Zv-Bw
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Mar 2020 09:09:38 +0000
Received: from disco-boy.misterjones.org (disco-boy.misterjones.org
 [51.254.78.96])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id E871A20752;
 Fri, 20 Mar 2020 09:09:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1584695377;
 bh=lKTpTlYWFEgvmkW6XkcldhhG5+woVU4cLcAGikERfqo=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=wqxswQOYA6BABIMXoM2nOSVgWJ47cTHAzkq5NO+OYTws4zesQC/Bq4/lMrY5xYdT3
 LLMxbcIFzNwWU+tjzVGlaWY8W7/DyefzA7Y7u6Z+ryCAs80UEFGKtPql/c5ERxj9ZT
 Yf7rVSM+Zww6zuKaVgksoCp+gttl1NC23l6B3Fpc=
Received: from disco-boy.misterjones.org ([51.254.78.96] helo=www.loen.fr)
 by disco-boy.misterjones.org with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.92)
 (envelope-from <maz@kernel.org>)
 id 1jFDep-00EBy9-8B; Fri, 20 Mar 2020 09:09:35 +0000
MIME-Version: 1.0
Date: Fri, 20 Mar 2020 09:09:35 +0000
From: Marc Zyngier <maz@kernel.org>
To: Zenghui Yu <yuzenghui@huawei.com>
Subject: Re: [PATCH v5 23/23] KVM: arm64: GICv4.1: Expose HW-based SGIs in
 debugfs
In-Reply-To: <e1a1e537-9f8e-5cfb-0132-f796e8bf06c9@huawei.com>
References: <20200304203330.4967-1-maz@kernel.org>
 <20200304203330.4967-24-maz@kernel.org>
 <4cb4c3d4-7b02-bb77-cd7a-c185346b6a2f@redhat.com>
 <45c282bddd43420024633943c1befac3@kernel.org>
 <e1a1e537-9f8e-5cfb-0132-f796e8bf06c9@huawei.com>
Message-ID: <b63950513f519d9a04f9719f5aa6a2db@kernel.org>
X-Sender: maz@kernel.org
User-Agent: Roundcube Webmail/1.3.10
X-SA-Exim-Connect-IP: 51.254.78.96
X-SA-Exim-Rcpt-To: yuzenghui@huawei.com, eric.auger@redhat.com,
 linux-arm-kernel@lists.infradead.org, kvmarm@lists.cs.columbia.edu,
 kvm@vger.kernel.org, linux-kernel@vger.kernel.org, lorenzo.pieralisi@arm.com,
 jason@lakedaemon.net, rrichter@marvell.com, tglx@linutronix.de,
 james.morse@arm.com, julien.thierry.kdev@gmail.com, suzuki.poulose@arm.com
X-SA-Exim-Mail-From: maz@kernel.org
X-SA-Exim-Scanned: No (on disco-boy.misterjones.org);
 SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200320_020937_431882_C61FDE72 
X-CRM114-Status: GOOD (  10.79  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Jason Cooper <jason@lakedaemon.net>, kvm@vger.kernel.org,
 Suzuki K Poulose <suzuki.poulose@arm.com>, linux-kernel@vger.kernel.org,
 Auger Eric <eric.auger@redhat.com>, Robert Richter <rrichter@marvell.com>,
 James Morse <james.morse@arm.com>,
 Julien Thierry <julien.thierry.kdev@gmail.com>,
 Thomas Gleixner <tglx@linutronix.de>, kvmarm@lists.cs.columbia.edu,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Zenghui,

On 2020-03-20 04:38, Zenghui Yu wrote:
> Hi Marc,
> 
> On 2020/3/19 23:21, Marc Zyngier wrote:
>> With GICv4.1, you can introspect the HW state for SGIs. You can also
>> look at the vLPI state by peeking at the virtual pending table, but
>> you'd need to unmap the VPE first,
> 
> Out of curiosity, could you please point me to the "unmap the VPE"
> requirement in the v4.1 spec? I'd like to have a look.

Sure. See IHI0069F, 5.3.19 (VMAPP GICv4.1), "Caching of virtual LPI data
structures", and the bit that says:

"A VMAPP with {V,Alloc}=={0,1} cleans and invalidates any caching of the
Virtual Pending Table and Virtual Configuration Table associated with 
the
vPEID held in the GIC"

which is what was crucially missing from the GICv4.0 spec (it doesn't 
say
when the GIC is done writing to memory).

Side note: it'd be good to know what the rules are for your own GICv4
implementations, so that we can at least make sure the current code is 
safe.

Thanks,

         M.
-- 
Jazz is not dead. It just smells funny...

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
