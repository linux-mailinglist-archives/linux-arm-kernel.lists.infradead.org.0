Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4EFEDBFED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 10:30:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=b+Zq9adOglIR7OTCZ7Ob8W4Z5A0vFKMtH/yRWdLmdT0=; b=q3suVEzVkPdoTe
	SoMyA7Z79t2drVqe+YvSYjxNvfFZXzgXGBwmVdPiiuih7gi4KnFixMOUI66GyTrKZbLV3rDUT89RC
	7sYs+C1CEFcwtFFcTcsyLM1ohwbVVJHRa52ZU/8pE+ShAayDl3kkHLEn+SmFwKyddXhs9SrPC746Y
	pX0S/IowLPhlfx7gY09FlhiNrTCV0OBGGfqsuEmVND4rAUNaHQAMfHd93Gcu9uNk+iaA5c0/K8erP
	5Oj160cG5YLmERNeUNrEk35/T4YK4nEHXjkgr+Ri630XgNdMQ6qK77xwamup4alJ39TtdQ8iMfGDC
	TkAdRvhmFx/3cmDHbaug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLNei-0008IB-11; Fri, 18 Oct 2019 08:30:40 +0000
Received: from [217.140.110.172] (helo=foss.arm.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLNeX-0008GG-95
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 08:30:31 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4F9EF32B;
 Fri, 18 Oct 2019 01:30:16 -0700 (PDT)
Received: from [192.168.1.103] (unknown [172.31.20.19])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id C62413F718;
 Fri, 18 Oct 2019 01:30:13 -0700 (PDT)
Subject: Re: [PATCH] lib/vdso: Use __arch_use_vsyscall() to indicate fallback
To: Andy Lutomirski <luto@kernel.org>, Huacai Chen <chenhc@lemote.com>,
 Maxime Bizon <mbizon@freebox.fr>
References: <1571367619-13573-1-git-send-email-chenhc@lemote.com>
 <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <6581a6e8-45c9-a80c-d2a4-33466f5712fd@arm.com>
Date: Fri, 18 Oct 2019 09:32:09 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CALCETrWXRgkQOJGRqa_sOLAG2zhjsEX6b86T2VTsNYN9ECRrtA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_013029_366411_1713FDDB 
X-CRM114-Status: GOOD (  14.41  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
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
Cc: Arnd Bergmann <arnd@arndb.de>, chenhuacai@gmail.com,
 LKML <linux-kernel@vger.kernel.org>, stable <stable@vger.kernel.org>,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Thomas Gleixner <tglx@linutronix.de>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy and Hucan,

On 10/18/19 4:15 AM, Andy Lutomirski wrote:
> On Thu, Oct 17, 2019 at 7:57 PM Huacai Chen <chenhc@lemote.com> wrote:
>>
>> In do_hres(), we currently use whether the return value of __arch_get_
>> hw_counter() is negtive to indicate fallback, but this is not a good
>> idea. Because:
>>
>> 1, ARM64 returns ULL_MAX but MIPS returns 0 when clock_mode is invalid;
>> 2, For a 64bit counter, a "negtive" value of counter is actually valid.
> 
> s/negtive/negative
> 
> What's the actual bug?  Is it that MIPS is returning 0 but the check
> is < 0?  Sounds like MIPS should get fixed.
> 

I submitted a patch for this yesterday to the MIPS maintainers [1]. The MIPS32
r1 implementation had a bug when VDSO_CLOCK_NONE was set.

The issue has been reported by Maxime Bizon who tested the fix as well.

[1] https://patchwork.kernel.org/patch/11193391/

-- 
Regards,
Vincenzo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
