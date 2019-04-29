Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BE499E57D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 29 Apr 2019 16:54:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Oh8+zfsgfcdifl7RMiALx9L/xF1+DglsPvq+ogSLrj4=; b=Ia5zZ0muzdDOuu2oCxQDkrCJX
	ZkgJGSVNtVeyDDSAs0iQP7TdSvIzTte13w1rE2hBc8sgmCUn1DMcEXisA+Skjrfq0hPTzvljMoLCM
	Kgyy3wgBKZhUbiIitqHqiJxjD6CcphSdGTfm8JxzTXXPEvp/gyYRMQfqrB1PKJyug4jOmrXBO4hjw
	9ITz/4ooPhpSRjwwTtl7wDIEOJW9OT/8u6yo/gKoK1HNbz/3dC1YOpA74iQEhI3ESId+TyQfO5BRT
	OAqaZQx7+jfQA6ONYtAVHI327H6hSIZHK3GOnZEfh3SSjjiRH+M+SRtxLpPCZ+8wW2iVA5m8bu5TW
	bInTCNU7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hL7fR-0001ku-KF; Mon, 29 Apr 2019 14:54:05 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hL7fK-0001k0-Q5
 for linux-arm-kernel@lists.infradead.org; Mon, 29 Apr 2019 14:53:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 780D280D;
 Mon, 29 Apr 2019 07:53:58 -0700 (PDT)
Received: from [10.32.98.83] (e111474-lin.manchester.arm.com [10.32.98.83])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B00D73F5C1;
 Mon, 29 Apr 2019 07:53:56 -0700 (PDT)
Subject: Re: [PATCH v1 2/2] perf cs-etm: Don't check cs_etm_queue::prev_packet
 validity
To: Leo Yan <leo.yan@linaro.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Mike Leach
 <mike.leach@linaro.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20190428083228.20246-1-leo.yan@linaro.org>
 <20190428083228.20246-2-leo.yan@linaro.org>
From: Robert Walker <robert.walker@arm.com>
Message-ID: <c4aa2f1e-b539-c092-f15d-3337271a1d2f@arm.com>
Date: Mon, 29 Apr 2019 15:53:55 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <20190428083228.20246-2-leo.yan@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190429_075358_849781_B19C034B 
X-CRM114-Status: GOOD (  18.50  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


On 28/04/2019 09:32, Leo Yan wrote:
> Since cs_etm_queue::prev_packet is allocated for all cases, it will
> never be NULL pointer; now validity checking prev_packet is pointless,
> remove all of them.
>
> Signed-off-by: Leo Yan <leo.yan@linaro.org>
> ---
>   tools/perf/util/cs-etm.c | 6 +-----
>   1 file changed, 1 insertion(+), 5 deletions(-)

Tested-by: Robert Walker <robert.walker@arm.com>

Regards

Rob

> diff --git a/tools/perf/util/cs-etm.c b/tools/perf/util/cs-etm.c
> index 054b480aab04..de488b43f440 100644
> --- a/tools/perf/util/cs-etm.c
> +++ b/tools/perf/util/cs-etm.c
> @@ -979,7 +979,6 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
>   	 * PREV_PACKET is a branch.
>   	 */
>   	if (etm->synth_opts.last_branch &&
> -	    etmq->prev_packet &&
>   	    etmq->prev_packet->sample_type == CS_ETM_RANGE &&
>   	    etmq->prev_packet->last_instr_taken_branch)
>   		cs_etm__update_last_branch_rb(etmq);
> @@ -1012,7 +1011,7 @@ static int cs_etm__sample(struct cs_etm_queue *etmq)
>   		etmq->period_instructions = instrs_over;
>   	}
>   
> -	if (etm->sample_branches && etmq->prev_packet) {
> +	if (etm->sample_branches) {
>   		bool generate_sample = false;
>   
>   		/* Generate sample for tracing on packet */
> @@ -1069,9 +1068,6 @@ static int cs_etm__flush(struct cs_etm_queue *etmq)
>   	struct cs_etm_auxtrace *etm = etmq->etm;
>   	struct cs_etm_packet *tmp;
>   
> -	if (!etmq->prev_packet)
> -		return 0;
> -
>   	/* Handle start tracing packet */
>   	if (etmq->prev_packet->sample_type == CS_ETM_EMPTY)
>   		goto swap_packet;

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
