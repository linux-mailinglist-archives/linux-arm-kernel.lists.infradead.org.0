Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FC091CF22A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 12 May 2020 12:14:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=W5e0OUkAWO23OWOpemWYPHl4obKHbvd0B2dSyot54co=; b=MLVU8zV+ZcHQfaQVQu1Tpu8wp
	4u6x6GddJmoWeCpIiRpIvCG8G4XOjh/QOBU6mbIlnGdaQ3XbJAunxESqF0mAzhIQgaaTGFk4Na79J
	cEsCahLNClPOqq4ZTteI0whcyuhyIL0VzX38Un8f8rDOhXlp/jx+32N1pf+35CgV/xpr7GbCNzzx9
	l2MPPCaIL3X5AF5YnuwCtwKK62bETzf6PxRMsi+P0rTcaGaNnLCWY7+cLuPOtzc1Ky3sMywSjr2IO
	fcjYn2Vm9bcLm4U6+VMT4xj4SQx5wPNHy6pugdbvgHPt3VZ406pKDJJBqakgcQ/uOwq4X8RDyPArd
	et4IlMzSw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYRvb-0006Gy-4I; Tue, 12 May 2020 10:14:23 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYRvS-0006G9-13
 for linux-arm-kernel@lists.infradead.org; Tue, 12 May 2020 10:14:15 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.108])
 by Forcepoint Email with ESMTP id C703479D73E2140BD683;
 Tue, 12 May 2020 11:14:04 +0100 (IST)
Received: from [127.0.0.1] (10.210.169.134) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 12 May
 2020 11:14:03 +0100
Subject: Re: [PATCH RFC v3 00/12] perf pmu-events: Support event aliasing for
 system PMUs
To: Joakim Zhang <qiangqing.zhang@nxp.com>, "peterz@infradead.org"
 <peterz@infradead.org>, "mingo@redhat.com" <mingo@redhat.com>,
 "acme@kernel.org" <acme@kernel.org>, "mark.rutland@arm.com"
 <mark.rutland@arm.com>, "alexander.shishkin@linux.intel.com"
 <alexander.shishkin@linux.intel.com>, "jolsa@redhat.com" <jolsa@redhat.com>,
 "namhyung@kernel.org" <namhyung@kernel.org>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <DB8PR04MB6795D56E9EC43949E5F40465E6BE0@DB8PR04MB6795.eurprd04.prod.outlook.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <2642e2a6-9e44-79c4-2bf5-498cedd897a4@huawei.com>
Date: Tue, 12 May 2020 11:13:11 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <DB8PR04MB6795D56E9EC43949E5F40465E6BE0@DB8PR04MB6795.eurprd04.prod.outlook.com>
Content-Language: en-US
X-Originating-IP: [10.210.169.134]
X-ClientProxiedBy: lhreml733-chm.china.huawei.com (10.201.108.84) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200512_031414_263827_529D7732 
X-CRM114-Status: GOOD (  12.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: "irogers@google.com" <irogers@google.com>,
 "ak@linux.intel.com" <ak@linux.intel.com>, "will@kernel.org" <will@kernel.org>,
 Linuxarm <linuxarm@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Zhangshaokun <zhangshaokun@hisilicon.com>,
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> I have an aside question, do you have any idea? Thanks a lot!
> 
> For DDR PMU, I want to add bandwidth usage metric, but it depends on DDR controller clock frequency.
> For example, we have i.MX8MM LPDDR4 board which DDR controller clock is 800MHZ, and i.MX8MM DDR4 board which DDR controller is 600MHZ, but the SoC is the same.
> 
> So they can share all JSON metrics with identifier "i.mx8mm", except bandwidth metric. 

what is the bandwidth metric? how is it supposed to be calculated?

If I add separate JOSN metrics files for identifier "i.mx8mm-lpddr4" and 
identifier "i.mx8mm-ddr4", then it's going to be very redundant, since 
most metrics are same just the identifier is different.
> 
> Do you know how perf tool handle such case?

jirka is supporting user-defined metric here:
https://lore.kernel.org/lkml/20200511205307.3107775-1-jolsa@kernel.org/

So maybe you can use that somehow with separate scripts.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
