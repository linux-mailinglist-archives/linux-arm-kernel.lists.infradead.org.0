Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03930189788
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 18 Mar 2020 10:02:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Y6CoLdU0Wj05gn02f/HuBxeppDWkCdnIIJb6PcdCxuQ=; b=SPdw4YrZ/BF+Z9p96rXmQzl0d
	OfzKkMC0SApsU4CfmJ4OIzx5F9svhHM8eBoMIsoJSwtNTchH++z8GLIU1vHROpM3X1Y6NJPW+Gusr
	pM95HGvH7FqGmzhbhdNz4w4TSpoE3xssSKRDnytRAEQ7ggcCGU66oHvmf05OOAME6iP5hlAk1kolQ
	zUN98pFUFhP82malYIMQJDgT8iw+Y9iwaiRiQMboXw3Y+H4NRzeSyEfdHJkUhsqq+9BWJPqi5XoHL
	wL3wvboP+aiOpXJiPC+sQoIAxNO3CMJkMzv7dHnyW0hJyE/LuXszumyJLh9H+1hYUF7UX7vc1PO/P
	PjbST9UTA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jEUaV-0003qO-N1; Wed, 18 Mar 2020 09:02:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jEUaN-0003pt-Nx
 for linux-arm-kernel@lists.infradead.org; Wed, 18 Mar 2020 09:02:01 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A10E631B;
 Wed, 18 Mar 2020 02:01:58 -0700 (PDT)
Received: from [10.37.12.57] (unknown [10.37.12.57])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 31F5D3F52E;
 Wed, 18 Mar 2020 02:01:57 -0700 (PDT)
Subject: Re: [PATCH v5 00/13] SCMI Notifications Core Support
To: Cristian Marussi <cristian.marussi@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200316150334.47463-1-cristian.marussi@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <e51598b5-2c7b-56f2-4426-9cce3d5d3d52@arm.com>
Date: Wed, 18 Mar 2020 09:01:55 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200316150334.47463-1-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200318_020159_823739_24E4C81D 
X-CRM114-Status: GOOD (  18.10  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Jonathan.Cameron@Huawei.com, james.quinlan@broadcom.com,
 sudeep.holla@arm.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On 3/16/20 3:03 PM, Cristian Marussi wrote:
> Hi all,
> 
> this series wants to introduce SCMI Notification Support, built on top of
> the standard Kernel notification chain subsystem.
> 
> At initialization time each SCMI Protocol takes care to register with the
> new SCMI notification core the set of its own events which it intends to
> support.
> 
> Using the API exposed via scmi_handle.notify_ops a Kernel user can register
> its own notifier_t callback (via a notifier_block as usual) against any
> registered event as identified by the tuple:
> 
> 		(proto_id, event_id, src_id)
> 
> where src_id represents a generic source identifier which is protocol
> dependent like domain_id, performance_id, sensor_id and so forth.
> (users can anyway do NOT provide any src_id, and subscribe instead to ALL
>   the existing (if any) src_id sources for that proto_id/evt_id combination)
> 
> Each of the above tuple-specified event will be served on its own dedicated
> blocking notification chain, dynamically allocated on-demand when at least
> one user has shown interest on that event.
> 
> Upon a notification delivery all the users' registered notifier_t callbacks
> will be in turn invoked and fed with the event_id as @action param and a
> generated custom per-event struct _report as @data param.
> (as in include/linux/scmi_protocol.h)
> 
> The final step of notification delivery via users' callback invocation is
> instead delegated to a pool of deferred workers (Kernel cmwq): each
> SCMI protocol has its own dedicated worker and dedicated queue to push
> events from the rx ISR to the worker.
> 

Could you give an example how the notification would be delivered
further to the upper layers, like hwmon driver, cpufreq or thermal?
For example, for sensor protocol which delivers event
SENSOR_TRIP_POINT_EVENT indicating a trip point was crossed.

Would it be possible for:
drivers/hwmon/scmi-hwmon.c
to get this temperature events like an interrupt?

I couldn't find it in the implementation of the registered handlers.

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
