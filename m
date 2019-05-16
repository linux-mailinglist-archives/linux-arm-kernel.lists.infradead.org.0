Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30D0420274
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 11:23:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qSlH8VK/N/k+Ojq8qpzF7jHv+uywVlOS3XPUGIJgOHs=; b=toN7qlOLp4rs04
	A3Dekb7/8X0A0ZocStZ3viFdsVE8/DKpMtK7JlE7SeFGOO2hqRz1Jn0aD0f+AW7xMCtHAoOjq02JC
	rJgdWWtv7JxcM3rWjUHv7D44ab/lbtCnrXc5Kj/qed4djIXaQutlD7ZxwXqZrw4X41LELCPchg3AO
	2o28IpphLq8tMuEjmcePOAEGw1Yufalo1FLL78HYTbEhoo88QCw7Tuovqzh0mSEmgjy5WxN80mVQQ
	BsB+2H80AaO3CI2gPY+b5RSCRe6Cl0I8wADeFYVhjprz2TIHW+14BCd+P9XWzjIvNBOtHW7as6k+1
	1IXT/6bqorJffkoWl6zQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRCc1-0008UC-81; Thu, 16 May 2019 09:23:41 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRCbs-0008Sy-KX
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 09:23:33 +0000
Received: by mail-pg1-x544.google.com with SMTP id d30so1266965pgm.7
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 16 May 2019 02:23:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=reAgSdPZ/Igx7TP/G4DFm5yRB5oI6NXcR4YRtQByf1A=;
 b=AabVOpc0gax5y+C34MwQA8XkHzluhPkc93PJn6cEymixXWGT8AUzl1dNJ4pU9uVb1e
 GpB82yMP99M52j2Y3rQUP6OoCY7o5ErYKmID6yVZnXfsn6IPu8VxP/fenqWHRtteWZMi
 V/2Bf6FeKafR4m81+5tNZzKmTbeBs3AQsOtixYHzFiaHD06OQLy6Lxo63jB00qGRbVFc
 fAx0TdpgM2u404lkqC5aO2sl/qL9QzVSGbo9dJK0nM2UKvvAc+cAc0b2ntQz6dICxBuu
 rGnQfWI/5ZuRroAP2vMMcyGvLK3+pxmvkI+fmWJKuGQOOal7lYdksBx/uJxR/I9nB9Xk
 6xsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=reAgSdPZ/Igx7TP/G4DFm5yRB5oI6NXcR4YRtQByf1A=;
 b=VWDQxWIi6nKCfiT2jVDBxzXdA4Z6wgYy/5Wa9b5b2fIBOwVOHlAwKuc0ov5ZA2WZmj
 In1SUBEAkhNnWVrOxGNVDY4U+WPPjyRQgVyGivkS6Xi0Z9jCj51dsJ/hnTGIZSEGNP3x
 IFVwrebd5Vat4mGfuvC+GFXffCTQPZtTIpr1tr3Q6AC+pe9n8UzMIns039ZU87o7GnVs
 DlhnytnpkysRYtuOHQ0hvPTnGVXSYJEvTNlJPlYAgxHp6wUzCOG9iIrVuWo49CoybE2z
 oQFmRowDZ7YTANzRYj2xwizYdw9C/1gkmwGrgpQyoa35yiUKR/LcaD6YFCvcGLU8IjQX
 npug==
X-Gm-Message-State: APjAAAWkC13t/dtZevnvKotPt3MFiMGKhqkm/RgXlmTJOadveMSb6Lj3
 kFtLPruhEX2udJ6m2vq5o8Rn8Q==
X-Google-Smtp-Source: APXvYqzNARvSk1LSdQloLfBOFGXDLFTRU7QAXyWtKTnPx1omDlEXCkQ0bQF3o6bztshPU1rHZXHIEQ==
X-Received: by 2002:a65:5347:: with SMTP id w7mr94039pgr.375.1557998611813;
 Thu, 16 May 2019 02:23:31 -0700 (PDT)
Received: from localhost ([122.172.118.99])
 by smtp.gmail.com with ESMTPSA id s80sm14002886pfs.117.2019.05.16.02.23.30
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 02:23:31 -0700 (PDT)
Date: Thu, 16 May 2019 14:53:28 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
Subject: Re: [PATCH 0/8] Add cpufreq and cci devfreq for mt8183, and SVS
 support
Message-ID: <20190516092328.4n7kuqw7bxokhdjp@vireshk-i7>
References: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1557997725-12178-1-git-send-email-andrew-sh.cheng@mediatek.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_022332_681617_0D37025E 
X-CRM114-Status: GOOD (  16.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>, Nishanth Menon <nm@ti.com>,
 srv_heupstream@mediatek.com, linux-pm@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, "Rafael J. Wysocki" <rjw@rjwysocki.net>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Chanwoo Choi <cw00.choi@samsung.com>,
 Kyungmin Park <kyungmin.park@samsung.com>,
 MyungJoo Ham <myungjoo.ham@samsung.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org,
 Matthias Brugger <matthias.bgg@gmail.com>, fan.chen@mediatek.com,
 devicetree@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 16-05-19, 17:08, Andrew-sh.Cheng wrote:
> From: "Andrew-sh.Cheng" <andrew-sh.cheng@mediatek.com>
> 
> MT8183 supports CPU DVFS and CCI DVFS, and LITTLE cpus and CCI are in the same voltage domain.
> So, this series is to add drivers to handle the voltage coupling between CPU and CCI DVFS.
> 
> For SVS support, add OPP_EVENT_ADJUST_VOLTAGE and corresponding reaction.

No version information here or what has changed. That doesn't help.

I believe this is V3.

Don't resend it but please mention the changes in reply now. Thanks.

> Andrew-sh.Cheng (7):
>   cpufreq: mediatek: change to regulator_get_optional
>   cpufreq: mediatek: add clock enable for intermediate clock
>   cpufreq: mediatek: Add support for mt8183
>   dt-bindings: devfreq: add compatible for mt8183 cci devfreq
>   devfreq: add mediatek cci devfreq
>   cpufreq: mediatek: add opp notification for SVS support
>   devfreq: cci devfreq register opp notification for SVS support
> 
> Stephen Boyd (1):
>   PM / OPP: Support adjusting OPP voltages at runtime
> 
>  .../bindings/devfreq/mt8183-cci-devfreq.txt        |  20 ++
>  drivers/cpufreq/cpufreq-dt-platdev.c               |   1 +
>  drivers/cpufreq/mediatek-cpufreq.c                 |  88 +++++-
>  drivers/devfreq/Kconfig                            |  10 +
>  drivers/devfreq/Makefile                           |   1 +
>  drivers/devfreq/mt8183-cci-devfreq.c               | 310 +++++++++++++++++++++
>  drivers/opp/core.c                                 |  78 ++++++
>  include/linux/pm_opp.h                             |  11 +
>  8 files changed, 517 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/devfreq/mt8183-cci-devfreq.txt
>  create mode 100644 drivers/devfreq/mt8183-cci-devfreq.c
> 
> -- 
> 2.12.5

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
