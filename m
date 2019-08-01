Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B597DA87
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  1 Aug 2019 13:46:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pOUnGsH/x3g8MH2f0NMDaYeZjZuelEKVyJrDx+9XTRs=; b=dxKAlKn45N30Uf
	zM2YFxQAJH5K5zbbL11ZzwGP5/XPKU1wAt0M8F3KMHbQOIpgMkLdrfbSs2ixR7vrwoy+J3O7wHWxQ
	91jbCVBnUSiXfToTLwoCytyEqQ3grf9F4MH2taFCmv3fLD7yc5t6kB5X5QXKmBHpx5y/AXapG8tmS
	MtOziU7wBWCuANEUgYupz2UvroeZFFg/dA1Xf8XLaasW1nQRCJ+ttzF9pHKFxDun15IzDzPY0nCeQ
	YwOl/o3sRmkROzXzjQDdwmaZfz5vVFVOHaHtEzENLQwmTf74To4okNfU3bc6poiS1G7SU92XhMbbi
	zbBL3Nv9E9YoksPEsI6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1ht9X4-000803-Ch; Thu, 01 Aug 2019 11:46:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1ht9Ws-0007zd-Ig
 for linux-arm-kernel@lists.infradead.org; Thu, 01 Aug 2019 11:45:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 53F0220B7C;
 Thu,  1 Aug 2019 11:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1564659954;
 bh=3t7KkfhtAtu/OZKpEIoDOESt2o301s7X6V6g24TD4LA=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=PWSiRS38+jjgyhAJMFNw3iO01RGtVjnpK73TadskAmSFgJILaDFj7VTkvoelyEdrJ
 YVtmgfxu+EYvPLZLuroOcOvp4Q7z3eOw06V7Dgu1H7xa/sGh07B1dm8bmxTD5dPMGO
 8H2/ZPrkoJLiOu5TAMoV1KIU1mUgWcg26VsKAQGY=
Date: Thu, 1 Aug 2019 12:45:50 +0100
From: Will Deacon <will@kernel.org>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH 2/2] perf/smmuv3: Validate groups for global filtering
Message-ID: <20190801114549.zgdk3on24l4yaqka@willie-the-truck>
References: <7108cdcc6fdce8dd1cfd869849bd78d05bac870f.1564580090.git.robin.murphy@arm.com>
 <1921604dc4cd820363ccf728ade6508e0987e082.1564580090.git.robin.murphy@arm.com>
 <20190801105607.aizjw4l7rvi7vnpw@willie-the-truck>
 <e7584ab2-275a-98ce-d2d4-248815d6451c@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <e7584ab2-275a-98ce-d2d4-248815d6451c@arm.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190801_044554_662643_1F349755 
X-CRM114-Status: GOOD (  23.95  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, linux-arm-kernel@lists.infradead.org,
 shameerali.kolothum.thodi@huawei.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Aug 01, 2019 at 12:17:20PM +0100, Robin Murphy wrote:
> On 2019-08-01 11:56 am, Will Deacon wrote:
> > On Wed, Jul 31, 2019 at 02:37:42PM +0100, Robin Murphy wrote:
> > > With global filtering, it becomes possible for users to construct
> > > self-contradictory groups with conflicting filters. Make sure we
> > > cover that when initially validating events.
> > > 
> > > Signed-off-by: Robin Murphy <robin.murphy@arm.com>
> > > ---
> > >   drivers/perf/arm_smmuv3_pmu.c | 16 ++++++++++++++++
> > >   1 file changed, 16 insertions(+)
> > > 
> > > diff --git a/drivers/perf/arm_smmuv3_pmu.c b/drivers/perf/arm_smmuv3_pmu.c
> > > index dd40df2ac895..e1e41d2fea94 100644
> > > --- a/drivers/perf/arm_smmuv3_pmu.c
> > > +++ b/drivers/perf/arm_smmuv3_pmu.c
> > > @@ -324,6 +324,8 @@ static int smmu_pmu_event_init(struct perf_event *event)
> > >   	struct device *dev = smmu_pmu->dev;
> > >   	struct perf_event *sibling;
> > >   	int group_num_events = 1;
> > > +	bool has_filter;
> > > +	u32 filter_span, filter_sid;
> > >   	u16 event_id;
> > >   	if (event->attr.type != event->pmu->type)
> > > @@ -354,6 +356,10 @@ static int smmu_pmu_event_init(struct perf_event *event)
> > >   		return -EINVAL;
> > >   	}
> > > +	has_filter = get_filter_enable(event);
> > > +	filter_span = get_filter_span(event);
> > > +	filter_sid = get_filter_stream_id(event);
> > > +
> > >   	for_each_sibling_event(sibling, event->group_leader) {
> > >   		if (sibling->pmu != event->pmu &&
> > >   		    !is_software_event(sibling)) {
> > > @@ -363,6 +369,16 @@ static int smmu_pmu_event_init(struct perf_event *event)
> > >   		if (++group_num_events >= smmu_pmu->num_counters)
> > >   			return -EINVAL;
> > > +
> > > +		if (smmu_pmu->global_filter) {
> > > +			if (has_filter != (bool)get_filter_enable(sibling))
> > > +				return -EINVAL;
> > > +
> > > +			if (has_filter &&
> > > +			    (filter_span != get_filter_span(sibling) ||
> > > +			    filter_sid != get_filter_stream_id (sibling)))
> > > +				return -EINVAL;
> > > +		}
> > 
> > Can we avoid duplicating the validation logic from
> > smmu_pmu_apply_event_filter() by adding the group to a fake PMU, like we
> > do for the CPU PMU and the DSU PMU? You'll probably need to do a bit
> > of surgery on 'struct smmu_pmu' to move out the bits you need, but I
> > think it would be better that way.
> 
> Given that apply_event_filter() includes the actual register writes, I have
> a strong feeling that down that road lies madness. However, on a second
> look, I see no reason not to factor out the global filter validation part
> for reuse, and in fact I think we can even save explicitly tracking
> global_filter_{span,sid} that way. I'll give it a try.

Oh yes, performing the actual register writes could be catastrophic!
All I'm trying to get to is a situation where we don't have to update both
the event_init() and smmu_pmu_get_event_idx() callchains if we gain
additional validation requirements in future.

> (and hopefully the promise of a respin will let us all overlook the obvious
> "forgot to update the condition when I changed my mind about the count"
> error in patch #1...)

I noticed it looked weird, but assumed I was being thick and then forgot
about it.

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
