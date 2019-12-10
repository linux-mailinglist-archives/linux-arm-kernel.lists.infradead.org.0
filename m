Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7038118E93
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Dec 2019 18:09:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PbvhMofhPm3MPMNFDi10EdPx3j3MRJUaJAyrVUd+6DQ=; b=uhDeFhQ0YtaLqx
	L/x27bwUX0M9Rnl8Cy3310nFes3nNsI5ntgAX+U6j36Bui8Px7YHOYGluLk8SJ6/sLlIj8ft3sYcB
	v8m2WMqxnvx5OZcepD5Fn7hSugS5o848Iw4tqyM1WiiznXVJbDxO2zwS+Q0IktxgLVR5whsWVAEPO
	cVm3JkSZrAl0MxFeMyQnpoBlcGgQTdJRnhp6aWIcJP5LyAZWC47imJNoukTtE1FM6pj6aovXYVcZT
	Fuw6KIg0r1QfGEdQkgusVlbu0jbWzWYEsuGBK/B+TnALyFQdZ0Z1tGZLx45nclNysuB5saKNPFOim
	+kcePUBhCLuWiwdYko8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iej0Z-0007cG-69; Tue, 10 Dec 2019 17:09:11 +0000
Received: from us-smtp-delivery-1.mimecast.com ([207.211.31.120]
 helo=us-smtp-1.mimecast.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iej0I-0007RG-26
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Dec 2019 17:08:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
 s=mimecast20190719; t=1575997731;
 h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
 content-transfer-encoding:content-transfer-encoding:
 in-reply-to:in-reply-to:references:references;
 bh=x1LxWoUCCaDfDj41e4N7lik4ufNetyUaON2Dcr5RbTo=;
 b=IKGDEm/ZXsyd1u38dHyNzpjYHb/gYM6GW0su5DL2zQ1fn2V9B0vzyhC+E8lV5k3DbPXbVh
 6JEXth8BPhxIKKvyRUiK1nmBX5mgOV5f8XHu2GfeKA8kqKtwzTNUxyl30WlT5/82YQqhZ/
 wNfwotJamSkbx+9WRzcPfmUc45/4CW8=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-69--TvSP2o4Md2hGFjEiTm_iA-1; Tue, 10 Dec 2019 12:08:47 -0500
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 8E96D800EB8;
 Tue, 10 Dec 2019 17:08:45 +0000 (UTC)
Received: from krava (unknown [10.43.17.106])
 by smtp.corp.redhat.com (Postfix) with ESMTPS id 2CE9060BE0;
 Tue, 10 Dec 2019 17:08:43 +0000 (UTC)
Date: Tue, 10 Dec 2019 18:08:41 +0100
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: perf top for arm64?
Message-ID: <20191210170841.GA23357@krava>
References: <1573045254-39833-1-git-send-email-john.garry@huawei.com>
 <20191106140036.GA6259@kernel.org>
 <418023e7-a50d-cb6f-989f-2e6d114ce5d8@huawei.com>
 <20191210163655.GG14123@krava>
 <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
MIME-Version: 1.0
In-Reply-To: <952dc484-2739-ee65-f41c-f0198850ab10@huawei.com>
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-MC-Unique: -TvSP2o4Md2hGFjEiTm_iA-1
X-Mimecast-Spam-Score: 0
Content-Disposition: inline
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191210_090854_293413_B93BCE36 
X-CRM114-Status: GOOD (  13.47  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [207.211.31.120 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: mark.rutland@arm.com, peterz@infradead.org, Linuxarm <linuxarm@huawei.com>,
 Arnaldo Carvalho de Melo <arnaldo.melo@gmail.com>,
 linux-kernel@vger.kernel.org,
 "linux-perf-users@vger.kernel.org" <linux-perf-users@vger.kernel.org>,
 alexander.shishkin@linux.intel.com, mingo@redhat.com, namhyung@kernel.org,
 will@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Dec 10, 2019 at 04:52:52PM +0000, John Garry wrote:
> On 10/12/2019 16:36, Jiri Olsa wrote:
> > On Tue, Dec 10, 2019 at 04:13:49PM +0000, John Garry wrote:
> > > Hi all,
> > > 
> > > I find to my surprise that "perf top" does not work for arm64:
> > > 
> > > root@ubuntu:/home/john/linux# tools/perf/perf top
> > > Couldn't read the cpuid for this machine: No such file or directory
> > 
> 
> Hi Jirka,
> 
> > there was recent change that check on cpuid and quits:
> >    608127f73779 perf top: Initialize perf_env->cpuid, needed by the per arch annotation init routine
> > 
> 
> ok, this is new code. I obviously didn't check the git history...
> 
> But, apart from this, there are many other places where get_cpuid() is
> called. I wonder what else we're missing out on, and whether we should still
> add it.

right, I was just wondering how come vendor events are working for you,
but realized we have get_cpuid_str being called in there ;-)

I think we should add it as you have it prepared already,
could you post it with bigger changelog that would explain
where it's being used for arm?

jirka


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
