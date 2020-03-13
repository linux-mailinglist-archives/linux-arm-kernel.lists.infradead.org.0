Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D481D1848A7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:00:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ysArL1LPV1Zc8uraKLdzB52gBWagrDH++xsCKRDSGJ0=; b=oC00j4C0SdkFz/
	MDGTu4zLsKUT9JxzhX5uVjr1z5saqK+8eLbl70Wf3mGNfTASJd5D+e3Pf92+xwU1Ktsj1e6O8VvOG
	6jcMRb0iBJmlrpbL/1b747Lz06vW5nI75904L42v2iNiLE4cDWCzmacIMf/tAt+DadeV3gmW8U5Tf
	1BFvo3ePHZXryRZIJ3NX12JKlY2lWKB2i0A//y3W7BOEAMu2q/VArmW/d6IN4XtN4+UvLvAveuq4+
	8OnX3DR8p8+y0RZls8BELdAZhcU3+WWI3BKj5i5DQwSHtaDT+3zFbLATCAjRFXWcx2MrG+tjsnYky
	AZBcSenWhUvIJYiEJO1w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCkqz-0003mn-Au; Fri, 13 Mar 2020 13:59:57 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCkqm-0003jF-K6
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 13:59:48 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B429730E;
 Fri, 13 Mar 2020 06:59:43 -0700 (PDT)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 975403F67D;
 Fri, 13 Mar 2020 06:59:42 -0700 (PDT)
Date: Fri, 13 Mar 2020 13:59:40 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC] perf:Add driver for HiSilicon PCIe PMU
Message-ID: <20200313135940.GK42546@lakrids.cambridge.arm.com>
References: <1584014816-1908-1-git-send-email-liuqi115@huawei.com>
 <49a04327-b58b-3103-f992-97e8838c41df@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <49a04327-b58b-3103-f992-97e8838c41df@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_065944_716309_8558024C 
X-CRM114-Status: GOOD (  15.94  )
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
Cc: Qi Liu <liuqi115@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Mar 13, 2020 at 01:23:53PM +0000, Robin Murphy wrote:
> On 2020-03-12 12:06 pm, Qi Liu wrote:
> > From: Qi liu <liuqi115@huawei.com>

[...]

> > +#define HISI_PCIE_EVENT_SHIFT_M			GENMASK(15, 0)
> > +#define HISI_PCIE_SUBEVENT_SHIFT_M		GENMASK(31, 16)
> > +#define HISI_PCIE_SUBEVENT_SHIFT_S		16
> > +#define HISI_PCIE_PORT_SHIFT_M			GENMASK(7, 0)
> > +#define HISI_PCIE_FUNC_SHIFT_M			GENMASK(15, 8)
> > +#define HISI_PCIE_FUNC_SHIFT_S			8
> 
> So "SHIFT_S" means "shift" and "SHIFT_M" actually means "mask"? That's
> unnecessarily confusing. Furthermore it might be helpful if there was a more
> obvious distinction between hardware register fields and config fields.

Also, If you use the FIELD_GET() and FIELD_PREP() helpers, you only need
to define the mask. See <linux/bitfield.h>.

> > +int hisi_pcie_pmu_event_init(struct perf_event *event)
> > +{
> > +	struct hisi_pcie_pmu *pcie_pmu = to_pcie_pmu(event->pmu);
> > +	struct hw_perf_event *hwc = &event->hw;
> > +	u32 subevent_id, event_id, func_id, port_id;
> > +
> > +	if (event->attr.type != event->pmu->type)
> > +		return -ENOENT;
> > +
> > +	/*
> > +	 * We do not support sampling as the counters are all shared by all
> > +	 * CPU cores in a CPU die(SCCL). Also we do not support attach to a
> 
> Do the PCIe counters have anything to do with CPU clusters at all?
> 
> > +	 * task(per-process mode)
> > +	 */
> > +	if (is_sampling_event(event) || event->attach_state & PERF_ATTACH_TASK)
> > +		return -EOPNOTSUPP;
> > +
> > +	/*
> > +	 * The uncore counters not specific to any CPU, so cannot
> > +	 * support per-task
> > +	 */
> > +	if (event->cpu < 0)
> > +		return -EINVAL;
> > +
> > +	/*
> > +	 * Validate if the events in group does not exceed the
> > +	 * available counters in hardware.
> > +	 */
> > +	if (!hisi_validate_event_group(event))
> > +		return -EINVAL;
> > +
> > +	event_id = event->attr.config && HISI_PCIE_EVENT_SHIFT_M;
> 
> Really? Are you sure you've tested this properly?

If you had:

#define HISI_PCI_EVENT_ID	GENMASK(15, 0)
#define HISI_PCI_SUBEVENT_ID	GENMASK(31, 16)

... here you could do:

	event_id = FIELD_GET(HISI_PCI_EVENT_ID, event->attr.config);

> 
> > +	subevent_id = (event->attr.config && HISI_PCIE_SUBEVENT_SHIFT_M)
> > +		       >> HISI_PCIE_SUBEVENT_SHIFT_S;

... and:

	subevent_id = FIELD_GET(HISI_PCI_SUBEVENT_ID, event->attr.config);

... and so on for other fields.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
