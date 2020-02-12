Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F7B215A8CD
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 13:08:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b5tKpyp6qiCSU8Nx4ItOLlyiz86SL4dn6s3iLkoWkz0=; b=Zc1f8CFARmjneP
	uhXPfrJxhgLMsyHq6JahMigkBuT/o9v/JuH71ZxGDazy/wOTBmgA3jHgCS7OsaibbsENiB2WkmR0S
	YW9JFZIt8UjiGXdhgp5JUUAy7gTfIU3bwzF534XGGtfnWafpzRiEXFmrbep5KgEkm9Xo5eKB32xVm
	9T3Tw0I4HRjUjRiYWRf35yJ4XnReoHihnjh0+5RlRE8aJBjO7ciSLNPh2BxYcTY+3Wu1x5+5VgopB
	JWmh4Gj9d+tOTJ98OQzJCERP7YfoJXyx9+YvsWNN6Y4SauOVvL8EAa6IFR6e+aUBbOSmbhjU4Tt7d
	t7diXE6PEhpCCyT2zCzg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1qoq-0004Qa-66; Wed, 12 Feb 2020 12:08:40 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1qof-0004Pe-Bh
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 12:08:30 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1581509307;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 in-reply-to:in-reply-to:references:references;
 bh=iiXF0xWNfX6dVgl+5PSmhw17c59uxc/dEus9SZrlNDE=;
 b=EDiOt7hwnbRolbMMxGlgWYG8vKRM19akVKGiDDd9d/0eL2B3zWtgGeCoS7YWSarD6vNuQO
 hEl5FsOpkW7nv/LBbqUK2dg4hoXg3IDSvnvxUD7RT+0EYYRS/Lh/QauDVg5dfwLKeeT2wj
 18YJIgpEALxr8b3YGdhGo/aoZADGv9s=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-415-RNYtS0cyPv6uodlApZJl3Q-1; Wed, 12 Feb 2020 07:08:23 -0500
X-MC-Unique: RNYtS0cyPv6uodlApZJl3Q-1
Received: from smtp.corp.redhat.com (int-mx06.intmail.prod.int.phx2.redhat.com
 [10.5.11.16])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 960BE8017DF;
 Wed, 12 Feb 2020 12:08:21 +0000 (UTC)
Received: from krava (ovpn-204-247.brq.redhat.com [10.40.204.247])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 054135C1B0;
 Wed, 12 Feb 2020 12:08:17 +0000 (UTC)
Date: Wed, 12 Feb 2020 13:08:15 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH RFC 4/7] perf pmu: Rename uncore symbols to include
 system PMUs
Message-ID: <20200212120815.GI183981@krava>
References: <1579876505-113251-1-git-send-email-john.garry@huawei.com>
 <1579876505-113251-5-git-send-email-john.garry@huawei.com>
 <20200210120715.GC1907700@krava>
 <fac99c40-dace-3e2e-c8f4-b2afed8b7c61@huawei.com>
 <20200211144308.GC93194@krava>
 <52e18a50-1e62-f2fa-7639-f96268c5d243@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <52e18a50-1e62-f2fa-7639-f96268c5d243@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.16
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_040829_478201_0E963D95 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: mark.rutland@arm.com, ak@linux.intel.com, suzuki.poulose@arm.com,
 peterz@infradead.org, robin.murphy@arm.com, linuxarm@huawei.com,
 acme@kernel.org, linux-kernel@vger.kernel.org, zhangshaokun@hisilicon.com,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, james.clark@arm.com,
 namhyung@kernel.org, will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 11, 2020 at 03:36:39PM +0000, John Garry wrote:
> On 11/02/2020 14:43, Jiri Olsa wrote:
> > > root@(none)$ pwd
> > > /sys/bus/event_source/devices/smmuv3_pmcg_100020
> > > root@(none)$ ls -l
> > > total 0
> > > -r--r--r--    1 root     root          4096 Feb 10 14:50 cpumask
> > > drwxr-xr-x    2 root     root             0 Feb 10 14:50 events
> > > drwxr-xr-x    2 root     root             0 Feb 10 14:50 format
> > > -rw-r--r--    1 root     root          4096 Feb 10 14:50
> > > perf_event_mux_interval_ms
> > > drwxr-xr-x    2 root     root             0 Feb 10 14:50 power
> > > lrwxrwxrwx    1 root     root             0 Feb 10 14:50 subsystem ->
> > > ../../bus/event_source
> > > -r--r--r--    1 root     root          4096 Feb 10 14:50 type
> > > -rw-r--r--    1 root     root          4096 Feb 10 14:50 uevent
> > > 
> > > 
> > > Other PMU drivers which I have checked in drivers/perf also have the same.
> > > 
> > > Indeed I see no way to differentiate whether a PMU is an uncore or system.
> > > So that is why I change the name to cover both. Maybe there is a better name
> > > than the verbose pmu_is_uncore_or_sys().
> > > 
> > > > I don't see the connection here with the sysid or '_sys' checking,
> > > > that's just telling which ID to use when looking for an alias, no?
> > > So the connection is that in perf_pmu__find_map(), for a given PMU, the
> > > matching is now extended from only core or uncore PMUs to also these system
> > > PMUs. And I use the sysid to find an aliasing table for any system PMUs
> > > present.
> 
> Hi Jirka,
> 
> > I see.. can't we just check sysid for uncore PMUs?
> 
> x86 will still alias PMUs (uncore or CPU) based on an alias table matched to
> the cpuid, as it is today. x86 has the benefit of fixed uncore PMUs for a
> given cpuid.

ok, I did mean 'on addition' to the cpuid checks

> 
> For other archs whose uncore or system PMUs are not fixed for a given CPU -
> like arm - we will support matching uncore and system PMUs on cpuid or
> sysid.
> 
> Uncore PMUs are a grey area for arm, as they may or may not be tied to a
> specific cpuid, so we will need to support both matching methods.
> 
> because
> > that's what the code is doing, right?
> 
> Not exactly.
> 
> The code will match on an alias table matched to the cpuid and also an alias
> table matched to the sysid (if perf could actually get a sysid and there is
> a table matching that sysid).
> 
> I hope that this makes sense....

right,  please make sure this kind of explanation is in changelog
or better in the code comment 

thanks,
jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
