Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A1FF2DF6
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 13:12:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2SHQ9pEqIe+Fb4t/fUHsHiuGhBaT7UHlIzWAvJ0qZlk=; b=lMVojnSWEMmZDF
	I4Lc7qVUeAknHhlLyeLW6JnqbH6O0LNnOjbpuj7g081mrmc7wC+4AJ3zUGwKV1rZSl4vOECC9mvds
	mHuCtVajs+w376xhupx2zJ8Uob+Q/vUVk0ClDltNdyvoczP4JsU/PnkoVNwoys7StdTgDKw2UhCA2
	jrIUfvNo1lEXpRUh6LmYAEwYaiQutb/fKE1sScJnmzij99d1nJ7ptOqrPNSYhsIQuBPd0FifmhNQV
	vLGfhxTEZuS8zQdsLd6V2lBScRikV4Q9wFI3arp1AA9V9GbJjFR04xze1c2IGS/5pR6Olslw21EtD
	zUgEmbbgxsyOD82WLCzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgdy-0008RC-GS; Thu, 07 Nov 2019 12:12:06 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgdp-0008Qb-1Y
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 12:11:58 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1DFA031B;
 Thu,  7 Nov 2019 04:11:55 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4E3F93F6C4;
 Thu,  7 Nov 2019 04:11:54 -0800 (PST)
Date: Thu, 7 Nov 2019 12:11:52 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191107121151.GB4948@lakrids.cambridge.arm.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
 <20191107115650.GA4948@lakrids.cambridge.arm.com>
 <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <14e778fb-7b71-3927-134a-415f9a83eae7@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_041157_175711_8AF8C8A8 
X-CRM114-Status: GOOD (  20.69  )
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
Cc: Shaokun Zhang <zhangshaokun@hisilicon.com>, Will Deacon <will@kernel.org>,
 linux-arm-kernel@lists.infradead.org, Hanjun Guo <guohanjun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Nov 07, 2019 at 12:06:24PM +0000, John Garry wrote:
> On 07/11/2019 11:56, Mark Rutland wrote:
> > On Thu, Nov 07, 2019 at 11:50:30AM +0000, John Garry wrote:
> > > On 07/11/2019 11:40, Will Deacon wrote:
> > > > Hi,
> > > > 
> > > > On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
> > > > > @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
> > > > >    /*
> > > > >     * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
> > > > > - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
> > > > > - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
> > > > > + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
> > > > > + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
> > > > > + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
> > > > > + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
> > > > >     * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
> > > > >     */
> > > > >    static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> > > > > @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> > > > >    	u64 mpidr = read_cpuid_mpidr();
> > > > >    	if (mpidr & MPIDR_MT_BITMASK) {
> > > > > -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > > > -
> > > > > -		if (sccl_id)
> > > > > -			*sccl_id = aff2 >> 3;
> > > > > -		if (ccl_id)
> > > > > -			*ccl_id = aff2 & 0x7;
> > > > > +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> > > > > +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > > > +
> > > > > +			if (sccl_id)
> > > > > +				*sccl_id = aff2 >> 3;
> > > > > +			if (ccl_id)
> > > > > +				*ccl_id = aff2 & 0x7;
> > > > > +		} else {
> > > > > +			if (sccl_id)
> > > > > +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> > > > > +			if (ccl_id)
> > > > > +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > > > +		}
> > > > 
> > > > [I prefer Mark's version, so please reply to indicate whether or not it
> > > >    works for you]
> > > 
> > > Replying on Shaokun's behalf as he appears offline now.
> > > 
> > > In response to "> If TSV110 is always MT, ":
> > > 
> > > It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
> > > TaishanV110 aka TSV110: one has the MT bit set and the other without.
> > 
> > Just to check, for the non-MT variant is the SCCL/CCL assignment
> > Aff2/Aff1 as with other non-MT parts?
> 
> We don't support any other non-MT parts for this driver.

The driver claimed to support non-MT parts before TSV110 came around, so that
statement confuses me.

For a non-MT TSV110, is Aff2 the SCCL and Aff1 the CCL? That's what the
existing code (and Shaokun's patch) assumed.

Assuming that is the case, I'd suggest we have the following:

/*
 * The Super CPU Cluster (SCCL) and CPU Cluster (CCL) IDs can be
 * determined from the MPIDR_EL1, but the encoding varies by CPU:
 *
 * - For MT variants of TSV110 (e.g. found in Kunpeng 920):
 *   SCCL is Aff2[7:3], CCL is Aff2[2:0]
 *
 * - For other MT parts:
 *   SCCL is Aff3[7:0], CCL is Aff2[7:0]
 *
 * - For non-MT parts:
 *   SCCL is Aff2[7:0], CCL is Aff1[7:0]
 */
static void hisi_read_sccl_and_ccl_id(int *scclp, int *cclp)
{
	u64 mpidr = read_cpuid_mpidr();
	int aff3 = MPIDR_AFFINITY_LEVEL(mpidr, 3);
	int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
	int aff1 = MPIDR_AFFINITY_LEVEL(mpidr, 1);
	bool mt = mpdir & MPIDR_MT_BITMASK;
	int sccl, ccl;

	if (mt && read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
		sccl = aff2 >> 3;
		ccl = aff2 & 0x7;
	} else if (mt) {
		sccl = aff3;
		ccl = aff2;
	} else {
		sccl = aff2;
		ccl = aff1;
	}

	if (scclp)
		*scclp = sccl;
	if (cclp)
		*cclp = ccl;
}

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
