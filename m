Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8581DA4F13
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Sep 2019 08:09:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FJfxoYCV7VcJHitVQ2mswuU8xgDFgO6mHq7DUxfCnG0=; b=ErJlKR0LIqPJyQ
	HLZcPcvxX/VHqgqGdZOPBEAJ5GiO9+k/fWKUXsr29OoXjo4vFBzeiWLuJ25oLfuJbM4ZJK1T9AABG
	uH+qwj8RY6FkPMckzUkA2/nqcusLe+Pb975LiMn48C0hWAI+TYbZR69hJxiEUkb5u4jDqaUkusLJ8
	QSSPPcWcY2nW8P0z3ZD/KNV7Mh1JJOFegaznK7h5XfIarSNOvcCKhOqLiCRRujSxOYu8xU0OG662I
	89QsuafN1t+xp9yXih5Jn+DkHnDkt0jYlO4HPBjpe2phaKzOPqTju6dzL/SmNdmsIGi5BPb71S5CX
	aKldjR4XD3OYcCW9fIyg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i4fWp-0000kM-JB; Mon, 02 Sep 2019 06:09:27 +0000
Received: from szxga07-in.huawei.com ([45.249.212.35] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i4fWd-0000jQ-I4
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Sep 2019 06:09:17 +0000
Received: from DGGEMS405-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id DA43FADD0A20B83956FB;
 Mon,  2 Sep 2019 14:09:09 +0800 (CST)
Received: from [127.0.0.1] (10.74.191.121) by DGGEMS405-HUB.china.huawei.com
 (10.3.19.205) with Microsoft SMTP Server id 14.3.439.0; Mon, 2 Sep 2019
 14:09:00 +0800
Subject: Re: [PATCH v2 7/9] sparc64: numa: check the node id consistently for
 sparc64
To: David Miller <davem@davemloft.net>
References: <1567231103-13237-8-git-send-email-linyunsheng@huawei.com>
 <20190830.235337.570776316111294728.davem@davemloft.net>
 <0195eb73-99ae-fec2-3e11-2cb9e6677926@huawei.com>
 <20190831.130250.1236116087422472663.davem@davemloft.net>
From: Yunsheng Lin <linyunsheng@huawei.com>
Message-ID: <1e128e33-427f-19a2-0e13-95a9c0656ab1@huawei.com>
Date: Mon, 2 Sep 2019 14:08:31 +0800
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.2.0
MIME-Version: 1.0
In-Reply-To: <20190831.130250.1236116087422472663.davem@davemloft.net>
Content-Language: en-US
X-Originating-IP: [10.74.191.121]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190901_230915_781992_BF42ECC5 
X-CRM114-Status: GOOD (  10.83  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.35 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: dalias@libc.org, linux-sh@vger.kernel.org, peterz@infradead.org,
 catalin.marinas@arm.com, dave.hansen@linux.intel.com,
 heiko.carstens@de.ibm.com, linuxarm@huawei.com, jiaxun.yang@flygoat.com,
 linux-mips@vger.kernel.org, mwb@linux.vnet.ibm.com, paulus@samba.org,
 hpa@zytor.com, sparclinux@vger.kernel.org, chenhc@lemote.com, will@kernel.org,
 cai@lca.pw, linux-s390@vger.kernel.org, ysato@users.sourceforge.jp,
 mpe@ellerman.id.au, x86@kernel.org, rppt@linux.ibm.com, borntraeger@de.ibm.com,
 dledford@redhat.com, mingo@redhat.com, jeffrey.t.kirsher@intel.com,
 benh@kernel.crashing.org, jhogan@kernel.org, nfont@linux.vnet.ibm.com,
 mattst88@gmail.com, len.brown@intel.com, gor@linux.ibm.com,
 anshuman.khandual@arm.com, bp@alien8.de, luto@kernel.org, tglx@linutronix.de,
 naveen.n.rao@linux.vnet.ibm.com, linux-arm-kernel@lists.infradead.org,
 rth@twiddle.net, axboe@kernel.dk, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, ralf@linux-mips.org, tbogendoerfer@suse.de,
 paul.burton@mips.com, linux-alpha@vger.kernel.org, ink@jurassic.park.msu.ru,
 akpm@linux-foundation.org, robin.murphy@arm.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019/9/1 4:02, David Miller wrote:
> From: Yunsheng Lin <linyunsheng@huawei.com>
> Date: Sat, 31 Aug 2019 16:57:04 +0800
> 
>> Did you mean sparc64 system does not has ACPI, the device's node id will
>> not specified by ACPI, so the ACPI is unrelated here?
> 
> Yes, sparc64 never has and never will have ACPI.
> 
> This is also true for several other platforms where you have made this
> change.
> 
> The assumption of your entire patch set is that the semantics of the
> NUMA node ID are somehow completely defined by ACPI semantics.  Which
> is not true.

Thanks for pointing out.

The NUMA node id in sparc64 system is defined by DT semantics?

> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
