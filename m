Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E61A1B9990
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 27 Apr 2020 10:16:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h1/0/dxaMB5Doq0HzeXrnzV1n2f/miV155WZq17R0+g=; b=ZCbicOKZxrpLXm
	xmtPsBq+Hw3jGSyO7P2Oj9kwilDTsHz9Rt2DMeo3EFQUWnDQ2rqaZaUBDhBD9CFNGEmAQ0xMUBuYz
	9lSjcOCzthVEm62CXKW1/WE28iD9Qcb4sigLugQ3L+e02SwMV6soqiqQcVP+u0YoNHAP2O5lCJVbQ
	7zHkdo6GAULA58kFxhB1GigWs+8v2R1zjLvlEhW/mo/k+pFEUqq4MJlf/Wnp5rER2XokVfSlRBoHO
	MGC+7gZV6dHiIiBbtnCliDCUgIRgL3hAOYNsoG5P4JLPJqHA5dBXGJwK1ZzWEWLxnWZEIXwM8zxqN
	zPUBg8ks/KwUM9INa0QQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jSywZ-00023Q-I1; Mon, 27 Apr 2020 08:16:47 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jSywQ-00022Y-1j
 for linux-arm-kernel@lists.infradead.org; Mon, 27 Apr 2020 08:16:39 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587975395;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=CrUCqEccXog6ceJqozxwcXd9+SC0GQqpdsx1sfvo64g=;
 b=VlofaGkRZwzAhc78aQl9GTdxG2oGzglOD8DDPnrYTivdx2XhG9jjoghm/uxEKNG5xRMG6p
 htokC4fCVcisgsId0zsCi7/qJS8Ikg1XJpFUtogYmNeqyy3/VH0F563onmvvb4VSQ36jKK
 Rk+SOYVm0sf0x2THKfzJw3PxggzSJbg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-163-96OCTOndNQy3OiO-jA86qg-1; Mon, 27 Apr 2020 04:16:32 -0400
X-MC-Unique: 96OCTOndNQy3OiO-jA86qg-1
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 647908015CE;
 Mon, 27 Apr 2020 08:16:30 +0000 (UTC)
Received: from krava (unknown [10.40.195.65])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id E219D5D9DA;
 Mon, 27 Apr 2020 08:16:26 +0000 (UTC)
Date: Mon, 27 Apr 2020 10:16:24 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [RFC PATCH v2 01/13] perf parse-events: Fix comparison of evsel
 and leader pmu name
Message-ID: <20200427081624.GA1431639@krava>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587120084-18990-2-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200427_011638_166376_FD5C1904 
X-CRM114-Status: GOOD (  17.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [207.211.31.120 listed in wl.mailspike.net]
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

On Fri, Apr 17, 2020 at 06:41:12PM +0800, John Garry wrote:
> Since we now strdup() the pmu name for the event selector, use strcmp()
> instead of pointer equality for comparison.
> 
> Fixes: d4953f7ef1a2 ("perf parse-events: Fix 3 use after frees found with clang ASANutil/parse-events.c")
> Signed-off-by: John Garry <john.garry@huawei.com>

I don't ee this change in your branch:
  private-topic-perf-5.6-sys-pmu-events-v2-upstream

do you have some updated tree?

thanks,
jirka

> ---
> 
> I am not 100% sure that this is the right fix....
> 
>  tools/perf/util/parse-events.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/tools/perf/util/parse-events.c b/tools/perf/util/parse-events.c
> index 10107747b361..90ddade1ba23 100644
> --- a/tools/perf/util/parse-events.c
> +++ b/tools/perf/util/parse-events.c
> @@ -1629,7 +1629,7 @@ parse_events__set_leader_for_uncore_aliase(char *name, struct list_head *list,
>  		 * event. That can be used to distinguish the leader from
>  		 * other members, even they have the same event name.
>  		 */
> -		if ((leader != evsel) && (leader->pmu_name == evsel->pmu_name)) {
> +		if ((leader != evsel) && !strcmp(leader->pmu_name, evsel->pmu_name)) {
>  			is_leader = false;
>  			continue;
>  		}
> -- 
> 2.16.4
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
