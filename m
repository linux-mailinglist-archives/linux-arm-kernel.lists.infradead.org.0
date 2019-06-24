Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 733F0503B4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 09:38:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0Y52j/71yyRucoEDCOeLLcfoc/d8w4q9enu+mL4FiXQ=; b=ALuWKB6Od9Twgy
	P8+ZOdD3FhuugGOllG5ggfHJv9VesxGCK3pWYyhV+7gY9lG4R/b+JsiMsfWgD06nSy22QFpSjMDad
	gRmmMOhAD3kfk2q1/IFSb9OvFLekMyR6wRUNQB85qeSvJFfCkCkhsx6zC3E9gonzWBallQHp957UQ
	x0DRG2s3pWmyrLzXgnfamXqLWJjyBCFKZhz8EthXfsVBWN7tFCGu0M1F9xtDm3GF387wrfT6xNXtn
	NlHS4y+TeO05cHUPAT9klWRSUTmqeWLc3wQktCUIZ3IDm9uvOOPlEcleuzRDV3sngkj1Uas8iFGP3
	68frXwyVe+69ZnUALNKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfJYD-0006mc-U6; Mon, 24 Jun 2019 07:38:06 +0000
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfJXx-0006lr-Uj
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 07:37:51 +0000
Received: by mail-pg1-x543.google.com with SMTP id y72so6633685pgd.8
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Jun 2019 00:37:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=OeWUAdnx0L1hjDpfMtx2IyzWmQaeGBQ1LmUUqXpZp+s=;
 b=PHqSc71VmMVb7KzIIyYV1T/rvk/8ZXT5M79sW38Oa+4BxNZzqQK7Oi0R77jVv26b76
 63BIhZgKTVFXcVezHgdv6UwSjVmbWNkZ1FfAnm35FwEGQQbdMT3wktAWIZ+PC1V/VVm8
 9f3fzUcUScUB8epezz9gDsL0uZarFESR+Ok8KG1nPjNNez82ZecAytvGDqUFH5wbvqsl
 gayGuluLt0jT6JxztAX2UtwGMpwDn1gB4m0ZXnySZ8BRnQCsWW7fKB3ljQ8A/nS3cSjg
 pAKz2Zqwvcp3OqCjOA8s6yP90bcE2RdDO5r91AW5GtVnWUP4FRuQIXomlIcHhIB6UlLx
 FKmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OeWUAdnx0L1hjDpfMtx2IyzWmQaeGBQ1LmUUqXpZp+s=;
 b=ia55CvYQ1alXNE3oAxt9MFwC21HC45yG9+gYMPvrQ4mFTyG8B2+Zv9v8ODpH+ubCkU
 5Oe1QsDUw0j0xUmvm5yGOV41MlsEH2wtjcK0mXkAzHHmWg8/rVLPHdXzEdr0afHLFLcf
 s3EVMilnSXayFqxB41RO+lXACbVLZDaIuqxcAreqPQnx2MmeTwzG0L6BufHFaUVICqF+
 tT1opxD8LAUkHJFQI2azHfngQjFJjMyFxwND4DbGx+EWvhhy/amh9MtmPss63dBBq+Ob
 RW2/cDlo/Lxg1Bbi7Mp/6ucwjEntSL+dcrjNKFBrxKhop6/qUMmNgvOcEz/nN68RKRZ6
 FitA==
X-Gm-Message-State: APjAAAVkqPNoLwKsForcKShWyPTSMaro3eBDK+JNy58fMym7Xv3/C+ZK
 KEtoEUYKKvMDPfDYuQh+1KsCEg==
X-Google-Smtp-Source: APXvYqzw6cAd7oVJ4Rd/hA/i0R7A5vczq5bhj7cIdGgVJjVtof9rhhMbhMIYeGn+Iziy3CzvAYc/pQ==
X-Received: by 2002:a17:90a:f488:: with SMTP id
 bx8mr22856976pjb.91.1561361869345; 
 Mon, 24 Jun 2019 00:37:49 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id f14sm11537304pfn.53.2019.06.24.00.37.48
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 24 Jun 2019 00:37:48 -0700 (PDT)
Date: Mon, 24 Jun 2019 13:07:47 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Daniel Lezcano <daniel.lezcano@linaro.org>
Subject: Re: [PATCH 2/6] thermal/drivers/cpu_cooling: Unregister with the
 policy
Message-ID: <20190624073747.hf7jd6ulkmebbxtm@vireshk-i7>
References: <20190621132302.30414-1-daniel.lezcano@linaro.org>
 <20190621132302.30414-2-daniel.lezcano@linaro.org>
 <20190624060334.kak2mjuou4napi4x@vireshk-i7>
 <3f324189-aa1e-ae78-1d69-61e00c5d033a@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <3f324189-aa1e-ae78-1d69-61e00c5d033a@linaro.org>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_003750_001429_7B7C5C5B 
X-CRM114-Status: GOOD (  16.61  )
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
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Keerthy <j-keerthy@ti.com>,
 "open list:CPU FREQUENCY DRIVERS - ARM BIG LITTLE"
 <linux-pm@vger.kernel.org>, Fabio Estevam <festevam@gmail.com>,
 Amit Daniel Kachhap <amit.kachhap@gmail.com>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 edubezval@gmail.com,
 "open list:TI BANDGAP AND THERMAL DRIVER" <linux-omap@vger.kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Sudeep Holla <sudeep.holla@arm.com>, Zhang Rui <rui.zhang@intel.com>,
 Javi Merino <javi.merino@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24-06-19, 09:30, Daniel Lezcano wrote:
> On 24/06/2019 08:03, Viresh Kumar wrote:
> > On 21-06-19, 15:22, Daniel Lezcano wrote:
> >> Currently the function cpufreq_cooling_register() returns a cooling
> >> device pointer which is used back as a pointer to call the function
> >> cpufreq_cooling_unregister(). Even if it is correct, it would make
> >> sense to not leak the structure inside a cpufreq driver and keep the
> >> code thermal code self-encapsulate. Moreover, that forces to add an
> >> extra variable in each driver using this function.
> >>
> >> Instead of passing the cooling device to unregister, pass the policy.
> >>
> >> Signed-off-by: Daniel Lezcano <daniel.lezcano@linaro.org>
> >> ---
> >>  drivers/cpufreq/arm_big_little.c               |  2 +-
> >>  drivers/cpufreq/cpufreq.c                      |  2 +-
> >>  drivers/thermal/cpu_cooling.c                  | 18 ++++++++++--------
> >>  drivers/thermal/imx_thermal.c                  |  4 ++--
> >>  .../thermal/ti-soc-thermal/ti-thermal-common.c |  2 +-
> >>  include/linux/cpu_cooling.h                    |  6 +++---
> >>  6 files changed, 18 insertions(+), 16 deletions(-)
> > 
> > Acked-by: Viresh Kumar <viresh.kumar@linaro.org>
> 
> Just a side note, does it make sense to have the function called from
> imx_thermal.c and ti-thermal-common.c? Sounds like also a leakage from
> cpufreq to thermal drivers, no?

I am not sure what you are proposing here :)

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
