Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1DB15740E
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 10 Feb 2020 13:08:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=J7npMHqdSxk2hW8BDHLpUueLGQJdR+rI2iOVNiLZkPk=; b=qehsJ4+k5P2IT8
	wVv6p2YhvnrC8IL7MEkBKjzdHSLyhuZS4qdYLQu6JrCeKHYRKOkQiWQ71sC6lhb9KQQJa9pWQo7iW
	Z4kW07qgFyX/6GWrNbl70MG2i0J2LvbO8QAKGm+Uxe2K8+lkVDsKbTARNt+DSNhfEFF/FXNh5G70T
	NTy5PPqDkE0bA30+gnluCt3Tn7diyKdDrwEM0z2iGWjlLzjDg38TB3PQixTkFmmIYaUuDF3ixhTiT
	cn4VUAd1iMtmSUFTiEF+FNkdaYKahSIvlnSyAIW+7CcUNDEm9Kqy0qxZno5hlYW101xDF21409Ki9
	vYPAcbbYJ0GhdQ8eBwvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j17rV-0008P2-CD; Mon, 10 Feb 2020 12:08:25 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j17r8-0008CY-5g
 for linux-arm-kernel@lists.infradead.org; Mon, 10 Feb 2020 12:08:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581336480;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=K5X/P5cTna//QaVwWn9YAqQiAEG6LJsWV3uuBWQnAic=;
 b=LeYPzKdCSpxzAqy7bIlQDKJ0855+GhPn+n25y7URypwp5zPwmLQiTX6wJfar4udtVpX37i
 tZmoHfsJMy7yK2jrP8sk6MX6f8ZpSyIoVvvXnwhFZIg2nXjluwcn0rGxHWdOiiXDM+T7hp
 SfB6jgcLRp7GZGWjU/RUXHzYu56pgE0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-181-kNyM94vDMtW_ufBV_bQLrQ-1; Mon, 10 Feb 2020 07:07:57 -0500
X-MC-Unique: kNyM94vDMtW_ufBV_bQLrQ-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D6E55107ACCC;
 Mon, 10 Feb 2020 12:07:54 +0000 (UTC)
Received: from krava (unknown [10.43.17.9])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id EFFA95C1D4;
 Mon, 10 Feb 2020 12:07:51 +0000 (UTC)
Date: Mon, 10 Feb 2020 13:07:49 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 3/7] perf jevents: Add support for a system events PMU
Message-ID: <20200210120749.GF1907700@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-4-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579876505-113251-4-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200210_040802_309367_81C1581E 
X-CRM114-Status: GOOD (  15.27  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
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

On Fri, Jan 24, 2020 at 10:35:01PM +0800, John Garry wrote:

SNIP

>  	- Set of 'PMU events tables' for all known CPUs in the architecture,
> @@ -83,11 +93,11 @@ NOTES:
>  	2. The 'pmu-events.h' has an extern declaration for the mapping table
>  	   and the generated 'pmu-events.c' defines this table.
>  
> -	3. _All_ known CPU tables for architecture are included in the perf
> -	   binary.
> +	3. _All_ known CPU and system tables for architecture are included in
> +	   the perf binary.
>  
> -At run time, perf determines the actual CPU it is running on, finds the
> -matching events table and builds aliases for those events. This allows
> +At run time, perf determines the actual CPU or system it is running on, finds
> +the matching events table and builds aliases for those events. This allows
>  users to specify events by their name:
>  
>  	$ perf stat -e pm_1plus_ppc_cmpl sleep 1
> @@ -150,3 +160,18 @@ where:
>  
>  	i.e the three CPU models use the JSON files (i.e PMU events) listed
>  	in the directory 'tools/perf/pmu-events/arch/x86/silvermont'.
> +
> +The mapfile_sys.csv format is slightly different, in that it contains a SYSID
> +instead of the CPUID:
> +
> +	Header line
> +	SYSID,Version,Dir/path/name,Type

can't we just add prefix to SYSID types? like:

	SYSID-HIP08,v1,hisilicon/hip08/sys,sys
	0x00000000480fd010,v1,hisilicon/hip08/cpu,core
	0x00000000500f0000,v1,ampere/emag,core

because the rest of the line is the same, right?

seems to me that having one mapfile type would be less confusing

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
