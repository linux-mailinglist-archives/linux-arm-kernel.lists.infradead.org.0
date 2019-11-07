Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93864F2DCD
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 Nov 2019 12:57:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IeE+iMKha7YmITFPIwFlUhA2fpqpiNkS6y0pjd4VfwI=; b=VXJsbPvRTkBoCl
	bBwrThDoflqSsRRtNbTtalqTjxuA/2huDIWNft63BXpqDTxbxKlrmcGqlfOzVKuMAA5sTY773KAZm
	nO7wUrKcSiXsGKx2OBpcX27uzAsJDJXOPeFvoAz+SGh+J10ztv1D4Hsf3Ykc1jGSsOOrcxPN3atdK
	daxEIF7rOQmX3n8tkbn5L/ZADzrFxVEfu6Rhq/dzevY1jxbMbgFvhfg6n+2iVqaWETmab+RDn/BQI
	R+O+nfFMouwy7tSweHqLGS/CEm2jDrTemewTimZgmxDfz6OToATqbLo7NQT9zcx+MeWxXxcfFSKZ1
	ivqv70TnOiWnUcsZMXbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSgPX-0002Fh-1Y; Thu, 07 Nov 2019 11:57:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSgPO-0002FB-EV
 for linux-arm-kernel@lists.infradead.org; Thu, 07 Nov 2019 11:57:03 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 247DA31B;
 Thu,  7 Nov 2019 03:57:01 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 06CFF3F6C4;
 Thu,  7 Nov 2019 03:56:59 -0800 (PST)
Date: Thu, 7 Nov 2019 11:56:50 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH] drivers/perf: hisi: update the sccl_id/ccl_id for
 certain HiSilicon platform
Message-ID: <20191107115650.GA4948@lakrids.cambridge.arm.com>
References: <1573113364-32531-1-git-send-email-zhangshaokun@hisilicon.com>
 <20191107114041.GB11587@willie-the-truck>
 <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52f89b8c-0baf-77d0-4bbd-1e129f8e5ed2@huawei.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_035702_528882_F1BAC48F 
X-CRM114-Status: GOOD (  17.78  )
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

On Thu, Nov 07, 2019 at 11:50:30AM +0000, John Garry wrote:
> On 07/11/2019 11:40, Will Deacon wrote:
> > Hi,
> > 
> > On Thu, Nov 07, 2019 at 03:56:04PM +0800, Shaokun Zhang wrote:
> > > @@ -338,8 +339,10 @@ void hisi_uncore_pmu_disable(struct pmu *pmu)
> > >   /*
> > >    * Read Super CPU cluster and CPU cluster ID from MPIDR_EL1.
> > > - * If multi-threading is supported, CCL_ID is the low 3-bits in MPIDR[Aff2]
> > > - * and SCCL_ID is the upper 5-bits of Aff2 field; if not, SCCL_ID
> > > + * If multi-threading is supported, On Huawei Kunpeng 920 SoC whose cpu
> > > + * core is tsv110, CCL_ID is the low 3-bits in MPIDR[Aff2] and SCCL_ID
> > > + * is the upper 5-bits of Aff2 field; while for other cpu types, SCCL_ID
> > > + * is in MPIDR[Aff3] and CCL_ID is in MPIDR[Aff2], if not, SCCL_ID
> > >    * is in MPIDR[Aff2] and CCL_ID is in MPIDR[Aff1].
> > >    */
> > >   static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> > > @@ -347,12 +350,19 @@ static void hisi_read_sccl_and_ccl_id(int *sccl_id, int *ccl_id)
> > >   	u64 mpidr = read_cpuid_mpidr();
> > >   	if (mpidr & MPIDR_MT_BITMASK) {
> > > -		int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > -
> > > -		if (sccl_id)
> > > -			*sccl_id = aff2 >> 3;
> > > -		if (ccl_id)
> > > -			*ccl_id = aff2 & 0x7;
> > > +		if (read_cpuid_part_number() == HISI_CPU_PART_TSV110) {
> > > +			int aff2 = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > +
> > > +			if (sccl_id)
> > > +				*sccl_id = aff2 >> 3;
> > > +			if (ccl_id)
> > > +				*ccl_id = aff2 & 0x7;
> > > +		} else {
> > > +			if (sccl_id)
> > > +				*sccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 3);
> > > +			if (ccl_id)
> > > +				*ccl_id = MPIDR_AFFINITY_LEVEL(mpidr, 2);
> > > +		}
> > 
> > [I prefer Mark's version, so please reply to indicate whether or not it
> >   works for you]
> 
> Replying on Shaokun's behalf as he appears offline now.
> 
> In response to "> If TSV110 is always MT, ":
> 
> It isn't. There are 2 spins of Huawei Kunpeng 920 SoC which includes
> TaishanV110 aka TSV110: one has the MT bit set and the other without.

Just to check, for the non-MT variant is the SCCL/CCL assignment
Aff2/Aff1 as with other non-MT parts?

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
