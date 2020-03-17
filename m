Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1F2F1880DC
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Mar 2020 12:14:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zkQvSX/qkhB8YmAPYEwPSpcBFjglkrF2AVBl4a1JY+I=; b=eQaV5eJs1OKf+D
	i7mTImWUR/90z++QlGjT2Avbg2mHMI/iIX1jDzJM3eP97JCZyQE/AY4pgmkWPX/9i4L4UUQAAPxOx
	91wr32eiE/gEKlxg8CggEmXh4A2iC7gIIj/4YmEPks6UmLZISi5/4xc/dW079YjqE4f38Dx/iHk7q
	CmNBdwyyqENLUg+Vmui8l+4OK448x48URixJ0OgXjIGZ4R9Lvn7OD1bQxRqDlvN0jPm5Oa6lb4aed
	Sj6FxuxDZJpp7kMSV9rUklajkT0rcMX8Psi/+0ahdZqY89oLlIUclhZYuefFNyOBwbQrvH0FwDL/l
	V6cHlVdziMlLWroo9T6A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEAAV-0004Bu-U2; Tue, 17 Mar 2020 11:13:55 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEAAM-0004Az-UL
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Mar 2020 11:13:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F3B4A1FB;
 Tue, 17 Mar 2020 04:13:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4ECBB3F534;
 Tue, 17 Mar 2020 04:13:43 -0700 (PDT)
Date: Tue, 17 Mar 2020 11:13:41 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH] arm64: perf: Clean up enable/disable calls
Message-ID: <20200317111340.GG8831@lakrids.cambridge.arm.com>
References: <037238a60de35a9f49058c0b062aaafc009badc4.1583769494.git.robin.murphy@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <037238a60de35a9f49058c0b062aaafc009badc4.1583769494.git.robin.murphy@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200317_041347_026130_1895D1EA 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: catalin.marinas@arm.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Robin,

On Tue, Mar 10, 2020 at 05:15:57PM +0000, Robin Murphy wrote:
> Reading this code bordered on painful, what with all the repetition and
> pointless return values. More fundamentally, dribbling the hardware
> enables and disables in one bit at a time incurs needless system
> register overhead for chained events and on reset. We already use
> bitmask values for the KVM hooks, so consolidate all the register
> accesses to match, and make a reasonable saving in both source and
> object code.
> 
> Signed-off-by: Robin Murphy <robin.murphy@arm.com>

This generally looks good to me; I have a couple of comments below.

> ---
> 
> Note that the seemingly-superfluous "pmcr" changes in armv8pmu_reset()
> are to minimise conflicts with the v8.5 64-bit counter patches; it was
> debugging those which triggered me to do this.

If we take this patch first, can we drop that and rebase those patches?

> 
>  arch/arm64/kernel/perf_event.c | 64 +++++++++++++---------------------
>  1 file changed, 25 insertions(+), 39 deletions(-)
> 
> diff --git a/arch/arm64/kernel/perf_event.c b/arch/arm64/kernel/perf_event.c
> index e40b65645c86..89034720602a 100644
> --- a/arch/arm64/kernel/perf_event.c
> +++ b/arch/arm64/kernel/perf_event.c
> @@ -450,11 +450,9 @@ static inline void armv8pmu_write_event_type(struct perf_event *event)
>  	}
>  }
>  
> -static inline int armv8pmu_enable_counter(int idx)
> +static inline void armv8pmu_enable_counter(u32 mask)
>  {
> -	u32 counter = ARMV8_IDX_TO_COUNTER(idx);
> -	write_sysreg(BIT(counter), pmcntenset_el0);
> -	return idx;
> +	write_sysreg(mask, pmcntenset_el0);
>  }
>  
>  static inline void armv8pmu_enable_event_counter(struct perf_event *event)
> @@ -469,18 +467,13 @@ static inline void armv8pmu_enable_event_counter(struct perf_event *event)
>  	kvm_set_pmu_events(counter_bits, attr);

For consistency, could we first rename the existing `counter_bits`
instances to be `mask`? I think the latter is a better name.

Also, if it won't haveto be undone by the ARMv8.5 patches, can we add a
helper to generate the mask for an event:

| static u32 armv8pmu_event_counters_mask(struct perf_event *event)
| {
| 	u32 mask = BIT(ARMV8_IDX_TO_COUNTER(idx));
| 	if (armv8pmu_event_is_chained(event))
| 		mask |= BIT(ARMV8_IDX_TO_COUNTER(idx - 1));
| 	
| 	return mask;
| }

Otherwise, this looks good to me. I assume you've tested it. ;)

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
