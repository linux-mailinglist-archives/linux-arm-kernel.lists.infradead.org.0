Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 34F92A9C2A
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 09:46:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=DuCoKe+5fh2ul/kSr7TyjtWZYzfPVbDOApOKHwGEHWs=; b=Syn2n2xwXBPZ76
	sou8t9+IJzvhFNi/wrGCmbPQ+IwfNjhkgmK9/0ED8EFBZyAHRYUWDeHQnuL2CLl8NDpy6QnFNZoba
	tRuCQlCfyVJoSIVTQrRuajoL0h5OvtK27Kjglja47Qi9QVTQE7yLpA7W8ztNAyFNKCL7tRJDDZSRs
	2eiIcJXdZGK5som6hMngxyRG22F7iXz7PnnEI+LjVshy0T5ZlTmhJUGZbVnkRyJACZtWYyvXfuGEr
	tAzFPLMaLz8ULNmBOvbkXw/4mheVp9YTzPP7toc/R5BUQrETOrnTXjyiHpZuEpGp5SYmv5bj+acQa
	Ctm8jbL/H62Mv41+T5uA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5mTP-0002CB-0G; Thu, 05 Sep 2019 07:46:31 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5mS7-00021y-I4
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Sep 2019 07:45:13 +0000
Received: by mail-pf1-x444.google.com with SMTP id b13so1170898pfo.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Sep 2019 00:45:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=hpCUEGddX7qZLrDE/1ojj9wnkPMw6M1KGQTh1eKUChU=;
 b=SsnUCEcCbGGi4OuiIojnwuy1Ee1+ueJDvGIE8Q02a2QFmbConzEYQb4DP/a+yh5yML
 ZTP0ZI3nP5KRxtf6jCw8NjPLtG7bU61kUQQRfCt2DkOIHR52JELw1RNT1I5zvvHAIDSr
 /qAts2dyovBObTSLxRR9Xo9gnCDc3J/etQW0dlu/MK85xWPqiis6iPbvY6HEMr8fuwm4
 gz2D0qtOXrieZ1waZe86IyltHwsTPgEN15ooTGZhiGvK7GMLVLO0Xz8flIH0er565G2j
 q4AbrYw4B6hz2nMoqiALLqeaBoi4GUmP5b+wYE35sZjO2AUpggcBNmjHVB6TdD1Jr6Df
 JQ+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=hpCUEGddX7qZLrDE/1ojj9wnkPMw6M1KGQTh1eKUChU=;
 b=sUC9cKtuhOLT3ggAJuOxkTtfkLQTzZkWZUS0RnE2svY3GHfAyt9jVA/wuOH+xLjh4a
 uSsqezso3eybIva5NA3BGPwNmf0luSaoz+cFW9psa1QcISzzSDtMVHjuk34zWFJXYQUp
 PUQ/QnZdscVAKfXGEPIEqzZPQSmOKGMqeVeKSxfJ56BKeWr+IIV82VO/Y0GTYYFpF6cx
 oxahKu8iX8vmWvTsFGUKV/cv5IxzaCt9AWULniQq7/lSJi56Lo7v4FdxDcEPDGcDEUZc
 VlUYJHBGSeNNQHjS4xUVqbIIERxluqcCmImrq72vxrGzztgsROLZCP+kEQA4eFjYyQz9
 eeCA==
X-Gm-Message-State: APjAAAViytE6qw9LJFPvGPXlvh3eioDg+3/scEABzgcaJST3I/RkqtYz
 gU+pgoV67hjpNGtyGtcLkN5DEg==
X-Google-Smtp-Source: APXvYqwf0YX6tt1CPUpyTzEzZQjgLyT4wvcmEy6Ovf5SU/FcoQviQhfq965/ABavnjJQs6c9+uWbuA==
X-Received: by 2002:a62:d4:: with SMTP id 203mr2120282pfa.210.1567669509669;
 Thu, 05 Sep 2019 00:45:09 -0700 (PDT)
Received: from localhost ([122.167.132.221])
 by smtp.gmail.com with ESMTPSA id j128sm2936214pfg.51.2019.09.05.00.45.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 05 Sep 2019 00:45:08 -0700 (PDT)
