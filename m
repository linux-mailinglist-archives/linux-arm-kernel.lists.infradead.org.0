Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1877A1804C5
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Mar 2020 18:28:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=C+2ZckOfV2tPvG2WgzOQeVj8CYTLACZMKvY9SycbrRA=; b=FGGLmvcuPsFD218ZAmPnrBllb
	A+ViG2JO/cXuLBcS+qI6yj2SdhSIo+usU6pxM8NI09m+aMxgTXcoUvLdJE1xhJtLgKFkMpK3Kh93p
	xYn7HvSA8pDI39i514HUspV4ysop5+hanc12zqNDUC2EFv0I/mXgxHBm1xUNioiKY5v6uSW8AWtsx
	9lI8m8EjU2JxyTRiD6KCrIPpGv5aK/dsYZpIoW9dt63n+5iLOx2elcTQPt3JzGaMF/Wuo9EJeitKQ
	fUnPAlIbQQkGfUMtUFJHoLfQf9Tm8dPhQeHDjro8/WvoRfu2/dczPjKPG1QFemO+5+7FtxWY9FE81
	zG7qec0cg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBig7-0007zX-Qo; Tue, 10 Mar 2020 17:28:27 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBifz-0007yz-On
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Mar 2020 17:28:21 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id BCD8A1FB;
 Tue, 10 Mar 2020 10:28:17 -0700 (PDT)
Received: from [10.1.196.37] (e121345-lin.cambridge.arm.com [10.1.196.37])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C8AC13F67D;
 Tue, 10 Mar 2020 10:28:16 -0700 (PDT)
Subject: Re: [PATCHv6 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
To: Mark Rutland <mark.rutland@arm.com>, linux-arm-kernel@lists.infradead.org
References: <20200302181752.14251-1-mark.rutland@arm.com>
 <20200303190742.GD7649@lakrids.cambridge.arm.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <2713672f-bd82-ba8d-5fae-777ef5e754eb@arm.com>
Date: Tue, 10 Mar 2020 17:28:15 +0000
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200303190742.GD7649@lakrids.cambridge.arm.com>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_102819_849467_027A5819 
X-CRM114-Status: GOOD (  16.53  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: catalin.marinas@arm.com, will@kernel.org, kvmarm@lists.cs.columbia.edu,
 maz@kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/03/2020 7:07 pm, Mark Rutland wrote:
> On Mon, Mar 02, 2020 at 06:17:49PM +0000, Mark Rutland wrote:
>> This is a respin of Andrew Murray's series to enable support for 64-bit
>> counters as introduced in ARMv8.5.
>>
>> I've given this a spin on (ARMv8.2) hardware, to test that there are no
>> regressions, but I have not had the chance to test in an ARMv8.5 model (which I
>> beleive Andrew had previously tested).
> 
> Bad news; this is broken. :(
> 
> While perf-stat works as expected, perf-record doesn't get samples for
> any of the programmable counters.
> 
> In ARMv8.4 mode I can do:
> 
> | / # perf record -a -c 1 -e armv8_pmuv3/inst_retired/ true
> | [ perf record: Woken up 1 times to write data ]
> | [ perf record: Captured and wrote 0.023 MB perf.data (367 samples) ]
> | / # perf record -a -c 1 -e armv8_pmuv3/inst_retired,long/ true
> | [ perf record: Woken up 1 times to write data ]
> | [ perf record: Captured and wrote 0.022 MB perf.data (353 samples) ]
> 
> ... so regular 32-bit and chained events work correctly.
> 
> But in ARMv8.5 mode I get no samples in either case:
> 
> | / # perf record -a -c 1 -e armv8_pmuv3/inst_retired/ true
> | [ perf record: Woken up 1 times to write data ]
> | [ perf record: Captured and wrote 0.008 MB perf.data ]
> | / # perf report | grep samples
> | Error:
> | The perf.data file has no samples!
> | / # perf record -a -c 1 -e armv8_pmuv3/inst_retired,long/ true
> | [ perf record: Woken up 1 times to write data ]
> | [ perf record: Captured and wrote 0.008 MB perf.data ]
> | / # perf report | grep samples
> | Error:
> | The perf.data file has no samples!
> 
> I'll have to trace the driver to see what's going on. I suspect we've
> missed some bias handling, but it's possible that this is a model bug.

For the record, further evidence has indeed pointed to there being a bug 
in the model's implementation of ARMv8.5-PMU. It's been raised with the 
models team, so we'll have wait and see what they say...

Robin.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
