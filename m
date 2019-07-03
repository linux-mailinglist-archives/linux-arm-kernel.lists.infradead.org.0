Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 682485EBE8
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:46:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1WPUZgtSfuOMDLXCV86txjXtanbixomxTUZr+0WvJ/A=; b=BayF7MSNQFe7fX
	PREaURBNj5j36e68cQ+BkjsT+KoQqJvFMCZtBJr7HMfRfcryqmIX7mCZtgdsYxVTWM/11vv87EFl4
	Hd21Aclp0tOYZ/uE0e8uYT/GbGcq2I+SXiu3crGBMZ3VAtM5SLeCtmm1fMzxPP7GY0/NN+LNOrOLG
	OH6jFvcnXV7RNyeLK5mokowifx4gJ4VsSHJcSBnzXQKo5Qm7vK7m+05UpldCwOT8ksD7o94y5HX6H
	7P9ztmf/zLjbMpYUCmkn6MNL5vzEECyoizkHuzdq+QxJON2w70iLmFLle4jtxp0uya0jrMepQ06AU
	7C1XaoPw0Lv7XzosB2dQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikGs-0008Uj-TW; Wed, 03 Jul 2019 18:46:22 +0000
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hikGh-0008UR-Du; Wed, 03 Jul 2019 18:46:12 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id CAA0141154; Wed,  3 Jul 2019 15:46:06 -0300 (-03)
Date: Wed, 3 Jul 2019 15:46:06 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 05/11] perf trace: Smatch: Fix potential NULL pointer
 dereference
Message-ID: <20190703184606.GF10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-6-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-6-leo.yan@linaro.org>
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

Em Tue, Jul 02, 2019 at 06:34:14PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the potential
> NULL pointer dereference check.
> 
>   tools/perf/builtin-trace.c:1044
>   thread_trace__new() error: we previously assumed 'ttrace' could be
>   null (see line 1041).
> 
> tools/perf/builtin-trace.c
> 1037 static struct thread_trace *thread_trace__new(void)
> 1038 {
> 1039         struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
> 1040
> 1041         if (ttrace)
> 1042                 ttrace->files.max = -1;
> 1043
> 1044         ttrace->syscall_stats = intlist__new(NULL);
>              ^^^^^^^^
> 1045
> 1046         return ttrace;
> 1047 }
> 
> This patch directly returns NULL when fail to allocate memory for
> ttrace; this can avoid potential NULL pointer dereference.

I did it slightly different, to avoid having two return lines, and that
is what most other constructors (foo__new()) do in tools/perf/, kept
your changeset comment and patch authorship, thanks.

diff --git a/tools/perf/builtin-trace.c b/tools/perf/builtin-trace.c
index d0eb7224dd36..e3fc9062f136 100644
--- a/tools/perf/builtin-trace.c
+++ b/tools/perf/builtin-trace.c
@@ -1038,10 +1038,10 @@ static struct thread_trace *thread_trace__new(void)
 {
 	struct thread_trace *ttrace =  zalloc(sizeof(struct thread_trace));
 
-	if (ttrace)
+	if (ttrace) {
 		ttrace->files.max = -1;
-
-	ttrace->syscall_stats = intlist__new(NULL);
+		ttrace->syscall_stats = intlist__new(NULL);
+	}
 
 	return ttrace;
 }

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