Date: Thu, 5 Sep 2019 13:15:06 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: Mark Rutland <mark.rutland@arm.com>
Subject: Re: [PATCH ARM64 v4.4 V3 12/44] arm64: cpufeature: Test 'matches'
 pointer to find the end of the list
Message-ID: <20190905074506.oxsw24xoex7gcfgm@vireshk-i7>
References: <cover.1567077734.git.viresh.kumar@linaro.org>
 <617ad445043f040c5ab986b9620b2ba7847b561e.1567077734.git.viresh.kumar@linaro.org>
 <20190902142741.GB9922@lakrids.cambridge.arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190902142741.GB9922@lakrids.cambridge.arm.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_004511_723829_6211DCB1 
X-CRM114-Status: GOOD (  25.82  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Julien Thierry <Julien.Thierry@arm.com>,
 Marc Zyngier <marc.zyngier@arm.com>, Catalin Marinas <catalin.marinas@arm.com>,
 Will Deacon <will.deacon@arm.com>, stable@vger.kernel.org, mark.brown@arm.com,
 Russell King <rmk+kernel@arm.linux.org.uk>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 02-09-19, 15:27, Mark Rutland wrote:
> On Thu, Aug 29, 2019 at 05:03:57PM +0530, Viresh Kumar wrote:
> > From: James Morse <james.morse@arm.com>
> > 
> > commit 644c2ae198412c956700e55a2acf80b2541f6aa5 upstream.
> > 
> > CPU feature code uses the desc field as a test to find the end of the list,
> > this means every entry must have a description. This generates noise for
> > entries in the list that aren't really features, but combinations of them.
> > e.g.
> > > CPU features: detected feature: Privileged Access Never
> > > CPU features: detected feature: PAN and not UAO
> > 
> > These combination features are needed for corner cases with alternatives,
> > where cpu features interact.
> > 
> > Change all walkers of the arm64_features[] and arm64_hwcaps[] lists to test
> > 'matches' not 'desc', and only print 'desc' if it is non-NULL.
> > 
> > Signed-off-by: James Morse <james.morse@arm.com>
> > Reviewed-by : Suzuki K Poulose <suzuki.poulose@arm.com>
> > Signed-off-by: Catalin Marinas <catalin.marinas@arm.com>
> > Signed-off-by: Viresh Kumar <viresh.kumar@linaro.org>
> > ---
> >  arch/arm64/kernel/cpufeature.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> >From looking at my 4.9.y/{meltdown,spectre} banches on kernel.org [1,2],
> and chasing the history v4.4..v4.9, there are a number of patches I'd
> expect to have alongside this that I don't spot in this series:
> 
> * e3661b128e53ee281e1e7c589a5b647890bd6d7c ("arm64: Allow a capability to be checked on a single CPU")
> * 8f4137588261d7504f4aa022dc9d1a1fd1940e8e ("arm64: Allow checking of a CPU-local erratum")
> * 67948af41f2e6818edeeba5182811c704d484949 ("arm64: capabilities: Handle duplicate entries for a capability")
> * edf298cfce47ab7279d03b5203ae2ef3a58e49db ("arm64: cpufeature: __this_cpu_has_cap() shouldn't stop early")

I also had to pick this one for cleaner rebase:

752835019c15 arm64: HWCAP: Split COMPAT HWCAP table entries

> 
> ... which IIUC are necessary for big.LITTLE to work correctly.

I have pushed the changes to my branch again with above 5 patches and
some more reordering to match 4.9 log.

> Have you verified this for big.LITTLE?

Not sure if we ever talked about this earlier, but here is the
situation which I explained to Julien earlier.

I don't have access to the test-suite to verify that these patches
indeed fix the spectre mitigations and I was asked to backport these
and then ask for help from ARM to get these tested through the
test-suite. I was expecting Julien to do that earlier.

Julien did ask me to verify few things earlier, which can be done
without the test suite and was about checking that the new code paths
are getting hit now or not, which I did.

I haven't tested these on big LITTLE, though I can get the branch
through LAVA to get it tested on big LITTLE but I have no clue on what
I should be looking for in results :)

If there is some testing that can be done on my side for this, I sure
can do it. But I would need help from you on that to know what exactly
I need to check.

Thanks for the reviews Mark.

-- 
viresh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
