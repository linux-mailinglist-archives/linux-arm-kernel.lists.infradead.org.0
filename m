Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BCD242AA5
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Jun 2019 17:18:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnW6vJlwMkyptPPT2k9MBhQKx+jq2V7z76JYzYiOL/Q=; b=LsTkKkHwIh67xt
	f+6gnw3LTsWuJEXHI/duMgdO2FT0d2klF0E+x6ssmQ5vikrEjkA6KjHRy7dV4TjKsgPx0HEyjtaEr
	DlivbxK6s8+ZbVqHzRQ1tEqkgoDI3RxxN31tzFHbp7VEoaVVOSS3Bf9CFLYVLFp6qh+8JCrzRPIw3
	KmGeEmoN18d2Z9OF4fKl96aUBWwJWbRVD/ISqhlG4ZXsGkaHy9SXBjN7wnuK+z3R/v1AGZK9EWuMh
	h/hy1bmkeXwc5LxwUvYuTRcVbXxNqHdmNXNj2GOKyAhMaR3CZyhbdnqjRUwhGmFEjvggCCswwNrJd
	KP6n7QNGY84OA4aw//8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hb51P-000226-T3; Wed, 12 Jun 2019 15:18:43 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hb51H-00021e-Rc
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Jun 2019 15:18:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id DE7702B;
 Wed, 12 Jun 2019 08:18:34 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 030E43F73C;
 Wed, 12 Jun 2019 08:18:33 -0700 (PDT)
Subject: Re: [PATCH 2/2] arm64: Implement panic_smp_self_stop()
To: Aaro Koskinen <aaro.koskinen@iki.fi>
References: <20190611181050.9647-1-aaro.koskinen@iki.fi>
 <20190611181050.9647-2-aaro.koskinen@iki.fi>
From: James Morse <james.morse@arm.com>
Message-ID: <a91a65a9-5b49-130d-a824-f719071b4263@arm.com>
Date: Wed, 12 Jun 2019 16:18:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190611181050.9647-2-aaro.koskinen@iki.fi>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190612_081835_941650_A4612F5D 
X-CRM114-Status: GOOD (  10.28  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Jayachandran Chandrasekharan Nair <jnair@marvell.com>,
 Will Deacon <will.deacon@arm.com>, linux-arm-kernel@lists.infradead.org,
 Aaro Koskinen <aaro.koskinen@nokia.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Aaro,

On 11/06/2019 19:10, Aaro Koskinen wrote:
> From: Aaro Koskinen <aaro.koskinen@nokia.com>
> 
> Currently arm64 uses the default implementation of panic_smp_self_stop()
> that is simply a cpu_relax() loop. As a result, when two CPUs panic()
> simultaneously we get "SMP: failed to stop secondary CPUs" warnings and
> extra delays before a reset.

> Provide an implementation of panic_smp_self_stop() that offlines the
> CPU properly.

This had me looking to the PSCI call that would take the CPU offline, but its just
conflicting terminology. Its the:
| set_cpu_online(cpu, false);
you're referring to here.

Would 'marks the CPU offline' be clearer?


Regardless,
Reviewed-by: James Morse <james.morse@arm.com>


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
