Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C189E1573EF
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:07:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KF6vHKjbBiFUDFliezOX8LNE4Njnmim0ViqGSBEqzGQ=; b=fFZMuQ1SwlWYG4
	RJO7+Y7daj9qsngYiwp15gGMqS2ho1J/c7xvn39q6ynLGoqI/4YINSTEUlTOr013RbkOpd6QqL1rE
	XlRjeium0LOllMxBf2kmYAf50bU6MjqQPZ2pOZ/3WobjcfJ0Aqxj7fjaNNqcTULr/HIVWedHEMdl9
	lTsVSNr6bEpTvhvJHBdizC62bWYDG3/xNsoER9vyZ255Y9tUpQFnhscknoL3eWnHGvjnaYkViUJ6E
	Hbcs7KQhAh9pxx0yq5/NHTFWIPxmNMvcXB580cp8PNcHkjP/I+qi4eJ7OeJiCrbd49YhmbDyP9YJJ
	8q81EXD8oeALLZVDETAg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17qn-0007iw-60; Mon, 10 Feb 2020 12:07:41 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17qe-0007hN-R9
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:07:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581336450;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4M76XTB9sAOomIvEeEdwDoPllW+ZIvVf68kWvwXXC6A=;
 b=V3x3tAoU1zZI6Y+McQcyRPEdPcY19iP5GbqZMryRStoErSBnhhHxNtX7SZqpZMgInIBqiR
 Xgp+pmkCARSPUcnvIyB5tdH64fitF+lNRYrDuIPAiVasqo0ZwwZC+jaCs/32+73LWIyA80
 0T7vZf656JP3fXc+vO6Ga+PSKIIyJH0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-188-YSv7_ONjOOiohpLZfF_7Qg-1; Mon, 10 Feb 2020 07:07:25 -0500
X-MC-Unique: YSv7_ONjOOiohpLZfF_7Qg-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 20659477;
 Mon, 10 Feb 2020 12:07:23 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 521CD5C1D4;
 Mon, 10 Feb 2020 12:07:17 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:07:15 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include
 system PMUs
Message-ID: <20200210120715.GC1907700@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-5-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-5-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040733_004492_C9DAE4BE 
X-CRM114-Status: GOOD (  13.25  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 24, 2020 at 10:35:02PM +0800, John Garry wrote:

SNIP

>  		/* Only split the uncore group which members use alias */
> -		if (!evsel->use_uncore_alias)
> +		if (!evsel->use_uncore_or_system_alias)
>  			goto out;
>  
>  		/* The events must be from the same uncore block */
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index 8b99fd312aae..569aba4cec89 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -623,7 +623,7 @@ static struct perf_cpu_map *pmu_cpumask(const char *name)
>  	return NULL;
>  }
>  
> -static bool pmu_is_uncore(const char *name)
> +static bool pmu_is_uncore_or_sys(const char *name)

so we detect uncore PMU by checking for cpumask file

I don't see the connection here with the sysid or '_sys' checking,
that's just telling which ID to use when looking for an alias, no?
shouldn't that be separated?

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
