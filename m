Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CA8705CE1E
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 13:08:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI978mpEpyEtM3RuIxLqFRDgdRAQkmSmE6Ep4V7Blhc=; b=YT9bBaF2uuSoQC
	N4SmUJIzVkWXyNAmSwZbgbyGZDevjMdy9tP87UzYp1JbmmMANMRHCpUDPUKImjsBGXC6eaCflZXVA
	VfU6A9agF968YcycKRQKMspCu3jq06qERHRcFiz/jirdmt03aq8iLlWxM0wf3TW6TrqcccVQmYsCD
	kSbAPfVH5f8BSjNG0DG61P8XG15kcq3aUonyeHAztGgKZFAh2b7w32wmdi96QXIhVm5B2IUFpo0Gi
	MqivVUPYfleqG9x7b7WFRtQl6xnQVlY2KuzFlj+uJK9WjgAwnJiIm6+oj6/KSyyl36Oh+hxa+6WJm
	3rSZUQrUuQxUaUcrjgjg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiGeB-00007v-9t; Tue, 02 Jul 2019 11:08:27 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiGdo-0008UJ-2n
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 11:08:05 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 4D63E88313;
 Tue,  2 Jul 2019 11:07:53 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id 345422D351;
 Tue,  2 Jul 2019 11:07:44 +0000 (UTC)
Date: Tue, 2 Jul 2019 13:07:43 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 00/11] perf: Fix errors detected by Smatch
Message-ID: <20190702110743.GA12694@krava>
References: <20190702103420.27540-1-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-1-leo.yan@linaro.org>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.28]); Tue, 02 Jul 2019 11:07:58 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_040804_359575_E515A5F7 
X-CRM114-Status: GOOD (  19.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Jin Yao <yao.jin@linux.intel.com>, Andi Kleen <ak@linux.intel.com>,
 Eric Saint-Etienne <eric.saint.etienne@oracle.com>,
 Konstantin Khlebnikov <khlebnikov@yandex-team.ru>,
 Ingo Molnar <mingo@redhat.com>, Suzuki K Poulose <suzuki.poulose@arm.com>,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
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

On Tue, Jul 02, 2019 at 06:34:09PM +0800, Leo Yan wrote:
> When I used static checker Smatch for perf building, the main target is
> to check if there have any potential issues in Arm cs-etm code.  So
> finally I get many reporting for errors/warnings.
> 
> I used below command for using static checker with perf building:
> 
>   # make VF=1 CORESIGHT=1 -C tools/perf/ \
>     CHECK="/root/Work/smatch/smatch --full-path" \
>     CC=/root/Work/smatch/cgcc | tee smatch_reports.txt
> 
> I reviewed the errors one by one, if I understood some of these errors
> so changed the code as I can, this patch set is the working result; but
> still leave some errors due to I don't know what's the best way to fix
> it.  There also have many inconsistent indenting warnings.  So I firstly
> send out this patch set and let's see what's the feedback from public
> reviewing.
> 
> Leo Yan (11):
>   perf report: Smatch: Fix potential NULL pointer dereference
>   perf stat: Smatch: Fix use-after-freed pointer
>   perf top: Smatch: Fix potential NULL pointer dereference
>   perf annotate: Smatch: Fix dereferencing freed memory
>   perf trace: Smatch: Fix potential NULL pointer dereference
>   perf hists: Smatch: Fix potential NULL pointer dereference
>   perf map: Smatch: Fix potential NULL pointer dereference
>   perf session: Smatch: Fix potential NULL pointer dereference
>   perf intel-bts: Smatch: Fix potential NULL pointer dereference
>   perf intel-pt: Smatch: Fix potential NULL pointer dereference
>   perf cs-etm: Smatch: Fix potential NULL pointer dereference

from quick look it all looks good to me, nice tool ;-)

Acked-by: Jiri Olsa <jolsa@kernel.org>

jirka

> 
>  tools/perf/builtin-report.c    |  4 ++--
>  tools/perf/builtin-stat.c      |  2 +-
>  tools/perf/builtin-top.c       |  8 ++++++--
>  tools/perf/builtin-trace.c     |  5 +++--
>  tools/perf/ui/browsers/hists.c | 13 +++++++++----
>  tools/perf/util/annotate.c     |  6 ++----
>  tools/perf/util/cs-etm.c       |  2 +-
>  tools/perf/util/intel-bts.c    |  5 ++---
>  tools/perf/util/intel-pt.c     |  5 ++---
>  tools/perf/util/map.c          |  7 +++++--
>  tools/perf/util/session.c      |  3 +++
>  11 files changed, 36 insertions(+), 24 deletions(-)
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
