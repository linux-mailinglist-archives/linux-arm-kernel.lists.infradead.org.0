Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 46FADE28B1
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 05:13:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zYS+oKNtpdZhw5XmlmN54PKnXI18oSK9tHi7xUz62q8=; b=V0Di4p4v8HFJmS
	rRtZLLPJufzyHKxE3uc14lDIIFX5eschGiV052RS8Tkt5R20bcj/nxbkdqcUsp/eyzULn59TRtecB
	fj1bnwEo5apoKhHI4fLoj2XiObcLHJLeOxnhva3jwhw3LGiEnN7LQuIGhcMVoiAJ1oESnHjnl7zBQ
	Hfq49iGhHzwXoGH/9isHomhqHeTv+mJ931K3UYRljrMFWIV7k2HJrv0Csv8j3qGQA+mSHudePnPf3
	LEPxdLifBheTnYLaaBt7I7SmOcjkZzjci0HVpdRB5G70y4BFQhyB4HzXzV/vb7v+0deQyjqdbhwFz
	KxVx41aWFxXjGblf4D+g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNTZT-000823-Tj; Thu, 24 Oct 2019 03:13:55 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNTZJ-00081a-6z
 for linux-arm-kernel@lists.infradead.org; Thu, 24 Oct 2019 03:13:46 +0000
Received: by mail-pf1-x444.google.com with SMTP id x127so14175735pfb.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 20:13:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=/FvSWUTwb3VLZA0Xf0z7RcCEXwmqXYbk21bOLI6Ind8=;
 b=sKQkrmUmxlXGiYByd2i7MTXHlCBZpoduhmNKTn2b+4WTlEd9sqJxIlyZ+kwj6qCQt6
 4BIQumt//PtptZYr9DJp8O83ejzzIWb9zwkVqmB0Bf2/fPyoyBokiTWczNosOTRJQ5OY
 TLsGSWJWUIqamq4uD2ohoSqBavspu6j21L7o1rk5kyPzqVK/v/sq46u+fuxiWDYmaZ4u
 AU0XcEHw1+rfCDqi9jXvViNv+pLj3EIXq/XhytlYWlx5bJCiOL1x2+v0vl7i5PZFoOwt
 92BmIjiD3QDTfjY55Bk/GHBfFrBfes9X4OtcC3occLA7hH0pVPFddwHx3uWXMfnirMB3
 pcLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=/FvSWUTwb3VLZA0Xf0z7RcCEXwmqXYbk21bOLI6Ind8=;
 b=S6ZbSStwD1kLq3FZkhwV06+hwwO8cWrmVMfzQhxOqGdfYLRaa7g/7qaaE6XB9aBzQU
 meRr1s5htnV9KeDeTD3pbHKFw+5fjE5uaU2atXuPt1XMCKhVLodaMn26uZtCQBbHh2OM
 V6z9h1TLoWYxGmMPdv0Z4w3hst5lPjrVmHwn6Tkq4e9SDcVVXCFdAPbcTwLDON70rp4W
 p4E2sozQMsneFCOCPdSsQwQmabjXM5I9W7Qlgd50lu26/SqDCN8FHyuTxhwUznSq8mkn
 EyPjkMZFbOUrMISVs0Zv5qjOqILuVgDwxzOTRA3kh2xGaTc6eCvAetzDa8wvHRuQz2oP
 xOBQ==
X-Gm-Message-State: APjAAAUElyQ7WMB3i3rl7F3FgDS3Y6mCNLyq2zyJeGIg8IsMCyV2ghY6
 3ez9p3ae6YqaTW3l5595voF9Ix72LNU=
X-Google-Smtp-Source: APXvYqydSOmNxbN/vYtkU1iPjd1cVFUew/aXCub1UINvWE/D7AIfNj9Kf6waQGQolR3SBvI3HEafpw==
X-Received: by 2002:a63:1b59:: with SMTP id b25mr13990872pgm.267.1571886823938; 
 Wed, 23 Oct 2019 20:13:43 -0700 (PDT)
Received: from localhost ([122.172.151.112])
 by smtp.gmail.com with ESMTPSA id x12sm23593463pfm.130.2019.10.23.20.13.42
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 23 Oct 2019 20:13:43 -0700 (PDT)
Date: Thu, 24 Oct 2019 08:43:39 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH] cpufreq: s3c64xx: Remove pointless NULL check in
 s3c64xx_cpufreq_driver_init
Message-ID: <20191024031339.qaoh3p5efmaawslq@vireshk-i7>
References: <20191023000906.14374-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023000906.14374-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_201345_393274_7F5E1190 
X-CRM114-Status: GOOD (  14.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Krzysztof Kozlowski <krzk@kernel.org>, clang-built-linux@googlegroups.com,
 Kukjin Kim <kgene@kernel.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 22-10-19, 17:09, Nathan Chancellor wrote:
> When building with Clang + -Wtautological-pointer-compare:
> 
> drivers/cpufreq/s3c64xx-cpufreq.c:152:6: warning: comparison of array
> 's3c64xx_freq_table' equal to a null pointer is always false
> [-Wtautological-pointer-compare]
>         if (s3c64xx_freq_table == NULL) {
>             ^~~~~~~~~~~~~~~~~~    ~~~~
> 1 warning generated.
> 
> The definition of s3c64xx_freq_table is surrounded by an ifdef
> directive for CONFIG_CPU_S3C6410, which is always true for this driver
> because it depends on it in drivers/cpufreq/Kconfig.arm (and if it
> weren't, there would be a build error because s3c64xx_freq_table would
> not be a defined symbol).
> 
> Resolve this warning by removing the unnecessary NULL check because it
> is always false as Clang notes. While we are at it, remove the
> unnecessary ifdef conditional because it is always true.
> 
> Fixes: b3748ddd8056 ("[ARM] S3C64XX: Initial support for DVFS")
> Link: https://github.com/ClangBuiltLinux/linux/issues/748
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  drivers/cpufreq/s3c64xx-cpufreq.c | 7 -------
>  1 file changed, 7 deletions(-)

Applied. Thanks.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
