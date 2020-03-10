Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B117F695
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 12:45:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tPNzhOJ2SYWNvfZgO4hZ6P0R40yizpsyrLskot1y+Og=; b=SOYAC3HVmiENVd
	9cNyvO3iTr8o+U924t2Rnd9oJUAJiFdeZa1UwUB6185YM/fiKy/y5yvtjBedi00NH8UuoBAs8Lr15
	fRdEtTzZ94jvrBNNVTCAxqcVY/12JdORGz2A9pOmauhZTx5pj/s80IpCyldI4EBoVp8M1JXzycLD+
	wtUOSsM6gVKGFXjK0fxGWLwJgvBLN6mRgnB97eVrSzuX6G7pU7ppV5hPeqWEc/0KhIySi3FoiB+uP
	Of9A97QvvKZU7HBBvv7kk0JyWaKT2cJz4JIMmSkZO6UwXaljyoxZsAIcdSOZM22KvTmIfZAgp0iX5
	5lOt4YlcS083zsbm9fDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBdK1-0000pb-5U; Tue, 10 Mar 2020 11:45:17 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdJt-0000o8-KR
 for linux-arm-kernel@bombadil.infradead.org; Tue, 10 Mar 2020 11:45:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=JFUcdzOUencsCKId/ctBPwQiHSHHBRg97HyGLAkaW4E=; b=r0DTGuHHzYJX4xgVWZIL+IVaHG
 PYGnKXe42n/VBhIuOUVpn710HyExoUDUxQjF+NTlMlCa+vhRI7DEBG47y4/xLLW/MCZviPgul6Irk
 3FHHYNswuXl5qweUNIkP4GSzRAkC/f+a2b6THmCET1WAEZvaiCimE/XTK8GsTcSTn1EQosTFTvOrd
 K0x42rJOA+wUl02phvAqKwrBsv15IhR8oVT07A3UogzRt16dgOvl3Bh1CbV1ToiZqX0A2e1QLqQmF
 gtir4gnKbxhPRGv9M3jpckuZQ+lD/qeGJSTe7jP7XSC3sq4lPHpj/11syO1itImY3eER7LjI0XxwZ
 0uIC+WFQ==;
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBdJr-0000Or-VJ; Tue, 10 Mar 2020 11:45:08 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id DF4DA40009; Tue, 10 Mar 2020 08:45:03 -0300 (-03)
Date: Tue, 10 Mar 2020 08:45:03 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v5 0/5] perf cs-etm: Fix synthesizing instruction samples
Message-ID: <20200310114503.GA25299@kernel.org>
References: <20200219021811.20067-1-leo.yan@linaro.org>
 <20200310054305.GA21545@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200310054305.GA21545@leoy-ThinkPad-X240s>
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
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Coresight ML <coresight@lists.linaro.org>, linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Tue, Mar 10, 2020 at 01:43:05PM +0800, Leo Yan escreveu:
> Hi Arnaldo,
> 
> On Wed, Feb 19, 2020 at 10:18:06AM +0800, Leo Yan wrote:
> > This patch series is to address issues for synthesizing instruction
> > samples, especially when the instruction sample period is small enough,
> > the current logic cannot synthesize multiple instruction samples within
> > one instruction range packet.
> > 
> > Patch 0001 is to swap packets for instruction samples, so this allow
> > option '--itrace=iNNN' can work well.
> > 
> > Patch 0002 avoids to reset the last branches for every instruction
> > sample; if reset the last branches for every time generating sample, the
> > later samples in the same range packet cannot use the last branches
> > anymore.
> > 
> > Patch 0003 is the fixing for handling different instruction periods,
> > especially for small sample period.
> > 
> > Patch 0004 is an optimization for copying last branches; it only copies
> > last branches once if the instruction samples share the same last
> > branches.
> > 
> > Patch 0005 is a minor fix for unsigned variable comparison to zero.
> > 
> > This patch set has been rebased on the latest perf/core branch; and
> > verified on Juno board with below commands:
> > 
> >   # perf script --itrace=i2
> >   # perf script --itrace=i2il16
> >   # perf inject --itrace=i2il16 -i perf.data -o perf.data.new
> >   # perf inject --itrace=i100il16 -i perf.data -o perf.data.new
> 
> Could you pick up this patch set?  I confirmed this patch set can
> cleanly apply on top of the latest mainline kernel (5.6-rc5).
> 
> Or if you want me to resend this patch set, please feel free let me
> know.  Thanks!

Thanks, all build tested on x86 and arm64 (with CORESIGHT=1, etc), applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
