Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 29189131585
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  6 Jan 2020 16:57:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QBXJbCNpXlq7EHw4z5ys1uLXyBQw55RCfzrzrakjjwM=; b=cEO4Y7TMc7IJkt
	hpI3s+MelmBsY0/gzKJXbUfrNms7xFIIgL+XFydGJFVbYEf6xmfmQgs1NRkeUJoMW6/9F5m2FOjrH
	E0e2MpGzwUCSp1k0wzYc5mwBi8gL9CZL1Dqc8jg3oNmS3YFnqcxyCHtc0Ba1AHWFmp/s8uS9qOU/B
	ZS+B1HQ09pJv/4fPfumyR43jCLtUdGYSaYIMs5+zZxoCOipKzxJ0eGJg2vKIZ6wRjuZ6O/IPhBNaK
	gK6slejh6YH6T5Jpic6Ltog5/XR/sELutCHboLnlCqTD/gogcGKX1Fd6LQ30fl1wQ7KMu/ndbm5+Q
	dNBKAeOxpxf2CUtdCARw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ioUkb-0003Aj-Pb; Mon, 06 Jan 2020 15:57:05 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ioUkU-00039q-RW
 for linux-arm-kernel@lists.infradead.org; Mon, 06 Jan 2020 15:57:00 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C148331B;
 Mon,  6 Jan 2020 07:56:54 -0800 (PST)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 523CE3F6C4;
 Mon,  6 Jan 2020 07:56:54 -0800 (PST)
Subject: Re: [PATCH 1/3] firmware: arm_sdei: fix possible deadlock
To: luanshi <zhangliguang@linux.alibaba.com>
References: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
From: James Morse <james.morse@arm.com>
Message-ID: <0f122a88-e2e1-2139-1c2d-095f684a5701@arm.com>
Date: Mon, 6 Jan 2020 15:56:51 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <1577110975-54782-1-git-send-email-zhangliguang@linux.alibaba.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200106_075658_934631_B7D8066C 
X-CRM114-Status: GOOD (  14.36  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Luanshi!

On 23/12/2019 14:22, luanshi wrote:
> From: Liguang Zhang <zhangliguang@linux.alibaba.com>
> 
> We call sdei_reregister_event() with sdei_list_lock held but
> _sdei_event_register() and sdei_event_destroy() also acquires
> sdei_list_lock thus creating A-A deadlock.

Ooer. This was clearly never tested properly!
The hibernate support got plenty of testing, but it must have been with only private
events. Hibernate+SDEI with a side-order of cpuhp is a niche sport.


> diff --git a/drivers/firmware/arm_sdei.c b/drivers/firmware/arm_sdei.c
> index a479023..b122927 100644
> --- a/drivers/firmware/arm_sdei.c
> +++ b/drivers/firmware/arm_sdei.c
> @@ -651,20 +651,19 @@ static int sdei_reregister_event(struct sdei_event *event)
>  
>  	lockdep_assert_held(&sdei_events_lock);
>  
> -	err = _sdei_event_register(event);
> +	err = sdei_api_event_register(event->event_num,
> +				       sdei_entry_point,
> +				       event->registered,
> +				       SDEI_EVENT_REGISTER_RM_ANY, 0);

I don't like pushing these 'api' calls further out creating more of them...

The root of the problem is the reregister/reenable values are protected by the same lock
as the list, _sdei_event_register() needs to manipulate these, which it can't do from
something that is walking the list.

The list lock is a spin_lock() because the cpuhp callbacks happen too early for taking
mutexes, (fairly sure). Those callbacks don't hit this because they skip shared events.


As the simplest fix for stable, could we add another spin_lock inside struct sdei_event to
independently protect the reregister/renable values? This would always be taken last, and
removes the double-lock.


Was this from inspection, or is there some tool I should be running?!
(my testing obviously missed it)


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
