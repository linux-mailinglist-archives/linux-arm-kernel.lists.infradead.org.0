Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 55D3059E3F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 16:54:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j/71wyY9Arc1sQZ72Os/IWwz5bcNP7M8XAHE8KCFq6w=; b=UjD3+wua486sf1
	ncvHSrU6GvfcE3IySXFkWg4n7YvkmzWhmmxRo4irqqdXQAclO4f4kdLH6T772wYR0ZcSY/JvxcDjM
	l6p6MSQwlxjbZJAaz51/bp+DkovVxOyWOJpI6Tir4jA0VMrIuA6zMOcrCrf/wc9IDXBOMraENfdad
	TOcBdpET6N0KMqAaFSAE2xalboWICkT5b5MBFQcA2WI7/fb9j01MUg4cjEwi8aanxkfnFJ+tKCaFk
	acFmEwuXAqgmV3tvNcsDoQ1O5sJv4XZMgIablOU26Tm7TIKy7qShPeVIyRaTxQ+kqlumnwqFWdV3B
	Ll5XXkSxR9e4nKaWPXHg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgsGl-00031J-0V; Fri, 28 Jun 2019 14:54:31 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgsGY-00030W-Ly
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 14:54:20 +0000
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com
 [10.5.11.15])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 5AEB6C057F88;
 Fri, 28 Jun 2019 14:54:15 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id 396295D704;
 Fri, 28 Jun 2019 14:54:06 +0000 (UTC)
Date: Fri, 28 Jun 2019 16:54:06 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v3 0/4] Perf uncore PMU event alias support for Hisi
 hip08 ARM64 platform
Message-ID: <20190628145406.GA22863@krava>
References: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1561732552-143038-1-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.32]); Fri, 28 Jun 2019 14:54:17 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_075418_737020_32E3F543 
X-CRM114-Status: GOOD (  17.36  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [209.132.183.28 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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

On Fri, Jun 28, 2019 at 10:35:48PM +0800, John Garry wrote:
> This patchset adds support for uncore PMU event aliasing for HiSilicon
> hip08 ARM64 platform.
> 
> We can now get proper event description for uncore events for the
> perf tool.
> 
> For HHA, DDRC, and L3C JSONs, we don't have all the event info yet, so
> I will seek it out to update the JSONs later.
> 
> Changes to v3:
> - Omit "perf pmu: Fix uncore PMU alias list for ARM64", as it has already
>   been picked up
> - Add comment for pmu_uncore_alias_match()

Acked-by: Jiri Olsa <jolsa@kernel.org>

thanks,
jirka

> 
> Changes to v2:
> - Use strtok_r() in pmu_uncore_alias_match()
> - from "sccl" from uncore aliases
> 
> John Garry (4):
>   perf pmu: Support more complex PMU event aliasing
>   perf jevents: Add support for Hisi hip08 DDRC PMU aliasing
>   perf jevents: Add support for Hisi hip08 HHA PMU aliasing
>   perf jevents: Add support for Hisi hip08 L3C PMU aliasing
> 
>  .../arm64/hisilicon/hip08/uncore-ddrc.json    | 44 ++++++++++++++++
>  .../arm64/hisilicon/hip08/uncore-hha.json     | 51 +++++++++++++++++++
>  .../arm64/hisilicon/hip08/uncore-l3c.json     | 37 ++++++++++++++
>  tools/perf/pmu-events/jevents.c               |  3 ++
>  tools/perf/util/pmu.c                         | 46 +++++++++++++++--
>  5 files changed, 176 insertions(+), 5 deletions(-)
>  create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-ddrc.json
>  create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-hha.json
>  create mode 100644 tools/perf/pmu-events/arch/arm64/hisilicon/hip08/uncore-l3c.json
> 
> -- 
> 2.17.1
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
