Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ED231126DD
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 10:17:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=O1F+15OwQuV5kaG+WlFY5Vf5ToSZJtMHJa01Dmg5qGA=; b=hKt+9sxIhYICSW
	W9eqZW/EYqqM9L4A4v1jfCEszGnfdgqopcwjx77Ri03xbsGA0Y+WWSIaf7hcmGFYXesFvNUJQVZCr
	nAnWY3b62/56IhONSM6yPdbII9+D4/kOMnmv+m5+kdvNo/7zRdPYZMCLwwIvlceppRn8Br45UOif1
	HrGyAxW3pNEHB8qYuO3P7EEUaoS70yAl33o/P4DoLgstol0i52/15Z8gIuvbznPlzHSEc1Pt47y6d
	RHO5IQm6Z5vMvFJQjqvShCqrqUpKXWwUN5IO/yaB08AjGiqDx1iHQKkQVLS53xW6YZwnjYlhJr6Jw
	kH+ODAAUi4q583tf1UdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icQmc-00036p-JQ; Wed, 04 Dec 2019 09:17:18 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icQmR-00035w-Oe
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 09:17:09 +0000
Received: by mail-pj1-x1044.google.com with SMTP id v93so2739560pjb.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 01:17:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=lMKKy9t0iWSR4/z3gVbW2YwCWQytCz8n363Y9SgDkLg=;
 b=AoaXn3dDFHX0ZWRCrotiHldBlB/HrbAlLuyfSzBLpifiSH9AVjZ1dj8Z7BaKH9srKf
 +nfYSDrlBV6KEf5TTRTVE940MSjDQV5a16P6WEbM93mSde6KBiZeA6nRAxw5Y25B/vnZ
 T5iVOgAJFmwHkTXfejyEXhk0jryeVIjlkrgZDB+IANQ7Ppjjw+WCfSoIoPyOmBk5/SC3
 m/4WwJOBPjBTvU3lKW7RnA9rmf7fJOKSPmSgGfctK+2LjzCuZV2ewflB92JKr429LENu
 2QaqPrTAuB5bm8jp/Y8wRk+pRvFHvaKUThzf3wRGmFAoCUvm0aIETHDh35mLioE6VHZK
 diMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=lMKKy9t0iWSR4/z3gVbW2YwCWQytCz8n363Y9SgDkLg=;
 b=UFoSVrN3F2V8n5966VRACZ5JOnpjtujMz+NJKqvvo6EAhqJOd5ptZzfcBUSEOKrcg9
 4w9eQ7ZEJz3Fo/DC1CC3wdn9K3KSdT7YkiTYnTzglCFKJkIgRZlW7ofuVSF7FuI2sZXH
 O7TE7lS0oGX0O4Ax74MjzcK+D3r6HgYCujHDxaS+JU6QK5RCzBbzIaJ/v+flM+DciDSt
 L/maNciRIx3aHUopCqkkxoNnKLVtIPh7guAoaL/3JDjLyZfrM/3nxf81A0nkIaalemMo
 AzJFhgXn3tsXsZj5HoNINUr3AWDGXL0Nwxk4y6aykMBH8sWPJ0pjIB2cbepXhQ4hhIp4
 SfVA==
X-Gm-Message-State: APjAAAXooSZI9Xtd0WacWzLPcVzqPo4YKFa7gS3tCf35Tcy8Lj4vRNf1
 i8oleLU7E+pn7PuVSgXcV19J9A==
X-Google-Smtp-Source: APXvYqyPYVArtaO2xDdvtLX/Iko7lEdMxiXPCNH/Ly1Vnt2lfYUTEc78zQ+nQkBgCTp9YuIdrXgr5g==
X-Received: by 2002:a17:902:8507:: with SMTP id
 bj7mr2349143plb.69.1575451025955; 
 Wed, 04 Dec 2019 01:17:05 -0800 (PST)
Received: from localhost ([122.171.112.123])
 by smtp.gmail.com with ESMTPSA id n26sm6717142pgd.46.2019.12.04.01.17.04
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 04 Dec 2019 01:17:04 -0800 (PST)
Date: Wed, 4 Dec 2019 14:47:03 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mikko Perttunen <cyndis@kapsi.fi>
Subject: Re: [TEGRA194_CPUFREQ Patch 1/3] firmware: tegra: adding function to
 get BPMP data
Message-ID: <20191204091703.d32to5omdm3eynon@vireshk-i7>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <20191203174229.GA1721849@ulmo>
 <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9404232d-84ce-a117-89dd-f2d8de80993e@kapsi.fi>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_011707_867003_3FE48869 
X-CRM114-Status: UNSURE (   9.44  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 talho@nvidia.com, Thierry Reding <thierry.reding@gmail.com>,
 linux-tegra@vger.kernel.org, Sumit Gupta <sumitg@nvidia.com>,
 mperttunen@nvidia.com, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 04-12-19, 10:45, Mikko Perttunen wrote:
> Now, my original patchset (which this series is based on) did add
> nvidia,bpmp properties on the CPU DT nodes itself and query BPMP based on
> that. A change is still required for that since tegra_bpmp_get() currently
> takes a 'struct device *' which we don't have for a CPU DT node.

I may be missing the context, but the CPUs always have a struct device
* for them, which we get via a call to get_cpu_device(cpu), isn't ?

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
