Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A27A142E36
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 15:57:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Si50IDFBU/QfJ1pmrQU0ZI0JqArFgg1ikR2C2yqgqOo=; b=hZ0pzkc27lSiDnuj7M9Uf1mB8
	uIbCAd2UTMRNzgRw+xjFvmUhYIw3mX3QHQO+aL1a6ukuVyRTO8U+BZG5He6jN6AR+oSgBvQhZ8NyX
	ztVWRXgrqRqSA7gqvYHOX3yBArsFfDPJM1RmBu50cD23u6Rk7/lnqC5OgnlYpydXzLgJkGkLkx5wZ
	TQrYqqJn30szPHMdvOD3x+n8ZC2yVnfQsRsE51HXKR+UgBSxRuzEMMonH87l7dLgeJoBegNXHd/c1
	25fQvijcqgd7BGxToyoTQTg5wsItaRCoASocPqFrdP8PhVCHwwmBNEndIN4jROx72Cif1nO8JyrYE
	2EDTnEJDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itYUY-000854-Dz; Mon, 20 Jan 2020 14:57:26 +0000
Received: from pegase1.c-s.fr ([93.17.236.30])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itYU3-0007sa-HR
 for linux-arm-kernel@lists.infradead.org; Mon, 20 Jan 2020 14:57:01 +0000
Received: from localhost (mailhub1-int [192.168.12.234])
 by localhost (Postfix) with ESMTP id 481ZWC44c9z9v1xD;
 Mon, 20 Jan 2020 15:56:39 +0100 (CET)
Authentication-Results: localhost; dkim=pass
 reason="1024-bit key; insecure key"
 header.d=c-s.fr header.i=@c-s.fr header.b=iuBLQmw4; dkim-adsp=pass;
 dkim-atps=neutral
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
 by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
 with ESMTP id kzvItXeAdApu; Mon, 20 Jan 2020 15:56:39 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
 by pegase1.c-s.fr (Postfix) with ESMTP id 481ZWC2dgDz9v1xC;
 Mon, 20 Jan 2020 15:56:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=c-s.fr; s=mail;
 t=1579532199; bh=7a7pH0OuPJ37Tokg90N9GbyIEViwQm3IBxxlGbRco4U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=iuBLQmw4SdLFu8wXBuDZ2Hk+qOZ7RlDsSCIdnPQ/fwTAZttl5QD/WEybExnxVKYpn
 zKGmHcCaDYFBT0aF1DolPqjYevZoXPMFPjzQfN5g9anMJruv0gr2/LYX0xiPvp2Wln
 Wbfm7ED4pN8P0a3f4DeDkE6qqIZRKgkXlMJlv6SY=
Received: from localhost (localhost [127.0.0.1])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id 50E548B7CA;
 Mon, 20 Jan 2020 15:56:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
 by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
 with ESMTP id 7yXE7xArml9v; Mon, 20 Jan 2020 15:56:44 +0100 (CET)
Received: from po14934vm.idsi0.si.c-s.fr (po15451.idsi0.si.c-s.fr
 [172.25.230.100])
 by messagerie.si.c-s.fr (Postfix) with ESMTP id F37C98B7BD;
 Mon, 20 Jan 2020 15:56:43 +0100 (CET)
Subject: Re: [RFC PATCH v4 00/11] powerpc: switch VDSO to C implementation.
To: Segher Boessenkool <segher@kernel.crashing.org>
References: <cover.1579196675.git.christophe.leroy@c-s.fr>
 <20200117085851.GS3191@gate.crashing.org>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <3027b6d2-47a9-a871-7c52-050a5f9c6ab7@c-s.fr>
Date: Mon, 20 Jan 2020 14:56:00 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <20200117085851.GS3191@gate.crashing.org>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_065655_871574_39D29A3D 
X-CRM114-Status: GOOD (  13.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [93.17.236.30 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: nathanl@linux.ibm.com, arnd@arndb.de,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, x86@kernel.org,
 linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org,
 Paul Mackerras <paulus@samba.org>, luto@kernel.org,
 Michael Ellerman <mpe@ellerman.id.au>, tglx@linutronix.de,
 vincenzo.frascino@arm.com, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi

On 01/17/2020 08:58 AM, Segher Boessenkool wrote:
> Hi!
> 
> On Thu, Jan 16, 2020 at 05:58:24PM +0000, Christophe Leroy wrote:
>> On a powerpc8xx, with current powerpc/32 ASM VDSO:
>>
>> gettimeofday:    vdso: 907 nsec/call
>> clock-getres-realtime:    vdso: 484 nsec/call
>> clock-gettime-realtime:    vdso: 899 nsec/call
>>
>> The first patch adds VDSO generic C support without any changes to common code.
>> Performance is as follows:
>>
>> gettimeofday:    vdso: 1211 nsec/call
>> clock-getres-realtime:    vdso: 722 nsec/call
>> clock-gettime-realtime:    vdso: 1216 nsec/call
>>
>> Then a few changes in the common code have allowed performance improvement. At
>> the end of the series we have:
>>
>> gettimeofday:    vdso: 974 nsec/call
>> clock-getres-realtime:    vdso: 545 nsec/call
>> clock-gettime-realtime:    vdso: 941 nsec/call
>>
>> The final result is rather close to pure ASM VDSO:
>> * 7% more on gettimeofday (9 cycles)
>> * 5% more on clock-gettime-realtime (6 cycles)
>> * 12% more on clock-getres-realtime (8 cycles)
> 
> Nice!  Much better.
> 
> It should be tested on more representative hardware, too, but this looks
> promising alright :-)
> 

mpc832x (e300c2 core) at 333 MHz:

Before:

gettimeofday:    vdso: 235 nsec/call
clock-getres-realtime-coarse:    vdso: 1668 nsec/call
clock-gettime-realtime-coarse:    vdso: 1338 nsec/call
clock-getres-realtime:    vdso: 135 nsec/call
clock-gettime-realtime:    vdso: 244 nsec/call
clock-getres-boottime:    vdso: 1232 nsec/call
clock-gettime-boottime:    vdso: 1935 nsec/call
clock-getres-tai:    vdso: 1257 nsec/call
clock-gettime-tai:    vdso: 1898 nsec/call
clock-getres-monotonic-raw:    vdso: 1229 nsec/call
clock-gettime-monotonic-raw:    vdso: 1541 nsec/call
clock-getres-monotonic-coarse:    vdso: 1699 nsec/call
clock-gettime-monotonic-coarse:    vdso: 1477 nsec/call
clock-getres-monotonic:    vdso: 135 nsec/call
clock-gettime-monotonic:    vdso: 283 nsec/call

With the series:

gettimeofday:    vdso: 271 nsec/call
clock-getres-realtime-coarse:    vdso: 159 nsec/call
clock-gettime-realtime-coarse:    vdso: 184 nsec/call
clock-getres-realtime:    vdso: 163 nsec/call
clock-gettime-realtime:    vdso: 281 nsec/call
clock-getres-boottime:    vdso: 169 nsec/call
clock-gettime-boottime:    vdso: 274 nsec/call
clock-getres-tai:    vdso: 163 nsec/call
clock-gettime-tai:    vdso: 277 nsec/call
clock-getres-monotonic-raw:    vdso: 166 nsec/call
clock-gettime-monotonic-raw:    vdso: 302 nsec/call
clock-getres-monotonic-coarse:    vdso: 159 nsec/call
clock-gettime-monotonic-coarse:    vdso: 184 nsec/call
clock-getres-monotonic:    vdso: 166 nsec/call
clock-gettime-monotonic:    vdso: 274 nsec/call

Christophe

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
