Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18FF8644A7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jul 2019 11:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+mTrQxAsYuadpaoaGuiiIf1WV8BfGjPGUj2iKugocX8=; b=SZz4s5F0Pjwxmt
	QejVyVO8u/j7yGHE9qnrOBcf3MjdwND/9J2NC6PlVGo7utl/qcHmhcpYFRlH4q7tuyTh9CRCgPfLh
	sW4IQMoNbaOTW4y1S7CsGZy9PQr+KuO0/Bex+LGyDau2HZeOecD1vD2EAVVpIMPWJnQwMAxpXQiTG
	qDdvL3HoRalx7Ikfd56/rfunHmfgkJYheqdTmR08CdyXgmLGqT5x9xzJN+UCdnZXYV8eF016wxDdt
	V5Ma4iD24dIOaLLNOs9oZjOVyVOHOv1Uz58jAcLJKT1amWOXM7LOjjvbQ2PhpTvNxEZaq7i2/AGaY
	pGhh7jT5bZ3SENe3yYcg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hl9Dr-0002St-J6; Wed, 10 Jul 2019 09:49:11 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1hl9De-0002SA-CR
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jul 2019 09:48:59 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C9DEE344;
 Wed, 10 Jul 2019 02:48:57 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3F5283F246;
 Wed, 10 Jul 2019 02:48:55 -0700 (PDT)
Subject: Re: [PATCH v7 10/25] arm64: compat: Add vDSO
To: Thomas Gleixner <tglx@linutronix.de>, John Stultz <john.stultz@linaro.org>
References: <20190621095252.32307-1-vincenzo.frascino@arm.com>
 <20190621095252.32307-11-vincenzo.frascino@arm.com>
 <CALAqxLXxE5B+vVLj7NcW8S05nhDQ+XSKVn=_MNDci667JDFEhA@mail.gmail.com>
 <alpine.DEB.2.21.1907100811170.1758@nanos.tec.linutronix.de>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <b2dccce1-8cf2-1330-7ea9-7636e0da3c42@arm.com>
Date: Wed, 10 Jul 2019 10:48:53 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.21.1907100811170.1758@nanos.tec.linutronix.de>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_024858_479167_539A04DD 
X-CRM114-Status: GOOD (  16.12  )
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
Cc: linux-arch@vger.kernel.org, Shijith Thotton <sthotton@marvell.com>,
 Peter Collingbourne <pcc@google.com>, Arnd Bergmann <arnd@arndb.de>,
 Huw Davies <huw@codeweavers.com>, Andre Przywara <andre.przywara@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 lkml <linux-kernel@vger.kernel.org>, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-kselftest@vger.kernel.org,
 Catalin Marinas <catalin.marinas@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/07/2019 07:12, Thomas Gleixner wrote:
> On Tue, 9 Jul 2019, John Stultz wrote:
>> Though unfortunately, it seems the arm64 vdso code that just landed is
>> breaking AOSP for me.
>>
>> I see a lot of the following errors:
>> 01-01 01:22:14.097   755   755 F libc    : Fatal signal 11 (SIGSEGV),
>> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 755 (cameraserver),
>> pid 755 (cameraserver)
>> 01-01 01:22:14.112   759   759 F libc    : Fatal signal 11 (SIGSEGV),
>> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 759
>> (android.hardwar), pid 759 (android.hardwar)
>> 01-01 01:22:14.120   756   756 F libc    : Fatal signal 11 (SIGSEGV),
>> code 1 (SEGV_MAPERR), fault addr 0x3cf2c96c in tid 756 (drmserver),
>> pid 756 (drmserver)
>>
>> Which go away if I revert the vdso merge that went in via tip/timers.
>>
>> I tried to bisect things down a bit, but as some later fixes are
>> required (at one point, date was returning the start epoch and never
>> increasing), this hasn't worked too well. But I'm guessing since I
>> see: "CROSS_COMPILE_COMPAT not defined or empty, the compat vDSO will
>> not be built", and the system is half working, I'm guessing this is an
>> issue with just the 32bit code failing.  While I can try to sort out
>> the proper CROSS_COMPILE_COMPAT in my build environment, I assume
>> userland shouldn't be crashing if that value isn't set.
> 
> The obvious question is whether the VDSO is mapped to the 32bit process in
> that case. It shouldn't...
>

Agreed. I am investing if/why this is happening and will post a fix accordingly.

> Thanks,
> 
> 	tglx
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
