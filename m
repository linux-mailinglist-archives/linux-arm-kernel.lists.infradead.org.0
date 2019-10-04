Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E2852CBD00
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  4 Oct 2019 16:22:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=au7iQE/jGsyDE/yEgT5mF9BSafdde+pidh5Sb3CMlco=; b=A62bsMw8C/nJEn
	Gfufh3OGP3pZHriT9HXQaSu/laesMGGqNZpZ7ZdjLmLX1DoxXL8jK/B7EMD8hE6W3YbepAcBpKxNH
	v6wnVps9KiEAuxQipLUILVerjtCuHbVC6nlAsiTT48MP1jopeJePjiUozrt24217hBY7jaRhure/n
	cT+eO59mECiX3iwZe8WVxL9Ue1VcHsGY5LquQQJjIwIFjVMTC4c8ekG+CWKhgw1VRCuMYxTVL0/mo
	8tV7uITN5UE6+u3DNzzfIApUCjrsLozSbUWv9BgwDdRV6T91sSUyrV2I61ykopsgDoJ9HVyjhgUgg
	8K0OKickNOt8rwSIPy5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iGOSv-00034j-IH; Fri, 04 Oct 2019 14:21:53 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iGOSi-00034G-KN
 for linux-arm-kernel@lists.infradead.org; Fri, 04 Oct 2019 14:21:42 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A41091597;
 Fri,  4 Oct 2019 07:21:39 -0700 (PDT)
Received: from [10.1.196.105] (eglon.cambridge.arm.com [10.1.196.105])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 339B03F68E;
 Fri,  4 Oct 2019 07:21:39 -0700 (PDT)
Subject: Re: [PATCH 4/4] arm64: ftrace: Ensure synchronisation in PLT setup
 for Neoverse-N1 #1542419
To: Will Deacon <will@kernel.org>
References: <20191002094935.48848-1-james.morse@arm.com>
 <20191002094935.48848-5-james.morse@arm.com>
 <20191004103349.ohrhmiweda7m5gr3@willie-the-truck>
From: James Morse <james.morse@arm.com>
Message-ID: <7f6ba8fe-7b43-7a20-7220-a08995f29c5e@arm.com>
Date: Fri, 4 Oct 2019 15:21:38 +0100
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191004103349.ohrhmiweda7m5gr3@willie-the-truck>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191004_072140_712936_A880E7FB 
X-CRM114-Status: GOOD (  13.35  )
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

On 04/10/2019 11:33, Will Deacon wrote:
> On Wed, Oct 02, 2019 at 10:49:35AM +0100, James Morse wrote:
>> CPUs affected by Neoverse-N1 #1542419 may execute a stale instruction if
>> it was recently modified. The affected sequence requires freshly written
>> instructions to be executable before a branch to them is updated.
>>
>> There are very few places in the kernel that modify executable text,
>> all but one come with sufficient synchronisation:
>>  * The module loader's flush_module_icache() calls flush_icache_range(),
>>    which does a kick_all_cpus_sync()
>>  * bpf_int_jit_compile() calls flush_icache_range().
>>  * Kprobes calls aarch64_insn_patch_text(), which does its work in
>>    stop_machine().
>>  * static keys and ftrace both patch between nops and branches to
>>    existing kernel code (not generated code).
>>
>> The affected sequence is the interaction between ftrace and modules.
>> The module PLT is cleaned using __flush_icache_range() as the trampoline
>> shouldn't be executable until we update the branch to it.
>>
>> Drop the double-underscore so that this path runs kick_all_cpus_sync()
>> too.

> I'll take this one as a fix, since it's not reliant on a firmware update.

> One other thing -- please can you update silicon-errata.rst as part of the
> other patches?

Gah, bother.

I'll fix that and repost this for rc2, noting its for v5.5.


Thanks,

James

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
