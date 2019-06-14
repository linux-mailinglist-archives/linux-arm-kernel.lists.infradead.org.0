Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BA6A46174
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:47:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QmMU1v6dY75Qr2WMgnM59qKANK8/mA99fGRrzoLJOqw=; b=DRYd8mKwKLW1ZI
	KvlOrFtHvHFQZMUD2SCpMDvDx4a1ZKHx9qfwz0gWj0kuUUK1O2fnBd/HegWnYngpqN9ynaXXaXt3C
	GXMUsH/qH+WRytdv6ksJLgPyiarcUa1q9Dk4sh8AJDlkh+OnDbzxR5FulCzEtbMtkaO6f1ebMvpp3
	hOT9S6raZJMuiTYRYlPA9OZJNtiiRP/NJiICtShYRN0NipTDvSfRZQwByBjtS58Z7P5ik7eJ95b3Z
	pfUYORMsK0RVgaBQjl8wWexJKqiVZoNQNeTrOSgsBl8JccoKjPxDhQ6H0PKeQcBnhP7U9VpOv0Bkz
	IGg6lHjo+4bIPQo0p+eQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnUg-0001jr-N1; Fri, 14 Jun 2019 14:47:54 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnU2-0001Gt-RR
 for linux-arm-kernel@bombadil.infradead.org; Fri, 14 Jun 2019 14:47:14 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
 Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
 List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
 bh=eto68beFTMuFiXin5hRYooxdWER5uQTswdUxEzMWaWA=; b=DBSwzm54pOyV8n25mD2a3wO+S
 18o8yGYyLI51UTQBautY5GV45uh/2R7pJ4NJs5GU3Uf8KHOLJMgC4RB6SLZWEUJpaecD8Ovbaq2SW
 xYj/BjggESR++454UQsUCz4YbFKQCO8kBuYg8OczWY9S5H/PZOD2w0YxeDUt0VAfPffy8FFQfquFq
 gA4ZftJWbIyzLJTApeMN6PRa0QBOJfP3+i6oupWGT6oAoOqjwvzEhXb+emrJxriPLBz0dhOMwZAUy
 57aUPQityaS15rf4H4yey68+/94B/aZEHc4U1LxSjAppUhsmxQZnePmIJEB+KN8rDWU2YD0PDT3LX
 hHZL9r8zw==;
Received: from [179.240.172.117] (helo=quaco.ghostprotocols.net)
 by merlin.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnU0-0000H2-Qu; Fri, 14 Jun 2019 14:47:13 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id 262DC41149; Fri, 14 Jun 2019 11:46:56 -0300 (-03)
Date: Fri, 14 Jun 2019 11:46:56 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 1/5] perf pmu: Fix uncore PMU alias list for ARM64
Message-ID: <20190614144656.GF1402@kernel.org>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560521283-73314-2-git-send-email-john.garry@huawei.com>
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, ben@decadent.org.uk, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Em Fri, Jun 14, 2019 at 10:07:59PM +0800, John Garry escreveu:
> In commit 292c34c10249 ("perf pmu: Fix core PMU alias list for X86
> platform"), we fixed the issue of CPU events being aliased to uncore
> events.
> 
> Fix this same issue for ARM64, since the said commit left the (broken)
> behaviour untouched for ARM64.

So I added:

Cc: stable@vger.kernel.org
Fixes: 292c34c10249 ("perf pmu: Fix core PMU alias list for X86 platform")

So that the stable trees get this fix and add it to the versions where
it should have been together with the x86 fix, ok?

- Arnaldo
 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/util/pmu.c | 28 ++++++++++++----------------
>  1 file changed, 12 insertions(+), 16 deletions(-)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index f2eff272279b..7e7299fee550 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -709,9 +709,7 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>  {
>  	int i;
>  	struct pmu_events_map *map;
> -	struct pmu_event *pe;
>  	const char *name = pmu->name;
> -	const char *pname;
>  
>  	map = perf_pmu__find_map(pmu);
>  	if (!map)
> @@ -722,28 +720,26 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>  	 */
>  	i = 0;
>  	while (1) {
> +		const char *cpu_name = is_arm_pmu_core(name) ? name : "cpu";
> +		struct pmu_event *pe = &map->table[i++];
> +		const char *pname = pe->pmu ? pe->pmu : cpu_name;
>  
> -		pe = &map->table[i++];
>  		if (!pe->name) {
>  			if (pe->metric_group || pe->metric_name)
>  				continue;
>  			break;
>  		}
>  
> -		if (!is_arm_pmu_core(name)) {
> -			pname = pe->pmu ? pe->pmu : "cpu";
> -
> -			/*
> -			 * uncore alias may be from different PMU
> -			 * with common prefix
> -			 */
> -			if (pmu_is_uncore(name) &&
> -			    !strncmp(pname, name, strlen(pname)))
> -				goto new_alias;
> +		/*
> +		 * uncore alias may be from different PMU
> +		 * with common prefix
> +		 */
> +		if (pmu_is_uncore(name) &&
> +		    !strncmp(pname, name, strlen(pname)))
> +			goto new_alias;
>  
> -			if (strcmp(pname, name))
> -				continue;
> -		}
> +		if (strcmp(pname, name))
> +			continue;
>  
>  new_alias:
>  		pr_err("%s new_alias name=%s pe->name=%s\n", __func__, name, pe->name);
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
