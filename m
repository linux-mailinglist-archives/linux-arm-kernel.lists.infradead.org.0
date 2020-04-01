Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BE8619A628
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  1 Apr 2020 09:19:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=0STLkqaOXneqXFIyamVX7Eb5W1VKLvl1QyS5kMKzGDs=; b=NUZl5mGbwEsE8RNEfKV5kAGn8
	5F2wZndGB5a7Q7yMOPlRS5ObpFMU3Jn/pNck8RfmG6hS93QQyowjX6MIzAQ7Lz0e0jHCL+uf0IukE
	8iwRYzJAFSIRjrn+Rij6sX2PATvognWUU5wG1evK65WSTI2UQ6LJxtTsQYTEQ563ndwVAwPj9j+jb
	+9k3SrDfhgCttxswdbdq/PC97EYQfDKHF9xSR8Nnx/FY4vim0tdk0hbKiqp6AMrZ/7LUnymGmWIiU
	djIKcOWz7d1EWOYBOMIz6RY0rsmsicZEFKtC0oxDtQAULOhx5uj67XPdw2/mpyyI2t2usi412wJQ8
	8QXYbM0/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJXf3-0002fc-2b; Wed, 01 Apr 2020 07:19:41 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJXev-0002eb-7o; Wed, 01 Apr 2020 07:19:34 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DAD1831B;
 Wed,  1 Apr 2020 00:19:28 -0700 (PDT)
Received: from [10.37.12.63] (unknown [10.37.12.63])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 69E453F52E;
 Wed,  1 Apr 2020 00:23:27 -0700 (PDT)
Subject: Re: [PATCH v5 2/5] OPP: refactor dev_pm_opp_of_register_em() and
 update related drivers
To: linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 linux-omap@vger.kernel.org, linux-mediatek@lists.infradead.org,
 linux-arm-msm@vger.kernel.org, linux-imx@nxp.com, viresh.kumar@linaro.org
References: <20200318114548.19916-1-lukasz.luba@arm.com>
 <20200318114548.19916-3-lukasz.luba@arm.com>
From: Lukasz Luba <lukasz.luba@arm.com>
Message-ID: <4326bd75-e892-63ca-5757-5befd9bbac14@arm.com>
Date: Wed, 1 Apr 2020 08:19:16 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200318114548.19916-3-lukasz.luba@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_001933_328653_8113BE03 
X-CRM114-Status: GOOD (  13.13  )
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
Cc: nm@ti.com, juri.lelli@redhat.com, peterz@infradead.org, liviu.dudau@arm.com,
 bjorn.andersson@linaro.org, bsegall@google.com, festevam@gmail.com,
 Morten.Rasmussen@arm.com, robh@kernel.org, amit.kucheria@verdurent.com,
 lorenzo.pieralisi@arm.com, khilman@kernel.org, daniel.lezcano@linaro.org,
 steven.price@arm.com, cw00.choi@samsung.com, mingo@redhat.com, mgorman@suse.de,
 rui.zhang@intel.com, alyssa.rosenzweig@collabora.com, orjan.eide@arm.com,
 daniel@ffwll.ch, b.zolnierkie@samsung.com, s.hauer@pengutronix.de,
 rostedt@goodmis.org, matthias.bgg@gmail.com, Dietmar.Eggemann@arm.com,
 airlied@linux.ie, javi.merino@arm.com, tomeu.vizoso@collabora.com,
 qperret@google.com, sboyd@kernel.org, mka@chromium.org, rdunlap@infradead.org,
 rjw@rjwysocki.net, agross@kernel.org, kernel@pengutronix.de,
 sudeep.holla@arm.com, patrick.bellasi@matbug.net, shawnguo@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 3/18/20 11:45 AM, Lukasz Luba wrote:
> The Energy Model framework supports both: CPUs and devfreq devices. Drop
> the CPU specific interface with cpumask and add struct device. Add also a
> return value. This new interface provides easy way to create a simple
> Energy Model, which then might be used in i.e. thermal subsystem.
> 
> Signed-off-by: Lukasz Luba <lukasz.luba@arm.com>
> ---
>   drivers/cpufreq/cpufreq-dt.c           |  2 +-
>   drivers/cpufreq/imx6q-cpufreq.c        |  2 +-
>   drivers/cpufreq/mediatek-cpufreq.c     |  2 +-
>   drivers/cpufreq/omap-cpufreq.c         |  2 +-
>   drivers/cpufreq/qcom-cpufreq-hw.c      |  2 +-
>   drivers/cpufreq/scpi-cpufreq.c         |  2 +-
>   drivers/cpufreq/vexpress-spc-cpufreq.c |  2 +-
>   drivers/opp/of.c                       | 71 ++++++++++++++++----------
>   include/linux/pm_opp.h                 | 15 +++++-
>   9 files changed, 65 insertions(+), 35 deletions(-)


Gentle ping.

Viresh could you have a look at it?

Regards,
Lukasz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
