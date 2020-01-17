Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDFD1409E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 13:39:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=VdmD1eaj80Du2Xq14yt58ya+0d11TANNtTB74Ak4yP8=; b=PYZLwzCRyQ4kbc
	FXDW1Q5p5xCcuNVgkS6NoBlWhSBwt311Qi0gGxZbbxR59x4ILdbcj8KusVaql4CzERGZHKZp73r3z
	IHSXkwEZkOaNfxdB9Ava2XTm2qzfWzK6PS+rmpX7s8x5pOcAl6shvJunlAKi5yOvj8bQplsOLh/bx
	hEe4ae2pl7T6yS1SkzvY0XXrtmiATOhZfSGpAiO+lqSZrcp4twnHhy8/qk9Ieh/GzPR+dXsImCxUg
	Xq2EuZYkkuhJRi83fUfxXfW0lPtzrgrCMQgrQixTMuH1tdv3DZtU0z9bKv/7qgNSMQXS7INPi0upg
	73Mbe4vYiZRhXWjH0XzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isQuV-0005Q0-2u; Fri, 17 Jan 2020 12:39:35 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isQuM-0005PO-VL
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 12:39:28 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6932920730;
 Fri, 17 Jan 2020 12:39:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579264766;
 bh=V9JQ89MenhRIDahBTT5r+ufS8fzK17VCIuTKQTYaIfQ=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jaJPazZu/SigkBzXTBjsv060d3X9J2JT0m8OVULDMyaPBfiBIOKi1XEvA3mjCawnp
 kmXkK440fgfk1n4ynXs95xCkp3GjF7w5n1MPXW9jXp4xp2xObqbRd2WKLd/IpPvjjs
 12oeBCyURh2btIIidIosTVYk3wETSsoQIJ966RKA=
Date: Fri, 17 Jan 2020 12:39:21 +0000
From: Will Deacon <will@kernel.org>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Message-ID: <20200117123920.GB8199@willie-the-truck>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200115105855.13395-2-james.clark@arm.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_043927_027532_0DCD852D 
X-CRM114-Status: GOOD (  19.93  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Al Grant <al.grant@arm.com>,
 Peter Zijlstra <peterz@infradead.org>, linux-kernel@vger.kernel.org,
 Arnaldo Carvalho de Melo <acme@kernel.org>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Ingo Molnar <mingo@redhat.com>, Tan Xiaojun <tanxiaojun@huawei.com>,
 Namhyung Kim <namhyung@kernel.org>, nd@arm.com, Jiri Olsa <jolsa@redhat.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi James,

On Wed, Jan 15, 2020 at 10:58:55AM +0000, James Clark wrote:
> ARM PMU events can be delivered with arbitrary skid, and there's
> nothing the kernel can do to prevent this. Given that, the PMU
> cannot support precise_ip != 0.
> 
> Also update comment to state that attr.config field is used to
> set the event type rather than event_id which doesn't exist.

"Also..." is usually a good sign that you should split up the patch. In
this case, you're touching a UAPI header with a questionable clarification,
so I'd definitely rather see that handled separately.

> Signed-off-by: James Clark <james.clark@arm.com>
> Cc: Will Deacon <will@kernel.org>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: Peter Zijlstra <peterz@infradead.org>
> Cc: Ingo Molnar <mingo@redhat.com>
> Cc: Arnaldo Carvalho de Melo <acme@kernel.org>
> Cc: Alexander Shishkin <alexander.shishkin@linux.intel.com>
> Cc: Jiri Olsa <jolsa@redhat.com>
> Cc: Tan Xiaojun <tanxiaojun@huawei.com>
> Cc: Al Grant <al.grant@arm.com>
> Cc: Namhyung Kim <namhyung@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>  drivers/perf/arm_pmu.c          | 3 +++
>  include/uapi/linux/perf_event.h | 4 ++--
>  2 files changed, 5 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> index df352b334ea7..4ddbdb93b3b6 100644
> --- a/drivers/perf/arm_pmu.c
> +++ b/drivers/perf/arm_pmu.c
> @@ -102,6 +102,9 @@ armpmu_map_event(struct perf_event *event,
>  	u64 config = event->attr.config;
>  	int type = event->attr.type;
>  
> +	if (event->attr.precise)
> +		return -EINVAL;

You're right that this is a user-visible change, and I'm pretty nervous
about it to be honest with you.

Perhaps a better way would be to expose something under sysfs, a bit like
the caps directory for the SPE PMU, which identifies the fields of the attr
structure that the driver does not ignore. I think doing this as an Arm-PMU
specific thing initially would be fine, but it would be even better to have
something where a driver can tell perf core about the parts it responds to
and have this stuff populated automatically. The current design makes it
inevitable that PMU drivers will have issues like the one you point out in
the cover letter.

Thoughts?

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
