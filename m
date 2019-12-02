Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4445D10E45B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Dec 2019 03:02:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1U9Xz+powv7jTICvIRZHkZznB/ZLwPbk1Y3pY1merQw=; b=iV38b0NkCVT9fk
	PMtAOjo38woRNT7QrS1Xu9hADDgGuab6huC7m+pxBZko7ePFjPxmzyBaV/UrBIjF19LDvT7I3Gv9e
	k1SaaPGvniVk9x6bNlIALoyibb7dhTp2V9H24NfgNL8TXApuwt7yJIo38GtBgRb/m3EllIC+8LUEN
	pJ8Tj3Xj9f+A1hG8qu1ewlyU50rfDNigVNZGDn/qSUAupwTAixIDK//OTqAYb/hbXKJKhqxQLte8a
	BcS4y7SaCEY8m/q1RFhyaZJ8iOe59lEojwE5p/QwO2osmwVEeLIxf+TvSx2djPqKhtdIbhxpeiZ2Y
	Bqmcy6nH5cEGklBh/Y/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ibb2J-0003bT-RI; Mon, 02 Dec 2019 02:02:03 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ibb2C-0003aw-MQ
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Dec 2019 02:01:58 +0000
Received: by mail-pg1-x542.google.com with SMTP id l24so9079243pgk.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 01 Dec 2019 18:01:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=pfq98NxsZEAY/y/R+bO+qIkbGC1mkCn6FgQ1AilED9w=;
 b=GRs58BNPJS8nsY2SVE4e0b2MjTuGAUY/qFuATdgZKYvkeQ0YTPVWBxbZKwmYNk5tcd
 geDNGxEPS9pSGPWrW4UkG9jMgL1SgqV+X+RDEZwxQgTX8n4qXcZ5BLePuQ3/GhTCZ5D/
 MrcHfkWfp54CUnZfpoOaflMAZeDSAUz9yWG1wXvW6wAKxrRTdB1J2UVs8mwjV+HT16uN
 0ScDJ+bfle4xYHatsiQKEma40e9d9yzahsrC7xjkTD2D9z78UNL1EllHQULkrSvrcFsL
 eO8c5XEmd/YqPjRlw9flnjuTz4kZp+ZICZCRX8DZ5izfhn0g88o3/uUH5rbMd81XO7CY
 INlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=pfq98NxsZEAY/y/R+bO+qIkbGC1mkCn6FgQ1AilED9w=;
 b=d/zo+bTlNWgrqZsMuw2+wp1eK8NDQvHQJGEtbb878GFRDR4SqMia9JVASjjQNbjBkH
 Q6kWURah1duBZSxoQnU9sLH348U1qLC63WKIAwbofvYEWk15mZ0MinWBqFumJ2kVQ+Lf
 6uJWcWxKuRQTexOXYPGK/VC4IM7fXyIk3tumKCBfQQQ0xSB+KnBv9+JPNcWYvqqhCE8j
 Ovb+zbaArPWXG1lTwA+9m6jnbm3SNykhvhlz4TsSDouBARowTeRkmrtDZSqNJ3bAUqz5
 s2bTt6x8D9yrbeGhHSHL0PYYRK7tLqavucn39f9k2w3i/o4RHt7UWaM+q/qmx/xXew0F
 KDcg==
X-Gm-Message-State: APjAAAUg1toS6uNHcf4aXSGccH5zhqRVgTucSNMcUlq+S7WrxN3ntxq+
 3C2gPTATtFNFbT+Ef3Rt0Btxa68oJU4=
X-Google-Smtp-Source: APXvYqya3nEtHgktObKfp6/gawhI8tTCK1taxn0PybdJ0SIw9J6BCR+60OgcquyLfMaJ3QG/Jqd8gg==
X-Received: by 2002:a63:1b1f:: with SMTP id b31mr28724370pgb.177.1575252115441; 
 Sun, 01 Dec 2019 18:01:55 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id i68sm8032624pfe.173.2019.12.01.18.01.54
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 01 Dec 2019 18:01:54 -0800 (PST)
Date: Mon, 2 Dec 2019 07:31:46 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH 2/2] cpufreq: vexpress-spc: Switch cpumask from topology
 core to OPP sharing
Message-ID: <20191202020146.pzjq2gtgo7rzzorx@vireshk-i7>
References: <20191128101547.519-1-sudeep.holla@arm.com>
 <20191128101547.519-2-sudeep.holla@arm.com>
 <20191129114926.GA24793@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191129114926.GA24793@bogus>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191201_180156_762676_AA2A9302 
X-CRM114-Status: GOOD (  13.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 Lukasz Luba <lukasz.luba@arm.com>, Dietmar Eggemann <dietmar.eggemann@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29-11-19, 11:49, Sudeep Holla wrote:
> Hi Viresh, Rafael,
> 
> On Thu, Nov 28, 2019 at 10:15:47AM +0000, Sudeep Holla wrote:
> > Since commit ca74b316df96 ("arm: Use common cpu_topology structure and
> > functions.") the core cpumask has to be modified during cpu hotplug
> > operations. So using them to set up cpufreq policy cpumask may be
> > incorrect as it may contain only cpus that are online at that instance.
> >
> > Instead, we can use the cpumask setup by OPP library that contains all
> > the cpus sharing OPP table using dev_pm_opp_get_sharing_cpus.
> >
> > Cc: Viresh Kumar <viresh.kumar@linaro.org>
> 
> This can go independently via PM tree and I can take 1/2 via SoC tree
> (as the file is being moved). The problem will be fixed only after both
> lands, but this alone won't break the build.

Yes, but it will break cpufreq for sure as shared-cpus won't be set by anyone.

> Or if you guys provide
> Ack, I can take both together via ARM SoC team. Let me know.

I was planning to take them through cpufreq tree, but that fine if you can do
that.

Acked-by: Viresh Kumar <viresh.kumar@linaro.org>

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
