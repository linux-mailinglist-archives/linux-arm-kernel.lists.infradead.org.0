Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A315B13528B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  9 Jan 2020 06:20:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cDcYx731uMvoggeyAOD8dp/lssxGSBxeeVDMBEyqmLg=; b=VY10UCpKZmL6nE
	OCflRerlxCh7AbRM8GE7kbNCJI9ogg0BzVDaatbKbsHYdu8aWbpgHVBHPaX/ImY0bw4G66BclC2Km
	oUNBCO2V77nMoL8Tk2BNa0pemldwsYnhdKcnxUCSg4HziSlAIpigb/GDPihLygUZ2GMhs7m3TKq2P
	nNhTbUvxu6gqEejg8CMtCscEjRt9HPCJLVo2B0NNF2FFSirqodh9hHVFyDdZ12LfzTX6sLIB10sXG
	AICL9kEovwiC5lr7V135VjiEgYoJ0y+QiteauJgm7W6yPRGwoa/MVtbWjOP5VdnoqOlAdIgP2APym
	ZWJV2LI2Ws0pk72vVoeQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ipQEv-0003RQ-Dm; Thu, 09 Jan 2020 05:20:13 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ipQEl-0002no-IF
 for linux-arm-kernel@lists.infradead.org; Thu, 09 Jan 2020 05:20:04 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 734BB31B;
 Wed,  8 Jan 2020 21:19:59 -0800 (PST)
Received: from [10.162.40.138] (p8cg001049571a15.blr.arm.com [10.162.40.138])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 67AD83F534; Wed,  8 Jan 2020 21:19:56 -0800 (PST)
Subject: Re: [PATCH 01/17] arm64: entry: mark all entry code as notrace
To: Mark Rutland <mark.rutland@arm.com>,
 linux-arm-kernel@lists.infradead.org, catalin.marinas@arm.com,
 will@kernel.org, james.morse@arm.com
References: <20200108185634.1163-1-mark.rutland@arm.com>
 <20200108185634.1163-2-mark.rutland@arm.com>
From: Anshuman Khandual <anshuman.khandual@arm.com>
Message-ID: <6ac3017e-07cb-8ef4-c2e9-22a6fc8d8e24@arm.com>
Date: Thu, 9 Jan 2020 10:51:10 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
MIME-Version: 1.0
In-Reply-To: <20200108185634.1163-2-mark.rutland@arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200108_212003_656198_1E304C2F 
X-CRM114-Status: GOOD (  10.68  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [217.140.110.172 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: keescook@chromium.org, maz@kernel.org, broonie@kernel.org,
 labbott@redhat.com, robin.murphy@arm.com, julien.thierry.kdev@gmail.com,
 alex.popov@linux.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 01/09/2020 12:26 AM, Mark Rutland wrote:
> Almost all functions in entry-common.c are marked notrace, with
> el1_undef and el1_inv being the only exceptions. We appear to have done
> this on the assumption that there were no exception registers that we
> needed to snapshot, and thus it was safe to run trace code that might
> result in further exceptions and clobber those registers.
> 
> However, until we inherit the DAIF flags, our irq flag tracing is stale,
> and this discrepancy could set off warnings in some configurations.

Could you give some example scenarios when this might happen ?

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
