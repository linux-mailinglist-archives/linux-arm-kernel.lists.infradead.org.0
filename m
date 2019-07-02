Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BA1A5D3AD
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 17:54:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p5Q/mCjwp0xQB+v2ShUeg65MpfFBDy5XjDqT05ICvs4=; b=agrWtzKtDaaR8d
	vRENKLRs56LM9sTuxk2wDUMSoMjmnofC2M05rkBAIvT6NeUdH5qm+a2s29gAYXLLBZ1HKfRThy6wT
	/otIG4pU6Ke7r355yIlf9KsSte4Q8IGDdKI38VgykxyUH00J90GU+LdHDEOf7QA9BUBtScSZZyGEB
	PNcApMq3jP7qGuQfRho/9bneIg8w9+GW4h0s9JIzanker4QrpCujDToKJFA2BuyVoC88wle0SM4ih
	MuOZ1dYO1wqv2u1H8fCLKdCwBtTgERArvsz9WIpL0tW1BMF28nKpIW172guVdXAJhOy1gW/2jzbwX
	1FfpSPM8LDl4vcT2EqzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiL72-0004jE-9n; Tue, 02 Jul 2019 15:54:32 +0000
Received: from [179.97.35.11] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hiL6F-0004Jc-Le; Tue, 02 Jul 2019 15:53:44 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 8279841153; Tue,  2 Jul 2019 12:53:40 -0300 (-03)
Date: Tue, 2 Jul 2019 12:53:40 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Jiri Olsa <jolsa@redhat.com>
Subject: Re: [PATCH v3 0/4] Perf uncore PMU event alias support for Hisi
 hip08 ARM64 platform
Message-ID: <20190702155340.GE15462@kernel.org>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
 <20190628145406.GA22863@krava>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190628145406.GA22863@krava>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.11.3 (2019-02-01)
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
Cc: mark.rutland@arm.com, tmricht@linux.ibm.com, ak@linux.intel.com,
 mathieu.poirier@linaro.org, peterz@infradead.org,
 John Garry <john.garry@huawei.com>, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, brueckner@linux.ibm.com,
 namhyung@kernel.org, ben@decadent.org.uk, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 28, 2019 at 04:54:06PM +0200, Jiri Olsa escreveu:
> On Fri, Jun 28, 2019 at 10:35:48PM +0800, John Garry wrote:
> > This patchset adds support for uncore PMU event aliasing for HiSilicon
> > hip08 ARM64 platform.
> > 
> > We can now get proper event description for uncore events for the
> > perf tool.
> > 
> > For HHA, DDRC, and L3C JSONs, we don't have all the event info yet, so
> > I will seek it out to update the JSONs later.
> > 
> > Changes to v3:
> > - Omit "perf pmu: Fix uncore PMU alias list for ARM64", as it has already
> >   been picked up
> > - Add comment for pmu_uncore_alias_match()
> 
> Acked-by: Jiri Olsa <jolsa@kernel.org>

Thanks, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
