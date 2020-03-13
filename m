Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B74BE184604
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Mar 2020 12:33:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=pXfCWLIYrd7LUqC9rEYE6xPtvpQ+pfnxm2A64rlsUQE=; b=bE1END2ggFcIx/
	tRxh+TFo1iZv2cPeMuga4Be8E7uGuwUsH2qbgh3sun9vo2J5XaU40fQubd1MIWX+NniB3zg5+ABTQ
	lAC338w5mthJAiOHlLbOUUqYz/ebnvfwT5bhhJK0WKmHLskM6ZlkomyYMG1VBxrXISL8SANlDgmMv
	YicflbjQU0bsPnWQKNjWyXvWpJFuJ1WqFrz25MjtO01QKQKnlh1VyHUZhsme47Bux5JP92J8sccEg
	R0YLPmvKnpTTM3Ytdad3/OIeYD1syqqfHcKcPO6jjsy8uhuyKw7JgNmzPzvx4FRVpngiajk2/hLBK
	0gy+mmko7FjPNAHp5RVg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCiZR-0006zW-RB; Fri, 13 Mar 2020 11:33:41 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCiZI-0006z5-KH
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Mar 2020 11:33:34 +0000
Received: by mail-pj1-x1044.google.com with SMTP id hg10so74594pjb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Mar 2020 04:33:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oqWkBQ+UQoj3qonw3F8cFJSQqNQ+pWh1jUw1LgUoqD4=;
 b=aExmPbWUsZEV7sFZwkmnUXHpmKtR7RVepsbHTvtgwOPSj6PaCaaaNGNUEFZP/l+Q5D
 iMrMyq5aPX5mwF6pZfNF5itieysdHiCD6txAYL0h2aE1sq5tBLjADz99NaxeDVqNF2KT
 uZOsAvDlo71DJ4tWb/znVK4AgPCdhvQXuhaY2xvOOneY7xDMFPHCvRZ8220iABJWwavF
 xuxc4Vlzbo0i4A8uefQ5YbKhgaJWcmgum5rj3n1fCoNuS7h9aZ3IYcgIWXtotUAOXjeU
 V14XdbkUqJ6i4FNNap3KC4i+SV6E4A6eSNU8krUvp9CmnQWnlJ3t1f7DvGNVVVkfGQ3T
 gwmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oqWkBQ+UQoj3qonw3F8cFJSQqNQ+pWh1jUw1LgUoqD4=;
 b=I1ZeOilCUi51egPj+1LYh3xg8QbbIf4s0s7miER8uagitLn4qKox2uu1FNsQjJnL/k
 QziMQ9dVRiQeROaiB+YcL69FtVPaWzwuAW1W8Y2yKwVMh3XBfwdW4s13mot77umVUa0Q
 Gj8HAEuQscxadrXBGvzo4p8pa8rKlgCfOUaXdUakQjCD36pEU6HX8SgIo64LMkeJQzHv
 41c8CX+kcaGiC2qBJ2n7O+JYmgC7Dt85FNuBXHP2cRmbcJIPAcoqAEHcxmS+9BIjy2yq
 rL6cDSm7kspM/utg1Qf+7D7PTjnQfYJc4EobVvMZY8QwoPjos59cvmOSEQBxbu+4/t1I
 gKOw==
X-Gm-Message-State: ANhLgQ26PUMCuxAzcGI2gnEURbuImuMjm95r/GSVjGRpMcPOIzS2J/dI
 c3JeBRt+AV+Ir/UAeIPnP5LnSUqlGyM1VgTd
X-Google-Smtp-Source: ADFU+vv8WTv+xIg1ExTl2Wez3rJG869zbTz19yhBWtmKute2nxlgZEWIy1kMVZF5Sqdk+CbnbBIBbw==
X-Received: by 2002:a17:902:d885:: with SMTP id
 b5mr12806651plz.109.1584099211290; 
 Fri, 13 Mar 2020 04:33:31 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:ee42])
 by smtp.gmail.com with ESMTPSA id a24sm8435284pfl.115.2020.03.13.04.33.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Fri, 13 Mar 2020 04:33:30 -0700 (PDT)
