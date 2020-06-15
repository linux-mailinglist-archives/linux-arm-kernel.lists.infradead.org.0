Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BF5C1F9AEB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 16:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NbglIRvBN/yzrVjNa1NyNEm66YYMPHNF23PZ9KQscvc=; b=gh7UxRIohCPhKBJkGkkeTlksy
	u056Y//y53glmuGaGNP5bNjKpWHhGNhNF718rrM1QCNd5Njp0aAkvtlZNraQawFhw+ouUhZWIg9ZX
	pjaCeyspzBm3itTI5Gu98FZy0iUjfi8jx6RP8ec/nHlrwrhpskeQ/05qlx0wbnQnzKsKSbP/c9DSN
	sPMVaUPQBcqXR3dwnHBHzXKfD4nokhJIjFnwKmOx6YYjgPrvHzLLEQYadt90mHJZ341rh3ms6sY2o
	0KAVzAIj87tCQgmfznp9y3sPG/cXYYypkub7JlVYq8wx5+s83s7tKVzZ6GuJV0CMYV4n+hVOcRFtQ
	++HOORZtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkqU0-0000q8-8u; Mon, 15 Jun 2020 14:53:08 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkqTk-0000p1-BR
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 14:52:54 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.107])
 by Forcepoint Email with ESMTP id 55033B26EC0FA270F1FE;
 Mon, 15 Jun 2020 15:52:42 +0100 (IST)
Received: from [127.0.0.1] (10.47.8.237) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Mon, 15 Jun
 2020 15:52:41 +0100
Subject: Re: [PATCH 2/2] perf pmu: Improve CPU core PMU HW event list ordering
To: Namhyung Kim <namhyung@kernel.org>
References: <1592214046-32385-1-git-send-email-john.garry@huawei.com>
 <1592214046-32385-3-git-send-email-john.garry@huawei.com>
 <CAM9d7ciyOmzxUZ4dGJ12607rTnCCdNBbuQtv1gEmUe0FQJxELA@mail.gmail.com>
From: John Garry <john.garry@huawei.com>
Message-ID: <7554ef7d-6d85-fa5f-2018-415f2260fa60@huawei.com>
Date: Mon, 15 Jun 2020 15:51:19 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <CAM9d7ciyOmzxUZ4dGJ12607rTnCCdNBbuQtv1gEmUe0FQJxELA@mail.gmail.com>
Content-Language: en-US
X-Originating-IP: [10.47.8.237]
X-ClientProxiedBy: lhreml729-chm.china.huawei.com (10.201.108.80) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_075252_535710_D4DE2BF7 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [185.176.76.210 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Peter Zijlstra <peterz@infradead.org>, will@kernel.org, linuxarm@huawei.com,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 15/06/2020 15:36, Namhyung Kim wrote:>>   static int cmp_sevent(const 
void *a, const void *b)
>> @@ -1416,6 +1417,12 @@ static int cmp_sevent(const void *a, const void *b)
>>                  if (n)
>>                          return n;
>>          }
>> +
>> +       if (as->is_cpu && !bs->is_cpu)
>> +               return -1;
>> +       else if (!as->is_cpu && bs->is_cpu)
>> +               return 1;
>> +
> This can be:
> 
>          if (as->is_cpu != bs->is_cpu)
>                  return bs->is_cpu - as->is_cpu;
> 

That's more concise, but maybe not as readable at a glance. I don't mind 
though, so can change.

Thanks,
John


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
