Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 08F1E34635
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  4 Jun 2019 14:05:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xQbhZ15kWJ5FwlldwmiAPoOQ1YPE0gzvM0KSwBsILKY=; b=Sj64sIOWGBdza5
	DUIUoQXs6aKv6CnxM3DaK/V+ydI0jrtAA57n7Y0T4s5UjowbB5op1PAg0rjYKhGGUW0+yE6v7ZqWG
	jZkEB+6K1zjpCm53PUqGU/ozdgbwY/8BmF9HCTCPge6c3yIvAAaPIbWfFwDE01JENPZExdnaV5Oh6
	vo4rvp2XFPrcUF2OfmuRWUXvd2W1rk36fQeVfn56kLQZySy25oLVtwCG771mfzRSAzdWTIn5fDwb5
	N6y7BMJcYmWPJVbKTy9SHTTHYiMF48FSMzf0Pw1Q4wYwLZH+3z80d1LWYyyi9Js6MlhvdP2DtQSh0
	fGbiqAKmMSZsT2qB6BWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hY8CO-00013F-Sn; Tue, 04 Jun 2019 12:05:52 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY8CH-00012F-Kl
 for linux-arm-kernel@lists.infradead.org; Tue, 04 Jun 2019 12:05:46 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 783AC80D;
 Tue,  4 Jun 2019 05:05:45 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 58CBA3F690;
 Tue,  4 Jun 2019 05:05:42 -0700 (PDT)
Subject: Re: [PATCH v6 01/19] kernel: Standardize vdso_datapage
To: Arnd Bergmann <arnd@arndb.de>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190530141531.43462-2-vincenzo.frascino@arm.com>
 <CAK8P3a3EnvkLND2RJdZtEY64PhK5g0sbbuytQro=f0cPur2g9g@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <bb5253b2-623c-c927-27a2-1d3a2990d20f@arm.com>
Date: Tue, 4 Jun 2019 13:05:40 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3EnvkLND2RJdZtEY64PhK5g0sbbuytQro=f0cPur2g9g@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190604_050545_684277_0E3F19D3 
X-CRM114-Status: GOOD (  16.41  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-arch <linux-arch@vger.kernel.org>, Shuah Khan <shuah@kernel.org>,
 Dmitry Safonov <0x7f454c46@gmail.com>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, linux-mips@vger.kernel.org,
 Paul Burton <paul.burton@mips.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Thomas Gleixner <tglx@linutronix.de>,
 Mark Salyzyn <salyzyn@android.com>, Peter Collingbourne <pcc@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 31/05/2019 09:16, Arnd Bergmann wrote:
> On Thu, May 30, 2019 at 4:15 PM Vincenzo Frascino
> <vincenzo.frascino@arm.com> wrote:
> 
>> + * vdso_data will be accessed by 64 bit and compat code at the same time
>> + * so we should be careful before modifying this structure.
>> + */
>> +struct vdso_data {
>> +       u32                     seq;
>> +
>> +       s32                     clock_mode;
>> +       u64                     cycle_last;
>> +       u64                     mask;
>> +       u32                     mult;
>> +       u32                     shift;
>> +
>> +       struct vdso_timestamp   basetime[VDSO_BASES];
>> +
>> +       s32                     tz_minuteswest;
>> +       s32                     tz_dsttime;
>> +       u32                     hrtimer_res;
>> +};
> 
> The structure contains four padding bytes at the end, which is
> something we try to avoid, at least if this ends up being used as
> an ABI. Maybe add "u32 __unused" at the end?
> 

Agreed, I will fix this in v7.

>      Arnd
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
