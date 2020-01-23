Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 01AD5146644
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 23 Jan 2020 12:02:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nKqIhDC6Q/ctrQZ+NnnnX1Oc/ELV/85P90yN4o19Nz4=; b=jnl1J9vsJ2UpFy
	Y6+0FCnnNuHvwhuYDLE8fx07aJtnkA/+7rXWuJIFkBaIIdOjGgJz6NEcXnjrj/fkeVeCqDNfEivAs
	CfgTiTewSkFYBO2DrU5tE3XFZe/Ub/J7rqeI5/9dO+jSKIm92gYeH2Kp6j491FXe1l1mLFQvbOnIK
	06Yh+IGlSZUz4m3GmrkhAsJg3kfbwA3TbtAqbOKpcrfONe4CEWX/2fhXyOyF8KqW3pQX+H98BBQmP
	txPdTYPLNVtcglASTeqCxuHzt8IHjB9qkO4RiR4LGHj9RXvH8+fI/VYWaH31qUE6E3yM7hOI4PUH6
	QcKmPg8Y8CBmbsutv5Mg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iuaFn-0000r1-Nq; Thu, 23 Jan 2020 11:02:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iuaFd-0000qK-Gu
 for linux-arm-kernel@lists.infradead.org; Thu, 23 Jan 2020 11:02:18 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 96BE631B;
 Thu, 23 Jan 2020 03:02:16 -0800 (PST)
Received: from [10.1.197.50] (e120937-lin.cambridge.arm.com [10.1.197.50])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id E150A3F6C4;
 Thu, 23 Jan 2020 03:02:15 -0800 (PST)
Subject: Re: [RFC PATCH 00/11] SCMI Notifications Support
To: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
References: <20200120122333.46217-1-cristian.marussi@arm.com>
From: Cristian Marussi <cristian.marussi@arm.com>
Message-ID: <04de7f47-76c8-6250-3360-5a928cd3842c@arm.com>
Date: Thu, 23 Jan 2020 11:02:14 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200120122333.46217-1-cristian.marussi@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200123_030217_605705_26F43A1F 
X-CRM114-Status: GOOD (  15.00  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: james.quinlan@broadcom.com, lukasz.luba@arm.com, sudeep.holla@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 20/01/2020 12:23, Cristian Marussi wrote:
> Hi all,
> 
> this series wants to introduce SCMI Notification Support, built on top of
> the standard Kernel notification chain subsystem.
> 
[snip]

> 
> Based on scmi-next [1], on top of:
> 
> commit 257d0e20ec4f ("include: trace: Add SCMI header with trace events")

Sorry but I've got this is wrong, the series is based in fact on top of the
very following commit on scmi-next [1]:

729d3530a504 drivers: firmware: scmi: Extend SCMI transport layer by trace events

Thanks Jim for reporting this.

Regards

Cristian

> 
> This series has been tested on JUNO with an experimental firmware only
> supporting Perf Notifications.
> 
> Any thoughts ?
> 
> Thanks
> 
> Cristian
> ----
> 
> [1] git://git.kernel.org/pub/scm/linux/kernel/git/sudeep.holla/linux.git
> 
> Cristian Marussi (8):
>   firmware: arm_scmi: Add core notifications support
>   firmware: arm_scmi: Add notifications anti-tampering
>   firmware: arm_scmi: Enable core notifications
>   firmware: arm_scmi: Add Power notifications support
>   firmware: arm_scmi: Add Perf notifications support
>   firmware: arm_scmi: Add Sensor notifications support
>   firmware: arm_scmi: Add Reset notifications support
>   firmware: arm_scmi: Add Base notifications support
> 
> Sudeep Holla (3):
>   firmware: arm_scmi: Add receive buffer support for notifications
>   firmware: arm_scmi: Update protocol commands and notification list
>   firmware: arm_scmi: Add support for notifications message processing
> 
>  drivers/firmware/arm_scmi/Makefile  |    2 +-
>  drivers/firmware/arm_scmi/base.c    |  132 ++++
>  drivers/firmware/arm_scmi/bus.c     |    3 +
>  drivers/firmware/arm_scmi/common.h  |    4 +
>  drivers/firmware/arm_scmi/driver.c  |  121 +++-
>  drivers/firmware/arm_scmi/notify.c  | 1047 +++++++++++++++++++++++++++
>  drivers/firmware/arm_scmi/notify.h  |   79 ++
>  drivers/firmware/arm_scmi/perf.c    |  167 ++++-
>  drivers/firmware/arm_scmi/power.c   |  161 +++-
>  drivers/firmware/arm_scmi/reset.c   |  126 +++-
>  drivers/firmware/arm_scmi/sensors.c |  105 ++-
>  include/linux/scmi_protocol.h       |   82 +++
>  12 files changed, 1991 insertions(+), 38 deletions(-)
>  create mode 100644 drivers/firmware/arm_scmi/notify.c
>  create mode 100644 drivers/firmware/arm_scmi/notify.h
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
