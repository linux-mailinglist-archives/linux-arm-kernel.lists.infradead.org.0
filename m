Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ECA83D1ED
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 18:12:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qpYgRCHBCTGdAwmoz86i8jfvfe/TxlQiIdAAheRKGP8=; b=IIKCWFo/TIQIMU
	obfYLomJjOdnb8LuUWNhR8WshiVNWHc/97rNJGHUmwsqszQZsF4vpst8sGvrC1mVryScD62YStVDz
	wwU8r8dNx3rm2NYPfWqTJhmVZ001/rvisKhQNXlDSAVQ+vtWie4wM0OAM8B/PxMet905GO/VKuaoP
	ao7Hb6hxsVxxnPYn0wiAX/ptl67zOTmhIedSaTeHsgITIf0z1mTFgwwwzFV9atOPm5ysGkc9MHUAL
	+AHru0xYu8ZaS8mNrYZq6qIE8h1YlGEBoT4kOKpngpIZ3VwP8UJuIOWDm4c/9RX4GDwluQI6Tn8pJ
	jSCCWXd1jaJSLhgVyfzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hajNS-0007QQ-4F; Tue, 11 Jun 2019 16:12:02 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hajMA-0006PK-LC
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 16:10:44 +0000
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com
 [10.5.11.13])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 47BF7300415C;
 Tue, 11 Jun 2019 16:10:30 +0000 (UTC)
Received: from krava (unknown [10.43.17.136])
 by smtp.corp.redhat.com (Postfix) with SMTP id C2A0660A35;
 Tue, 11 Jun 2019 16:10:23 +0000 (UTC)
Date: Tue, 11 Jun 2019 18:10:23 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH 2/5] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190611161023.GD18242@krava>
References: <1560160772-210844-1-git-send-email-john.garry@huawei.com>
 <1560160772-210844-3-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1560160772-210844-3-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.11.4 (2019-03-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.46]); Tue, 11 Jun 2019 16:10:36 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_091042_788279_D2215417 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, ak@linux.intel.com,
 mathieu.poirier@linaro.org, peterz@infradead.org, tmricht@linux.ibm.com,
 will.deacon@arm.com, linux-kernel@vger.kernel.org, acme@kernel.org,
 linuxarm@huawei.com, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 ben@decadent.org.uk, linux-arm-kernel@lists.infradead.org,
 kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jun 10, 2019 at 05:59:29PM +0800, John Garry wrote:
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
> we can match by hisi_scclX and ddrcY. Tokens in Unit field
> are delimited by ','.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/util/pmu.c | 45 ++++++++++++++++++++++++++++++++++++++-----
>  1 file changed, 40 insertions(+), 5 deletions(-)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index 036047f56efa..f00cae750086 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -700,6 +700,44 @@ struct pmu_events_map *perf_pmu__find_map(struct perf_pmu *pmu)
>  	return map;
>  }
>  
> +static bool pmu_uncore_alias_match(const char *pmu_name, const char *name)
> +{
> +	/*
> +	 * uncore alias may be from different PMU
> +	 * with common prefix
> +	 */
> +	if (!strncmp(pmu_name, name, strlen(pmu_name)))
> +		return true;
> +
> +	/* match strings with delimiter, ',' */
> +	while (1) {
> +		const char *delimiter;
> +		char token[256] = {};
> +		const char *found_token;
> +		int token_len;
> +
> +		delimiter = strchr(pmu_name, ',');
> +		if (delimiter) {
> +			token_len = delimiter - pmu_name;
> +		} else {
> +			token_len = strlen(pmu_name);
> +		}
> +
> +		memcpy(token, pmu_name, token_len);
> +
> +		found_token = strstr(name, token);
> +		if (!found_token)
> +			return false;
> +
> +		/* No more delimiters, so we must be a match */
> +		if (!delimiter)
> +			return true;
> +
> +		pmu_name += token_len + 1;
> +		name = found_token + token_len;
> +	}

hum, would this be easier with strtok_r?

jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