Date: Fri, 13 Mar 2020 19:33:11 +0800
From: Leo Yan <leo.yan@linaro.org>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH v6 3/3] perf report: Add SPE options to --itrace argument
Message-ID: <20200313113311.GA16574@leoy-ThinkPad-X240s>
References: <20200228160126.GI36089@lakrids.cambridge.arm.com>
 <20200306152520.28233-1-james.clark@arm.com>
 <20200306152520.28233-4-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200306152520.28233-4-james.clark@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200313_043332_673212_39FBA834 
X-CRM114-Status: GOOD (  15.29  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-kernel@vger.kernel.org, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Will Deacon <will@kernel.org>,
 Tan Xiaojun <tanxiaojun@huawei.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Fri, Mar 06, 2020 at 03:25:20PM +0000, James Clark wrote:
> From: Tan Xiaojun <tanxiaojun@huawei.com>
> 
> The previous patch added support in "perf report" for some arm-spe
> events(llc-miss, tlb-miss, branch-miss, remote_access). This patch
> adds their help instructions.
> 
> Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> Tested-by: Qi Liu <liuqi115@hisilicon.com>
> Signed-off-by: James Clark <james.clark@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
> Cc: Al Grant <al.grant@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> ---
>  tools/perf/Documentation/itrace.txt | 5 ++++-
>  tools/perf/util/auxtrace.h          | 5 ++++-
>  2 files changed, 8 insertions(+), 2 deletions(-)
> 
> diff --git a/tools/perf/Documentation/itrace.txt b/tools/perf/Documentation/itrace.txt
> index 82ff7dad40c2..da3e5ccc039e 100644
> --- a/tools/perf/Documentation/itrace.txt
> +++ b/tools/perf/Documentation/itrace.txt
> @@ -1,5 +1,5 @@
>  		i	synthesize instructions events
> -		b	synthesize branches events
> +		b	synthesize branches events (branch misses on Arm)

This is not valid for Arm CoreSight actually.  Arm CoreSight can use
option 'b' to inject branch samples.  For this reason, suggest to
change as "(branch misses for Arm SPE)".

Thanks,
Leo

>  		c	synthesize branches events (calls only)
>  		r	synthesize branches events (returns only)
>  		x	synthesize transactions events
> @@ -9,6 +9,9 @@
>  			of aux-output (refer to perf record)
>  		e	synthesize error events
>  		d	create a debug log
> +		m	synthesize LLC miss events
> +		t	synthesize TLB miss events
> +		a	synthesize remote access events
>  		g	synthesize a call chain (use with i or x)
>  		l	synthesize last branch entries (use with i or x)
>  		s       skip initial number of events
> diff --git a/tools/perf/util/auxtrace.h b/tools/perf/util/auxtrace.h
> index 80617b0d044d..52e148eea7f8 100644
> --- a/tools/perf/util/auxtrace.h
> +++ b/tools/perf/util/auxtrace.h
> @@ -587,7 +587,7 @@ void auxtrace__free(struct perf_session *session);
>  
>  #define ITRACE_HELP \
>  "				i:	    		synthesize instructions events\n"		\
> -"				b:	    		synthesize branches events\n"		\
> +"				b:	    		synthesize branches events (branch misses on Arm)\n" \
>  "				c:	    		synthesize branches events (calls only)\n"	\
>  "				r:	    		synthesize branches events (returns only)\n" \
>  "				x:	    		synthesize transactions events\n"		\
> @@ -595,6 +595,9 @@ void auxtrace__free(struct perf_session *session);
>  "				p:	    		synthesize power events\n"			\
>  "				e:	    		synthesize error events\n"			\
>  "				d:	    		create a debug log\n"			\
> +"				m:	    		synthesize LLC miss events\n" \
> +"				t:	    		synthesize TLB miss events\n" \
> +"				a:	    		synthesize remote access events\n" \
>  "				g[len]:     		synthesize a call chain (use with i or x)\n" \
>  "				l[len]:     		synthesize last branch entries (use with i or x)\n" \
>  "				sNUMBER:    		skip initial number of events\n"		\
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
