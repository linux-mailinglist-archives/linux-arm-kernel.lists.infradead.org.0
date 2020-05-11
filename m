Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DF60D1CDDB9
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 16:53:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=18Zhh+MeClQqUjJvTKtJjvZq2vQ839IWFVRe0kh1ZTw=; b=LTH08gxJqV0V5s8XMe3QXfYWq
	gAJV4YE+CLVXKSfMhnHf4Sd/HSui5B9Vqp24meBWtIJJLEmMMaYz8TY3vG9YmjcHjd/9lfNFnRKxF
	11zGFZFK+121u6T04R9sQuV4f5MrcCVfOjDwmFJahJFqlRHTUj8ODFSRnyaY+APnYEQ0ehcdkGqNF
	ox0DM6A+cVI7Q1XvnyicLZEftm17CU0fE4DLT+ByxjzQFXKVvX71GE4GHH0dG8RBSCeGP4YG7/HcL
	OY7Lot46PlT2rjacu65Nan9AftmSdsSuV66Bq5U6UCj3YMVEFL9HKbmf1Mo71YIu1r3ar9rWG+H6L
	dQ9jJdSTQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY9no-0000JL-Ip; Mon, 11 May 2020 14:53:08 +0000
Received: from lhrrgout.huawei.com ([185.176.76.210] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY9nh-0000I9-6Q
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 14:53:02 +0000
Received: from lhreml724-chm.china.huawei.com (unknown [172.18.7.106])
 by Forcepoint Email with ESMTP id 9E81F9E1ADD340018546;
 Mon, 11 May 2020 15:52:55 +0100 (IST)
Received: from [127.0.0.1] (10.47.0.142) by lhreml724-chm.china.huawei.com
 (10.201.108.75) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1913.5; Mon, 11 May
 2020 15:52:54 +0100
Subject: Re: [PATCH RFC v3 02/12] perf jevents: Add support for system events
 tables
To: Jiri Olsa <jolsa@redhat.com>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-3-git-send-email-john.garry@huawei.com>
 <20200511110127.GB2986380@krava>
From: John Garry <john.garry@huawei.com>
Message-ID: <7d416932-12a0-8130-354a-f0a9898d9bf6@huawei.com>
Date: Mon, 11 May 2020 15:52:02 +0100
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.2
MIME-Version: 1.0
In-Reply-To: <20200511110127.GB2986380@krava>
Content-Language: en-US
X-Originating-IP: [10.47.0.142]
X-ClientProxiedBy: lhreml705-chm.china.huawei.com (10.201.108.54) To
 lhreml724-chm.china.huawei.com (10.201.108.75)
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_075301_383475_4D8C49F0 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [185.176.76.210 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H4      RBL: Very Good reputation (+4)
 [185.176.76.210 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/05/2020 12:01, Jiri Olsa wrote:
> On Thu, May 07, 2020 at 07:57:41PM +0800, John Garry wrote:
> 
> SNIP
> 
>>   
>> +static bool is_sys_dir(char *fname)
>> +{
>> +	char *pos;
>> +
>> +	while (true) {
>> +		pos = strchr(fname, '/');
> 
> would strrchr be faster?

maybe, I'll check the logic here to see if it can be reduced

  also I thought there's something like
> basename function that could be usable in here?

it's tricky, as we support putting JSONs in ./, or ./sys, or ./cpu

But I'll revisit this, as I cannot understand the logic at a glance, 
which is not good...

Thanks,
John

> 
> jirka
> 
>> +
>> +		if (!pos) {
>> +			if (!strcmp(fname, "sys"))
>> +				return true;
>> +			return false;
>> +		}
>> +
>> +		fname = pos + 1;
>> +	}
>> +
>> +	return false;
>> +}
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
