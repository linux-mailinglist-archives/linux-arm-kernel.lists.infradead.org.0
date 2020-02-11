Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A95C15921C
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Feb 2020 15:43:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iew3PYkfI05p174PQ+EPZ482X+a+f/XVASAUCRXiY2U=; b=Be+mJ325kQBSri
	phO0aeTen5vlvvbtYjbQIjK1sdDUv4IXft2aRUInbIL33KaqsxQn9ogqmbHJHeBYiCjCBv/Xgoig4
	GwczJL/k6J/UjMvZ39Vc72bJGIDAb2JeGB1gIz+aDVMuxkI4mqEAYMVdlQf5Orx5vB8O37gW/zM/s
	0TWvZR2nxP6vYmO1eaWFi4x9LglZQH2KvLIlDTJn8QbkXLqqhPp/tcWNGgpcKtzvSamU4q2IGIs5m
	DTVTqPqE0a6AANg3Lrl8X59PVbuy9/UdAE2SlLmM1P03uwua1F+Tlny+bk4rbgN8aDOoymqeIvE4+
	orzeinQWe7zHI9rylcCA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1Wl9-0001Pz-6b; Tue, 11 Feb 2020 14:43:31 +0000
Received: from us-smtp-2.mimecast.com ([207.211.31.81]
 helo=us-smtp-delivery-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1Wl2-0001PK-Ct
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Feb 2020 14:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581432202;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=4Uo6Yj+q6VJYat5WHAhzWGNRtS9DME8uSiVN5weyl/Y=;
 b=IggwhQyD8pr8kx4c86lwdrvL7BKCenqmULEr8Ew3zHN9eVflyAuUeCpPL+1EQuuDb60+aj
 2Vxgn2KW4sxim7CIC89f/UxHhIQ7hKODMsJ+D/lZzzdpq889O5TFzm1puoQksK/KZBUUhn
 X9YNMk99K/vxNkh+NKxNdefsNWYJb3k=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-397-A1EvZX6yOLSeHIdoYDVguw-1; Tue, 11 Feb 2020 09:43:18 -0500
X-MC-Unique: A1EvZX6yOLSeHIdoYDVguw-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com
 [10.5.11.11])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id CA579800EB2;
 Tue, 11 Feb 2020 14:43:15 +0000 (UTC)
Received: from krava (ovpn-206-93.brq.redhat.com [10.40.206.93])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 345426055B;
 Tue, 11 Feb 2020 14:43:11 +0000 (UTC)
Date: Tue, 11 Feb 2020 15:43:08 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include
 system PMUs
Message-ID: <20200211144308.GC93194@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-5-git-send-email-john.garry@huawei.com>
 <20200210120715.GC1907700@krava>
 <fac99c40-dace-3e2e-c8f4-b2afed8b7c61@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <fac99c40-dace-3e2e-c8f4-b2afed8b7c61@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200211_064324_516055_790D6499 
X-CRM114-Status: GOOD (  20.85  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.81 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

On Mon, Feb 10, 2020 at 03:44:48PM +0000, John Garry wrote:
> On 10/02/2020 12:07, Jiri Olsa wrote:
> > On Fri, Jan 24, 2020 at 10:35:02PM +0800, John Garry wrote:
> > 
> > SNIP
> > 
> > >   		/* Only split the uncore group which members use alias */
> > > -		if (!evsel->use_uncore_alias)
> > > +		if (!evsel->use_uncore_or_system_alias)
> > >   			goto out;
> > >   		/* The events must be from the same uncore block */
> > > diff --git a/tools/perf/util/pmu.c b/tools/perf/util/pmu.c
> > > index 8b99fd312aae..569aba4cec89 100644
> > > --- a/tools/perf/util/pmu.c
> > > +++ b/tools/perf/util/pmu.c
> > > @@ -623,7 +623,7 @@ static struct perf_cpu_map *pmu_cpumask(const char *name)
> > >   	return NULL;
> > >   }
> > > -static bool pmu_is_uncore(const char *name)
> > > +static bool pmu_is_uncore_or_sys(const char *name)
> > 
> 
> Hi jirka,
> 
> > so we detect uncore PMU by checking for cpumask file
> > 
> 
> For PMUs which could be considered "system" PMUs, they also have a cpumask,
> like the PMU I use as motivation for this series:
> 
> root@(none)$ pwd
> /sys/bus/event_source/devices/smmuv3_pmcg_100020
> root@(none)$ ls -l
> total 0
> -r--r--r--    1 root     root          4096 Feb 10 14:50 cpumask
> drwxr-xr-x    2 root     root             0 Feb 10 14:50 events
> drwxr-xr-x    2 root     root             0 Feb 10 14:50 format
> -rw-r--r--    1 root     root          4096 Feb 10 14:50
> perf_event_mux_interval_ms
> drwxr-xr-x    2 root     root             0 Feb 10 14:50 power
> lrwxrwxrwx    1 root     root             0 Feb 10 14:50 subsystem ->
> ../../bus/event_source
> -r--r--r--    1 root     root          4096 Feb 10 14:50 type
> -rw-r--r--    1 root     root          4096 Feb 10 14:50 uevent
> 
> 
> Other PMU drivers which I have checked in drivers/perf also have the same.
> 
> Indeed I see no way to differentiate whether a PMU is an uncore or system.
> So that is why I change the name to cover both. Maybe there is a better name
> than the verbose pmu_is_uncore_or_sys().
> 
> > I don't see the connection here with the sysid or '_sys' checking,
> > that's just telling which ID to use when looking for an alias, no?
> 
> So the connection is that in perf_pmu__find_map(), for a given PMU, the
> matching is now extended from only core or uncore PMUs to also these system
> PMUs. And I use the sysid to find an aliasing table for any system PMUs
> present.

I see.. can't we just check sysid for uncore PMUs? because
that's what the code is doing, right? having pmu_is_uncore_or_sys
makes me think there's some sysid-type PMU

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
