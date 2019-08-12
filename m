Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A8BA28A862
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 12 Aug 2019 22:30:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hXiQGYo47/yJwpk8Fo9ztZ5wma5EXeW/847taW2tBzo=; b=kejJl5sRcaK0sg
	VIGqM+Ltdal5aQF8KkOpZEqPR5cQG9JGrO8NG8bTnpyPN5XX54yuzC69+MSB/T/Pkp3n9grYoZBWe
	o/0uG436KyurPf0UkXxJod3aCEjlii/bppbEVK8gyka3yxqwQfCUw76bPIpw58P9NOJ62YBnugk71
	B9c7GejelMB2nz5F1g5gTQFJyw3Gbr62iotNKdHB0TsVNt1gtkxgGnPg+FvlH6bXOL+WS4rQOlltw
	AjI2BonzGaimRVaU3qHsfNGGY0WnPPsdicNJwK6UHCXumxZ5B/6iweGT/vgJLfPvsYorirwOim7Pv
	k7n+51rDEirVPKnguyeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxGxA-0007Xu-I2; Mon, 12 Aug 2019 20:30:05 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGwx-0007Xn-OL
 for linux-arm-kernel@bombadil.infradead.org; Mon, 12 Aug 2019 20:29:51 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=okQCanS41NVfsqts5AJnKPYxoZvv6fudHvTlcVUrGb4=; b=o7AMxrNLaylN4HGTt4dlPVl0P
 Wh3El9j6BmPIB5sarHND0e96crI92zwc7fGqUrCEjcdcRNMBAA3d8Ufxr0CwZ77/qejd/el1acALZ
 BS0XfZtSXCkpNqUyIRBqH6y+0dGdOd8kligjvVKzyF58BWdBC55ltvKug21K3CsucRmxFvQ3oQb2N
 huteI+ym5sIizFFYxprqEiJfVlhVMz1njgY4nEItNv14I9VdvnrO3Tj3Ga6/XelJsNblpUTj9r1Ks
 w2wxQhty2fWgpvgTnGuwTmUc8s+at4Ns8e6yTaJ2aCug2olEAPzEDVJiiOWI3Ar7dVKQ4hzifcQ7M
 3PXmj/tPQ==;
Received: from 187-26-98-68.3g.claro.net.br ([187.26.98.68]
 helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hxGwv-0004cY-Qm; Mon, 12 Aug 2019 20:29:50 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 6AA6940340; Mon, 12 Aug 2019 17:29:47 -0300 (-03)
Date: Mon, 12 Aug 2019 17:29:47 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: Igor Lubashev <ilubashe@akamai.com>
Subject: Re: [PATCH v3 4/4] perf: Use CAP_SYS_ADMIN instead of euid==0 with
 ftrace
Message-ID: <20190812202947.GI9280@kernel.org>
References: <cover.1565188228.git.ilubashe@akamai.com>
 <bd8763b72ed4d58d0b42d44fbc7eb474d32e53a3.1565188228.git.ilubashe@akamai.com>
 <20190812202251.GG9280@kernel.org>
 <20190812202706.GH9280@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190812202706.GH9280@kernel.org>
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
Cc: Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>,
 Peter Zijlstra <peterz@infradead.org>,
 Alexey Budankov <alexey.budankov@linux.intel.com>,
 linux-kernel@vger.kernel.org, James Morris <jmorris@namei.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Mon, Aug 12, 2019 at 05:27:06PM -0300, Arnaldo Carvalho de Melo escreveu:
> Em Mon, Aug 12, 2019 at 05:22:51PM -0300, Arnaldo Carvalho de Melo escreveu:
> > Em Wed, Aug 07, 2019 at 10:44:17AM -0400, Igor Lubashev escreveu:
> > > @@ -281,7 +283,7 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
> > >  		.events = POLLIN,
> > >  	};
> > >  
> > > -	if (geteuid() != 0) {
> > > +	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> > >  		pr_err("ftrace only works for root!\n");
> > 
> > I guess we should update the error message too? 
> > 
> 
> I.e. I applied this as a follow up patch:
> 
> diff --git a/tools/perf/builtin-ftrace.c b/tools/perf/builtin-ftrace.c
> index 01a5bb58eb04..ba8b65c2f9dc 100644
> --- a/tools/perf/builtin-ftrace.c
> +++ b/tools/perf/builtin-ftrace.c
> @@ -284,7 +284,12 @@ static int __cmd_ftrace(struct perf_ftrace *ftrace, int argc, const char **argv)
>  	};
>  
>  	if (!perf_cap__capable(CAP_SYS_ADMIN)) {
> -		pr_err("ftrace only works for root!\n");
> +		pr_err("ftrace only works for %s!\n",
> +#ifdef HAVE_LIBCAP_SUPPORT
> +		"users with the SYS_ADMIN capability"
> +#else
> +		"root"
> +#endif

                );

:-)
 
>  		return -1;
>  	}
>  

I've pushed the whole set to my tmp.perf/cap branch, please chec

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
