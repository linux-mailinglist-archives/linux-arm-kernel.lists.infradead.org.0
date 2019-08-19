Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3977694D3B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 19 Aug 2019 20:51:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=YX0qASrbuxONCnypns1/uJ0LM3pi+iZQLN+oaIDTZ6c=; b=ETT/hZAgZIWSXT
	LZgm+0kzdy7fiICWba/v+BSNDMC5R2KOUq+vJxWNmLf0PJ6q4X2Y7B2PBSO9DYUhIiv1GCgPQBZlp
	G2b2s9s5cvy+JgU+lLDDg2NYX9tp42P03s+nXOoWR52OXGgOSVWb2dClBkoqs3eP6nGvy7l4++m5T
	FBgIbczph9OCHrtEXRlxW9vHzELUNznd8KM78FSpv1ncQ5suDYkYU8QRO1ADCCuyszZFkHq2U1UCW
	rJg84z+RtWqAbr7YPUehX5odRzXhHkGib4aD3BYOZV0vjm1rqkfx2KBEY4pN9NawNUQtGvKOX0nke
	rsD7OwTGZ8WYJSQoR5HA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hzmkm-0000VG-49; Mon, 19 Aug 2019 18:51:40 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmkI-0000S8-2e
 for linux-arm-kernel@bombadil.infradead.org; Mon, 19 Aug 2019 18:51:10 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=fXNOphaX+y8oyFeRNQ0wqgARKD5Ut7+H76ilztOg7So=; b=E2D+Md5C8+sCXxyKTRH2pa0fh
 pTvlHigOaxxjbKoO0a7nnLV2lddr7uaJ4ZxHu7h2bY+H7vqDUFxUuv6O+zKHb7miLoEAWsaHohXP1
 hAQJYjrPZfU6LgoAl4MqnwYl8m1VgOH6cCm/RGb4DMOC3w4yzlD4zxmf6a8H0KBkr06SpxiqbVmy+
 NAU5DboHFcWVMs3r7Af7KmhrghPrVumUTbmygNNA66qeLCOiyl+dXposS4J4Lr7/d4aWjUCJ8MKKa
 Fqhr2YRVhZGJGG/B5CHh83JejGADtnLo0K5qFSE2NCWYCqggSAoMwBAoPQz6471oHfrPHvgQEDBLy
 RSvzUCj1A==;
Received: from [177.206.236.100] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hzmkF-0003Vp-Tc
 for linux-arm-kernel@lists.infradead.org; Mon, 19 Aug 2019 18:51:08 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id C8D2B40340; Mon, 19 Aug 2019 15:50:54 -0300 (-03)
Date: Mon, 19 Aug 2019 15:50:54 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Mathieu Poirier <mathieu.poirier@linaro.org>
Subject: Re: [PATCH 1/2] perf cs-etm: Support sample flags 'insn' and 'insnlen'
Message-ID: <20190819185054.GB3929@kernel.org>
References: <20190815082854.18191-1-leo.yan@linaro.org>
 <CANLsYkx5TanDyztpceZvwf4pZSgoqRMOBgiHcdJxxpnGA9-h-Q@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CANLsYkx5TanDyztpceZvwf4pZSgoqRMOBgiHcdJxxpnGA9-h-Q@mail.gmail.com>
X-Url: http://acmel.wordpress.com
User-Agent: Mutt/1.12.0 (2019-05-25)
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
Cc: Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Coresight ML <coresight@lists.linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Leo Yan <leo.yan@linaro.org>, Namhyung Kim <namhyung@kernel.org>,
 Robert Walker <robert.walker@arm.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Mike Leach <mike.leach@linaro.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 19, 2019 at 12:08:26PM -0600, Mathieu Poirier escreveu:
> On Thu, 15 Aug 2019 at 02:30, Leo Yan <leo.yan@linaro.org> wrote:
> >
> > The synthetic branch and instruction samples are missed to set
> > instruction related info, thus perf tool fails to display samples with
> > flags '-F,+insn,+insnlen'.
> >
> > CoreSight trace decoder has provided sufficient information to decide
> > the instruction size based on the isa type: A64/A32 instruction are
> > 32-bit size, but one exception is the T32 instruction size, which might
> > be 32-bit or 16-bit.
> >
> > This patch handles for these cases and it reads the instruction values
> > from DSO file; thus can support flags '-F,+insn,+insnlen'.
 
> The code seems to be correct.  I have also tested this patch.
 
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>

Thanks, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
