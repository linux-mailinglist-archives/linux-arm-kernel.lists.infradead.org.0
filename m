Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783F51F1E21
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 19:06:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=I+54s6fH0un+FeO9vlz2cHRbyKAJdlOuH1Rtf33DQQ8=; b=NOrNtDYKVkWbFn
	Psr3vZi4lvUtKmjh7GAtwsKxJpmywuknblECmqlgJV0FHcufpwluSAgjOBGWoUTP+eHfxe9oV0Ivf
	XjQutPXZ631lVxpEwiLZ71opkGqPbzeF5J562nali3hL0IqRy8/9VDQ/hFT0PGEiQLLCj3j9PbQEy
	tUQ0jruJXkRYrAl0cbT9O+Sc89n1+iXY6swBIAmSZ7nZFYVazNlslxN18duh7JQZygpPeH9Pq4cFy
	+p/2MJm1j8pubb0hca1VZVfpOg3APqNzOKzqGzTmad26QwJA5RcQBR1XKZzlE7HofuZUwm89g3L9R
	F1/ucMAAnWiUVVyBrKAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiLDr-0002OH-Em; Mon, 08 Jun 2020 17:06:07 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiLDh-0002Ni-Vk
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 17:05:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 5EDC01FB;
 Mon,  8 Jun 2020 10:05:57 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8D6DB3F73D;
 Mon,  8 Jun 2020 10:05:53 -0700 (PDT)
Date: Mon, 8 Jun 2020 18:05:50 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v8 0/9] SCMI Notifications Core Support
Message-ID: <20200608170550.GE13622@bogus>
References: <20200520081118.54897-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520081118.54897-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200608_100558_068668_C102EB99 
X-CRM114-Status: GOOD (  16.79  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Sudeep Holla <sudeep.holla@arm.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, james.quinlan@broadcom.com,
 Jonathan.Cameron@Huawei.com, dave.martin@arm.com, lukasz.luba@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Cristian,

On Wed, May 20, 2020 at 09:11:09AM +0100, Cristian Marussi wrote:
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
>  the existing (if any) src_id sources for that proto_id/evt_id combination)
>
> Each of the above tuple-specified eventis will be served on its own
> dedicated blocking notification chain, dynamically allocated on-demand when
> at least one user has shown interest on that event.
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
> Based on scmi-next/for-next/scmi 5.7 [1], on top of:
>
> commit f7199cf48902 ("firmware: arm_scmi: Fix return error code in
> 		     smc_send_message")
>
> This series has been tested on JUNO with an experimental firmware only
> supporting Perf Notifications.
>

Thanks for working on this. Looks mostly OK. I have few minor comments
or queries.

--
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
