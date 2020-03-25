Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 798081924D2
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 25 Mar 2020 10:58:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8EF7KQeVwg79twEiNK0gx26j6E2P9UrbUk0Lf923VLw=; b=LcVsBTP2IJ/17Y
	ZU4hE8GslgdmsnOdSPqBQPEkUnhzXD5Jfc15kTE8000ETPW+EtpNnTbzneqM83TWvIYQHOSy0jDhh
	OJ/S/0vBHxGifvJbssn/xoLUHoTT+KCBjVeOl6JFqX7mXvmhLWp0aXgcaqUaVosY1JSY2H6l8/HTY
	wbidMS0Dnn0akIki6ljcLRIg467aUyFQlHvLtw2Yk17pOGNiGEs+L45FGqbjLFlc+nX1EOgaF7jT9
	8Hnpk45JE85ca6bdoX/4cMj8X65+rcM5oo5WLPK4u11z4ocGzUrj3bPzJrDlK29DW0oMghyA4NcyJ
	2P/UWP3fcrORZeA7EUHw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jH2nj-0000JM-MV; Wed, 25 Mar 2020 09:58:19 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jH2nW-0000HX-W1
 for linux-arm-kernel@lists.infradead.org; Wed, 25 Mar 2020 09:58:08 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8014E31B;
 Wed, 25 Mar 2020 02:58:04 -0700 (PDT)
Received: from [172.16.1.108] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 0ED3A3F792;
 Wed, 25 Mar 2020 02:58:03 -0700 (PDT)
Subject: Re: [RFC PATCH 3/3] arm64: hibernate: idmap the single page that
 holds the copy page routines
To: Pavel Tatashin <pasha.tatashin@soleen.com>
References: <20200115143322.214247-1-james.morse@arm.com>
 <20200115143322.214247-4-james.morse@arm.com>
 <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
From: James Morse <james.morse@arm.com>
Openpgp: preference=signencrypt
Message-ID: <b983dfbf-49e2-d32c-e3a5-781df4f9ea4e@arm.com>
Date: Wed, 25 Mar 2020 09:58:02 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CA+CK2bAEyp7Kcc_qEOfchNvyEHSVnjAXD-LB9NGbUOJ_xZV1AQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200325_025807_068866_20905B00 
X-CRM114-Status: GOOD (  21.62  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [217.140.110.172 listed in list.dnswl.org]
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
Cc: Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Pavel,

On 3/20/20 9:22 PM, Pavel Tatashin wrote:
> Soon, I will send out updated MMU enabled kexec series which will have
> this work included. I appreciate your help with this.
> 
>> Today the address it uses for this mapping is arbitrary, but to allow
>> kexec to reuse this code, it needs to be idmapped. To idmap the page
>> we must avoid the kernel helpers that have VA_BITS baked in.
> 
> Makes sense.

>> Convert create_single_mapping() to take a single PA, and idmap it.
> 
> I like the idea of using idmap in both places!

This is the only way this should work. Both hibernate and kexec replace
all of memory, with the MMU on, while using a temporary set of page tables.

As much of the code that does this should be shared.

Hibernate already does all of this, so kexec should re-use that code.


>> The page tables are built in the reverse order to normal using
>> pfn_pte() to stir in any bits between 52:48. T0SZ is always increased
>> to cover 48bits, or 52 if the copy code has bits 52:48 in its PA.
> 
> I do not think this will work for kexec case. In hibernate we map only
> one page, so we can allocate every level from bottom to top, but in
> kexec we map many pages. So, upper levels might already exist. I think
> we will  need to modify the loop to still go from top to bottom.

No.

We should not have a second set of helpers for building page tables for
kexec, its an unnecessary maintenance burden.


You keep coming back to this because you are trying to idmap all memory
on arm64. You do not need to do this.

You only need one page idmaped so you can switch TTBR1_EL1, and turn the
MMU off.


You can do the copy of memory using a copy of the linear map in
TTBR1_EL1. For an example: hibernate does exactly this.

This saves all the hassle of nomap, reserved-firmware pages and the risk
of introducing mismatched attributes. (which would lead to mysterious
coherency issues for the next kernel)

Your answer is going to be that kexec's data structures are physically
addressed. The linear map, is linear: You can convert the
kexec:physical-address to a KASLR'd linear-map virtual address, with
addition. (beware, the kaslr offset is _signed_, it can be negative!)


The code in this RFC was particularly tricky to test as its behaviour
depends on which bits of a pointer are set.

This code is complicated, and impossible to debug if it goes wrong.
(photograph of a screen with the word 'Bye' on it anyone?). Worse: it
must not introduce coherency issues into the next kernel.

It must be as simple as possible. What you are proposing is not.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
