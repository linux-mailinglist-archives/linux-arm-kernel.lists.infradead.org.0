Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 905CC5A1CD
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 19:06:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rImAUsybFxwdmqmY7Q9SorgLqgsXYV9DQhNNIobOjU0=; b=Rgw5WO0KY6lpJ0WpyoPCKTrwP
	rW3DUgMvJiZ+FoxaDZadosGqCXLx5yPfs+JwzKutT6H2y67N0hPbeL0Md7ABI8Y8R7n0VolN2lvSB
	w5upG21oqWMVm9uqCEI4RqO9CLvk2fjOa3GuYA3VxtSkuq7COxsQKo1hVFEotFaTj6sY5QeKaWAdJ
	6TmWFW0nYb24ZVlo3fUp4ftR0Q3Beew0pKrtCyFcmj+LnHKo1ReNAGwVOd2Xvq44XBIpPYSpZbIbI
	H0TPW0KywxYfAn9p3ePCfi4iOpm6/asCG+gATpFSOHEvg3aELE4iHG+q1/4JX703Y0XGcwmCS/y6O
	pkKX8PlRA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hguKX-0000MP-Vo; Fri, 28 Jun 2019 17:06:34 +0000
Received: from szxga04-in.huawei.com ([45.249.212.190] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hguKD-0000AP-So
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 17:06:17 +0000
Received: from DGGEMS406-HUB.china.huawei.com (unknown [172.30.72.59])
 by Forcepoint Email with ESMTP id 6AA019916D69D2CF479A;
 Sat, 29 Jun 2019 01:06:03 +0800 (CST)
Received: from [127.0.0.1] (10.202.227.238) by DGGEMS406-HUB.china.huawei.com
 (10.3.19.206) with Microsoft SMTP Server id 14.3.439.0;
 Sat, 29 Jun 2019 01:05:52 +0800
Subject: Re: [PATCH v3 1/4] perf pmu: Support more complex PMU event aliasing
To: Andi Kleen <ak@linux.intel.com>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
 <1561732552-143038-2-git-send-email-john.garry@huawei.com>
 <20190628153344.GZ31027@tassilo.jf.intel.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <5add76dc-ea92-9778-a65b-792f3ff17040@huawei.com>
Date: Fri, 28 Jun 2019 18:05:43 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.3.0
MIME-Version: 1.0
In-Reply-To: <20190628153344.GZ31027@tassilo.jf.intel.com>
X-Originating-IP: [10.202.227.238]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_100614_259858_16E19783 
X-CRM114-Status: UNSURE (   9.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.190 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, ben@decadent.org.uk, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 jolsa@redhat.com, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/06/2019 16:33, Andi Kleen wrote:
>> +	/*
>> +	 * Match more complex aliases where the alias name is a comma-delimited
>> +	 * list of tokens, orderly contained in the matching PMU name.
>> +	 *
>> +	 * Example: For alias "socket,pmuname" and PMU "socketX_pmunameY", we
>> +	 *	    match "socket" in "socketX_pmunameY" and then "pmuname" in
>> +	 *	    "pmunameY".
>
> This needs to be documented in some manpage.

Hi Andi,

As I see, today the man page does not mention the matching from the 
alias events declared in the jsons.

The perf list command shows these aliases, so I am not sure how useful 
that info is adding to the man page.

What the man page does mention is the glob matching on the PMU device 
name - like how "imc" can match PMU device "uncore_imc_0", but I'm not 
changing around this.

Thanks,
John

>
> -Andi
>
>
> .
>



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
