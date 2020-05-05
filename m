Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C3B821C5D3E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 18:17:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nwJ1l1Gq2jGlrj9KD/Gsl3CRSLrzzH2nxLG5bkLd5PY=; b=nTMYJl4bU3Ofsy
	lNGzr1SSeD9GSnks0afeBRrdSZwsFCK/BwJ2QSMGVPqBaMZXeYt/3/CbNlEjGWzDueYO8WYeZ54+Q
	Ebswm0zSrV2VAAn6swVUJbQWCVGpLGyrs61GT1uw61fnzNrHTkO99UBgOhiNooHJrWTarZyWtvygK
	Y7Ue3k90yib+D4gIP0tMxDX8OVSanTRLTRtJgEOZCygQ9beN7j/44Nbf91PUor0qIVXyHSs+YTsFC
	LwR3oKuK3i6UStGgbcwhoryDuHDi3UOTe3PWKTg/l0d1MWZ+oJLoq6+JkMNqDo7KrN02yPAJab751
	JkgrgKQpS0M44Ku5P/8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jW0Fu-0007QG-Mo; Tue, 05 May 2020 16:17:14 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jW0Ff-0007PU-89; Tue, 05 May 2020 16:16:59 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id ACB03409A3; Tue,  5 May 2020 13:16:56 -0300 (-03)
Date: Tue, 5 May 2020 13:16:56 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH] perf cs-etm: Move defined of traceid_list
Message-ID: <20200505161656.GX30487@kernel.org>
References: <20200505133642.4756-1-leo.yan@linaro.org>
 <CANLsYkwfiQjYCq1htu8ry02zhFXB5S9Hk0W39aRpUz+W3gUvig@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkwfiQjYCq1htu8ry02zhFXB5S9Hk0W39aRpUz+W3gUvig@mail.gmail.com>
X-Url: http://acmel.wordpress.com
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
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Tor Jeremiassen <tor@ti.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, May 05, 2020 at 08:52:18AM -0600, Mathieu Poirier escreveu:
> On Tue, 5 May 2020 at 07:37, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > The variable 'traceid_list' is defined in the header file cs-etm.h,
> > if multiple C files include cs-etm.h the compiler might complaint for
> > multiple definition of 'traceid_list'.
> >
> > To fix multiple definition error, move the definition of 'traceid_list'
> > into cs-etm.c.
> >
> > Fixes: cd8bfd8c973e ("perf tools: Add processing of coresight metadata")
> > Reported-by: Thomas Backlund <tmb@mageia.org>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > Reviewed-by: Mike Leach <mike.leach@linaro.org>
> > Tested-by: Mike Leach <mike.leach@linaro.org>
> >  };
> >
> > -/* RB tree for quick conversion between traceID and metadata pointers */
> > -struct intlist *traceid_list;
> > -
> 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> 


Thanks, applied,

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
