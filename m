Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A15B37969
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Jun 2019 18:21:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=l3QvwB94ULRmGwsVtGA6DcXPft76bCYgbclqDKPR8U4=; b=iTRKDh/H/LHq1l8c7YQkC8nt+
	fuiIeJ9vBPx7ZEE5ZfAi1uPvB0WnCuRnHVzQV5NCyDI4ROTbLCZbFe2On8Zv40WKbpKX9JIRGDEux
	DLlzW6zWd31wtGzGTB5SXVsGTTMKhQI+jALt86ezFFxe0xn8QfHnuoCL3KfRyNk2WZuEY0eQ/LLaM
	hdZHpgnz5xOKCVEZ9tJiuiY1o/AGzx3o1Qvrc7slKHw+4j3pFvvzOKmIdH1+61BTTnv8dezfVsxgH
	72tXcGMhtj240yPgOWpKoG7KpRHEayV1FMCKd4QIGZv0gzAxEr68iS6ewu8L+LNwsrEAVOC5FPN+n
	rzRYZJaTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hYv8r-00027A-L0; Thu, 06 Jun 2019 16:21:29 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hYv8k-00026j-72
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Jun 2019 16:21:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D6879A78;
 Thu,  6 Jun 2019 09:21:21 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C4B963F690;
 Thu,  6 Jun 2019 09:21:20 -0700 (PDT)
Subject: Re: [PATCH] Documentation: coresight: Update the generic device names
To: mathieu.poirier@linaro.org
References: <1559229077-26436-1-git-send-email-suzuki.poulose@arm.com>
 <20190603190133.GA20462@xps15>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <99055755-6525-694e-a15d-5de7318a80da@arm.com>
Date: Thu, 6 Jun 2019 17:21:19 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190603190133.GA20462@xps15>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_092122_256930_13D40895 
X-CRM114-Status: GOOD (  18.25  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: coresight@lists.linaro.org, corbet@lwn.net, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, leo.yan@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mathieu,

On 03/06/2019 20:01, Mathieu Poirier wrote:
> Hi Suzuki,
> 
> On Thu, May 30, 2019 at 04:11:17PM +0100, Suzuki K Poulose wrote:
>> Update the documentation to reflect the new naming scheme with
>> latest changes.
>>
>> Reported-by: Leo Yan <leo.yan@linaro.org>
>> Cc: Mathieu Poirier <mathieu.poirier@linaro.org>
>> Cc: Jonathan Corbet <corbet@lwn.net>
>> Signed-off-by: Suzuki K Poulose <suzuki.poulose@arm.com>
>> ---
>>   Documentation/trace/coresight.txt | 34 +++++++++++++++++++---------------
>>   1 file changed, 19 insertions(+), 15 deletions(-)
>>
>> diff --git a/Documentation/trace/coresight.txt b/Documentation/trace/coresight.txt
>> index efbc832..7b427cf 100644
>> --- a/Documentation/trace/coresight.txt
>> +++ b/Documentation/trace/coresight.txt
>> @@ -326,16 +326,20 @@ amount of processor cores), the "cs_etm" PMU will be listed only once.
>>   A Coresight PMU works the same way as any other PMU, i.e the name of the PMU is
>>   listed along with configuration options within forward slashes '/'.  Since a
>>   Coresight system will typically have more than one sink, the name of the sink to
>> -work with needs to be specified as an event option.  Names for sink to choose
>> -from are listed in sysFS under ($SYSFS)/bus/coresight/devices:
>> +work with needs to be specified as an event option.
>> +On newer kernels the available sinks are listed in sysFS under:
>> +($SYSFS)/bus/event_source/devices/cs_etm/sinks/
>>   
>> -	root@linaro-nano:~# ls /sys/bus/coresight/devices/
>> -		20010000.etf   20040000.funnel  20100000.stm  22040000.etm
>> -		22140000.etm  230c0000.funnel  23240000.etm 20030000.tpiu
>> -		20070000.etr     20120000.replicator  220c0000.funnel
>> -		23040000.etm  23140000.etm     23340000.etm
>> +	root@localhost:/sys/bus/event_source/devices/cs_etm/sinks# ls
>> +	tmc_etf0  tmc_etr0  tpiu0
>>   
>> -	root@linaro-nano:~# perf record -e cs_etm/@20070000.etr/u --per-thread program
>> +On older kernels, this may need to be found from the list of coresight devices,
>> +available under ($SYSFS)/bus/coresight/devices/:
>> +
>> +	root@localhost:/sys/bus/coresight/devices# ls
>> +	etm0  etm1  etm2  etm3  etm4  etm5  funnel0  funnel1  funnel2  replicator0  stm0 tmc_etf0  tmc_etr0  tpiu0
>> +
>> +	root@linaro-nano:~# perf record -e cs_etm/@tmc_etr0/u --per-thread program
> 
> On the "older" kernels you are referring to one would find the original naming
> convention.  Everything else looks good to me.

True, but do we care what we see there ? All we care about is the location,
where to find them. I could fix it, if you think thats needed.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
