Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB1E95872B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 27 Jun 2019 18:34:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qQUWV5QIMw2WqrdyiHqluNlp1FPnkltK0LL4yBCElsM=; b=hKlkLkVMUI+GqB
	W+F8DTG81ubGqaeZVT6m6MYwwSpD0aBGXdGNhluvg8NJwowUnVN4IXURZ4gBSpx03bQu/l/bm2cyI
	K4vCqM5pxk4KTR/tCzaGQAeOgUEMEr/cEzZyPBGVeP5fErSFI8aF5AFgg9lLAN4Lg0KivHbksY8ED
	o3AuI9iog+vElT6Bl7zE/xL4F7+q28z2X5/+d53JuHACNgCBXgQxkQnrlXKabviAnodiC7hHtT/VW
	9VyPmsrJryuDOChydim+pEOrRTVphLaDgJn2lPWqj8EE2iSGpZS1BwYH89PTe4+0Bfos05iOYUAgw
	UGasL/5VbZiQ0YWvy4EQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgXLu-0007pM-M1; Thu, 27 Jun 2019 16:34:26 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgXLg-0007oW-RF
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Jun 2019 16:34:14 +0000
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com
 [10.5.11.12])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id 6871C3082B4D;
 Thu, 27 Jun 2019 16:33:59 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id B8DB060BE0;
 Thu, 27 Jun 2019 16:33:52 +0000 (UTC)
Date: Thu, 27 Jun 2019 18:33:52 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190627163352.GE24279@krava>
References: <1560521283-73314-1-git-send-email-john.garry@huawei.com>
 <1560521283-73314-3-git-send-email-john.garry@huawei.com>
 <20190616095844.GC2500@krava>
 <a27e65b4-b487-9206-6dd0-6f9dcec0f1f5@huawei.com>
 <20190620182519.GA15239@krava>
 <6257fc79-b737-e6ca-2fce-f71afa36e9aa@huawei.com>
 <cafed7d6-13c7-3a92-a826-024698bc6cc8@huawei.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <cafed7d6-13c7-3a92-a826-024698bc6cc8@huawei.com>
User-Agent: Mutt/1.12.0 (2019-05-25)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.45]); Thu, 27 Jun 2019 16:34:06 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_093412_906275_9FAADBE3 
X-CRM114-Status: GOOD (  18.37  )
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
Cc: mark.rutland@arm.com, brueckner@linux.ibm.com, mathieu.poirier@linaro.org,
 peterz@infradead.org, tmricht@linux.ibm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, acme@kernel.org, linuxarm@huawei.com,
 zhangshaokun@hisilicon.com, alexander.shishkin@linux.intel.com,
 mingo@redhat.com, namhyung@kernel.org, ben@decadent.org.uk,
 linux-arm-kernel@lists.infradead.org, kan.liang@linux.intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 27, 2019 at 05:27:32PM +0100, John Garry wrote:

SNIP

> > loop 2. tok=ddrc name=ddrc0
> > loop 3. tok=NULL -> breakout and return true
> > 
> > A couple of notes:
> > a. loop 1. could be omitted, but the code becomes a bit more complicated
> > 2. I don't have to advance name. But then we would match something like
> > hisi_ddrc0_sccl1. Maybe this is ok.
> > 
> > > 
> > > and name is still pmu with no ',' ...
> > > please make this or
> > > proper version that in some comment
> > > 
> > 
> > I didn't really get your meaning here. Please check my replies and see
> > if you have further doubt or concern.
> > 
> 
> Hi Jirka,
> 
> I was just wondering if you have any further comments or questions here?
> 
> Much appreciated,

sorry, forgot about this one.. will check soon

jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
