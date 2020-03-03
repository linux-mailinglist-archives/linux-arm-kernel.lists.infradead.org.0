Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3DC1782D5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 20:08:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rNpIMgxQWXnnOzyC0Cp5BQCIc4Iv41cbFTctgLjfX1U=; b=mw/iAr4UCQWPm7
	Tgv6kv6li20F9TgTgeaKsAxUv9hpoLlTf9h1zmTmztgb78PZfq5E1bSlbS3hqtrEmHPQp99+8xRrP
	rKSdb4So31KFyUcv+o76ve2NBxF/fcAY9vjaYvl2+NJdCeqnHwDPpMzJAC2q7snmwPS1i+bWEAcch
	MGQqJPtanix8sot3cpob9COjJY+uyXGz4PoerJIVN2QlsRA01n0Ab07MCQs0ro4m/e+7S5apTR87G
	hxIZWHA0rhfmV7TXY6Da/l8nOpp7RfVzmsN9qNx6JJDAGm4cPyyPWPeZWw6UaQ+5pDhU054/gBmqZ
	T2ZyZB3j1vNOvZ7zJZuA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j9Cta-0001xs-Bm; Tue, 03 Mar 2020 19:07:58 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j9CtU-0001xV-Ez
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 19:07:53 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4B45230E;
 Tue,  3 Mar 2020 11:07:47 -0800 (PST)
Received: from lakrids.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 695463F534;
 Tue,  3 Mar 2020 11:07:46 -0800 (PST)
Date: Tue, 3 Mar 2020 19:07:44 +0000
From: Mark Rutland <mark.rutland@arm.com>
To: linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCHv6 0/3] arm64: perf: Add support for ARMv8.5-PMU 64-bit
 counters
Message-ID: <20200303190742.GD7649@lakrids.cambridge.arm.com>
References: <20200302181752.14251-1-mark.rutland@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200302181752.14251-1-mark.rutland@arm.com>
User-Agent: Mutt/1.11.1+11 (2f07cb52) (2018-12-01)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200303_110752_549155_1BBA4E93 
X-CRM114-Status: GOOD (  10.29  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Mar 02, 2020 at 06:17:49PM +0000, Mark Rutland wrote:
> This is a respin of Andrew Murray's series to enable support for 64-bit
> counters as introduced in ARMv8.5.
> 
> I've given this a spin on (ARMv8.2) hardware, to test that there are no
> regressions, but I have not had the chance to test in an ARMv8.5 model (which I
> beleive Andrew had previously tested).

Bad news; this is broken. :(

While perf-stat works as expected, perf-record doesn't get samples for
any of the programmable counters.

In ARMv8.4 mode I can do:

| / # perf record -a -c 1 -e armv8_pmuv3/inst_retired/ true
| [ perf record: Woken up 1 times to write data ]
| [ perf record: Captured and wrote 0.023 MB perf.data (367 samples) ]
| / # perf record -a -c 1 -e armv8_pmuv3/inst_retired,long/ true
| [ perf record: Woken up 1 times to write data ]
| [ perf record: Captured and wrote 0.022 MB perf.data (353 samples) ]

... so regular 32-bit and chained events work correctly.

But in ARMv8.5 mode I get no samples in either case:

| / # perf record -a -c 1 -e armv8_pmuv3/inst_retired/ true
| [ perf record: Woken up 1 times to write data ]
| [ perf record: Captured and wrote 0.008 MB perf.data ]
| / # perf report | grep samples
| Error:
| The perf.data file has no samples!
| / # perf record -a -c 1 -e armv8_pmuv3/inst_retired,long/ true
| [ perf record: Woken up 1 times to write data ]
| [ perf record: Captured and wrote 0.008 MB perf.data ]
| / # perf report | grep samples
| Error:
| The perf.data file has no samples!

I'll have to trace the driver to see what's going on. I suspect we've
missed some bias handling, but it's possible that this is a model bug.

Thanks,
Mark.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
