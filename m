Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5343517F036
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 06:43:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WVUdzxmnpNvjaNtG+HFlIg3oyPFzgsgo3AR6FRegV5k=; b=YhrjLhxalwJaF0
	CQ1sibp71qVjXtO/gi391p1JXtj95QhENHcQLkcOix4OVy3q58GElcQVXzqCXG5jmOhR58wbMhg09
	oEetdtTc6JApGUX61fz1paVsWGjvS2Zj3IDUpYMswUM+k1sYU5k7t9VlXRhwtxGKE7nJ9Lj/tTmNe
	X+yD6XxPeTlIQJCE0cMChKgHVgD8rWefNQH/obMBG/3Nn6M0F19xM2n+4T9lSOoZrbDh2diuCFNQP
	BBiJPrM2XgSsWwVIEI7avNC4CdryTrmIBZNQBbkmTmXpPm9w/a5EHOgwm8i9RcQQt4co7Zc1x8pkh
	jvF7JYSzXlhlxls4TPfQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBXfs-0007R7-Cd; Tue, 10 Mar 2020 05:43:28 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBXfj-0007Qb-UX
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 05:43:22 +0000
Received: by mail-pl1-x641.google.com with SMTP id h11so1801844plk.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Mar 2020 22:43:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=F25Z6JOMg3VYYeS0Ph17/tK9FAZWHrNbdM4PzCWFQu8=;
 b=gChH3PS1Ahx4kjgjmib1NgIky08oV7TsTD369DupZ3qTEaWaIL8bL1V8Yqy85SlZSx
 XofjzRdyK/ZgT7pbeM6FhDwzyoJF6CscxXa6XE5ga8eAHHj4GJfQx6cwKFUsw0rkwLKY
 tU6+oauZM8ktgjO8lnrklWew6Uvm/VcrQZ8FPyGVSEOvFPaH4H0n2drzFthrm5ft+3RZ
 VxWP43OKxBolA4Utm1IMjeC5oaWOrU5xrQ9t1l08MrygvCGrIkmX3wmgP1cLRHmHmYz0
 jJ8jR3Evj+msL9T0efnedWvBGv7WjgLOaHKfMJOcg/Gv0OHKdLamLVq3/Cl6WkS11r05
 J1ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=F25Z6JOMg3VYYeS0Ph17/tK9FAZWHrNbdM4PzCWFQu8=;
 b=mPBovEhf8f1oND+JdjJIO7RLaSiGthq0dZJMl0SMX1j324rwifi17+XV+OR/E2V5xY
 +eq8Rj+1p+SJOyYTs0bz3mA0CoQrHP1ViNU0IdYg9B3710FGrY668W5Q2xtLmu9CkzWZ
 ig6iNDP1CQZzwTmaULBrI6uvMlPgO3A0zrdtGbttqxAQisCndgO7T+Zgv88kYNj1dJzL
 RWBwvI5b9XCqOMtNp2I8urUiP+tymLk8gWXr7X4p8rjSeLKQro9eBxvRonbKTrFbPnfk
 yKj+te0Q0ppvubNOrbBRSThDwsPAOaEb3e1o8YIKCR///PoXr2mNKP+gaH1TvGpJVzDj
 i06Q==
X-Gm-Message-State: ANhLgQ3qvN4HncxN6SsPE1Rw8TyJ0/ZWpB6UAmm+TPxAV88LF+YrcKi9
 WgqDLxbpR/fhvgxOKFUZJNljXA==
X-Google-Smtp-Source: ADFU+vsXDgkhbqbgEl4Jn5PjWcUx6mjmhk+iK35QWzx5tHigdCQgJMA6OZ+XlXSIjbrH2oaJMWgY/Q==
X-Received: by 2002:a17:90b:19c3:: with SMTP id
 nm3mr1367661pjb.149.1583818998924; 
 Mon, 09 Mar 2020 22:43:18 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2400:8902::f03c:91ff:fe3f:32da])
 by smtp.gmail.com with ESMTPSA id t142sm37183481pgb.31.2020.03.09.22.43.10
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Mar 2020 22:43:18 -0700 (PDT)
Date: Tue, 10 Mar 2020 13:43:05 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Mike Leach <mike.leach@linaro.org>, Robert Walker <robert.walker@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 Coresight ML <coresight@lists.linaro.org>
Subject: Re: [PATCH v5 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200310054305.GA21545@leoy-ThinkPad-X240s>
References: <20200219021811.20067-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219021811.20067-1-leo.yan@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_224320_047359_39929812 
X-CRM114-Status: GOOD (  19.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Arnaldo,

On Wed, Feb 19, 2020 at 10:18:06AM +0800, Leo Yan wrote:
> This patch series is to address issues for synthesizing instruction
> samples, especially when the instruction sample period is small enough,
> the current logic cannot synthesize multiple instruction samples within
> one instruction range packet.
> 
> Patch 0001 is to swap packets for instruction samples, so this allow
> option '--itrace=iNNN' can work well.
> 
> Patch 0002 avoids to reset the last branches for every instruction
> sample; if reset the last branches for every time generating sample, the
> later samples in the same range packet cannot use the last branches
> anymore.
> 
> Patch 0003 is the fixing for handling different instruction periods,
> especially for small sample period.
> 
> Patch 0004 is an optimization for copying last branches; it only copies
> last branches once if the instruction samples share the same last
> branches.
> 
> Patch 0005 is a minor fix for unsigned variable comparison to zero.
> 
> This patch set has been rebased on the latest perf/core branch; and
> verified on Juno board with below commands:
> 
>   # perf script --itrace=i2
>   # perf script --itrace=i2il16
>   # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
>   # perf inject --itrace=i100il16 -i perf.data -o perf.data.new

Could you pick up this patch set?  I confirmed this patch set can
cleanly apply on top of the latest mainline kernel (5.6-rc5).

Or if you want me to resend this patch set, please feel free let me
know.  Thanks!

Leo

> Changes from v4:
> * Added Mike's review tag for patch 03;
> * Added Mathieu's review tags for all patches.
> 
> Changes from v3:
> * Refactored patch 0001 with new function cs_etm__packet_swap() (Mike);
> * Refined instruction sample generation flow with single while loop,
>   which completely uses Mike's suggestions (Mike);
> * Added Mike's review tags for patch 01/02/04/05.
> 
> Changes from v2:
> * Added patch 0001 which is to fix swapping packets for instruction
>   samples;
> * Refined minor commit logs and comments;
> * Rebased on the latest perf/core branch.
> 
> Changes from v1:
> * Rebased patch set on perf/core branch with latest commit 9fec3cd5fa4a
>   ("perf map: Check if the map still has some refcounts on exit").
> 
> 
> Leo Yan (5):
>   perf cs-etm: Swap packets for instruction samples
>   perf cs-etm: Continuously record last branch
>   perf cs-etm: Correct synthesizing instruction samples
>   perf cs-etm: Optimize copying last branches
>   perf cs-etm: Fix unsigned variable comparison to zero
> 
>  tools/perf/util/cs-etm.c | 157 +++++++++++++++++++++++++++------------
>  1 file changed, 111 insertions(+), 46 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
