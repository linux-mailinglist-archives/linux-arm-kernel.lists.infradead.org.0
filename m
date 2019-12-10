Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C0E08119108
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 20:51:34 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NawunuYEjOGBmFXm7GYuPMVXBrNBdnYgevO0xLruSyQ=; b=em/zZov74Vs59Z
	5XaWa0AocBkBD8FfHaqBCEzFYuayB6wOhE5Vx0zrKg6jNyJ0pLgU6SIssfs7MWrD6mJmlNCZhEeCi
	iWoDdACzpNJLz8OadkYoddsj5pF9lByB5MEpzlyS1Ik2afg5SYo9qwu80LVK1UhdMJaGI5mQE2tEj
	EocdFD84dpvg2PnwH/NX1eIF80hluyev3GfQvOOi4vyo4D6n9Gjsq5Bq/le0/JCjzqnQbMDCAQJqN
	uVRDsXVxovZwSHhfcjbtJaFTqBexSPDj+wh/kUUQseUXz49LN4g0wr1HzNwvnH+lOPNNr8bZsNHOD
	xUWG4cSASLSbYefdxPXw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ielXZ-0005fF-Hc; Tue, 10 Dec 2019 19:51:25 +0000
Received: from 179-240-167-103.3g.claro.net.br ([179.240.167.103]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ielXP-0005eg-RA; Tue, 10 Dec 2019 19:51:16 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id DF0AC40352; Tue, 10 Dec 2019 16:51:13 -0300 (-03)
Date: Tue, 10 Dec 2019 16:51:13 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: perf top for arm64?
Message-ID: <20191210195113.GD13965@kernel.org>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
 <20191210170841.GA23357@krava>
 <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <9a31536b-f266-e305-1107-2f745d0a33e3@huawei.com>
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
Cc: mark.rutland@arm.com, peterz@infradead.org, will@kernel.org,
 Linuxarm <linuxarm@huawei.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Dec 10, 2019 at 05:17:56PM +0000, John Garry escreveu:
> On 10/12/2019 17:08, Jiri Olsa wrote:
> > On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
> > > On 10/12/2019 16:36, Jiri Olsa wrote:
> > > > On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> > > > > Hi all,
> > > > > 
> > > > > I find to my surprise that "perf top" does not work for arm64:
> > > > > 
> > > > > root@ubuntu:/home/john/linux# tools/perf/perf top
> > > > > Couldn't read the cpuid for this machine: No such file or directory
> > > > 
> > > 
> > > Hi Jirka,
> > > 
> > > > there was recent change that check on cpuid and quits:
> > > >     608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
> > > > 
> > > 
> > > ok, this is new code. I obviously didn't check the git history...
> > > 
> > > But, apart from this, there are many other places where get_cpuid() is
> > > called. I wonder what else we're missing out on, and whether we should still
> > > add it.
> > 
> > right, I was just wondering how come vendor events are working for you,
> > but realized we have get_cpuid_str being called in there ;-)
> > 
> > I think we should add it as you have it prepared already,
> > could you post it with bigger changelog that would explain
> > where it's being used for arm?
> 
> ok, I can look to do that.
> 
> But, as you know, we still need to fix perf top for other architectures
> affected.

Right, I need to make that just a pr_debug() message and then check in
the annotation code when that is needed to see if it is set, if not,
then show a popup error message and refuse to do whatever annotation
feature requires that.

Anyway, your patch should make sense and provide info that the ARM64
annotation may use now or in the future.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
