Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 53E3110AF67
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 13:14:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Y7rEOSHVSs2HnGJwiEYuthE/iyewbNAeEVKE673gbV8=; b=J2M6hpJzcaj6fE
	1buVAlLsr5X6t6S72F1DCpjt7oY3LdIx214uUR8HmjipxhH7OsqAxonhfYBxPwPR2nGpWMAMSDi1h
	hjChMKKv12vIJbTzDQgTOWDI5oEkqEQJBj7kHQTZFo9UYWxJVvRnv0xCgBxM70EewZHHVOvwzVI2J
	KU+aInRmeUiJA3Eiv4074OAxTGSAXkPY11XMPK6ZhR3kIUn5DUziFapzDKei+rvk7M4TnbId71DOi
	4Q7ETMxC/Mb7JkCYTH278CRc8r48Ed58XJ2+9yose0E+52VrA1oXgd7eyCAm9BrgAEJIF/ke5QJGY
	t7L6L6umDitvYseR7fww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iZwD2-0002px-OX; Wed, 27 Nov 2019 12:14:16 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZwCs-0002pC-VU
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 12:14:09 +0000
Received: by mail-pf1-x442.google.com with SMTP id y206so2282417pfb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 27 Nov 2019 04:14:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=7BbLhqWTTG2Etn1jUokhvCpbFC9M+0mSaR7SHkjHB38=;
 b=MJV43KtfU5dh6w6aXoZKp8+WYygfis1sjvm07Kl9Wd2wNneinEn9vQZrPavzQrE2CW
 An4nyqIzxlGj2Uo04rQvD5QQ8E2bKZvL3K7REcobBBGj+ZIeP45pAwN51u05YbYjMYpI
 k0cJPlotmo9gi6yJxu6kZX7dwVfqaZoZ0xos/iPV1VMqs84HRBSw0mfakGzaZU7YJjT7
 /enzk9H6qXC02B3XolxZ9hyB0j/3AKfz03WOdPpltou7SEkO3bdeCatGXYnCp3Nml1f+
 Px8qwJrGFvmCqWMZvTF+k1Vcxj8wZf+r6TJgOp3FB3DagUvJWrOycjBoRDKl7DkFqDGF
 PtXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7BbLhqWTTG2Etn1jUokhvCpbFC9M+0mSaR7SHkjHB38=;
 b=mYo3rP5UPrg4axqDcZfakFaVUPWCxK0c6HO160xmWSuZHYWTvW3T8Po1SGSAQB9v0g
 bwzTfEZFJDaeQWRlFk2s/aTW6mUvPs0WXXaLwBYXg8kii78rtfpQo3z6RRWEN3m80/qa
 8ZMTFuKtRUSYCTs6VCO5gzttKVyQljCNPzrcAzwFX2M+ZsaZNJFURTzntsX0V5vxYxxh
 wU9ipx1kZlxe1+/a6Sr2idyUvfxSMpYNLzLv0bii50EsZukPEoZrI3+3NiioA5yVAhbr
 jtFa8gKUaRnCljuuwc8QyrrBPMiqoPfkVrcLrXjUZPvRC5jsT9syBygaw04JHwINZb9p
 PWlw==
X-Gm-Message-State: APjAAAWpuD0fS13nrL1FaiFI2KQ9fbsQtDguTRadySgO0y82WFdd1ztT
 odNG7qKjpGE+EdntQ6N0/QBlUg==
X-Google-Smtp-Source: APXvYqwzOguWLwbfuOMSUTEFzH0IEWbfLeEU8s4GwdBdvUFeC/cQe/AC6XVbhE9JsWqq2Fvg6hcDAw==
X-Received: by 2002:a62:2a4c:: with SMTP id q73mr46113496pfq.94.1574856844848; 
 Wed, 27 Nov 2019 04:14:04 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id z10sm16126812pgg.39.2019.11.27.04.14.03
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 27 Nov 2019 04:14:04 -0800 (PST)
Date: Wed, 27 Nov 2019 17:44:02 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH] cpufreq: vexpress-spc: Fix wrong alternation of
 policy->related_cpus during CPU hp
Message-ID: <20191127121402.vd3tul4gmqm6qtyb@vireshk-i7>
References: <20191127114801.23837-1-dietmar.eggemann@arm.com>
 <20191127120816.GC29301@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191127120816.GC29301@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_041407_030217_9F3BF7FB 
X-CRM114-Status: GOOD (  19.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
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
 linux-kernel@vger.kernel.org, Morten Rasmussen <morten.rasmussen@arm.com>,
 linux-arm-kernel@lists.infradead.org,
 Dietmar Eggemann <dietmar.eggemann@arm.com>, Lukasz Luba <lukasz.luba@arm.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 27-11-19, 12:08, Sudeep Holla wrote:
> On Wed, Nov 27, 2019 at 12:48:01PM +0100, Dietmar Eggemann wrote:
> > Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> > functions.") the core cpumask has to be modified during cpu hotplug
> > operations.
> >
> > ("arm: Fix topology setup in case of CPU hotplug for CONFIG_SCHED_MC")
> > [1] fixed that but revealed another issue on TC2, i.e in its cpufreq
> > driver.
> >
> > During CPU hp stress operations on multiple CPUs, policy->related_cpus
> > can be altered. This is wrong since this cpumask should contain the
> > online and offline CPUs.
> >
> > The WARN_ON(!cpumask_test_cpu(cpu, policy->related_cpus)) in
> > cpufreq_online() triggers in this case.
> >
> > The core cpumask can't be used to set the policy->cpus in
> > ve_spc_cpufreq_init() anymore in case it is called via
> > cpuhp_cpufreq_online()->cpufreq_online()->cpufreq_driver->init().
> >
> > An empty online() callback can be used to avoid that the init()
> > driver function is called during CPU hotplug in so that
> > policy->related_cpus will not be changed.
> >
> 
> Unlike DT based drivers, it not easy to get the fixed cpumask unless we
> add some mechanism to extract it based on clks/OPP added. I prefer
> this simple solution instead.

I will call this a work-around for the problem and not really the
solution, though I won't necessarily oppose it. There are cases which
will break even with this solution.

- Boot board with cpufreq driver as module.
- Offline all CPUs except CPU0.
- insert cpufreq driver.
- online all CPUs.

Now there is no guarantee that the last online will get the mask
properly, if I have understood the problem well :)

But yeah, who does this kind of messy work anyway :)

FWIW, we need a proper way (may be from architecture code) to find
list of all CPUs that share clock line.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
