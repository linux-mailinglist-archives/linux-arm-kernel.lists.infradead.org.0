Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D1FA1DB3F5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 May 2020 14:44:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=y/HvSjTVQKrvaHzA2CAc5GmunmmsvUPUUrBPJKBw7MM=; b=LLn/nuH8Qk7sIs
	F0Zt6TBCT0VZmmS3n4f3xQGiiHSuiM4tBY0nd0GUMVER3wOza/uSOYrVBZpOfd7ka0Dz8un5zRCRY
	7vN9V0WVpBB8p15dcuTOw3NIUInp28MyB02PWoEnmsKLU7hq8GTUu1t6ahD9Mb231kAF6PlAdaF3p
	y1TF8Z6G+Ddz3k05Om0kf7hAcJeVicHyCNJI8U9SPk8CpfYnN9ckczCU5gaqFnXpcmh+bauUH1uV9
	DZzm1E6AWIr+bSEwFE/jFjvMZAzlNXqYwif/Mi7zHFpp0Fr987AZDk3Qhi56sKamLF0jn9ahS6OdH
	l7saLBKZVf9X/xDSEH2Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jbO5U-0002wu-D0; Wed, 20 May 2020 12:44:44 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jbO5H-0002vs-F4
 for linux-arm-kernel@lists.infradead.org; Wed, 20 May 2020 12:44:37 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so1097824wrn.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 May 2020 05:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=Y40jbkqIfFkUI7ZiRlmLevn335EVOReBHbhD7GbihLE=;
 b=p4CUdE9pepIc4FjeGaw9rpilpouxhHRYmar9hVV44lZrKVe+1UvqNOkup4LagMa4QY
 RSw6gueqOVQJLw3Ihf4HjnGEeqYzD16ihtmI8ApVBWKguVmOsC265K7DCs7q+vqeIrq+
 i4i8JEAY4h3MumABqT9u+m2g7eKxueVgu/DqX/HqbPCE4Fi86oBv7FB2KIANCp4kXlVI
 JkQ9CXs0K1fF2yEBMU8Lfzp8SkbKKr2TlFvGnz0aPsuaSG1JDeRuAkvscN6I8mzTx1Pd
 MS3Hp7jFjjGxifFKQRdYDTxDLynvYZ8erE6M/7KCG6b5jjfD+3/kcUU/0mg8OwuNWKDn
 ZKrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=Y40jbkqIfFkUI7ZiRlmLevn335EVOReBHbhD7GbihLE=;
 b=aoPExGLguUmLrXzuSsTrGQ3vO+sBcRc9GRbeU7RxpN80mgd1ab9hBDER7AUChKc/zk
 j91MWHm6Yq1gJ5nEzH9UXRai27Y5zJliXknBXbRL3pH9caE8nIeRVrD2IhDJP7ORNRIi
 QBAVJXrfzO58DmRJzgw6y8ada0kFEL9n4Y2aUjeBu59z94OjU38J6CJAvHH5BmZdXD4V
 POiXtPtyicCUFXFPu3LYY3+lhfBphOQMiV6cOY2u6SqM5DvgyHmEudp5R6GwIk5mWHgw
 H7LCKKrRljaMd5fjCioEV30dXqHw9ZGaozNp/Vj2HwWSAVXtjETF5cD1gJexgHmOrBVY
 WIjA==
X-Gm-Message-State: AOAM533EmsJ2hr0Xh4iN1fX8ebD/5oFyD09MWXFJa5btOxoxXTr53ush
 jfu7udCzN0qC5fQaPArqdet7vQ==
X-Google-Smtp-Source: ABdhPJxVz5Ef/g7gSSEvpWEQLOSp0LR9XsoCDxDK4+T7RPFKUq8EqywmmWzSB+P43U85QvHoiTf27A==
X-Received: by 2002:adf:f786:: with SMTP id q6mr3987549wrp.120.1589978663802; 
 Wed, 20 May 2020 05:44:23 -0700 (PDT)
Received: from myrica ([2001:171b:226e:c200:c43b:ef78:d083:b355])
 by smtp.gmail.com with ESMTPSA id q9sm2876323wmb.34.2020.05.20.05.44.22
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 May 2020 05:44:23 -0700 (PDT)
Date: Wed, 20 May 2020 14:44:13 +0200
From: Jean-Philippe Brucker <jean-philippe@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH] perf/smmuv3: Allow sharing MMIO registers with the SMMU
 driver
Message-ID: <20200520124413.GA2512145@myrica>
References: <20200421155745.19815-1-jean-philippe@linaro.org>
 <20200520122453.GB25815@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200520122453.GB25815@willie-the-truck>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200520_054431_510781_80EC8F3C 
X-CRM114-Status: GOOD (  16.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, iommu@lists.linux-foundation.org,
 lorenzo.pieralisi@arm.com, robin.murphy@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, May 20, 2020 at 01:24:53PM +0100, Will Deacon wrote:
> On Tue, Apr 21, 2020 at 05:57:46PM +0200, Jean-Philippe Brucker wrote:
> > Some Arm SMMUv3 implementations, for example Arm CoreLink MMU-600, embed
> > the PMCG registers into the SMMU MMIO regions. It currently causes probe
> > failure because the PMU and SMMU drivers request overlapping resources.
> > 
> > Avoid the conflict by calling devm_ioremap() directly from the PMU
> > driver. We loose some sanity-checking of the memory map provided by
> > firmware, which doesn't seem catastrophic.
> > 
> > Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
> > ---
> > 
> > So this is the simplest solution, and I don't think we're missing much
> > by skipping the resource reservation. I've also been exploring a more
> > complex approach [1] which has the SMMU driver perform resource
> > reservation on behalf of the PMU driver, but I'm not sure it's
> > necessary.
> > 
> > Please test, I've only tried the RevC FastModel using devicetree so far.
> > 
> > [1] https://jpbrucker.net/git/linux/log/?h=smmu/pmu
> > ---
> >  drivers/perf/arm_smmuv3_pmu.c | 28 +++++++++++++++++++++-------
> >  1 file changed, 21 insertions(+), 7 deletions(-)
> 
> Is this patch still needed? I can't quite follow from the discussion.

No, it is superseded by "[PATCH v2] iommu/arm-smmu-v3: Don't reserve
implementation defined register space" that you applied yesterday
(Thanks!)

Jean

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
