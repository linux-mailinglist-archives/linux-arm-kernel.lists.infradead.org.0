Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D7BD91EB978
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 12:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2pJPEHQgs1eoJO/SVSuO9KCGIQxuGTs+qBWRvKO3ucc=; b=CSXB8jXxwp2lVtGIWMo015OVh
	YZ71RRoJN3y7wOyOIFq380K55dSTYiEcGL4ZY8JGR5Gq3ArAT4+KFSRhhY92klRhZFbrse2SekkfS
	mrMT9A7UcietzpKmb5hpL9li5uQ46JYeSgnodbL/jliWc6wYg3rDadAWqRjIYwlArOOBgXeR9Mv6B
	3sqVWQKAwq3fwg54vTqHC9rsZqukognogvxWn1aJjRH/5rp9yKgUglijup7Mu/vcHMaEGo7lzIuWt
	HGxxkydja/yDzIOcqmJgfUkd+cffINbdS/CuwfeqXy+zGHdVa5Z02IHwlzo2kkakxiNOQhoLLYkMu
	LsjsTpC5A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg42L-0008Pn-O8; Tue, 02 Jun 2020 10:20:49 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg42E-0008PA-Uu
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 10:20:44 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AB56431B;
 Tue,  2 Jun 2020 03:20:39 -0700 (PDT)
Received: from [10.37.12.77] (unknown [10.37.12.77])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id AC1AA3F52E;
 Tue,  2 Jun 2020 03:20:34 -0700 (PDT)
Subject: Re: [PATCH v4 2/5] coresight: Add default sink selection to CoreSight
 base
To: mike.leach@linaro.org, linux-arm-kernel@lists.infradead.org,
 coresight@lists.linaro.org, mathieu.poirier@linaro.org
References: <20200526104642.9526-1-mike.leach@linaro.org>
 <20200526104642.9526-3-mike.leach@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <350f19a1-bdba-c464-9fd3-68c77daea4b0@arm.com>
Date: Tue, 2 Jun 2020 11:25:29 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200526104642.9526-3-mike.leach@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_032043_039205_62524475 
X-CRM114-Status: GOOD (  21.84  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: acme@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 05/26/2020 11:46 AM, Mike Leach wrote:
> Adds a method to select a suitable sink connected to a given source.
> 
> In cases where no sink is defined, the coresight_find_default_sink
> routine can search from a given source, through the child connections
> until a suitable sink is found.
> 
> The suitability is defined in by the sink coresight_dev_subtype on the
> CoreSight device, and the distance from the source by counting
> connections.
> 
> Higher value subtype is preferred - where these are equal, shorter
> distance from source is used as a tie-break.
> 
> This allows for default sink to be discovered were none is specified
> (e.g. perf command line)
> 
> Signed-off-by: Mike Leach <mike.leach@linaro.org>

Feel free to add:
Suggested-by: Suzuki K Poulose <suzuki.poulose@arm.com>

> +/**
> + * coresight_find_default_sink: Find a sink suitable for use as a
> + * default sink.
> + *
> + * @csdev: starting source to find a connected sink.
> + *
> + * Walks connections graph looking for a suitable sink to enable for the
> + * supplied source. Uses CoreSight device subtypes and distance from source
> + * to select the best sink.
> + *
> + * If a sink is found, then the default sink for this device is set and
> + * will be automatically used in future.
> + *
> + * Used in cases where the CoreSight user (perf / sysfs) has not selected a
> + * sink.
> + */
> +struct coresight_device *
> +coresight_find_default_sink(struct coresight_device *csdev)
> +{
> +	int depth = 0;
> +
> +	/* look for a default sink if we have not found for this device */
> +	if (!csdev->def_sink)
> +		csdev->def_sink = coresight_find_sink(csdev, &depth);

Could we add a helper to clear the cached "def-sink" from all the
"sources", when the sink is going away ? You may be able to do this via
coresight_remove_match()

Rest looks good to me.
Suzuki



_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
