Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D4421FCD25
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 14:16:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CjhZ3mqHwxsUGfyjvPF4jVmJB7K7KGYpiw6u7TKM0lM=; b=AxmBxNPdTEfgFQ
	e86MZWM75MCMsg8iusZ5lXTrIFmUCdixwaRkF+10Vg6xd1VMW7Ap//bpCYkDBaMGyTA8rxd2+bAsI
	5sALecw9mmkxo2xqL7INIb8vRkCPu2LBEZ3Zp4VArcAXGe9tMDbnF4hnLZpTK9vvbw7ov6bFXq/xH
	/BQ6c9n4mlcBNS6CbwK/uo4RlSEutblpIeskde+3Vi1riX6byYOn4mljlacFcQx/lWU99CMrrn+ib
	CLiPSP5EuIzy7K4WJxtDr003v3TIhK4pdjLMGeFca0CjX9SpV/bv70ccobbJIGmsDhNzcJQgqkq6X
	gPEjoq3UvKU1gt6UqPig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlWz1-0002Ul-3S; Wed, 17 Jun 2020 12:15:59 +0000
Received: from [179.97.37.151] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlWyu-0002UZ-Pw; Wed, 17 Jun 2020 12:15:53 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 0597F40AFD; Wed, 17 Jun 2020 09:15:50 -0300 (-03)
Date: Wed, 17 Jun 2020 09:15:49 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Namhyung Kim <namhyung@kernel.org>
Subject: Re: [PATCH v2 2/2] perf pmu: Improve CPU core PMU HW event list
 ordering
Message-ID: <20200617121549.GA31085@kernel.org>
References: <1592384514-119954-1-git-send-email-john.garry@huawei.com>
 <1592384514-119954-3-git-send-email-john.garry@huawei.com>
 <CAM9d7cgqJzQJ7GfL6Q3VgARd1=rrkRYqOqSivZww-LOo+DvKFA@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAM9d7cgqJzQJ7GfL6Q3VgARd1=rrkRYqOqSivZww-LOo+DvKFA@mail.gmail.com>
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
 Andi Kleen <ak@linux.intel.com>, Peter Zijlstra <peterz@infradead.org>,
 will@kernel.org, John Garry <john.garry@huawei.com>, linuxarm@huawei.com,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Jun 17, 2020 at 08:31:02PM +0900, Namhyung Kim escreveu:
> On Wed, Jun 17, 2020 at 6:06 PM John Garry <john.garry@huawei.com> wrote:
> >
> > For perf list, the CPU core PMU HW event ordering is such that not all
> > events may will be listed adjacent - consider this example:
> >   cstate_pkg/c6-residency/                           [Kernel PMU event]
> >   cstate_pkg/c7-residency/                           [Kernel PMU event]
> >
> > Signed-off-by: John Garry <john.garry@huawei.com>
> 
> Acked-by: Namhyung Kim <namhyung@kernel.org>

Thanks a lot, applied.

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
