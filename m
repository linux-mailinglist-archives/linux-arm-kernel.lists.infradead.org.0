Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B1FDB4E63A
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 12:37:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cGQaSTQtBT2Op6rRCztAGuuzG8UMhdQmjytQcAfkVNI=; b=WyWJHZlQcjoOUp
	Gku2nztEc8suwU4AljwP4uhtyhcI0BQhE0M4jPMohnvwcKYeRxz5GQ/lYrgiOx05rxlcWnWtrXDha
	V4yCKfP0A8s25E6TCcPDSCdJX7cF98EsQ60rHnjR4lkuwJS+CgIS4q6Vkpm6u5h1K1HxBR8aV0Yae
	0ssBxN65nhfxLvZcub8BMgDHg0pxR1Qt9RZqNmIePkJgLbI4L/FmywK+wF8m9lqlAtmMHncyeoX+5
	N7184xL5BFNV1dKTdKK82fziGDexN6zvxCmK4ZN1gq4xGW+b3RK6fxCr8hiHAHZ3ac8gKstiPMpME
	fG5hbfwqcvTogP8xjmoA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heGvB-0004hD-PH; Fri, 21 Jun 2019 10:37:29 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heGsW-0001mX-CV
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 10:34:47 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 36529142F;
 Fri, 21 Jun 2019 03:34:41 -0700 (PDT)
Received: from e103592.cambridge.arm.com (usa-sjc-imap-foss1.foss.arm.com
 [10.121.207.14])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 680EF3F718;
 Fri, 21 Jun 2019 03:34:40 -0700 (PDT)
Date: Fri, 21 Jun 2019 11:34:38 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH 00/13] Add arm64/signal initial kselftest support
Message-ID: <20190621103438.GH2790@e103592.cambridge.arm.com>
References: <20190613111335.7645-1-cristian.marussi@arm.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190613111335.7645-1-cristian.marussi@arm.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_033444_620390_90944460 
X-CRM114-Status: GOOD (  13.91  )
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
Cc: andreyknvl@google.com, shuah@kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kselftest@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Jun 13, 2019 at 12:13:22PM +0100, Cristian Marussi wrote:
> Hi
> 
> this patch aims to add the initial arch-specific arm64 support to
> kselftest starting with signals-related test-cases.
> A common internal test-case layout is proposed which then it is
> anyway wired-up to the toplevel kselftest Makefile, so that it
> should be possible at the end to run it on an arm64 target in the
> usual way with KSFT.
> 
> ~/linux# make TARGETS=arm64 kselftest

Looks like a good initial set of dests overall.  There are various
details that need attention, but once those are sorted out I think this
will be a decent base to build more tests on in the future.

See comments on the individual patches.

[...]

Cheers
---Dave

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
