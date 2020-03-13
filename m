Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A5721848F2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 15:14:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RUtovoDgV07V2sRY1o4B2xiVYyab5iHhd/nVI3rtv0c=; b=Z8t16N7bpTWnWr
	G60HNb69yvCCQtCdjzp41R7r6EQktod48FLVgtSQxLw7RWdK2/xUwCvTnYsHv4olH09SGwu0/7gSP
	grKtoqJ2ZO1WQ6XL3M57wE1CTZRFesyV8q6oDkYhnpUdhuAgHj/odckkOBnEVyH6WfD05cf/V1rUL
	kGc/E50gMZwSlcNm98kzVCPudgfiFW+CFEyOV9u2u7+ySpptovdQujcIINiWPwsuIpm5bmnv+D8lP
	YEak49U8qwzWBpJ9+arZA6GkWFrZweSRp3TZHYYl7/9tbXRxarNSrvqdmapw6/VTS4Eri3YMPR/47
	2PXqovekDX7XlVnIWB5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCl5H-0001Nu-G2; Fri, 13 Mar 2020 14:14:43 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCl59-0001MO-RT
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 14:14:37 +0000
Received: from LHREML712-CAH.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 532519DCF870C169B2BA;
 Fri, 13 Mar 2020 14:14:19 +0000 (GMT)
Received: from lhreml710-chm.china.huawei.com (10.201.108.61) by
 LHREML712-CAH.china.huawei.com (10.201.108.35) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Fri, 13 Mar 2020 14:14:18 +0000
Received: from localhost (10.202.226.57) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Fri, 13 Mar
 2020 14:14:18 +0000
Date: Fri, 13 Mar 2020 14:14:16 +0000
From: Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To: Robin Murphy <robin.murphy@arm.com>
Subject: Re: [PATCH RFC] perf:Add driver for HiSilicon PCIe PMU
Message-ID: <20200313141416.00002e89@Huawei.com>
In-Reply-To: <49a04327-b58b-3103-f992-97e8838c41df@arm.com>
References: <1584014816-1908-1-git-send-email-liuqi115@huawei.com>
 <49a04327-b58b-3103-f992-97e8838c41df@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
X-Originating-IP: [10.202.226.57]
X-ClientProxiedBy: lhreml723-chm.china.huawei.com (10.201.108.74) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_071436_035781_D6A476F0 
X-CRM114-Status: GOOD (  18.56  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, Qi Liu <liuqi115@huawei.com>, linuxarm@huawei.com,
 linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org, bhelgaas@google.com,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 13 Mar 2020 13:23:53 +0000
Robin Murphy <robin.murphy@arm.com> wrote:

> On 2020-03-12 12:06 pm, Qi Liu wrote:
> > From: Qi liu <liuqi115@huawei.com>
> > 
> > PCIe PMU Root Complex Integrate End Point(IEP) device is
> > supported to sample bandwidth, latency, buffer occupation,
> > bandwidth utilization etc.
> > Each PMU IEP device monitors multiple root ports, and each
> > IEP is registered as a pmu in /sys/bus/event_source/devices,
> > so users can select the target IEP, and use filter to select
> > root port, function and event.
> > Filtering options are:
> > event:    - select the event.
> > subevent: - select the subevent.
> > port:     - select target root port.
> > func:     - select target EP device under the port.
> > 
> > Example: hisi_pcie_00_14_00/event=0x08,subevent=0x04,   \
> > port=0x05,func=0x00/ -I 1000
> > 
> > PMU IEP device is described by its bus, device and function,
> > target root port is 0x05 and target EP under it is function
> > 0x00. Subevent 0x04 of event 0x08 is sampled.
> > 
> > Note that in this RFC:
> > 1. PCIe PMU IEP hardware is still in development.
> > 2. Perf common event list is undetermined, and name of these
> > events still need to be discussed.
> > 3. port filter could only select one port each time.
> > 4. There are two possible schemes of pmu registration, one is
> > register each root port as a pmu, it is easier for users to
> > select target port. The other one is register each IEP as pmu,
> > for counters are per IEP, not per root port, the second scheme
> > describes hardware PMC much more reasonable, but need to add
> > "port" filter option to select port. We use the second one in
> > this RFC.
> > 

Whilst it's great to have detailed feedback, just to make it clear...

This is an RFC for the reasons above.  They include that the hardware
is still in development - i.e. we can't test it because they've not finished
implementation yet.

The intention of posting so early is to get some feedback on the general
approach and the specific points in 2,3 and 4 above.

The key fiddly point with this is that it is a shared PMU across a set
of PCIe Root Ports (there are several of these devices on each SoC in
the system covering a set of ports each).
That makes for a somewhat fiddly interface, hence the RFC.

Thanks to everyone who has reviewed though as definitely some stuff for liuqi to
fix!

Jonathan



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
