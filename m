Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 81BA3162EF8
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 19:49:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gcRYj9oAgdG7JtLftJUzKX8eJlGy7vFCsMauFsZ0nJo=; b=nmDJA0lXPkV8Xe
	SJSyXK+dftc4c6XLcYPWSf7B2Sf8CU5Yd5VD+RMEDz6lfBxcERhX2kbo9QDTa/C9xansh0aB+GPn5
	1G5AvJG4LsDEFP9pt3XMP26FIVk+E7o7WIksMTsRvv4Us/rukH/PHmVXpKwkwArvXnlKo/WaEHwbo
	mx9eNrd2QpYl0ynrh3c7dLBRygVn25FGWq8BZIHA/mtINpYcsD/ci36lOxU5W1IWJr1r3f5Gyr2Ro
	fKdv+9yVVlZNU1lSTyUX2iojAh5Zf5sHtZFtOUXXEIMn2iEPKPtF8pe2EZE/hB7hZ9oVmC8qkoorA
	oqDxX9yTPGwZl1XscsFA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j47wO-0005EN-3P; Tue, 18 Feb 2020 18:49:52 +0000
Received: from mail-yw1-xc44.google.com ([2607:f8b0:4864:20::c44])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j47wD-0005DV-Rx
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Feb 2020 18:49:43 +0000
Received: by mail-yw1-xc44.google.com with SMTP id a125so9840180ywe.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 18 Feb 2020 10:49:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=Rsvcf6nEyweqvzaXVtO81ERnYCMGFqf7irfRI+SZdXk=;
 b=E3940jiGUF1Uagjna8ef3NgmN+ostg/I0dw5cE1R5zeXMMRWwv1EqbFgbyRLTcKlZF
 Fzm+K+hrXXQ2VPVx3vG9l4ag3zpMRTwx0Ut5LmBv/acM+dD7ZkP2FKmkH0we1oKBYkaP
 rXYvmQFRNrKJ/BPTJoCyG2vrN57gEmEeFwgT5SUpSkyWoGZRF5/MSVCwNACq4PQ7Ik8k
 +rXbZSBQl6NVkEa/4K7Gf6HeHh76j/vcF/X3bjB+DVgi9ARv7qmANY+z2qesaCPkmPOz
 VFEbQwPaHIQnqUjE7qHL+2Tmku10RGfY4JjZYFDbMWGOmB+AADDSxvZ+nJjBkw5mdoyy
 z4Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Rsvcf6nEyweqvzaXVtO81ERnYCMGFqf7irfRI+SZdXk=;
 b=AjUniMnAFZ2O8VrOC8V2ko+dN90ZJHSQX87uP3y+HStCUFN0J767u+9YrfHFEX0tMf
 jJs2G5NQdBBQvqOG1R6KGXXCAprwnQKa+fP2YNUsEaiZW8V4u59SqJMwJEnGsHZnDpKa
 Moo8UFsUtw66bO7PkIepSk52dybeVKrUgnmV2GNVx8Atzgr1tzZfy2Rbs0C7h+c3zK40
 85k551likdU3HFqKeIeUmMOHLB/LZPioLV2Z+OqTf72R/EmqJIw4/yfGiwFcWI00B0KQ
 PYtOqosDSGON5NUZh2DOUTlkdc1D2hdXro2+YMDSK1Ws+RH0WLCXzMNR4sy3Gjatcxjv
 M+4A==
X-Gm-Message-State: APjAAAUQ0x0V8ktLlYqUvr4vujubUhTjan0zZDdx6JQLv7U5sLWhfHZ8
 gjjSTKpR/8iXmOJkx17U7Xdlxg==
X-Google-Smtp-Source: APXvYqzRCBhILjOad1Afntyy2VV/HNgWp+4H7xiesfGuqB8WMfOpZ7DpnMFd6fDluVqK9E0lOxPYsQ==
X-Received: by 2002:a81:9bc4:: with SMTP id
 s187mr18147859ywg.285.1582051778613; 
 Tue, 18 Feb 2020 10:49:38 -0800 (PST)
Received: from xps15 (S0106002369de4dac.cg.shawcable.net. [68.147.8.254])
 by smtp.gmail.com with ESMTPSA id w5sm2308936yww.106.2020.02.18.10.49.36
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 10:49:37 -0800 (PST)
Date: Tue, 18 Feb 2020 11:49:34 -0700
From: Mathieu Poirier <mathieu.poirier@linaro.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v4 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200218184934.GA11448@xps15>
References: <20200213094204.2568-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200213094204.2568-1-leo.yan@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_104941_911809_7A62F785 
X-CRM114-Status: GOOD (  18.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 13, 2020 at 05:41:59PM +0800, Leo Yan wrote:
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
> 
> Leo Yan (5):
>   perf cs-etm: Swap packets for instruction samples
>   perf cs-etm: Continuously record last branch
>   perf cs-etm: Correct synthesizing instruction samples
>   perf cs-etm: Optimize copying last branches
>   perf cs-etm: Fix unsigned variable comparison to zero

For all the patches in this set:

Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Unless Arnaldo says otherwise, I suggest you send a new V5 with Mike's RB for
patch 3/5 and mine for all of them.  That way he doesn't have to edit the
patches when applying them.

Thanks,
Mathieu

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
