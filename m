Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1865EB6A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:18:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3vA6Emo2bkNSyOYohQC+quHCjEuzAPe5ieiJjt7r80Q=; b=ssWV9ssH/HE0lK
	+PwVkBEZZQRfkC0s0mb2CtrUKaK36G5DfFEn7c6nsbX7KgiQy+//hhN1ztbJal5+NHjiO43zHnWDS
	AxVmqPZAhG+TMdIYhQEbV02QVy5fnYTmyjqpKUakKWlz53P/JEEE07iG+S40y8KpSvTsoJcdMMLEK
	7ZME7Vj9qrvDIbu7fy/HdMpYjiLd7muvZCbOiFifftZ+6X6zo1+FC75lInbYl82FLy5yuXz8FeCPj
	eiVkhCAx6pzXMUs22TW1zL5MKX3VE7brqAldeW6W6+gY0bppwUx5emglGxUOy2enkPwUC5SbhQMn+
	cVslcmlZ3gTUtw4fwe/g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hijpy-0006IS-Pn; Wed, 03 Jul 2019 18:18:34 +0000
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hijpm-0006IA-8T; Wed, 03 Jul 2019 18:18:23 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id A69A741153; Wed,  3 Jul 2019 15:18:15 -0300 (-03)
Date: Wed, 3 Jul 2019 15:18:15 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 00/11] perf: Fix errors detected by Smatch
Message-ID: <20190703181815.GB10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702110743.GA12694@krava>
 <20190703014808.GC6852@leoy-ThinkPad-X240s>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190703014808.GC6852@leoy-ThinkPad-X240s>
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
Cc: Song Liu <songliubraving@fb.com>, Peter Zijlstra <peterz@infradead.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kernel@vger.kernel.org,
 Jin Yao <yao.jin@linux.intel.com>, Jiri Olsa <jolsa@redhat.com>,
 Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Alexios Zavras <alexios.zavras@intel.com>, Davidlohr Bueso <dave@stgolabs.net>,
 Namhyung Kim <namhyung@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel@lists.infradead.org,
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Thomas Richter <tmricht@linux.ibm.com>,
 Adrian Hunter <adrian.hunter@intel.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 "David S. Miller" <davem@davemloft.net>, Changbin Du <changbin.du@intel.com>,
 Alexey Budankov <alexey.budankov@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Wed, Jul 03, 2019 at 09:48:08AM +0800, Leo Yan escreveu:
> On Tue, Jul 02, 2019 at 01:07:43PM +0200, Jiri Olsa wrote:
> > On Tue, Jul 02, 2019 at 06:34:09PM +0800, Leo Yan wrote:
> > > When I used static checker Smatch for perf building, the main target is
> > > to check if there have any potential issues in Arm cs-etm code.  So
> > > finally I get many reporting for errors/warnings.
> > > 
> > > I used below command for using static checker with perf building:
> > > 
> > >   # make VF=1 CORESIGHT=1 -C tools/perf/ \
> > >     CHECK="/root/Work/smatch/smatch --full-path" \
> > >     CC=/root/Work/smatch/cgcc | tee smatch_reports.txt
> > > 
> > > I reviewed the errors one by one, if I understood some of these errors
> > > so changed the code as I can, this patch set is the working result; but
> > > still leave some errors due to I don't know what's the best way to fix
> > > it.  There also have many inconsistent indenting warnings.  So I firstly
> > > send out this patch set and let's see what's the feedback from public
> > > reviewing.
> > > 
> > > Leo Yan (11):
> > >   perf report: Smatch: Fix potential NULL pointer dereference
> > >   perf stat: Smatch: Fix use-after-freed pointer
> > >   perf top: Smatch: Fix potential NULL pointer dereference
> > >   perf annotate: Smatch: Fix dereferencing freed memory
> > >   perf trace: Smatch: Fix potential NULL pointer dereference
> > >   perf hists: Smatch: Fix potential NULL pointer dereference
> > >   perf map: Smatch: Fix potential NULL pointer dereference
> > >   perf session: Smatch: Fix potential NULL pointer dereference
> > >   perf intel-bts: Smatch: Fix potential NULL pointer dereference
> > >   perf intel-pt: Smatch: Fix potential NULL pointer dereference
> > >   perf cs-etm: Smatch: Fix potential NULL pointer dereference
> > 
> > from quick look it all looks good to me, nice tool ;-)
> > 
> > Acked-by: Jiri Olsa <jolsa@kernel.org>
> 
> Thanks for reviewing, Jiri.
> 
> @Arnaldo, Just want to check, will you firstly pick up 01~05, 07,
> 08/11 patches if you think they are okay?  Or you want to wait me to
> spin new patch set with all patches after I gather all comments?

I'm picking up the uncontrovertial, will push to my perf/core branch,
continue from there, please.

- Arnaldo
 
> Thanks,
> Leo Yan
> 
> > >  tools/perf/builtin-report.c    |  4 ++--
> > >  tools/perf/builtin-stat.c      |  2 +-
> > >  tools/perf/builtin-top.c       |  8 ++++++--
> > >  tools/perf/builtin-trace.c     |  5 +++--
> > >  tools/perf/ui/browsers/hists.c | 13 +++++++++----
> > >  tools/perf/util/annotate.c     |  6 ++----
> > >  tools/perf/util/cs-etm.c       |  2 +-
> > >  tools/perf/util/intel-bts.c    |  5 ++---
> > >  tools/perf/util/intel-pt.c     |  5 ++---
> > >  tools/perf/util/map.c          |  7 +++++--
> > >  tools/perf/util/session.c      |  3 +++
> > >  11 files changed, 36 insertions(+), 24 deletions(-)
> > > 
> > > -- 
> > > 2.17.1
> > > 

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
