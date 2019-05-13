Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66EEA1B1F6
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 10:37:17 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tsyRJuMoKMZHnqUhYtlKPv5uh4KeDl459tVRtCo96MU=; b=sj86FxnyI5KzNRhYa5TVaW7oN
	9WAJEdxRt3LnPHXR6YQRQ5BbJ9vrGUlz1pW9Hn7A47DHXKBt7ZBYG4IQwep4+2w4zfQnrqIRgRkIg
	hjKP/8Wsi9FSokbbpz8sQYlb1phoMNcEHayW8KW8FvqgoCJi3zYzV7jzfZURNDPZXeYH/wF/HH1ar
	wW1kfP3I7OrT4U6bQfsn0N9/+7FIBCLJ68NdT/Qcya4yAEhxHXQGgSu35hXiVIjD6SVELFbL8ic0M
	KtdL+RP5frUI7C0sYqA7aOfXXDu+xu2LX/EkUyOJLdMs9DS80XitxEx/lh3DD92q2M50HJ5eg5hMl
	hZnYf9A1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ6SQ-0004le-Q2; Mon, 13 May 2019 08:37:14 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ6SK-0004lC-8C
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 08:37:09 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AC848341;
 Mon, 13 May 2019 01:37:05 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D6FB63F7B7;
 Mon, 13 May 2019 01:37:03 -0700 (PDT)
Subject: Re: [PATCH 5/5] docs: coresight: Document snapshot mode
To: leo.yan@linaro.org, mathieu.poirier@linaro.org
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-6-mathieu.poirier@linaro.org>
 <20190511073229.GA18064@leoy-ThinkPad-X240s>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <77e437ed-99b2-670e-7e29-33be584f2bd0@arm.com>
Date: Mon, 13 May 2019 09:37:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190511073229.GA18064@leoy-ThinkPad-X240s>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_013708_297394_CA8857AA 
X-CRM114-Status: GOOD (  18.57  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
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
Cc: corbet@lwn.net, alexander.shishkin@linux.intel.com,
 coresight@lists.linaro.org, acme@kernel.org, peterz@infradead.org,
 mingo@redhat.com, Mike.leach@arm.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi,

On 11/05/2019 08:32, Leo Yan wrote:
> On Wed, May 01, 2019 at 11:50:52AM -0600, Mathieu Poirier wrote:
> 
> [...]
> 
>> +2.2) Snapshot mode:
>> +
>> +Using perf's built-in snapshot mode with CoreSight tracers is supported - to
>> +do so the '-S' command line option needs to be specified.  Since current sink
>> +devices are used in double-buffer mode when operated from the perf interface,
>> +the size of the perf ring buffer needs to be adjusted to match the size of the
>> +buffer used by the CoreSight sinks.  From the perf command line it is possible
>> +to specify the number of pages to use for a session using the '-m,X' option,
>> +where X is the amount of pages.
>> +
>> +The system memory buffer used by ETR devices is automatically adjusted
>> +to match the size of the perf ring buffer and as such does not need to be
>> +modified on the perf command line.  For ETB and ETF devices the perf ring
>> +buffer size need to be adjusted to match the size of the internal buffer.
>> +
>> +The following examples assume a system page size of 4096 byte:
>> +
>> +	# cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
>> +	0x2000
>> +	# perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> 
> In this case it shows the usage for etb, thus should:
> s/20010000.etf/20010000.etb/
> 
> BTW, the user needs to convert the rdp to byte size with multiplying 4,
> it's good to explain for this in the doc or give related info in the
> driver warning log.

If at all we want to match the aux space size with that of the device buffer,
I recommend exposing this via a new "buf_pages" attribute under the sysfs to
help the user.

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
