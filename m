Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 288C91AE1F1
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Apr 2020 18:15:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=S4XFzeaxeatZx85Uskv310eC0eKrCSJgqevAVdx0D+w=; b=P0TM9BP01E4BV5Jtw2VI/9dpG
	yNQ2rm3sgV8cxaQd1VTgCcirCNzK3rNeSCcBEvq3Sdtp6T6M9A5iegLu4OtyH4Jlkl54RqTVcND47
	O06cR4zYNZWl+q69wo1z0ie/dO0IUGJHq10VtRoBCULzjzXL84x3Co3U2XRNq/mxp2rj3ytYNuCUC
	UciWhDXYayA56lF07N2MVVz7UhiSgOeO+BtHzmi8et0vkcsP0qsk74gnv59wguFnVbHs78Bvy7/EU
	dyTkPeWjzC2rbJeAvwg8JKj5DWc/RVv1M4cVcFBci0WhhRPmPjOdTEd7u+pBa6nVCqXK7lIf03CRY
	ybOGB8hDg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jPTdm-0007px-1S; Fri, 17 Apr 2020 16:14:54 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jPTdf-0007og-JV
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Apr 2020 16:14:49 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 770A64AD4C372DC997F5;
 Fri, 17 Apr 2020 17:14:38 +0100 (IST)
Received: from [127.0.0.1] (10.210.172.89) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Fri, 17 Apr
 2020 17:14:36 +0100
Subject: Re: [RFC PATCH v2 05/13] perf vendor events arm64: Add Architected
 events smmuv3-pmcg.json
To: Ian Rogers <irogers@google.com>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-6-git-send-email-john.garry@huawei.com>
 <CAP-5=fX0yt73ASQm-XD0Nqj8yNn=UhiaBr9T808ot=66SjSg6w@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <9f5cafde-5aed-b626-5397-2ebed357dd8b@huawei.com>
Date: Fri, 17 Apr 2020 17:14:05 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAP-5=fX0yt73ASQm-XD0Nqj8yNn=UhiaBr9T808ot=66SjSg6w@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.210.172.89]
X-ClientProxiedBy: lhreml735-chm.china.huawei.com (10.201.108.86) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200417_091447_789158_12CB92BC 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Andi Kleen <ak@linux.intel.com>,
 qiangqing.zhang@nxp.com, Peter Zijlstra <peterz@infradead.org>,
 will@kernel.org, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, zhangshaokun@hisilicon.com,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>,
 robin.murphy@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 17/04/2020 16:13, Ian Rogers wrote:
>> +        "PublicDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request",
> It looks like a space was missed in "incomingtransaction".
> 
>> +        "EventCode": "0x02",
>> +        "EventName": "smmuv3_pmcg.TLB_MISS",
>> +        "BriefDescription": "TLB miss caused by incomingtransaction or (ATS or non-ATS) translation request"
> And here.

Right, a copy-and-paste formatting error.

Cheers,
john

> 
> Thanks,
> Ian
> 
>> +


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
