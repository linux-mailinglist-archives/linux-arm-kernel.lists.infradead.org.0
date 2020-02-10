Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0318E1573FB
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NgZltenMhKysLHLDD3TgzZ5hrNc2CbQ0LTvkXfR2pCs=; b=DOAa1Kq7vsN1Jp
	bIitBrbG4BZfd14d6sC/jXcHTKTBfVar6whqQHApM6auETNfu6PxvD3EYTMtt54HxS3gRS/+M+A3j
	4zXc18AIQoVMsyxcd690PvGYqA0j/6vRMyelcRna0gB00q/rR59BjyNMI3t4BeEWJ/psvsvMJ5U1J
	dO3ZDa7EWhQeZWa2fgSZ5CmfSIK6yEl8drxhp9OQPap/o7NCi1j5/5v2cz9Dt7GUptcyGxgHWwVRx
	Qs9XcUVmjfoQ1gHVVuGpN2k5pdCfom872anuqFARegJBOyelpSqHmh1GsgD4vg7DSPZkNGtGFMuv7
	keg3FwkzCxJHEKwb9/Qg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17qz-0007rN-Vh; Mon, 10 Feb 2020 12:07:53 +0000
Received: from us-smtp-2.mimecast.com ([205.139.110.61]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17qk-0007kk-KC
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:07:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581336457;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=e2eRuZqsSaScZZo8kRHflKS/ooXKuAQ41Yq4aCVvwEU=;
 b=YCtVmYmsNVvoz0nKlyBMSP+HRd5lfrkLGg0qwiiN6PreWnwjEQKvIyh1tW0tdltzLS+OnO
 MQApcnnTx0G2aEpuYkv+oWtKe/3lxdQcdmCMxEL5nntkAmBevZwnbyLM2NbT9gvjwP7qE0
 oa0TxN1buLuVML16VlrRrQ/1qfXRRtk=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-430-rRbuwR1zN2iFw2chVyWWEw-1; Mon, 10 Feb 2020 07:07:35 -0500
X-MC-Unique: rRbuwR1zN2iFw2chVyWWEw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2E9AC13E6;
 Mon, 10 Feb 2020 12:07:33 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 43FCD60BF1;
 Mon, 10 Feb 2020 12:07:30 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:07:27 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 1/7] perf jevents: Add support for an extra directory
 level
Message-ID: <20200210120727.GD1907700@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-2-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040738_752302_92EF67EC 
X-CRM114-Status: GOOD (  20.76  )
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

On Fri, Jan 24, 2020 at 10:34:59PM +0800, John Garry wrote:
> Currently we support upto a level 2 directory, and level 2 would be in the
> form vendor/platform.
> 
> Add support for a further level, to hold specific categories of events for
> when we want to segregate them for matching purposes.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/pmu-events/jevents.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/tools/perf/pmu-events/jevents.c b/tools/perf/pmu-events/jevents.c
> index 079c77b6a2fd..8af05b94a37d 100644
> --- a/tools/perf/pmu-events/jevents.c
> +++ b/tools/perf/pmu-events/jevents.c
> @@ -960,15 +960,20 @@ static int process_one_file(const char *fpath, const struct stat *sb,
>  	int level   = ftwbuf->level;
>  	int err = 0;
>  
> -	if (level == 2 && is_dir) {
> +	if (level >= 2 && is_dir) {
> +		int count = 0;
>  		/*
>  		 * For level 2 directory, bname will include parent name,
>  		 * like vendor/platform. So search back from platform dir
>  		 * to find this.
> +		 * Something similar for level 3 directory, but we're a PMU
> +		 * category folder, like vendor/platform/cpu.
>  		 */
>  		bname = (char *) fpath + ftwbuf->base - 2;
>  		for (;;) {
>  			if (*bname == '/')
> +				count++;
> +			if (count == level - 1)
>  				break;
>  			bname--;

I was wondering why we just don't use different filename for that,
but it's true that the code transforms directory chain to the table
name.. so I guess another directory level is justified ;-)

jirka


>  		}
> @@ -981,13 +986,13 @@ static int process_one_file(const char *fpath, const struct stat *sb,
>  		 level, sb->st_size, bname, fpath);
>  
>  	/* base dir or too deep */
> -	if (level == 0 || level > 3)
> +	if (level == 0 || level > 4)
>  		return 0;
>  
>  
>  	/* model directory, reset topic */
>  	if ((level == 1 && is_dir && is_leaf_dir(fpath)) ||
> -	    (level == 2 && is_dir)) {
> +	    (level >= 2 && is_dir && is_leaf_dir(fpath))) {
>  		if (close_table)
>  			print_events_table_suffix(eventsfp);
>  
> -- 
> 2.17.1
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
