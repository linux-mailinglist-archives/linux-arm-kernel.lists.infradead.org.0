Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 85F161A9A38
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 12:15:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JhSsA4aTGD6ZfveDFGjZPJmp9abjS1c96tn0uBSHVfM=; b=m7+j9BGNtcYiZ0
	U5DJm5rsdx1wmba9+Cd3qX2bN8eTluZduox9FfPyLc0J6OUamnADARpfme3YuGoiYYVyUyOf6SKpy
	jeDvE0ML+WaaaDTKJO3chaqzLu1xRoHWTBhNxD4JGj9tapH6eeleTvhQ20bzxlCqLr+OQo74ovcHT
	bmVkluAOSjYLv2JARRa1ScSJ10A3U/BpsUyTXTKsRBDa78O7yrk10Wvk/Pls4FrcGtKDwISn7AOhU
	JCB39cvI/Oz9pEq7bIFDwRivgMHlijW5u61czmDGTNza8wvBptbl6LllU6SZQyUuVuRG7iQQjtEvz
	xcweEjX1XcW0QTvyIcOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOf4t-0005op-BN; Wed, 15 Apr 2020 10:15:31 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOf4d-00050u-EO
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 10:15:17 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8C81D1063;
 Wed, 15 Apr 2020 03:15:12 -0700 (PDT)
Received: from [10.37.9.9] (unknown [10.37.9.9])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 20C533F68F;
 Wed, 15 Apr 2020 03:15:10 -0700 (PDT)
Subject: Re: [PATCH v2 3/6] arm64/vdso: Add time napespace page
To: Mark Rutland <mark.rutland@arm.com>, Andrei Vagin <avagin@gmail.com>
References: <20200225073731.465270-1-avagin@gmail.com>
 <20200225073731.465270-4-avagin@gmail.com>
 <20200414172014.GA6705@C02TD0UTHF1T.local>
 <CANaxB-yBeSmYdZL6gbe-agDAaEVcYHrxUCojQ4xaWpsWinQsyA@mail.gmail.com>
 <20200415100539.GA27339@C02TD0UTHF1T.local>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a0179a69-fc1b-9e81-f3f2-72f6c639f40e@arm.com>
Date: Wed, 15 Apr 2020 11:16:00 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20200415100539.GA27339@C02TD0UTHF1T.local>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_031515_569601_7AB4DEE2 
X-CRM114-Status: GOOD (  11.52  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
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
Cc: Thomas Gleixner <tglx@linutronix.de>, LKML <linux-kernel@vger.kernel.org>,
 linux-arm-kernel@lists.infradead.org, Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Mark,

On 4/15/20 11:05 AM, Mark Rutland wrote:
> It's a shame we're not using OPTIMIZER_HIDE_VAR() for that, as it can
> generate slightly better code and is easier to read than bare asm.

We are not because I was not aware when I wrote this code that such a macro
existed :)

But you are right it clearly makes the code more readable. To make up for it, I
am happy to make the effort to introduce it for both the cases and replace the
assembler once this patch series gets merged.

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
