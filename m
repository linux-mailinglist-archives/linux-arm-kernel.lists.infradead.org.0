Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 14105140BE7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 15:02:05 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZfrP2pKR4hUpMBGtnVEr16SfWykVZ3ZlydzPouHDZOM=; b=WAizZqx/sSAqSm
	ItE2L7CVUGjm6woWiHlPmzec/pXpTGX0gLeaPwOPYGNeahqR7IpWJLyuAJ4WvRWj1lEvwy18F6Kvh
	8WAm7zVBAtAPHmVqu38sDV20bmfsefoSvoLGlO9Gw7KCD0tAcIVd6HX8WHRVZK9M0h2SKdsQo9R6e
	y6InLYOi2JmLv7nk+7JEtqifbDByC3vbydyKgT07Ce3xiShv8oZtdUKw8M7PetDmvpcjjBEcu+0X4
	FCn9mCFMftFjv/8aS1tx3/Mxovrl0BM6VYjFgtMzT9zmDqmGxPBvAj73aVY91Qhb9jIQWh05jQKk+
	qi7gb+GOZac/BSAtRveQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isSCA-0008MS-PT; Fri, 17 Jan 2020 14:01:54 +0000
Received: from j217100.upc-j.chello.nl ([24.132.217.100]
 helo=noisy.programming.kicks-ass.net)
 by bombadil.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isSC2-0008MG-2C; Fri, 17 Jan 2020 14:01:46 +0000
Received: from hirez.programming.kicks-ass.net
 (hirez.programming.kicks-ass.net [192.168.1.225])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (Client did not present a certificate)
 by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 66B1E300F4B;
 Fri, 17 Jan 2020 15:00:06 +0100 (CET)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
 id 948602020D8FC; Fri, 17 Jan 2020 15:01:43 +0100 (CET)
Date: Fri, 17 Jan 2020 15:01:43 +0100
From: Peter Zijlstra <peterz@infradead.org>
To: Will Deacon <will@kernel.org>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Message-ID: <20200117140143.GD14879@hirez.programming.kicks-ass.net>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117123920.GB8199@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Tan Xiaojun <tanxiaojun@huawei.com>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>, Ingo Molnar <mingo@redhat.com>,
 James Clark <james.clark@arm.com>, Namhyung Kim <namhyung@kernel.org>,
 nd@arm.com, Jiri Olsa <jolsa@redhat.com>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, Jan 17, 2020 at 12:39:21PM +0000, Will Deacon wrote:

> Perhaps a better way would be to expose something under sysfs, a bit like
> the caps directory for the SPE PMU, which identifies the fields of the attr
> structure that the driver does not ignore. I think doing this as an Arm-PMU
> specific thing initially would be fine, but it would be even better to have
> something where a driver can tell perf core about the parts it responds to
> and have this stuff populated automatically. The current design makes it
> inevitable that PMU drivers will have issues like the one you point out in
> the cover letter.
> 
> Thoughts?

We have PERF_PMU_CAP_ flags we could extend to that purpose.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
