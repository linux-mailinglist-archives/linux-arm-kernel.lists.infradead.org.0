Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E44620AF9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 16 May 2019 17:22:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gYPYY6ZDOAibA11GobdXl7VExhC3NRZU+KDgnTZa0Io=; b=s2FvymI8cnap3itG/+dBibmv1
	eZSNKe9UzzqjHwP3DZkc3MUF3rrZcXCVxgQ+KVey2sD0Doy/iticlaQ8pjhIkMdkXQp+gmzVSa1GR
	jv/QLZkzv/I31BvFohGcUjEgwinrWLF2vd9535Tf7+6n+p/YiV7xNqLL53J/hpjg9ehDagvwE2X6J
	NtHJ6MytkOOSvbbes2iFBMP2D/AyhWMlEhVROD0bc20O749OQTvlZTCXXdCZ8TGbUDg032cYGXs5X
	Gelf6gMHmguJC7cF3bCApZnGQPnLmh9na98qza/Q7ur61mpp6fbMTDHCp4PlOPFUI8eEm7e1OJPjp
	EbOFI1t8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRIDM-0001G4-An; Thu, 16 May 2019 15:22:36 +0000
Received: from usa-sjc-mx-foss1.foss.arm.com ([217.140.101.70]
 helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRIDE-0001Fh-OU
 for linux-arm-kernel@lists.infradead.org; Thu, 16 May 2019 15:22:30 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 94AF01715;
 Thu, 16 May 2019 08:22:26 -0700 (PDT)
Received: from [10.1.196.93] (en101.cambridge.arm.com [10.1.196.93])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1940B3F71E;
 Thu, 16 May 2019 08:22:24 -0700 (PDT)
Subject: Re: [PATCH V2 5/6] coresight: perf: Don't set the truncated flag in
 snapshot mode
To: mathieu.poirier@linaro.org, linux-arm-kernel@lists.infradead.org
References: <20190514194018.23420-1-mathieu.poirier@linaro.org>
 <20190514194018.23420-6-mathieu.poirier@linaro.org>
From: Suzuki K Poulose <suzuki.poulose@arm.com>
Message-ID: <478c71d9-d13e-96f5-5a07-bb48c7166b5d@arm.com>
Date: Thu, 16 May 2019 16:22:23 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190514194018.23420-6-mathieu.poirier@linaro.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_082228_802613_33A1C153 
X-CRM114-Status: GOOD (  13.65  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: alexander.shishkin@linux.intel.com, coresight@lists.linaro.org,
 acme@kernel.org, peterz@infradead.org, mingo@redhat.com, leo.yan@linaro.org,
 mike.leach@linaro.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 14/05/2019 20:40, Mathieu Poirier wrote:
> This patch avoids setting the truncated flag when operating in snapshot
> mode since the trace buffer is expected to be truncated and discontinuous
> from one snapshot to another.  Moreover when the truncated flag is set
> the perf core stops enabling the event, waiting for user space to consume
> the data.  In snapshot mode this is clearly not what we want since it
> results in stale data.
> 
> Signed-off-by: Mathieu Poirier <mathieu.poirier@linaro.org>

For patches 2-5:

Reviewed-by: Suzuki K Poulose <suzuki.poulose@arm.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
