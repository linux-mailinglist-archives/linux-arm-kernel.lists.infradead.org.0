Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E4E15EBD4
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  3 Jul 2019 20:44:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dTMQ94SPjkaLryWKAQlUnTlO/DiBlJ40yYCzooe13Qg=; b=bElyg9y0RpFDq5
	ihx9FEpNyvzHzsexCzv5TfiaVSLfTbrrsGZ33druTy1TM2ZI85Fpnvf14thEA3o9Ya346WoxkXE7J
	lg/+mDe2J1L8opFfBVhlCMXBlH7qMgEJT0rduz+M0X+3XQRDoxBG8jjICFECdE4NoT6YxSHuCAefs
	esKcp3nm/Kjd5y4wkqYTqcMHgxEYGiJ7KOV2AN2Y5OJXxVdCibEQPuJShuZkyxXEPxI33S9YHbK+c
	G5t7RhVyoSLfihmNeR/K8UDEYWsON1zE4Kuoz60qZ4MIpLeZZnpYs7r19SHDnzCWMmXP3K8bZn8L1
	Z1vc38phlMVpgCxn67Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hikFG-0006VX-9f; Wed, 03 Jul 2019 18:44:42 +0000
Received: from [177.195.209.182] (helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hikF6-0006SG-Sd; Wed, 03 Jul 2019 18:44:33 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 7149D41153; Wed,  3 Jul 2019 15:43:46 -0300 (-03)
Date: Wed, 3 Jul 2019 15:43:46 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Leo Yan <leo.yan@linaro.org>
Subject: Re: [PATCH v1 04/11] perf annotate: Smatch: Fix dereferencing freed
 memory
Message-ID: <20190703184346.GE10740@kernel.org>
References: <20190702103420.27540-1-leo.yan@linaro.org>
 <20190702103420.27540-5-leo.yan@linaro.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190702103420.27540-5-leo.yan@linaro.org>
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

Em Tue, Jul 02, 2019 at 06:34:13PM +0800, Leo Yan escreveu:
> Based on the following report from Smatch, fix the potential
> dereferencing freed memory check.
> 
>   tools/perf/util/annotate.c:1125
>   disasm_line__parse() error: dereferencing freed memory 'namep'
> 
> tools/perf/util/annotate.c
> 1100 static int disasm_line__parse(char *line, const char **namep, char **rawp)
> 1101 {
> 1102         char tmp, *name = ltrim(line);
> 
> [...]
> 
> 1114         *namep = strdup(name);
> 1115
> 1116         if (*namep == NULL)
> 1117                 goto out_free_name;
> 
> [...]
> 
> 1124 out_free_name:
> 1125         free((void *)namep);
>                           ^^^^^
> 1126         *namep = NULL;
>              ^^^^^^
> 1127         return -1;
> 1128 }
> 
> If strdup() fails to allocate memory space for *namep, we don't need to
> free memory with pointer 'namep', which is resident in data structure
> disasm_line::ins::name; and *namep is NULL pointer for this failure, so
> it's pointless to assign NULL to *namep again.

Applied, with this extra comment:


Committer note:

Freeing namep, which is the address of the first entry of the 'struct
ins' that is the first member of struct disasm_line would in fact free
that disasm_line instance, if it was allocated via malloc/calloc, which,
later, would a dereference of freed memory.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
