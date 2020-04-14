Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8A981A7316
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 07:45:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YfsvSvnwCxOm/2C+G44p5sINggiDyGQzwWNQ4Q/LLN4=; b=tYB7RqUggbcAxo
	XZ3jex7qT4+cwlJeBHuIxxBsDpKgZo7aRPxtWa+NjpCY6xq84SnTQWi6aqD5f1m6vLhNba06TBakh
	b8BgqPr0Dimqr8GMvwDq3psgcXuq7OVwPsvd9WUePu5QAtRe0petsiMAAw3TXrEL5GoZ+meGysT0J
	6QYNXtd6hD/ZebbNlTDrTNB2A8DQ3ThvAYlJspmLKLvlFxSbv5mCOUjwUlbDk5oWT8tReUg93HwTX
	u5gRYDbWR2kaZ4NDB2Mx26ETHqeAB9RJBZWklNEx9UQ8TrA2e88pVbgTQ3qCTdc636vw+tkN7XOV5
	0j0iuKnZDyBlE2uIQ6tg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOENo-0002Th-1V; Tue, 14 Apr 2020 05:45:16 +0000
Received: from mail-pg1-x531.google.com ([2607:f8b0:4864:20::531])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOENg-0001tQ-7O
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 05:45:09 +0000
Received: by mail-pg1-x531.google.com with SMTP id k191so5518208pgc.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 Apr 2020 22:45:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=y6dutUz+30OTRDfg3t8Pl2gIYhm9Chd9KMn0w/7vtgI=;
 b=VouzMP8cBdaVTNf4cBS+Lqgxn2DGWJ9tqJdiwXtybFJ9IMcnceKdjCSFOLtQJx5kk7
 OJbQMxqKIDYHxAXFRyrKdhpX7ngXcR25NtYh1aZFT7UzeXdRu4OYfsGproJYrLxLH/V6
 aCKTIhEmArxjdu5ZPoaULSawf55qspM3wlBMnzbNewddQ0HAFHdul2uxm0hvB3Zi+yqF
 RlSE6c6ebdpxtAa9+8gZXKTUiup4Gkq1FX4rE7cdiL6X88x6dAFyhdJSnxp1p0rGS2E3
 osTeZFeRIWwv7MC9Yxt5ujqApF2SQB1F0C7GNJ7PmpTBa2htp1t2XLYxff69bLgKFiWz
 RWtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=y6dutUz+30OTRDfg3t8Pl2gIYhm9Chd9KMn0w/7vtgI=;
 b=nyQlJgAEIBed+bdgIW00cXSDE9HQuAuYGinfBX1y4EKpdlHAR82oEaNLqvKjuFI5mC
 bceyNgnzht3xkCIWQ8Trpyg3viW7a1Z/O8FdVB5tqvaRexzuiAJty5cGxNZKvv84jZrL
 wgXbruCr7x+AoQnv7z2ISBHitp4QA1umoJuYhbbVRhnRnWe2X11jQ78JuH3mOXKELIGt
 PiIoLo3UFD7erAlYOf6Uz8IFR718b4ebHhny0Fl8SevZYufyg+Sc+b6TP3IsBRhPiDLF
 wGn+6Xca/asrl9XGgvqWxTpFyVnsT5CFt/zTVuxvt8uBlJGtzUgpIH9cnlCIgtWQ+rqT
 +DEw==
X-Gm-Message-State: AGi0PuaQ59HPGmLoucYLn/BVyTi34DziNi2VMr1xPX8em7EYJyJ6xBSR
 FLPw9DMKYRG7faiGYscUeFA+iQ==
X-Google-Smtp-Source: APiQypJMakzgo2Op5kuz+/4pNaCYEt7PY+7a3jClylVbKOOvkfuZrrv0E3uO5uJ53ip22+eTJCSCsA==
X-Received: by 2002:a62:e80e:: with SMTP id c14mr12551415pfi.83.1586843107252; 
 Mon, 13 Apr 2020 22:45:07 -0700 (PDT)
Received: from localhost ([122.171.118.46])
 by smtp.gmail.com with ESMTPSA id t103sm10781479pjb.46.2020.04.13.22.45.06
 (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 Apr 2020 22:45:06 -0700 (PDT)
Date: Tue, 14 Apr 2020 11:15:04 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Sumit Gupta <sumitg@nvidia.com>
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
Message-ID: <20200414054504.e3qn2cnxqur4sclw@vireshk-i7>
References: <20200326115023.xy3n5bl7uetuw7mx@vireshk-i7>
 <d233b26b-6b50-7d41-9f33-a5dc151e0e7d@nvidia.com>
 <20200406025549.qfwzlk3745y3r274@vireshk-i7>
 <3ab4136c-8cca-c2f9-d286-b82dac23e720@nvidia.com>
 <20200408055301.jhvu5bc2luu3b5qr@vireshk-i7>
 <08307e54-0e14-14a3-7d6a-d59e1e04a683@nvidia.com>
 <20200409074415.twpzu2n4frqlde7b@vireshk-i7>
 <00390070-38a1-19aa-ca59-42c4658bee7e@nvidia.com>
 <20200413062141.a6hmwipexhv3sctq@vireshk-i7>
 <64b609f1-efb1-425f-a91a-27a492bd3ec4@nvidia.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <64b609f1-efb1-425f-a91a-27a492bd3ec4@nvidia.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200413_224508_285406_C9FC96F7 
X-CRM114-Status: UNSURE (   6.35  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:531 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 13-04-20, 17:50, Sumit Gupta wrote:
> This was done considering long delay value as explained previously.
> Do you think that smp_call_function_single() would be better than work queue
> here?

Don't work with assumptions, you should test both and see which one
works better. Workqueue should never be faster than
smp_call_function_single() with my understanding.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
