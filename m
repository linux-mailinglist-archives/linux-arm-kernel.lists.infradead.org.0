Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03DCD19BE73
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Apr 2020 11:15:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UlBubqQLtIgsj21bcKcHyQcIsEESLIKUo4bLP/GUVRo=; b=KQPQsGNt6fkPu3
	yp2rh7w9iX5z+fGedXMbqXm0lJjQ+zP1dI93AFZjWJ9ftSYmK8TWc7c3wHTjoy4/ho1gt5RoLBwHs
	s7iw/pp8Q3uAOMBwZB5KJfkjCnQtpWlUZF2+S1ob2GtxUtaCNdSVvxpaNRdo+0yPPCxm7HVB5TESZ
	2sFgMC4qfk+w9k+4kWx2JI63u3o4wLlKZo60NJUvb9CT7AuhO1D48Gifo8dEno8how1FTCYyRih9q
	o03yzmh7l8jsLRWSdF8Igt24TPLwArq/f6ARHrSxPctxSoF704n5ZwKAWN6rqOCU7Z6Iz0DQ4ikWK
	guBkKDE2z32un9sNuo7w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJvwV-0000ar-8U; Thu, 02 Apr 2020 09:15:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJvwO-0008En-4C
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Apr 2020 09:15:13 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7D44831B;
 Thu,  2 Apr 2020 02:15:08 -0700 (PDT)
Received: from bogus (unknown [10.37.12.97])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4DAF93F68F;
 Thu,  2 Apr 2020 02:15:06 -0700 (PDT)
Date: Thu, 2 Apr 2020 10:14:55 +0100
From: Sudeep Holla <sudeep.holla@arm.com>
To: Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [PATCH] cpufreq: Select schedutil when using big.LITTLE
Message-ID: <20200402091446.GA19366@bogus>
References: <20200402080239.7471-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200402080239.7471-1-linus.walleij@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200402_021512_214385_A51717F2 
X-CRM114-Status: GOOD (  16.36  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Arnd Bergmann <arnd@arndb.de>, linux-pm@vger.kernel.org,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J . Wysocki" <rafael@kernel.org>, Russell King <linux@armlinux.org.uk>,
 Sudeep Holla <sudeep.holla@arm.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Apr 02, 2020 at 10:02:39AM +0200, Linus Walleij wrote:
> When we are using a system with big.LITTLE HMP
> configuration, we need to use EAS to schedule the
> system.
> 
> As can be seen from kernel/sched/topology.c:
> 
>  "EAS can be used on a root domain if it meets all the following conditions:
>   1. an Energy Model (EM) is available;
>   2. the SD_ASYM_CPUCAPACITY flag is set in the sched_domain hierarchy.
>   3. no SMT is detected.
>   4. the EM complexity is low enough to keep scheduling overheads low;
>   5. schedutil is driving the frequency of all CPUs of the rd;"
> 
> This means that at the very least, schedutil needs to be
> available as a scheduling policy for EAS to work on these
> systems. Make this explicit by defaulting to the schedutil
> governor if BIG_LITTLE is selected.
> 
> Currently users of the TC2 board (like me) has to figure these
> dependencies out themselves and it is not helpful.
> 
> Suggested-by: Arnd Bergmann <arnd@arndb.de>
> Cc: Vincent Guittot <vincent.guittot@linaro.org>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Cc: Sudeep Holla <sudeep.holla@arm.com>

Good to see another user of TC2 ;)

FWIW:
Acked-by: Sudeep Holla <sudeep.holla@arm.com>

-- 
Regards,
Sudeep

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
