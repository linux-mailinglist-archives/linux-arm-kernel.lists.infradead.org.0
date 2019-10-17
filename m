Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 91752DB177
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 17 Oct 2019 17:48:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NPbLYpw2Qi87NI9dVecbMNuFbPV8+qxZYONlEWPU8C8=; b=MvFmPcFY6QF96q
	vp/e0//Nm7OCuOi2X4ajrgWYcvvU3FYKavtB1x6vOXIFA7TLIEd7KzpDl51hkaKOTJx8THOmcaisL
	doeJSPM1ZnI0LGN4ENhbFbSg7ox10c/J3Xrh5pn3309DTl/Fyq7xJzyWz900y+2hJzXj5IMQbn6ph
	wEAON8OnvPhOpg5z4PKXYOd2/HpVHbVz82Gs48gebUZTqhZPq77Ta7VtVqHFLfiuL/IFZs9OFAlWS
	+t4GGY9bvPRQTZG5Ev02dDXmkXWmPkXfEGD7K9y6LFhXC2W9soJ/uWoYVJnvzE5FdhnDTqQNPJeeS
	F58Aq59xnhKmAXHxuuyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iL80U-0007o6-5q; Thu, 17 Oct 2019 15:48:06 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iL80K-0007nV-QI
 for linux-arm-kernel@lists.infradead.org; Thu, 17 Oct 2019 15:47:58 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7210420869;
 Thu, 17 Oct 2019 15:47:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1571327276;
 bh=Na2Nvhl68xsqY/U1vzcF8y2RoUFJ7tB0brqS8GUuIDQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=nTBMsaYsj30+pvrvhsp5QMa9LHG/KT/wnaeWiosKOwEZwGC+bmFOedbNB8Dqc9NQY
 c9VZYT5ZEy3xT/lud+/9DZyEDKsXI9OMgr8RXJ8CgHpPyddwRVe/Znv/cOnqT8kH8l
 +vUOjRyx2SzPb3fuHh8F4WPfYg9JOqsSH6/4mqCM=
Date: Thu, 17 Oct 2019 16:47:51 +0100
From: Will Deacon <will@kernel.org>
To: Ganapatrao Kulkarni <gklkml16@gmail.com>
Subject: Re: [PATCH v6 2/2] drivers/perf: Add CCPI2 PMU support in ThunderX2
 UNCORE driver.
Message-ID: <20191017154750.jgn6e3465qrsu53e@willie-the-truck>
References: <1571218608-15933-1-git-send-email-gkulkarni@marvell.com>
 <1571218608-15933-3-git-send-email-gkulkarni@marvell.com>
 <b8e1a637-faf4-4567-7d3e-a4f13dfa1cf0@huawei.com>
 <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAKTKpr4QoTDjbSxO4CvSH2sNvmrTJKjxi+RZH4mYfyDaaN96Sw@mail.gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191017_084756_876475_37AD8FF9 
X-CRM114-Status: GOOD (  11.41  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "corbet@lwn.net" <corbet@lwn.net>,
 Ganapatrao Prabhakerrao Kulkarni <gkulkarni@marvell.com>,
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 Jan Glauber <jglauber@marvell.com>, John Garry <john.garry@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Robert Richter <rrichter@marvell.com>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Oct 17, 2019 at 12:38:51PM +0530, Ganapatrao Kulkarni wrote:
> On Wed, Oct 16, 2019 at 7:01 PM John Garry <john.garry@huawei.com> wrote:
> > > +TX2_EVENT_ATTR(req_pktsent, CCPI2_EVENT_REQ_PKT_SENT);
> > > +TX2_EVENT_ATTR(snoop_pktsent, CCPI2_EVENT_SNOOP_PKT_SENT);
> > > +TX2_EVENT_ATTR(data_pktsent, CCPI2_EVENT_DATA_PKT_SENT);
> > > +TX2_EVENT_ATTR(gic_pktsent, CCPI2_EVENT_GIC_PKT_SENT);
> > > +
> > > +static struct attribute *ccpi2_pmu_events_attrs[] = {
> > > +     &tx2_pmu_event_attr_req_pktsent.attr.attr,
> > > +     &tx2_pmu_event_attr_snoop_pktsent.attr.attr,
> > > +     &tx2_pmu_event_attr_data_pktsent.attr.attr,
> > > +     &tx2_pmu_event_attr_gic_pktsent.attr.attr,
> > > +     NULL,
> > > +};
> >
> > Hi Ganapatrao,
> >
> > Have you considered adding these as uncore pmu-events in the perf tool?
> >
> At the moment no, since the number of events exposed/listed are very few.

Then sounds like a perfect time to nip it in the bud before the list grows
;)

If you can manage with these things in userspace, then I agree with John
that it would be preferential to do it that way. It also offers more
flexibility if we get the metricgroup stuff working properly (I think it's
buggered for big/little atm).

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
