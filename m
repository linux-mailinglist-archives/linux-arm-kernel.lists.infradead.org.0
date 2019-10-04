Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 44743CBCFB
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:21:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Wv7f3Yn4/nh3sIWTAXfyQ/Xnp5gh8+5MkJaEojH6J4=; b=VwlulBX9+rTm6I
	AA6zjuqx3ZRB7GdPaRxoHI2fBKt7Lpos0p208SbZNE3+3mnhJMsPKI6s9BCvxQoVaJgl8Mml5MtEl
	9sgVc+ZUp8jEkuFDFY2i93nFAZ8DOOTADgM2mAjLt4plKm1lkwMZ37IFHpsgUp7NACVx491R/20Tq
	v+0eoX6lI5zZTUEhpUzDCWPkFnq3cSlW3hKaigJazykBM0Es1pd2Y7+xt8vuYQmQ+qdSV0+8Cpxjv
	+w53XdeOfjPHLwDsm7yneqK9Bv3cgqOViNg8BYJ0O1pahwWbx3jhr3ix1G1nE3YgaMg81jn+w+b5S
	SFuDMLK6WHSYVEaPUdlw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGORv-0002W3-M7; Fri, 04 Oct 2019 14:20:51 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGORg-0002V0-6J
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:20:37 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B3B761597;
 Fri,  4 Oct 2019 07:20:29 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 43E0E3F68E;
 Fri,  4 Oct 2019 07:20:29 -0700 (PDT)
Subject: Re: [PATCH 0/4] arm64: errata: Workaround Neoverse-N1 #1542419
To: Will Deacon <will@kernel.org>
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191004103116.eneiskohqxd3pq3s@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <b853b922-500d-25e0-98ea-a0c839bf3b9e@arm.com>
Date: Fri, 4 Oct 2019 15:19:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004103116.eneiskohqxd3pq3s@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072036_278041_66594AD7 
X-CRM114-Status: GOOD (  12.81  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Will,

On 04/10/2019 11:31, Will Deacon wrote:
> On Wed, Oct 02, 2019 at 10:49:31AM +0100, James Morse wrote:
>> We can't yet detect whether EL3 has the workaround for any particular
>> erratum. We lamely print '(kernel portion)' as part of the CPU-feature
>> text.
>> If we get a mechanism to discover this stuff we can use SCTLR_EL1.UCI
>> on systems that have the interface, and don't workaround the issue.
> 
> Is the firmware portion available in ATF and is there a plan to add the
> discoverability mechanism, or is it just wishful thinking?

The ATF part is here:
https://review.trustedfirmware.org/c/TF-A/trusted-firmware-a/+/2173

Being able to discover whether ATF is doing its part is wishful thinking, but stuff like
this shows we need a way of finding out.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
