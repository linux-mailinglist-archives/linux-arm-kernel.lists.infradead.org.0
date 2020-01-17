Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 014C6140A67
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 17 Jan 2020 14:06:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2JZFwYUdwQVZOlGspjlHVWSuldNGxW7S1CRu74NRpl8=; b=QOJbo4tYp+kyyF
	L2nOO1xzhkRu58PaUaOB6ITXdE/1o0if6Jty6PjMHII967hNFeObxq6P16hhUx44oT+Q6W3YAfOut
	AS5TWsqQczYrNX3FSMCYemCLx9Ge5Wr3Yx91jxHv7c1vlIUGC34pHlpDiejNqhwlolaqkGdklljab
	JOwqe6QlV7NfU/XjasFIlpjDO0QUcDvBR3w4KW7gWtKh9B62iagx9iQfyelHqyc8OVwQETGy8e44Z
	vVaX6qhvTaBoVlrte4r0FH3+Xn0GPJVLAF6NH8Ay0fqgwHLpH5tk7vjUHKTiStNbE/wJDtyZhVG54
	jV/2DxSm7cPPBtAN3G5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1isRK7-0001WY-Mm; Fri, 17 Jan 2020 13:06:03 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1isRJu-0001Vl-2H
 for linux-arm-kernel@lists.infradead.org; Fri, 17 Jan 2020 13:05:55 +0000
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256
 bits)) (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 7DFA72073A;
 Fri, 17 Jan 2020 13:05:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1579266349;
 bh=L1zoGMWMD7GFL0CwGUKmunxxgOSlfjBcbC1FTwML6Yw=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=Z8Yyn90x9eGvWw0lUERypmXK5evaHbD7KpAaI9pHhcBAhgD9sUh6IK8wfIBFm8JsH
 Q454WacBPD5YNVCg7VVFgHMR42UuWtS8WLNz267HRTKSyfXQlUoaFp0XsBQ4roXYSE
 0CdXOfUvCzMqHJ7hSNtyNvXqZ1LSWRcDB7Qi4nkc=
Date: Fri, 17 Jan 2020 13:05:44 +0000
From: Will Deacon <will@kernel.org>
To: James Clark <james.clark@arm.com>
Subject: Re: [PATCH 1/1] Return EINVAL when precise_ip perf events are
 requested on Arm
Message-ID: <20200117130543.GA9093@willie-the-truck>
References: <20200115105855.13395-1-james.clark@arm.com>
 <20200115105855.13395-2-james.clark@arm.com>
 <20200117123920.GB8199@willie-the-truck>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200117123920.GB8199@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200117_050550_126974_75CAC6F0 
X-CRM114-Status: GOOD (  11.71  )
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

> On Wed, Jan 15, 2020 at 10:58:55AM +0000, James Clark wrote:
> > diff --git a/drivers/perf/arm_pmu.c b/drivers/perf/arm_pmu.c
> > index df352b334ea7..4ddbdb93b3b6 100644
> > --- a/drivers/perf/arm_pmu.c
> > +++ b/drivers/perf/arm_pmu.c
> > @@ -102,6 +102,9 @@ armpmu_map_event(struct perf_event *event,
> >  	u64 config = event->attr.config;
> >  	int type = event->attr.type;
> >  
> > +	if (event->attr.precise)
> > +		return -EINVAL;

Also, does this field even exist? Guessing you mean 'precise_ip', but
then that means this hasn't even seen a compiler :(

Will

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
