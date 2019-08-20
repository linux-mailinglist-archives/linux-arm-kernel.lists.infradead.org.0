Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F25E895AD6
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 20 Aug 2019 11:21:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NhvaR7ILCOByI7PKQ9f+TRZfjVD91YazHdYDER60Iuk=; b=DhrWl7QCPpsKcj
	/76WGTiJtpGY7RlH8uBU0AVpo8oye4o96KvQkro5YWC5s+j5Kh4A25cClVIiTBdom2SkIX3Jc9rQ1
	6PBGoBHpvV1rcpKxBYJkAEXMzkz9Sl7AYprAxVbi5bt1N2upd38TUxdhyrYe/0twXvoCEyLbfK7G6
	vVmorBsn28DqlU7kk++aRRWXlCe2OMgLk0IcZK37Plj7JJKxNHBIhIy7fHBSJPHrDjUQY9mCN8fAk
	/SElEvbvmuK8FV55ZSTFxWAybzAeN2lvY6mPp7RB4mVOyy8qd1fLsAsviXbY57bD2/wcreoupDsC2
	N2ZuoJwh+9gIk+A7EkPw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i00Kd-0007xW-2Y; Tue, 20 Aug 2019 09:21:35 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i00KL-0007wI-BO
 for linux-arm-kernel@lists.infradead.org; Tue, 20 Aug 2019 09:21:18 +0000
Received: by mail-pf1-x442.google.com with SMTP id q139so3003410pfc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 20 Aug 2019 02:21:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=fNqn8jt+Eu/y3WAdZBc6pAlsOtl2wpEF2Ezb9uPuzFs=;
 b=bm7qZSrIUp7yfrt8m+6HQ+L0yN+04ev62t82CQ5xfoJbY9ugfFikx3iuSAvbmhTpFg
 1rxCbeHAR9Yu74VEgkJ/NCLgBT+vvo46ilJ0GSi92qPvxRlB4whvjXoc0KTkpOWQQgth
 qHRZAzKAHBUuasKjsfEeXe8lbZldF4DJ8J4+fVY3UScx6BERp1etA4IXQR7Ty7i4yvGe
 GG5Y8GAYJjCuT2VFdOToY7CULRMaHMOvOwvCYmaP3dd0e6/JUxXu0My+AxDtBeAUHgA4
 HIeSRSxc5fq+Q31UyD5zpQ+J3dGEIHWJy22zqGq1wz+N5seTYf3befQt64QvzxF46OLw
 Va/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=fNqn8jt+Eu/y3WAdZBc6pAlsOtl2wpEF2Ezb9uPuzFs=;
 b=bEcti/RYjkxmMiVa7o3JPrPQc2RizjJOrSZJokdbfMFeQ+2r9xATwnh6CiZ2NuGwRp
 vZ+5BlKjSkp+1rUi2UGyGPyiWUayrZmaTtIzggEsY9HqTRmMrdbZD7ZJw7OpAgiJZyx7
 AuTsufJNQqod7i8/MtLmE5Cv5kXTBvKlx5wmCjVaUc9oXLfbt4Svt6aZNw1/dsqNWGEt
 dB01S12WZjEde7BzxIeOQi/56KwBr87TkTZ7sFTt1z08+XTKt0RQs8+QKRRWE5ZdfSUd
 hUeXbSSmz8mndblPqEpwJ8PDArEdYAasyPhKpbtso8t75RW0lM0ehwHVci99EfeZvkM6
 q7bQ==
X-Gm-Message-State: APjAAAVIuTWdAPgoCTkSmW7NCrfq2LFpwafqv/mTRMjgB5TFSARabbFn
 KcmmAt/bJwueVTgClVGSqYfq0g==
X-Google-Smtp-Source: APXvYqx3NGkLs8NsqtiC35VhZLducwJHY2iFYVWb66LyAIkzov9xYbt/7XwPAuKAdHf72ZcfwGfM/g==
X-Received: by 2002:aa7:991a:: with SMTP id z26mr24899786pff.43.1566292876575; 
 Tue, 20 Aug 2019 02:21:16 -0700 (PDT)
Received: from localhost ([122.172.76.219])
 by smtp.gmail.com with ESMTPSA id 5sm17229250pgh.93.2019.08.20.02.21.15
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 20 Aug 2019 02:21:15 -0700 (PDT)
Date: Tue, 20 Aug 2019 14:51:13 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>
Subject: Re: [PATCH v2 0/9] Exynos Adaptive Supply Voltage support
Message-ID: <20190820092113.gojhe3romdnvm7eu@vireshk-i7>
References: <20190723020450.z2pqwetkn2tfhacq@vireshk-i7>
 <5ef302a4-5bbf-483d-dfdf-cf76f6f69cee@samsung.com>
 <20190725022343.p7lqalrh5svxvtu2@vireshk-i7>
 <562dd2e7-2b24-8492-d1c1-2dc4973f07be@samsung.com>
 <20190819090928.pke6cov52n4exlbp@vireshk-i7>
 <b831d7c5-c830-fd65-20cf-02e209889c28@samsung.com>
 <20190819112533.bvfyinw7fsebkufr@vireshk-i7>
 <b7093aaf-ea56-c390-781f-6f9d0780bd8e@samsung.com>
 <20190820030114.6flnn2omeys3lih3@vireshk-i7>
 <06ccff05-2152-4bcc-7537-8f24da75f163@samsung.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <06ccff05-2152-4bcc-7537-8f24da75f163@samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_022117_395835_7B8749AA 
X-CRM114-Status: GOOD (  16.12  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-pm@vger.kernel.org, vireshk@kernel.org, b.zolnierkie@samsung.com,
 linux-kernel@vger.kernel.org, krzk@kernel.org, robh+dt@kernel.org,
 kgene@kernel.org, pankaj.dubey@samsung.com,
 linux-arm-kernel@lists.infradead.org,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20-08-19, 11:03, Sylwester Nawrocki wrote:
> On 8/20/19 05:01, Viresh Kumar wrote:
> > Sorry but I am unable to understand the difficulty you are facing now. So what I
> > suggest is something like this.
> 
> The difficulty was about representing data from tables asv_{arm,kfc}_table[][]
> added in patch 3/9 of the series in devicetree.  If you have no objections
> about keeping those tables in the driver then I can't see any difficulties. 

The problem with keeping such tables in kernel is that they contain too much
magic values which very few people understand. And after some amount of time,
even they don't remember any of it.

What I was expecting was to remove as much of these tables as possible and do
the calculations to get them at runtime with some logical code which people can
understand later on.

> > - Use DT to get a frequency and voltage for each frequency.
> 
> Yes, this is what happens now, we have common OPPs in DT that work for each SoC
> revision. 
> 
> > - At runtime, based on SoC, registers, efuses, etc, update the voltage of the
> >   OPPs.
> > - This algo can be different for each SoC, no one is stopping you from doing
> >   that.
> > 
> > Am I missing something ?
> 
> Not really, this is basically what happens in the $subject patch series. 
> 
> Then IIUC what I would need to change is to modify exynos_asv_update_cpu_opps() 
> function in patch 3/9 to use dev_pm_opp_adjust_voltage() rather than 
> dev_pm_opp_remove(), dev_pm_opp_add().

That and somehow add code to get those tables if possible.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
