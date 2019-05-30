Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F87630028
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 May 2019 18:27:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yoM1Wx/CatwdcFqJME4zQj2yaBPKDbaHAB5+KIpEzh4=; b=g8rR3mPIe5s5Po
	Y7R5CZwrweScQurJvyUXgMPhbQvOoOYmY3jscbeCyAht93iaF/wq57HoLgiYDTt2UvnPBhvHBkjVa
	JJn1ohOnil6Uphx0MOSOOCXBNy9VqEq+yjg+aGrQOSIw3WcIk0Tytsz+i+UxBlbyP2d03QnnUHshP
	X6mZakmMaxOGEOG5gGgpTPxBwc/g41EZK5EkpeRhkqkwMxE7CQqxVenJUl4tNOCPkZunZ3IwOlQ1I
	1p2R/t8rCA8PbAd28+mKmA1PkRQnWp9ml/Rt15geIRCa3FvT1GDXOz+cxFrKcDA6G5IP+ICoB2gE6
	GLlO+Y6/jirIC5nhndWA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWNtV-0005Ub-Be; Thu, 30 May 2019 16:27:09 +0000
Received: from foss.arm.com ([217.140.101.70])
 by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWNtN-0005U8-He
 for linux-arm-kernel@lists.infradead.org; Thu, 30 May 2019 16:27:02 +0000
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.72.51.249])
 by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 016D315AD;
 Thu, 30 May 2019 09:27:01 -0700 (PDT)
Received: from [10.1.197.21] (usa-sjc-imap-foss1.foss.arm.com [10.72.51.249])
 by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id
 56A563F5AF; Thu, 30 May 2019 09:26:59 -0700 (PDT)
Subject: Re: [RFC v2 5/7] arm64: initialize and switch ptrauth kernel keys
To: Kees Cook <keescook@chromium.org>
References: <20190529190332.29753-1-kristina.martsenko@arm.com>
 <20190529190332.29753-6-kristina.martsenko@arm.com>
 <201905292027.B439EF2CA@keescook>
From: Kristina Martsenko <kristina.martsenko@arm.com>
Message-ID: <13eae27a-6348-fdc9-c92b-9156ec2ac3ab@arm.com>
Date: Thu, 30 May 2019 17:26:57 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <201905292027.B439EF2CA@keescook>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190530_092701_591001_383E259C 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [217.140.101.70 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Suzuki K Poulose <suzuki.poulose@arm.com>, Will Deacon <will.deacon@arm.com>,
 Ramana Radhakrishnan <ramana.radhakrishnan@arm.com>,
 Amit Kachhap <Amit.Kachhap@arm.com>, Dave Martin <Dave.Martin@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 30/05/2019 04:34, Kees Cook wrote:
> On Wed, May 29, 2019 at 08:03:30PM +0100, Kristina Martsenko wrote:
>> Set up keys to use pointer authentication within the kernel. The kernel
>> will be compiled with APIAKey instructions, the other keys are currently
>> unused. Each task is given its own APIAKey, which is initialized during
>> fork. The key is changed during context switch and on kernel entry from
>> EL0.
>>
>> A function that changes the key cannot return, so compile such functions
>> without pointer auth (using __no_ptrauth which will be defined to a
>> compiler function attribute later).
>>
>> Signed-off-by: Kristina Martsenko <kristina.martsenko@arm.com>
> 
> Just so I'm reading this right: the kernel is only using APIAKey?

Yes, that's right. The compiler options (in patch #7) will compile the
kernel with only APIAKey instructions, so the kernel will only use
APIAKey. We don't initialize or install the other 4 keys for the kernel
(only for userspace). Let me know if the commit message could be clearer
in some way.

> Reviewed-by: Kees Cook <keescook@chromium.org>

Thanks for all the review!

Kristina

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
