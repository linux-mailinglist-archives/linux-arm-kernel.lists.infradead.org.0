Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B92561EA67A
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  1 Jun 2020 17:07:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yQSe4Ae2+8DltpiuvY9iD3GmGxGMoJMgbJ1ngf9gqck=; b=p9Zc3HWIDrx0bF
	Br4BcNbCeYpYP66QiURDQykBEOxgCBpKQqlWRWvw5+m49fEgUGepcbzlqcqcQ4V6CeiPwAYwtlxDW
	fX2dLaf634m3eVLItJvJbDkY8718rCv70Jc3DYDAX+rqcPR/gxGoRZ26BdXV7u3/9sjZ3WH52hyrb
	3fcC1qu6fEpPwMV1gSF9VFW6V0prZc6B/xCSpZcdUynWsKezgspPQwhZpWMUZb1+TCeefwWSptQmy
	vLTVNRLHDPG46dsu6OMhP+zl1oNzrAE2/6KWC2FuHpufNS47LHEJVglv8kJt/xlF7URM4lZn0GgXr
	Z3lgOqN8FjSAkzH1uh+A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jfm1h-0006mE-PK; Mon, 01 Jun 2020 15:06:57 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm1b-0006m4-1X
 for linux-arm-kernel@bombadil.infradead.org; Mon, 01 Jun 2020 15:06:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=2ptwG/XhHRLoQoGrQORQ2/4F25mO/gTBD9u0PTkTkbs=; b=b6csZCrN0YGiYaXMWhGXWzOrU2
 0F/sHD4ehwBk+jaKFPuY8DFIXOC9CVgevVoJzCYF8qT77syfl856e//fvgXLsqb5jHBm81OS6/AQ/
 hCyt8dsZEOZ7lDdLapV7qXAVCOzkSzvqrE0XIVu6WuJEQqUbnQ9DIYvjN9D+W2NxfG3UVKhlnotz0
 j28LaFhZ2w/O2O4G/6ucsZMBci3ZVXUA/WJfUfYoSaa3+O/gLPFmngqNyK1Bt3MFsRE7yFuWHCjt7
 ap/qqPrNVsz1D+4BqpSxFE3BC67OUJ0Sb9dGXuOYo9BboUS6oTq4NdB9R/fFK3AY94aPZ801u3cE7
 ROt/sbkg==;
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jfm1Z-0001Hp-CJ; Mon, 01 Jun 2020 15:06:49 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 15B3D40AFD; Mon,  1 Jun 2020 12:06:48 -0300 (-03)
Date: Mon, 1 Jun 2020 12:06:47 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Adrian Hunter <adrian.hunter@intel.com>
Subject: Re: [PATCH v8 2/3] perf auxtrace: Add four itrace options
Message-ID: <20200601150647.GK31795@kernel.org>
References: <20200530122442.490-1-leo.yan@linaro.org>
 <20200530122442.490-3-leo.yan@linaro.org>
 <aaacf3f6-daab-098e-d1fb-1509e1cf9c84@intel.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <aaacf3f6-daab-098e-d1fb-1509e1cf9c84@intel.com>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ian Rogers <irogers@google.com>,
 Andi Kleen <ak@linux.intel.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Will Deacon <will@kernel.org>, Tan Xiaojun <tanxiaojun@huawei.com>,
 linux-kernel@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Jin Yao <yao.jin@linux.intel.com>, Ingo Molnar <mingo@redhat.com>,
 James Clark <james.clark@arm.com>, Leo Yan <leo.yan@linaro.org>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Jun 01, 2020 at 10:24:00AM +0300, Adrian Hunter escreveu:
> On 30/05/20 3:24 pm, Leo Yan wrote:
> > From: Tan Xiaojun <tanxiaojun@huawei.com>
> > 
> > This patch is to add four options to synthesize events which are
> > described as below:
> > 
> >  'f': synthesize first level cache events
> >  'm': synthesize last level cache events
> >  't': synthesize TLB events
> >  'a': synthesize remote access events
> > 
> > This four options will be used by ARM SPE as their first consumer.
> > 
> > Signed-off-by: Tan Xiaojun <tanxiaojun@huawei.com>
> > Signed-off-by: James Clark <james.clark@arm.com>
> > Signed-off-by: Leo Yan <leo.yan@linaro.org>
> > Tested-by: James Clark <james.clark@arm.com>
> 
> Acked-by: Adrian Hunter <adrian.hunter@intel.com>

Thanks a lot!

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
