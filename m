Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EA2B04E329
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Jun 2019 11:17:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LdTCvTw3p2MOffCQHeHIFE58Txk6s1mbMgtWKASrsPQ=; b=dHDs08NOCB78I/
	ZljsFmMjMpeuCFoPHToMrI0Moc+TZOITat3w267r1qaCFJCJWlv9VHNDHK1kZP/ufWS3UIevd5JdL
	wtbWjLUd2021PmiJI1+0glTItFx/KpV7EcXshQajURie3jhXCPo2n0Xa4pB/zoZvxkt5qV+d48b7c
	TVpUeTpAO67ZYQUnm5BpiUbXA9Idb+WMu9ynBoKkpuOJpCHEa+ej+O1X7DVyj+a91FzQpviz46XN8
	q4yyITHX9LqGd3Xg2yp7dU0866eTAi7rK95jFv4WGPFAOKi5HVWbUPc/6HotDjpx501szNz5Khhlb
	Ytt48IhdNsSUUhWbsDqw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heFfe-0002xZ-5h; Fri, 21 Jun 2019 09:17:22 +0000
Received: from foss.arm.com ([217.140.110.172])
 by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
 id 1heFaW-0007LU-N3
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Jun 2019 09:12:07 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 98C30360;
 Fri, 21 Jun 2019 02:12:02 -0700 (PDT)
Received: from [10.1.196.72] (e119884-lin.cambridge.arm.com [10.1.196.72])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3041B3F246;
 Fri, 21 Jun 2019 02:12:00 -0700 (PDT)
Subject: Re: [PATCH v6 00/19] Unify vDSOs across more architectures
To: Andre Przywara <andre.przywara@arm.com>
References: <20190530141531.43462-1-vincenzo.frascino@arm.com>
 <20190620172746.7f92cb14@donnerap.cambridge.arm.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <40c3e4e9-96d3-f940-f5cb-ed97762ef9b0@arm.com>
Date: Fri, 21 Jun 2019 10:11:58 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190620172746.7f92cb14@donnerap.cambridge.arm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_021204_992551_18954478 
X-CRM114-Status: GOOD (  18.50  )
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
Cc: linux-arch@vger.kernel.org, Peter Collingbourne <pcc@google.com>,
 Arnd Bergmann <arnd@arndb.de>, Huw Davies <huw@codeweavers.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Daniel Lezcano <daniel.lezcano@linaro.org>, Will Deacon <will.deacon@arm.com>,
 linux-kernel@vger.kernel.org, Ralf Baechle <ralf@linux-mips.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 linux-kselftest@vger.kernel.org, Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Russell King <linux@armlinux.org.uk>, Dmitry Safonov <0x7f454c46@gmail.com>,
 Mark Salyzyn <salyzyn@android.com>, Shuah Khan <shuah@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 20/06/2019 17:27, Andre Przywara wrote:
> On Thu, 30 May 2019 15:15:12 +0100
> Vincenzo Frascino <vincenzo.frascino@arm.com> wrote:
> 
> Hi,
> 
>> vDSO (virtual dynamic shared object) is a mechanism that the Linux
>> kernel provides as an alternative to system calls to reduce where
>> possible the costs in terms of cycles.
>> [ ... ]
>> The porting has been benchmarked and the performance results are
>> provided as part of this cover letter.
> 
> I can't reveal the absolute numbers here, but vdsotest-bench gives me
> quite some performance gain on my board here ("time needed on v6" divided
> by "time needed on 5.2-rc1", so smaller percentages are better):
> clock-gettime-monotonic:	23 %
> clock-gettime-monotonic-raw:	30 %
> clock-gettime-tai:		 5 %
> clock-getres-tai:		 5 %
> clock-gettime-boottime:		 5 %
> clock-getres-boottime:		 5 %
> clock-gettime-realtime:		25 %
> gettimeofday:			26 % 
> The other numbers stayed the same or differed by just 1 ns, which seems to
> be within the margin of error, as repeated runs on the same kernel suggest.
> The 5% numbers are of course those were we went from a syscall-only to the
> newly added arm64 VDSO implementation, but even the other calls improved
> by a factor of 3 or more.
> 
> Sounds like a strong indicator that this is a good thing to have.
> 
> Not sure if "running some benchmark a couple of times on a single machine"
> qualifies for this, but I guess it means:
> 
> Tested-by: Andre Przywara <andre.przywara@arm.com>
>

Thanks Andre, it sounds great! I will add your tag as well to my patches.

> Cheers,
> Andre.
> 

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
