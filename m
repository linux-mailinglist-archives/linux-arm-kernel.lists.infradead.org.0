Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 386CE1B436D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Apr 2020 13:42:35 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=BqbbIs5KxabR+6zdRjAld+5bs/6iB6XcH7irKW2ARj0=; b=h+lJkHR3ZMDq68
	btvhhV4RPciUPYXKKcvv3ou7C+B/O+pdHL7kbCfLvyAkt+IOH+3S+DSIFk1MFzs3dPHR1ol8JYUeJ
	efUSuI1tB76/4LginK44INR92cmidPKYVyl34kR6lntugwRqokExP6nAltlPwE9NFECHD/XAPw6GR
	HnOAZf9zjwHRZ4Lb+VKXYOGOvYCmI8ImtFP7CGlTkqr7efQUeiMYdLOXVZPaOqWpifeWmJ3Bpv4Jr
	B39NJ/4V2oRyRhOVc6XR06XEmsbQakUwCKWlQ7o5ehkJSSgybM1dYkLTYFd1kqC1FMzw4s3OS2EAm
	Si8CBTdpbaHnC+mmi94w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jRDlt-00067g-95; Wed, 22 Apr 2020 11:42:29 +0000
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDll-00067H-Lt
 for linux-arm-kernel@bombadil.infradead.org; Wed, 22 Apr 2020 11:42:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=merlin.20170209; h=In-Reply-To:Content-Type:MIME-Version:
 References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
 Content-Transfer-Encoding:Content-ID:Content-Description;
 bh=an4GqdMcPxXVQzFDku1airXJ7n+SdoQGwHtPe0RDm3k=; b=yBqFuMKnf19dATKhI0LHQhLv1O
 3z6lU1QUw6JoF5JKMqVEW9wp4wz9Hq3mbAHC2Rv3fjPpPWKIhFZczKdCodLAR/8ybTTTnOE7dvIFv
 7xtCALHYJ8I9R0MKBSQOyF9lj8C4dfwopoemOm35REHYl7ic/ZZKL5TDVvydETYp0/NKkPeD/dqG6
 YZBY4Y5OvSY9rTEnhFr19XxDmnxGAY/DRAhKXPojZwyXPxMg6H9Gp254Wi1c35tBqDmfI9IkAidBq
 dXXvopJ65t+UAqZifVo2xdtlPjzpAUqifMYZAek/1WHEKwQHxawQdVbQB58+f65ha9V0i3bDSrHFe
 ltEfXCSw==;
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jRDlj-00077e-3D
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Apr 2020 11:42:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587555696;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=an4GqdMcPxXVQzFDku1airXJ7n+SdoQGwHtPe0RDm3k=;
 b=hiKywaJKoQ00JimyUuyTYS3bRrslx+WNUDKk5CM4mLSIJYRzfEHw0ZmIHuO2yAJOZ5xUXp
 PcjJW8zibPs3M8uPcdZU93ZlmVHiiM0Q5XOD7BXmGHXwSE8RxX5/7X8Z63go1OyVV/woOw
 tNI1MjaE6C+fdb+enY6ZBBRFFBLlvDU=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587555715;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=an4GqdMcPxXVQzFDku1airXJ7n+SdoQGwHtPe0RDm3k=;
 b=O3+O3ehlA4auSvOKCs2BGnpYAFAVLPmfWsbR50ioJVdL/+pihRGqZxul1Toi2YDMDQqh+9
 kVYZ/Iq5PcJpvNNSnUx1DZPhfTaI3kRIOjPP8rVp/c8O5hiA4+hUSKXfzNlPKSR77XJsAu
 Z7BZrfs9e2O8/+ahkpJEy8kIsZbUJSk=
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1587555736;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=an4GqdMcPxXVQzFDku1airXJ7n+SdoQGwHtPe0RDm3k=;
 b=aQsDPW6N8vNR4+YNLW2E+dN3rYFEydpZG51Isth8rplolFUpLZITqqgAm8XMKkhcwZA2mg
 5VNRW8RQpr2ls331Bxvm6Qva+vOSIkDoRx3o5eG4dPHKxfCVdbbM4gbqFKAI2vqPNIu9ML
 j0W4NukkG/EOqDWxLEX7pDzDw2UqYUU=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-351-ISRUNEiqPdS2sQXWa87y5A-1; Wed, 22 Apr 2020 07:41:32 -0400
X-MC-Unique: ISRUNEiqPdS2sQXWa87y5A-1
Received: from smtp.corp.redhat.com (int-mx08.intmail.prod.int.phx2.redhat.com
 [10.5.11.23])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id D8AE0107ACCD;
 Wed, 22 Apr 2020 11:41:29 +0000 (UTC)
Received: from krava (unknown [10.40.196.43])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 6BBC528988;
 Wed, 22 Apr 2020 11:41:25 +0000 (UTC)
Date: Wed, 22 Apr 2020 13:41:22 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [RFC PATCH v2 07/13] perf pmu: Add pmu_id()
Message-ID: <20200422114122.GG962614@krava>
References: <1587120084-18990-1-git-send-email-john.garry@huawei.com>
 <1587120084-18990-8-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1587120084-18990-8-git-send-email-john.garry@huawei.com>
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.23
X-Spam-Note: CRM114 invocation failed
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on merlin.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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

On Fri, Apr 17, 2020 at 06:41:18PM +0800, John Garry wrote:
> Add a function to read the PMU id sysfs entry. We only do it for uncore
> PMUs where this would be relevant.
> 
> Signed-off-by: John Garry <john.garry@huawei.com>
> ---
>  tools/perf/util/pmu.c | 36 ++++++++++++++++++++++++++++++++++++
>  tools/perf/util/pmu.h |  1 +
>  2 files changed, 37 insertions(+)
> 
> diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> index ef6a63f3d386..6a67c6a28d08 100644
> --- a/tools/perf/util/pmu.c
> +++ b/tools/perf/util/pmu.c
> @@ -594,6 +594,7 @@ static struct perf_cpu_map *__pmu_cpumask(const char *path)
>   * Uncore PMUs have a "cpumask" file under sysfs. CPU PMUs (e.g. on arm/arm64)
>   * may have a "cpus" file.
>   */
> +#define CPUS_TEMPLATE_ID	"%s/bus/event_source/devices/%s/identifier"
>  #define CPUS_TEMPLATE_UNCORE	"%s/bus/event_source/devices/%s/cpumask"
>  #define CPUS_TEMPLATE_CPU	"%s/bus/event_source/devices/%s/cpus"
>  
> @@ -632,6 +633,39 @@ static bool pmu_is_uncore(const char *name)
>  	return file_available(path);
>  }
>  
> +static char *pmu_id(const char *name)
> +{
> +	char path[PATH_MAX], *id;
> +	const char *sysfs;
> +	FILE *file;
> +	int n;
> +
> +	sysfs = sysfs__mountpoint();
> +	snprintf(path, PATH_MAX, CPUS_TEMPLATE_ID, sysfs, name);
> +
> +	id = malloc(PATH_MAX);
> +	if (!id)
> +		return NULL;
> +
> +	file = fopen(path, "r");
> +	if (!file) {
> +		free(id);
> +		return NULL;
> +	}
> +
> +	n = fscanf(file, "%s", id);
> +
> +	fclose(file);
> +
> +	if (!n) {
> +		free(id);
> +		return NULL;
> +	}
> +
> +	return id;
> +}

I still need to go through this patchset in more detail,
but just quick note, that we have sysfs__read_str that you
could use in here

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
