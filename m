Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0739989BDF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 12:48:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:References:
	To:From:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=rizrJv04c95pV7X+lNwl2dfiPpCewvlgycrtisvKzuw=; b=MsQJNaNS7OVPme9nDtr9gr/rE
	Wh5rjA1XXoRIYH7sF3C9MNx0I8QXi7si7gTfjxQFbl9tSrHeWblwUsvjk4I6LLN8SNJbvdoFIdZIJ
	hbkrXeQ8TDsL6aZPYk01qp2JDw13usXCLdzp4fxcYhv0P6mEBEF1lGGQevwnJpbTr04fTdC+9uXcB
	huzlKNXYwkfT3hAQwWVlwnauPO+fXdiDaGZmML3X9IPsnz+WxbZFb6vmr6PaE37+GP59QfoimtCsW
	GDXfoUygAiT3Axk4r41e8eVekatjJQ7tYkQOSKhEs67qF3+88g5ameBa3h7SYfcC78kUkSxWD+bNY
	P8uh2Hp6g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hx7sh-0007uN-8Y; Mon, 12 Aug 2019 10:48:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hx7sE-0007mW-Gr
 for linux-arm-kernel@lists.infradead.org; Mon, 12 Aug 2019 10:48:23 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C5A5A15AB;
 Mon, 12 Aug 2019 03:48:21 -0700 (PDT)
Received: from dawn-kernel.cambridge.arm.com (unknown [10.1.197.116])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 111603F706;
 Mon, 12 Aug 2019 03:48:20 -0700 (PDT)
Subject: Re: [PATCH v2] coresight: Serialize enabling/disabling a link device.
From: Suzuki K Poulose <suzuki.poulose@arm.com>
To: yabinc@google.com, mathieu.poirier@linaro.org,
 alexander.shishkin@linux.intel.com
References: <20190809214538.29677-1-yabinc@google.com>
 <056f411f-eef2-752e-0c02-2e5ed803cc62@arm.com>
Message-ID: <606aaae4-3f26-7a58-3276-f4c5e3f8d17d@arm.com>
Date: Mon, 12 Aug 2019 11:48:20 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <056f411f-eef2-752e-0c02-2e5ed803cc62@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_034822_612797_EFB3EC5F 
X-CRM114-Status: GOOD (  12.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Yabin,

On 12/08/2019 11:38, Suzuki K Poulose wrote:
> 
> Hi Yabin,
> 
> On 09/08/2019 22:45, Yabin Cui wrote:
>> When tracing etm data of multiple threads on multiple cpus through perf
>> interface, some link devices are shared between paths of different cpus.
>> It creates race conditions when different cpus wants to enable/disable
>> the same link device at the same time.
>>
>> Example 1:
>> Two cpus want to enable different ports of a coresight funnel, thus
>> calling the funnel enable operation at the same time. But the funnel
>> enable operation isn't reentrantable.
>>
>> Example 2:
>> For an enabled coresight dynamic replicator with refcnt=1, one cpu wants
>> to disable it, while another cpu wants to enable it. Ideally we still have
>> an enabled replicator with refcnt=1 at the end. But in reality the result
>> is uncertain.
>>
>> Since coresight devices claim themselves when enabled for self-hosted
>> usage, the race conditions above usually make the link devices not usable
>> after many cycles.
>>
>> To fix the race conditions, this patch adds a spinlock to serialize
>> enabling/disabling a link device.

Please could you also add :

Fixes : a06ae8609b3dd ("coresight: add CoreSight core layer framework")

Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
