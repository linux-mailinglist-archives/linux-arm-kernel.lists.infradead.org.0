Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D52A41B4BB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 13:17:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0cdmOH8iWCCciUg9Y4xOi5+YmebUZm2sj2tvAbUw0UU=; b=CPontiSnPMjnfy
	ZqyHNSuLX/j5v0NA6M/RMyNr1wMlNDPjUhECEs87PcLUdpSGgdNrR/WdB1b1gtQ2ZpYXK0+/1dsGF
	AJJ10oeDZ7SZDq5ki/ewVGwD2rdhPh7GFiYsToVn3YbH0EEYgRI11wO+U8W02k8aqpz1PZmCf/dDP
	e1JguzjTBm+imsI88mt+yhc4tgiogvw9hnyBgew/cqH8wiSELJevsJmc56NF72ubjjliXdz/OG+oI
	rIVyaEWh9MCt9m9fcgDm0uPpsCQPqkorjcVT8wAc09BU+P8Pt9uBXb3cmMnvqDO61XEdHd0QHb7to
	5rhwtKl4Ve6j6N4cdcXA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQ8x3-0003S0-Nv; Mon, 13 May 2019 11:17:01 +0000
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQ8wS-0002he-RB
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 11:16:28 +0000
Received: by mail-pf1-x444.google.com with SMTP id s11so7022289pfm.12
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 04:16:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=oFByEbvx0K0vUEmpridgEL3WB0Mqr95aZWBmFa6AoEc=;
 b=lYx5uX8GQz613TmhuSeygH/Ql/n+2mxhb8yT5PSbJ5MZPA1zY6vdI5MnerYDnlfWAT
 2xDf6oeTYFVoyUBjF4iuqmkSfMMixFRd8St2kQcriwufSOC1Lg0uUiTxPCUu67vewBaG
 z1xaDs0HvdtlWMjt9aYXOfblgMYGoJSavVXdaw4vWs6NZdf4UYsLxt7DCHebWbQThBdz
 9NtZFRAIlJmXmInswA9yks9uCOFzCuHKZY2U7uJQiS2dKTBOWGjxitnEIJ2wAJkr6NdO
 a4OyImHegJNSbuYvNBSBmn2MHk6YxITl2n2+MFssnOrwLsb6rCEWm8WEZJQJJjwiVm4U
 v2ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oFByEbvx0K0vUEmpridgEL3WB0Mqr95aZWBmFa6AoEc=;
 b=QtX5v8TCAV8jv4QqPiZ4kPMol2aIBy4v4P1zXm/k2HEMe8Tl+3/aBS16C572bNFgYq
 MBKPKcbqQ4wCC2/+G+nQcaLtVZI56sEVsfaZ09bw+tYNRhu0+gY0jNsIAgPvQw9CecZI
 aBH4Rgum+ndAdBL3q/KWZ8c6h2Xy/rIFmHYTvHVClQApvd8yuKZKLq1YuOYuIwfNYLeW
 NFacMd4HLgidtiWUx0522IZ7Se4R10Ko139JIQ225RASJURk5Iw/QHCBUB7hex6nzYT+
 SNk8tWkqFbq/3FDzltc/LMuRPgWbLzSDzZ5FfwmAEKv8YMEF+F7AEVY7VcM5hc8cyE8u
 fHqQ==
X-Gm-Message-State: APjAAAWxNJsCkN1ZYIetnVc0y9lzAiRseqYxH/KxrkgcECw02yi23agi
 oBPhmU3J6CNjNpdbQ1HFMZnNjg==
X-Google-Smtp-Source: APXvYqybV7ctvoQrhOaqarWeLgyyYWhXVjugny4Y3niXs9XiAKI7OA65GEFEPn6hg6KWKgQXRW3GXA==
X-Received: by 2002:a62:2805:: with SMTP id o5mr32148800pfo.256.1557746183430; 
 Mon, 13 May 2019 04:16:23 -0700 (PDT)
Received: from leoy-ThinkPad-X240s (li253-4.members.linode.com.
 [173.255.243.4])
 by smtp.gmail.com with ESMTPSA id e24sm1409636pgl.94.2019.05.13.04.16.19
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 04:16:22 -0700 (PDT)
Date: Mon, 13 May 2019 19:16:15 +0800
From: Leo Yan <leo.yan@linaro.org>
To: Suzuki K Poulose <suzuki.poulose@arm.com>
Subject: Re: [PATCH 5/5] docs: coresight: Document snapshot mode
Message-ID: <20190513111615.GA32010@leoy-ThinkPad-X240s>
References: <20190501175052.29667-1-mathieu.poirier@linaro.org>
 <20190501175052.29667-6-mathieu.poirier@linaro.org>
 <20190511073229.GA18064@leoy-ThinkPad-X240s>
 <77e437ed-99b2-670e-7e29-33be584f2bd0@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <77e437ed-99b2-670e-7e29-33be584f2bd0@arm.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_041627_350769_C035F4EC 
X-CRM114-Status: GOOD (  18.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mathieu.poirier@linaro.org, corbet@lwn.net,
 alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, Mike.leach@arm.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Suzuki,

On Mon, May 13, 2019 at 09:37:01AM +0100, Suzuki K Poulose wrote:
> Hi,
> 
> On 11/05/2019 08:32, Leo Yan wrote:
> > On Wed, May 01, 2019 at 11:50:52AM -0600, Mathieu Poirier wrote:
> > 
> > [...]
> > 
> > > +2.2) Snapshot mode:
> > > +
> > > +Using perf's built-in snapshot mode with CoreSight tracers is supported - to
> > > +do so the '-S' command line option needs to be specified.  Since current sink
> > > +devices are used in double-buffer mode when operated from the perf interface,
> > > +the size of the perf ring buffer needs to be adjusted to match the size of the
> > > +buffer used by the CoreSight sinks.  From the perf command line it is possible
> > > +to specify the number of pages to use for a session using the '-m,X' option,
> > > +where X is the amount of pages.
> > > +
> > > +The system memory buffer used by ETR devices is automatically adjusted
> > > +to match the size of the perf ring buffer and as such does not need to be
> > > +modified on the perf command line.  For ETB and ETF devices the perf ring
> > > +buffer size need to be adjusted to match the size of the internal buffer.
> > > +
> > > +The following examples assume a system page size of 4096 byte:
> > > +
> > > +	# cat /sys/bus/coresight/devices/20010000.etb/mgmt/rdp
> > > +	0x2000
> > > +	# perf record -e cs_etm/@20010000.etf/ -S -m,8 --per-thread $APP
> > 
> > In this case it shows the usage for etb, thus should:
> > s/20010000.etf/20010000.etb/
> > 
> > BTW, the user needs to convert the rdp to byte size with multiplying 4,
> > it's good to explain for this in the doc or give related info in the
> > driver warning log.
> 
> If at all we want to match the aux space size with that of the device buffer,
> I recommend exposing this via a new "buf_pages" attribute under the sysfs to
> help the user.

Agree, I also saw you suggested in another email.  Using "buf_pages"
is directive and consistent for different sink devices.

Thanks,
Leo Yan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
