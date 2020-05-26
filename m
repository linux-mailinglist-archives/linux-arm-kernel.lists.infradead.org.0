Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F3671E2001
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 26 May 2020 12:43:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=WoidpjEvwZujzZ7CtkSbAvanLBcOMswkPNA628xIZeY=; b=rzUEIjtILL7fEJ
	ODtq/uv1dW6sR41cJsW5MWERiFlQqRF0BLeBWKi5XIEUwc9cZiPLA4uO4EtvPaU+CvTM1M/QhWOW/
	cLcO4Px9MhmNJFX+fL+Xl+fjS2PFt8nwpRXQYFR2GLsPdf2u0bL8WW6NF441ylNeH73at7TDH3j+9
	ypN34OQAahIqXe1TUO8EDcECwjujMi551aFZ05joJpn7muYctExrnEO7MhV41ijfZD6oHy3t5RdpS
	SEW9oKmN5OdnFTFElRkHMbQm+9jleSn2E72/TNifWuMhzA1zrZF+7FJyu03UiwlzpmaI+C6WnwQ80
	RRwA310EACU+5YXYpBmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jdX3c-0006UC-DI; Tue, 26 May 2020 10:43:40 +0000
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jdX3P-0006Ts-Mb
 for linux-arm-kernel@lists.infradead.org; Tue, 26 May 2020 10:43:29 +0000
Received: by mail-pg1-x544.google.com with SMTP id d10so9920646pgn.4
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 26 May 2020 03:43:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=8vLgjzSO/LxApXStr6hj3HmlT19nlNPyYTwZYXJ6lsI=;
 b=JO05icFZ2oOl/2ZydYLDpoc/seP84LVDwFA4hznRqc7Lu0yJLk0v/w6NbHZzhsxjuS
 gg4jMSyfdmLwLM60OHlDX4Y3MVOV5TzoPG6xd9yxGCw0ja35SqLsoypvbzE31UCzcSqq
 OcRIb0hIT5TTpShmMiKtTmXK7rs/ssU+M4bDNUVZhCvFWzRlyEcirejoD5UfZKvX9S1D
 Csq7H849+0mQBVi8tr5j0FQW0W+huh+OIzF9MT9AoRLcmTt9ZGDiGrrZbmZLlhGiqTUe
 pBl4aglramB7+ZeBDEIXs8Rg3R6u5K6cUYUYIU3VpEHNEvdbbuyaAXJc7R6aQoO0Mlzk
 vfcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=8vLgjzSO/LxApXStr6hj3HmlT19nlNPyYTwZYXJ6lsI=;
 b=hXN9LeKb2AsQ9CPEMQ3YLGzJmII2T/SqOHTEb4J4gFXXOK5fdtYskFOVkQEho+RN6Q
 bSM4zfn6NygqozLYNrp05aST77CffeZFIQ+WjV/4AMNYvSUD7YNMFkIWWkWb+sth1ZKk
 pTJnmcQ1Yec5SZRNTHAt2wdhT1KcdTMsAd0ClHJyiA1cDE4I6qBwCF0Uns3CQ51YCfe4
 fLYy6Nb2+LKYLqa/QmR/5oOC0oAWqabo3g1VE7YsetdBhgqbyJB4das1O/QEocgisP4P
 PpBVtGzaPIYAzrELCMGN242CZjp0W8zjsgeLkYaKIeuP3S6MWa3U+FPcukS+2j7daJF9
 TxEA==
X-Gm-Message-State: AOAM530ezD6HAb1d++kocQwu9cP4SefXvzSv2kd3u2Eam97vaSqk6mho
 sbZiJVVp1Pl62TYalnyFCDrk9g==
X-Google-Smtp-Source: ABdhPJxiGuXC9T8/0vvEp1ide6CNqP2MI7swVISrxEein7BriB8dAwfiHIb1d2IH6djWdEDEo+E4iQ==
X-Received: by 2002:a65:67d0:: with SMTP id b16mr437917pgs.91.1590489806616;
 Tue, 26 May 2020 03:43:26 -0700 (PDT)
Received: from leoy-ThinkPad-X240s ([2600:3c01::f03c:91ff:fe8a:bb03])
 by smtp.gmail.com with ESMTPSA id s15sm13277931pgv.5.2020.05.26.03.43.23
 (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 26 May 2020 03:43:26 -0700 (PDT)
Date: Tue, 26 May 2020 18:43:37 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200526104337.GA7154@leoy-ThinkPad-X240s>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200526102602.GA27166@willie-the-truck>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200526_034327_766307_615FD1B0 
X-CRM114-Status: GOOD (  23.15  )
X-Spam-Score: 3.4 (+++)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (3.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 3.6 RCVD_IN_SBL_CSS        RBL: Received via a relay in Spamhaus SBL-CSS
 [2600:3c01:0:0:f03c:91ff:fe8a:bb03 listed in] [zen.spamhaus.org]
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On Tue, May 26, 2020 at 11:26:03AM +0100, Will Deacon wrote:
> On Fri, May 22, 2020 at 11:09:19AM +0800, Leo Yan wrote:
> > On Mon, May 04, 2020 at 07:56:22PM +0800, Leo Yan wrote:
> > > This patch set is to support synthetic events with enabling Arm SPE
> > > decoder.  Since before Xiaojun Tan (Hisilicon) and James Clark (Arm)
> > > have contributed much for this task, so this patch set is based on their
> > > privous work and polish for the version 7.
> > > 
> > > The main work in this version is to polished the core patch "perf
> > > arm-spe: Support synthetic events", e.g. rewrite the code to calculate
> > > ip, packet generation for multiple types (L1 data cache, Last level
> > > cache, TLB, remote access, etc).  It also heavily refactors code for
> > > data structure and program flow, which removed unused fields in
> > > structure and polished the program flow to achieve neat code as
> > > possible.
> > > 
> > > This patch set has been checked with checkpatch.pl, though it leaves
> > > several warnings, but these warnings are delibarately kept after
> > > reviewing.  Some warnings ask to add maintainer (so far it's not
> > > necessary), and some warnings complaint for patch 02 "perf auxtrace:
> > > Add four itrace options" for the text format, since need to keep the
> > > consistency with the same code format in the source code, this is why
> > > this patch doesn't get rid of checkpatch warnings.
> > 
> > Gentle ping ...
> > 
> > It would be appreciate if can get some review for this patch set.
> 
> I was hoping that James Clark would have a look, since he was the last
> person to go near the userspace side of SPE.

Yes, I have offline synced with James and James has verified this
patch set at his side.

I don't want to rush to ask Arnaldo to merge patches, so just
want to get wider reviewing if possible; otherwise, I will rebase this
patch set and resend to ML.

Thanks,
Leo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
