Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292A938733
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 11:42:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=SQCSfsaf8OL/dYn7yavHwKQJqwytJ0KsdI/6P7KIU7c=; b=q+AY57+8gJGNRYZuA+RW2Yhe6
	w3824vzFlR5avL1lMcGkqLI8NPewssBfyehb/eM6Gz7vJjBOYCHjQ1JbveHSRQRRfa2dtz+ve429c
	xEyS7rpP8zrfT484U/ndeoIZH0Elv1Xuu8ROFf7v6DCTUl3p2CHv64yKhg7y74yqtk+3vk2ofRjhT
	hzvX6r8naYrMwRN848ZYwdeNFjVtKwGWszNx+Wp6sj0RmcSk6WN0yDLTneCMvNiRgJuWOPqDowQKT
	i8S25g1WXiFea1bia/LSCib72B8XhjUfvnRKG9uQZzx3js8jiO07FUWUZMz2Phx9avrG3nrTefhtw
	G+By2rRUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZBNr-00031w-QV; Fri, 07 Jun 2019 09:42:03 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hZBNg-00031b-CG
 for linux-arm-kernel@lists.infradead.org; Fri, 07 Jun 2019 09:41:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id CC907458;
 Fri,  7 Jun 2019 02:41:51 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id D4E023F96A;
 Fri,  7 Jun 2019 02:43:30 -0700 (PDT)
Subject: Re: [PATCH v2 02/17] perf tools: Configure timestsamp generation in
 CPU-wide mode
To: mathieu.poirier@linaro.org, acme@kernel.org
References: <20190524173508.29044-1-mathieu.poirier@linaro.org>
 <20190524173508.29044-3-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <c1507e8b-9ec8-a5c4-a398-20dcc47acaa8@arm.com>
Date: Fri, 7 Jun 2019 10:41:48 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190524173508.29044-3-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190607_024152_510628_E0EAD759 
X-CRM114-Status: GOOD (  21.88  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: peterz@infradead.org, coresight@lists.linaro.org,
 linux-kernel@vger.kernel.org, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, leo.yan@linaro.org, namhyung@kernel.org, jolsa@redhat.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 24/05/2019 18:34, Mathieu Poirier wrote:
> When operating in CPU-wide mode tracers need to generate timestamps in
> order to correlate the code being traced on one CPU with what is executed
> on other CPUs.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>   tools/perf/arch/arm/util/cs-etm.c | 57 +++++++++++++++++++++++++++++++
>   1 file changed, 57 insertions(+)
> 
> diff --git a/tools/perf/arch/arm/util/cs-etm.c b/tools/perf/arch/arm/util/cs-etm.c
> index 3912f0bf04ed..be1e4f20affa 100644
> --- a/tools/perf/arch/arm/util/cs-etm.c
> +++ b/tools/perf/arch/arm/util/cs-etm.c
> @@ -99,6 +99,54 @@ static int cs_etm_set_context_id(struct auxtrace_record *itr,
>   	return err;
>   }
>   
> +static int cs_etm_set_timestamp(struct auxtrace_record *itr,
> +				struct perf_evsel *evsel, int cpu)
> +{
> +	struct cs_etm_recording *ptr;
> +	struct perf_pmu *cs_etm_pmu;
> +	char path[PATH_MAX];
> +	int err = -EINVAL;
> +	u32 val;
> +
> +	ptr = container_of(itr, struct cs_etm_recording, itr);
> +	cs_etm_pmu = ptr->cs_etm_pmu;
> +
> +	if (!cs_etm_is_etmv4(itr, cpu))
> +		goto out;
> +
> +	/* Get a handle on TRCIRD0 */
> +	snprintf(path, PATH_MAX, "cpu%d/%s",
> +		 cpu, metadata_etmv4_ro[CS_ETMV4_TRCIDR0]);
> +	err = perf_pmu__scan_file(cs_etm_pmu, path, "%x", &val);
> +
> +	/* There was a problem reading the file, bailing out */
> +	if (err != 1) {
> +		pr_err("%s: can't read file %s\n",
> +		       CORESIGHT_ETM_PMU_NAME, path);
> +		goto out;
> +	}
> +
> +	/*
> +	 * TRCIDR0.TSSIZE, bit [28-24], indicates whether global timestamping
> +	 * is supported:
> +	 *  0b00000 Global timestamping is not implemented
> +	 *  0b00110 Implementation supports a maximum timestamp of 48bits.
> +	 *  0b01000 Implementation supports a maximum timestamp of 64bits.
> +	 */
> +	val &= GENMASK(28, 24);
> +	if (!val) {
> +		err = -EINVAL;
> +		goto out;
> +	}
> +
> +	/* All good, let the kernel know */
> +	evsel->attr.config |= (1 << ETM_OPT_TS);
> +	err = 0;
> +
> +out:
> +	return err;
> +}
> +
>   static int cs_etm_set_option(struct auxtrace_record *itr,
>   			     struct perf_evsel *evsel, u32 option)
>   {
> @@ -118,6 +166,11 @@ static int cs_etm_set_option(struct auxtrace_record *itr,
>   			if (err)
>   				goto out;
>   			break;
> +		case ETM_OPT_TS:
> +			err = cs_etm_set_timestamp(itr, evsel, i);
> +			if (err)
> +				goto out;
> +			break;
>   		default:
>   			goto out;
>   		}
> @@ -343,6 +396,10 @@ static int cs_etm_recording_options(struct auxtrace_record *itr,
>   		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_CTXTID);
>   		if (err)
>   			goto out;
> +
> +		err = cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS);
> +		if (err)
> +			goto out;

nit: Could we not do this in one shot, say :

	cs_etm_set_option(itr, cs_etm_evsel, ETM_OPT_TS | ETM_OPT_CTXTID) ?

rather than iterating over the per-CPU events twice ? The cs_etm_set_option()
could simply replace the switch() to :

	if (option & ETM_OPT_1)
		do_something_for_1()
	if (option & ETM_OPT_2)
		do_something_for_2();
	if (option & ~(ETM_OPT_1 | ETM_OPT_2 |...))
		/* do unsupported option */


Cheers
Suzuki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
