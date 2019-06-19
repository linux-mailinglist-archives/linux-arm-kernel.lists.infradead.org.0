Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A36AC4B64E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 19 Jun 2019 12:38:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=oBj0fu5WFMdmvzTf6b06Ztx5EMPDzZXVlVyZKrrd5BU=; b=LIFvWynvEAlj0yBJOp2dmxMEG
	+w0jQ7DfKFmiMz4Q4pOls+FSw/z05G8clqVC9p/Nbjf+n9FHggqts6SjrOy27QPxC6N+huMsTCdIX
	Yd4A3T0duGE5Iea90kpQySACUMD24bQ18DFcDAaFCB3f1hS35+eFYhvzmXeWaUUl7ZcZAPYO1caZf
	ikuUeAgBABJuqNIX8RGHnXupmZxbMn1EtgtBo9GIWvcSUmeOGcSXmHUz0bfHNAp9gg0fC8b/FsHIb
	hQ84pI10ntl/8AU5xE0dASL2CHEWW9nFoYjGzb874Gr3L0DPp3BUbukwW976XuYiEzf1QcjH+3drl
	IL4tka9Lg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdXz1-0003Us-ED; Wed, 19 Jun 2019 10:38:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hdXyp-0003TD-Uc
 for linux-arm-kernel@lists.infradead.org; Wed, 19 Jun 2019 10:38:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E429E360;
 Wed, 19 Jun 2019 03:38:14 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 494BF3F738;
 Wed, 19 Jun 2019 03:40:00 -0700 (PDT)
Subject: Re: [PATCH v1 5/5] coresight: etm4x: save/restore state across CPU
 low power states
To: Sudeep.Holla@arm.com, andrew.murray@arm.com
References: <20190618125433.9739-1-andrew.murray@arm.com>
 <20190618125433.9739-6-andrew.murray@arm.com>
 <20190618132159.GA18121@e107155-lin>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <15ef45d4-ee1a-3c45-878d-f08f0a84cfeb@arm.com>
Date: Wed, 19 Jun 2019 11:38:12 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190618132159.GA18121@e107155-lin>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190619_033816_031447_B8DB814F 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: alexander.shishkin@linux.intel.com, Al.Grant@arm.com,
 linux-arm-kernel@lists.infradead.org, mathieu.poirier@linaro.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Cc: Al Grant, Mike Leach

Hi Sudeep,

On 18/06/2019 14:21, Sudeep Holla wrote:
> On Tue, Jun 18, 2019 at 01:54:33PM +0100, Andrew Murray wrote:
>> Some hardware will ignore bit TRCPDCR.PU which is used to signal
>> to hardware that power should not be removed from the trace unit.
> 
> So, how or can we identify or discover such system ? DT/ACPI ?
> 

I don't think there is a mechanism at the moment to identify such
systems. But if we really need to know this information, we could
always think about it.

>> Let's mitigate against this by saving and restoring the trace
>> unit state when the CPU enters low power states.
>>
> 
> I prefer to do this conditionally. It's unnecessary on systems which
> don't ignore the TRCPDCR.PU and I really don't like them to be penalised
> while we want to add this support for *broken* systems.

It is conditional. i.e, you may disable the operation using a kernel/module
parameter, which I think should be mentioned in the description here.

> 
> This is generally most useful to debug CPU suspend/resume exercising
> the code path completely with emulated CPU power on/off as most of the
> systems have the trace unit and the CPUs in the same power domain.

I understand, which is specifically why this comes with an option to handle
such cases.

> 
> Just curious if this reported on any platforms ?
> 

I have heard people complaining about this, but not sure about the exact
platform(s) affected.

> I wounder if we can use TRCPDSR(Power Down Status Register) to check the
> status. I know on Juno, it doesn't loose context rather the power down
> is emulated and saving/restoring may not be needed at all. Have you
> tested on Juno with and without these patches and seen any difference ?

The problem is trace unit looses power the moment CPU goes to low power mode
and if we try to read this register, it could cause unexpected side-effects.

Al, Mike, Mathieu,

What are your thoughts ?

Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
