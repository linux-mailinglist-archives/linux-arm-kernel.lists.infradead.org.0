Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8906118EBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:18:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=PGgnVBXjGFbwXUpEoIIz4I3vgxKcsehqIXrTrpu5iLg=; b=fzFCfHN03tCG1h3nfkaQXdGOH
	/ZqoZvATXkJC6R1QaIzFj3H6sFXIx1Z5yd64YBpCtdXnBEJEIhK+sb6UVxjFtaLOTV0AOpJUkP/bj
	26liZLH0Q+KEHH40D5leEeg5Ocdffd5XvgacNGgFAc9fKiUJqsvAJKwgvpsANvIxB3SwM95seTfGl
	2pkjYxtRg98dsBPnddQ2iSx0n06+/QFx+ZAy3HNHUL6iXQkmvdUyLr/cw8czoATlxSvjtB1xWRG1q
	w70Y+Z0HCGWvWlCrCMdeeNDO4pVJM+g9SeDeh9T6ZP1G81XulMGW/eX24CSpjatM4e2oYgLM8hCCg
	QESe8JUaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iej9F-0003j4-Oz; Tue, 10 Dec 2019 17:18:09 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej98-0003hb-Qv
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:18:04 +0000
Received: from lhreml705-cah.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 21CB27D2E1888597DC07;
 Tue, 10 Dec 2019 17:17:58 +0000 (GMT)
Received: from lhreml724-chm.china.huawei.com (10.201.108.75) by
 lhreml705-cah.china.huawei.com (10.201.108.46) with Microsoft SMTP Server
 (TLS) id 14.3.408.0; Tue, 10 Dec 2019 17:17:57 +0000
Received: from [127.0.0.1] (10.202.226.46) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5; Tue, 10 Dec
 2019 17:17:57 +0000
Subject: Re: perf top for arm64?
To: Jiri Olsa <jolsa@redhat.com>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
Date: Tue, 10 Dec 2019 17:17:56 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20191210170841.GA23357@krava>
Content-Language: en-US
X-Originating-IP: [10.202.226.46]
X-ClientProxiedBy: lhreml728-chm.china.huawei.com (10.201.108.79) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_091803_019169_D42744EC 
X-CRM114-Status: GOOD (  13.87  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
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
Cc: mark.rutland@arm.com, peterz@infradead.org, Linuxarm <linuxarm@huawei.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/12/2019 17:08, Jiri Olsa wrote:
> On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
>> On 10/12/2019 16:36, Jiri Olsa wrote:
>>> On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
>>>> Hi all,
>>>>
>>>> I find to my surprise that "perf top" does not work for arm64:
>>>>
>>>> root@ubuntu:/home/john/linux# tools/perf/perf top
>>>> Couldn't read the cpuid for this machine: No such file or directory
>>>
>>
>> Hi Jirka,
>>
>>> there was recent change that check on cpuid and quits:
>>>     608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
>>>
>>
>> ok, this is new code. I obviously didn't check the git history...
>>
>> But, apart from this, there are many other places where get_cpuid() is
>> called. I wonder what else we're missing out on, and whether we should still
>> add it.
> 
> right, I was just wondering how come vendor events are working for you,
> but realized we have get_cpuid_str being called in there ;-)
> 
> I think we should add it as you have it prepared already,
> could you post it with bigger changelog that would explain
> where it's being used for arm?

ok, I can look to do that.

But, as you know, we still need to fix perf top for other architectures 
affected.

Thanks,
John

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
