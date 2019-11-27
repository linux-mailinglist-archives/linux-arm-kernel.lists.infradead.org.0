Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BD2910AF44
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:07:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GSnEw7hukaH79KdS6C9zI/WA/H7tSUgVpJDmEwcMJqk=; b=LtBkQ9Wet9hQWU
	OvYImSw7kI6nY0f7xhDKC1kmNwTD/XcLScnW1YVcUQ7CtDlsDBREUarQxInoahEKCNIVFku9UUV97
	eQMHKQUXAtm/mYfUpfUjw119nsrIYopq+umid6eCqjR3R7uVZ2em9K2hYw1tr+TrTihhASkdO/I/n
	zbs3G/Cb/tyEQTK2b3jCMCBrZ7zi+EhgGeLHnq4VufxcYb+TWkIY5z67ToUHtRbuQQK9C21rKbEAo
	b/Uzjv7VYKhv5jtnGLvYU/Q51ML5TaZOw2V/3rrFcy5GdeCZoFAbqxyx4SC4hR56l4F/jjN5ZuHu0
	1xP7FGRG40x7vaU75BTg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZw6u-0000Ac-Uu; Wed, 27 Nov 2019 12:07:56 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZw6m-00009x-0E
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:07:49 +0000
Received: by mail-pg1-x543.google.com with SMTP id z188so10726220pgb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 04:07:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=K2kUt+3Utv0U/lxz9Sn3u3UBpoDUITVmuY7QcGVxNzk=;
 b=TFiRlUNuKgtzuenkN7FjwVpZDCmhS3ME+j1NHP+zQLLgsZSTQI7Y+H1jzhCjaVATdj
 ACslhGynFMAoB0PCZYTJkn7wDFXmf5JpoF/NX+saZwsMAVpESmzLGkqTGoZICjaj8QZF
 NsOeLxvY2SQLU8jihNN9ZutsKem3btGs/pUtlzYfAqE/AF1wEMv8eZO5WJyKBbs4GXX4
 oSEjaSptzKuqD0eXtcwvwJaIBgTci4YNIAzELApikP9ajvAMkzEVjbf9oYpNdcQzXqpG
 Ckv6oNSCP9c9oWzIjO6pNDQ8lQCYfbfYWFB1zov5oH1o84nj+MCCBuTSgvxFOuuTOAUB
 jp+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=K2kUt+3Utv0U/lxz9Sn3u3UBpoDUITVmuY7QcGVxNzk=;
 b=jAy+ZmoWCzhEnXt58S4G7IrsVXaPIYR2Js/G3mFyaQAZLR1zsTDmyWk6hPbsQcZFmH
 WyQasMGv5q7c4Q79bi7Mz2jv/qBMf7MWJ9mPsTp91XsNHGvMNdwDuuTBPcTRWSJBUUny
 GcKGb+2Y04Un6AHuDm9X+T5BY3nP2nslmZEGap1G1KdSv5h5DSx4xpr29PFUWXesRmyc
 BM30xHLKTn72Ms7PlgwVytMAhK9tvu7LpMSvpXxc6MREQbqWBo+OBHu7YhR9fyJSlgxO
 k4Z9qxRaSmzKf/aZ+MW1+bQTpJHY9TyDIo5hqtypMOarLuFV3CO71g/Amz6h2gE6ce25
 0jQQ==
X-Gm-Message-State: APjAAAXALOTe2wPDCiAE71PTThdqmqbgrysZ6u2whqWu9tZf94UbCekR
 FoB8KFfOSHHoAquuHWupYT0DxA==
X-Google-Smtp-Source: APXvYqzFJ3B2yRMuuWQYTrYHx8R6FxyuQQYlBZvpMqZgQZbJIZXWuMoIq2kRJTwIF2oUjuAhccJ11Q==
X-Received: by 2002:a63:1402:: with SMTP id u2mr4604261pgl.224.1574856467322; 
 Wed, 27 Nov 2019 04:07:47 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id s7sm1273794pfe.22.2019.11.27.04.07.46
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 Nov 2019 04:07:46 -0800 (PST)
Date: Wed, 27 Nov 2019 17:37:44 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Dietmar Eggemann <dietmar.eggemann@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127120744.iivgw25nixovfj7i@vireshk-i7>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127114801.23837-1-dietmar.eggemann@arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_040748_173980_5EFE7D1A 
X-CRM114-Status: GOOD (  16.04  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:543 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>, linux-pm@vger.kernel.org,
 "Rafael J . Wysocki" <rjw@rjwysocki.net>, Liviu Dudau <liviu.dudau@arm.com>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Sudeep Holla <sudeep.holla@arm.com>,
 Morten Rasmussen <morten.rasmussen@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-11-19, 12:48, Dietmar Eggemann wrote:
> Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> functions.") the core cpumask has to be modified during cpu hotplug
> operations.
> 
> ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> [1] fixed that but revealed another issue on TC2, i.e in its cpufreq
> driver.
> 
> During CPU hp stress operations on multiple CPUs, policy->related_cpus
> can be altered. This is wrong since this cpumask should contain the
> online and offline CPUs.
> 
> The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
> cpufreq_online() triggers in this case.
> 
> The core cpumask can't be used to set the policy->cpus in
> ve_spc_cpufreq_init() anymore in case it is called via
> cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().
> 
> An empty online() callback can be used to avoid that the init()
> driver function is called during CPU hotplug in so that
> policy->related_cpus will not be changed.
> 
> Implementing an online() also requires an offline() callback.
> 
> Tested on TC2 with CPU hp stress test (CPU hp from multiple CPUs at
> the same time).
> 
> [1]
> https://lore.kernel.org/r/20191127103353.12417-1-dietmar.eggemann@arm.com
> 
> Signed-off-by: Dietmar Eggemann <dietmar.eggemann@arm.com>

Wanna provide any fixes tag ?

> ---
>  drivers/cpufreq/vexpress-spc-cpufreq.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)

This is 5.5 material or 5.6 ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
