Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D0131CD703
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 11 May 2020 13:01:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=P32Gx19vqBMUkJLNQwB8XPuvHF7I3D6np7u7OjM7fhM=; b=cVt80O5rsXhRf4
	b0bLJgKpl8NJH4hYy4QE3C+9D5f5VJWDa2jISLbVr1fu+dfX2XXkJiraDok5h4xerFhS8LxCM9bjG
	+645jedIPZxwEsFP1imwATXMbZEDiZD9D6IK7cN7yFLcoKbA4NNPWq7R1YBuvXXMRrPMeMtH4rzhH
	74/M+MvitXiunjx2qsuXDNzBK5gfw43K1izV90McGCvxk/5Xi7RRTJqAQ/SNbnUFpohNpiR3QgdVY
	1bfkS6Vk1oa0rk6/tXq9p03CLndPzQOEFjdhZRLsYMuOykkWYlcr5UmhMkN9t/4DUMXJCspOD41Ul
	NNBHTo8XXz8agdOEAY8w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jY6Br-0006KT-95; Mon, 11 May 2020 11:01:43 +0000
Received: from us-smtp-1.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jY6Bh-0006Jv-IE
 for linux-arm-kernel@lists.infradead.org; Mon, 11 May 2020 11:01:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1589194890;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=N2PRhyVQqj4CNO2Ups/0yQavldCLC2be0VW7v1d7TC8=;
 b=Wv/jznOklmsWnt10ZdzmMHxldb6eOard4DkLLGg+JuftPfFz9lFCn3ubqo+ebEqoCH7InT
 //sszQpZYxuvpXqqxy0wEl9kQyv4lNU0HUfAIntlVV1ZBPKkLuQMAJc4MBbmt6mJwVbWu5
 AgVuTxqU3VIhRE/ArC/72MEulukct4U=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-28-HTg4J8gcPCOvjKF8vyHnzA-1; Mon, 11 May 2020 07:01:26 -0400
X-MC-Unique: HTg4J8gcPCOvjKF8vyHnzA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com
 [10.5.11.22])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8CCF71009441;
 Mon, 11 May 2020 11:01:23 +0000 (UTC)
Received: from krava (unknown [10.40.194.31])
 by smtp.corp.redhat.com (Postfix) with SMTP id BBD801001920;
 Mon, 11 May 2020 11:01:19 +0000 (UTC)
Date: Mon, 11 May 2020 13:01:18 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC v3 09/12] perf metricgroup: Split up
 metricgroup__add_metric()
Message-ID: <20200511110118.GA2986380@krava>
References: <1588852671-61996-1-git-send-email-john.garry@huawei.com>
 <1588852671-61996-10-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1588852671-61996-10-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200511_040133_675977_A7218E7B 
X-CRM114-Status: GOOD (  18.32  )
X-Spam-Score: -0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [205.139.110.61 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: mark.rutland@arm.com, irogers@google.com, ak@linux.intel.com,
 qiangqing.zhang@nxp.com, peterz@infradead.org, robin.murphy@arm.com,
 linuxarm@huawei.com, acme@kernel.org, linux-kernel@vger.kernel.org,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, May 07, 2020 at 07:57:48PM +0800, John Garry wrote:
> To aid supporting system event metric groups, break up the function
> metricgroup__add_metric() into a part which iterates metrics and a part
> which actually "adds" the metric.
> 
> No functional change intended.

this no longer applied on Arnaldo's perf/core,
it's very busy part now :-\

jirka

> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/util/metricgroup.c | 75 ++++++++++++++++++++++++++-----------------
>  1 file changed, 45 insertions(+), 30 deletions(-)
> 
> diff --git a/tools/perf/util/metricgroup.c b/tools/perf/util/metricgroup.c
> index 926449a7cdbf..d1033756a1bc 100644
> --- a/tools/perf/util/metricgroup.c
> +++ b/tools/perf/util/metricgroup.c
> @@ -231,6 +231,12 @@ static bool match_metric(const char *n, const char *list)
>  	return false;
>  }
>  
> +static bool match_pe_metric(struct pmu_event *pe, const char *metric)
> +{
> +	return match_metric(pe->metric_group, metric) ||
> +	       match_metric(pe->metric_name, metric);
> +}
> +
>  struct mep {
>  	struct rb_node nd;
>  	const char *name;
> @@ -485,6 +491,40 @@ static bool metricgroup__has_constraint(struct pmu_event *pe)
>  	return false;
>  }
>  
> +static int metricgroup__add_metric_pmu_event(struct pmu_event *pe,
> +					     struct strbuf *events,
> +					     struct list_head *group_list)
> +{
> +	const char **ids;
> +	int idnum;
> +	struct egroup *eg;
> +
> +	pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
> +
> +	if (expr__find_other(pe->metric_expr, NULL, &ids, &idnum) < 0)
> +		return 0;
> +
> +	if (events->len > 0)
> +		strbuf_addf(events, ",");
> +
> +	if (metricgroup__has_constraint(pe))
> +		metricgroup__add_metric_non_group(events, ids, idnum);
> +	else
> +		metricgroup__add_metric_weak_group(events, ids, idnum);
> +
> +	eg = malloc(sizeof(*eg));
> +	if (!eg)
> +		return -ENOMEM;
> +	eg->ids = ids;
> +	eg->idnum = idnum;
> +	eg->metric_name = pe->metric_name;
> +	eg->metric_expr = pe->metric_expr;
> +	eg->metric_unit = pe->unit;
> +	list_add_tail(&eg->nd, group_list);
> +
> +	return 0;
> +}
> +
>  static int metricgroup__add_metric(const char *metric, struct strbuf *events,
>  				   struct list_head *group_list)
>  {
> @@ -502,37 +542,12 @@ static int metricgroup__add_metric(const char *metric, struct strbuf *events,
>  			break;
>  		if (!pe->metric_expr)
>  			continue;
> -		if (match_metric(pe->metric_group, metric) ||
> -		    match_metric(pe->metric_name, metric)) {
> -			const char **ids;
> -			int idnum;
> -			struct egroup *eg;
> -
> -			pr_debug("metric expr %s for %s\n", pe->metric_expr, pe->metric_name);
>  
> -			if (expr__find_other(pe->metric_expr,
> -					     NULL, &ids, &idnum) < 0)
> -				continue;
> -			if (events->len > 0)
> -				strbuf_addf(events, ",");
> -
> -			if (metricgroup__has_constraint(pe))
> -				metricgroup__add_metric_non_group(events, ids, idnum);
> -			else
> -				metricgroup__add_metric_weak_group(events, ids, idnum);
> -
> -			eg = malloc(sizeof(struct egroup));
> -			if (!eg) {
> -				ret = -ENOMEM;
> -				break;
> -			}
> -			eg->ids = ids;
> -			eg->idnum = idnum;
> -			eg->metric_name = pe->metric_name;
> -			eg->metric_expr = pe->metric_expr;
> -			eg->metric_unit = pe->unit;
> -			list_add_tail(&eg->nd, group_list);
> -			ret = 0;
> +		if (match_pe_metric(pe, metric)) {
> +			ret = metricgroup__add_metric_pmu_event(pe, events,
> +								group_list);
> +			if (ret)
> +				return ret;
>  		}
>  	}
>  	return ret;
> -- 
> 2.16.4
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
