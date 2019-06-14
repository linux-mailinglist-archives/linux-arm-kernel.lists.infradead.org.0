Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF43461A8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 14 Jun 2019 16:52:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QcVVAH6TGN2d+khTPRAR9tMtLEOVB9O3ly4RRzCHcQA=; b=Lnk8EPeOq8dX+m
	c2P8jL3HBp0GDbYiVwGV5CtmcmoI17Y98ty1wu1Wx9+1Yi8gyFoZWS9TZLy5wIle/+H/uzv/b9bdx
	nq1xO+WaG7+Jhg2xnv/YT5GK4csVcEPnGG1aOLd15DI0SyftP0a4KtMJB+ZXUsHsTImg/oANu3aPF
	oZ44lpH98TXHoFvu8sald6JkTYCGE6rtMXdsRmjLFHeIqo++90tDw89a2/1Fp2bWKGc20Ujloab/w
	62hgaYFS3AMJvmjXC0yUaA9G6s+TxINAbm6yL2f1WZvuSoCW9+1xWE4UDdGHNTj/L1KDqkqTTYqeG
	wOxhe1jlTC7Qau/LdZ/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hbnYj-00060x-De; Fri, 14 Jun 2019 14:52:05 +0000
Received: from 179-240-172-117.3g.claro.net.br ([179.240.172.117]
 helo=quaco.ghostprotocols.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
 id 1hbnXh-0005Hs-35; Fri, 14 Jun 2019 14:51:01 +0000
Received: by quaco.ghostprotocols.net (Postfix, from userid 1000)
 id F07C241149; Fri, 14 Jun 2019 11:50:57 -0300 (-03)
Date: Fri, 14 Jun 2019 11:50:57 -0300
From: Arnaldo Carvalho de Melo <acme@kernel.org>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190614145057.GG1402@kernel.org>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560521283-73314-3-git-send-email-john.garry@huawei.com>
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

Em Fri, Jun 14, 2019 at 10:08:00PM +0800, John Garry escreveu:
> The jevent "Unit" field is used for uncore PMU alias definition.
> 
> The form uncore_pmu_example_X is supported, where "X" is a wildcard,
> to support multiple instances of the same PMU in a system.
> 
> Unfortunately this format not suitable for all uncore PMUs; take the Hisi
> DDRC uncore PMU for example, where the name is in the form
> hisi_scclX_ddrcY.
> 
> For the current jevent parsing, we would be required to hardcode an uncore
> alias translation for each possible value of X. This is not scalable.
> 
> Instead, add support for "Unit" field in the form "hisi_sccl,ddrc", where
> we can match by hisi_scclX and ddrcY. Tokens in Unit field are 
> delimited by ','.

Looks ok, but would be good to have some Reviewed-by attached as I'm not
super familiar with the PMU oddities, Jiri, can you please review this,
somebody else?

Thanks,

- Arnaldo
 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/util/pmu.c | 39 ++++++++++++++++++++++++++++++++++-----
>  1 file changed, 34 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index 7e7299fee550..bc71c60589b5 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -700,6 +700,39 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
>  	return map;
>  }
>  
> +static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
> +{
> +	char *tmp, *tok, *str;
> +	bool res;
> +
> +	str = strdup(pmu_name);
> +	if (!str)
> +		return false;
> +
> +	/*
> +	 * uncore alias may be from different PMU with common
> +	 * prefix or matching tokens.
> +	 */
> +	tok = strtok_r(str, ",", &tmp);
> +	if (strncmp(pmu_name, tok, strlen(tok))) {
> +		res = false;
> +		goto out;
> +	}
> +
> +	for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",", &tmp)) {
> +		name = strstr(name, tok);
> +		if (!name) {
> +			res = false;
> +			goto out;
> +		}
> +	}
> +
> +	res = true;
> +out:
> +	free(str);
> +	return res;
> +}
> +
>  /*
>   * From the pmu_events_map, find the table of PMU events that corresponds
>   * to the current running CPU. Then, add all PMU events from that table
> @@ -730,12 +763,8 @@ static void pmu_add_cpu_aliases(struct list_head *head, struct perf_pmu *pmu)
>  			break;
>  		}
>  
> -		/*
> -		 * uncore alias may be from different PMU
> -		 * with common prefix
> -		 */
>  		if (pmu_is_uncore(name) &&
> -		    !strncmp(pname, name, strlen(pname)))
> +		    pmu_uncore_alias_match(pname, name))
>  			goto new_alias;
>  
>  		if (strcmp(pname, name))
> -- 
> 2.17.1

-- 

- Arnaldo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
