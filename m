Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DBFD59897
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 12:41:34 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jjPmOQjFAq+48L3YxBiGUxWNgA5zuB5qBsXg/RlmK54=; b=TveKsJC3LjqhRP
	DYOGOfmVh80dVvw2Y9tBiLAmIhoV12TO80FD1Q2FK/QMyvZegL8jO1M5NtOF3qc0IxU9TnAf1ONx1
	AYNzohVwpqtrYxAXgBb13fqXsySbGE6HI4EfmROqp1IkQNi5nfM8aDRXxh9k9Fy9FdyREnwvxUiss
	QhyJm/68Ntg9HFdBB4Fxvom08E0Wfc6BFVSL9QjTNNG6YVYr9JA+4XqXDAHFbfQBMXuD39OMTABtl
	hxxEmZ5PDrZYWtvOfFI7cv3sV00fyoKXMOM6bLFo4ZJlZ2/l9iktHYKH+y6x6xAzYHv2+wR67Hqt0
	QPhLHLK0rmlQHcgwv/kg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgoJu-0002I8-7b; Fri, 28 Jun 2019 10:41:30 +0000
Received: from mx1.redhat.com ([209.132.183.28])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgoJK-0002EC-5D
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 10:40:55 +0000
Received: from smtp.corp.redhat.com (int-mx04.intmail.prod.int.phx2.redhat.com
 [10.5.11.14])
 (using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
 (No client certificate requested)
 by mx1.redhat.com (Postfix) with ESMTPS id F2E705AFE9;
 Fri, 28 Jun 2019 10:40:48 +0000 (UTC)
Received: from krava (unknown [10.43.17.81])
 by smtp.corp.redhat.com (Postfix) with SMTP id 832415DA63;
 Fri, 28 Jun 2019 10:40:41 +0000 (UTC)
Date: Fri, 28 Jun 2019 12:40:40 +0200
From: Jiri Olsa <jolsa@redhat.com>
To: John Garry <john.garry@huawei.com>
Subject: Re: [PATCH v2 2/5] perf pmu: Support more complex PMU event aliasing
Message-ID: <20190628104040.GA15960@krava>
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
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.14
X-Greylist: Sender IP whitelisted, not delayed by milter-greylist-4.5.16
 (mx1.redhat.com [10.5.110.39]); Fri, 28 Jun 2019 10:40:52 +0000 (UTC)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_034054_221762_10CA6713 
X-CRM114-Status: GOOD (  19.31  )
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

> > > 
> > > heya,
> > > sry for late reply
> > > 
> > > > 
> > > > > if tok is NULL in here we crash
> > > > > 
> > > > 
> > > > As I see, tok could not be NULL. If str contains no delimiters, then
> > > > we just
> > > > return same as str in tok.
> > > > 
> > > > Can you see tok being NULL?
> > > 
> > > well, if there's no ',' in the str it returns NULL, right?
> > 
> > No, it would return str in tok.

ok

> > 
> > > and IIUC this function is still called for standard uncore
> > > pmu names
> > > 
> > > > 
> > > > > > +        res = false;
> > > > > > +        goto out;
> > > > > > +    }
> > > > > > +
> > > > > > +    for (; tok; name += strlen(tok), tok = strtok_r(NULL, ",",
> > > > > > &tmp)) {
> > > > > 
> > > > > why is name shifted in here?
> > > > 
> > > > I want to ensure that we match the tokens in order and also guard
> > > > against
> > > > possible repeated token matches in 'name'.
> > > 
> > > i might not understand this correctly.. so
> > > 
> > > str is the alias name that can contain ',' now, like:
> > >   hisi_sccl,ddrc
> > 
> > For example of pmu_nmame=hisi_sccl,ddrc and pmu=hisi_sccl1_ddrc0, we
> > match in this sequence:
> > 
> > loop 1. tok=hisi_sccl name=hisi_sccl1_ddrc0
> > loop 2. tok=ddrc name=ddrc0
> > loop 3. tok=NULL -> breakout and return true

ok, plz put something like above into comment

thanks,
jirka

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
