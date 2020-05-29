Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 545361E8377
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 18:19:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KV4mKfHTJ0LKYSK89w780PKnXZMfaMANVGjgd0+byr8=; b=FqfydwBWqeGQRF
	wqHVy8/SH1xxjDR+7alf2NH9H708/8m02zUZfvv87Se0d1Dc9NOOixpT6QNs+F7EZ6U86d7N5J87V
	gvMXlIGWRtk2ITh8OQgzlpjTFvRYe473C21+1T9Rf82+BIye2HNXCkyQkYte42PskxylXjoFt1y2H
	bWOqLPVqkAQjtC7ksqciAbzimkQvm85URaEFs4rNXdHCerZ2t1UG//EW8RCx7b7C/LjjZpt2LCWFc
	pkvDdh2+NZQTokXDo5xiqlHPHWI87upAH5IDiPkvSKuluWW9OcViwKQA+enNKVmBCktH3TwTwfTY1
	50K1zCDvcGEd7yBs/Aqg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jehif-0003BR-Tr; Fri, 29 May 2020 16:18:53 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jehiK-00034B-JE; Fri, 29 May 2020 16:18:32 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 7D94440AFD; Fri, 29 May 2020 13:18:30 -0300 (-03)
Date: Fri, 29 May 2020 13:18:30 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v7 0/3] perf arm-spe: Add support for synthetic events
Message-ID: <20200529161830.GD537@kernel.org>
References: <20200504115625.12589-1-leo.yan@linaro.org>
 <20200522030919.GE32389@leoy-ThinkPad-X240s>
 <20200526102602.GA27166@willie-the-truck>
 <20200526104337.GA7154@leoy-ThinkPad-X240s>
 <20200526195438.GC2206@willie-the-truck>
 <3a80a66f-b991-ec55-77a5-a8fc4fa69e5e@arm.com>
 <20200529152800.GB21552@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200529152800.GB21552@leoy-ThinkPad-X240s>
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Peter Zijlstra <peterz@infradead.org>, Will Deacon <will@kernel.org>,
 linux-kernel@vger.kernel.org,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, James Clark <james.clark@arm.com>,
 Namhyung Kim <namhyung@kernel.org>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org, Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, May 29, 2020 at 11:28:01PM +0800, Leo Yan escreveu:
> Hi James,
> 
> On Fri, May 29, 2020 at 03:58:23PM +0100, James Clark wrote:
> > Hi Will and Leo,
> > 
> > I've tested this on an Arm N1 machine and it looks good to me.
> 
> This is great!  Will respin the new patch set with adding your test tag
> and send to ML.  Thanks a lot for the effort.
> 
> Hi Will, Arnaldo, sorry for late replying you due to other works and
> thanks for suggestions in other emails.

Np, please do it on top of my tmp.perf/core branch, it'll become
perf/core as soon as testing that is ongoing finishes.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
