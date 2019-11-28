Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AA9C310C8A3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 28 Nov 2019 13:24:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NOexAEwtIl9rVAXkaKnR8FDnp+93RKc6WThlTUnEuL8=; b=uFwZev1pDjVgjG
	a7V7wHac6IMKt1tH9cFl99nVtl/0eU9494EIVh2cxM+y58ElupmrZfPB3iaGB6WBPt8AtA7oP7lgb
	D7a0Ki5m1hw/FQaFWEO2fmuDuE6H+HYEQEVVqn/Ev2uChoBXO6ntqNzZC8fqPI7Dd+3Rcrebk+QOq
	zXANNH1xxxqN++Xhafowtv5YH34ipoZF15ltgXI5l+fspYomRbVyGE1I8/JPwn07zbI0Hpe+ipPwd
	BjZDAZ0XJAAKSU1rGS37tfSf7+uxU7oNgP2Jv9tMNguIVXJDCKDC9IEmPmc76rKkgQWtcmy3sxQw/
	/iW1d88ZigsSzHNUyfxg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iaIqV-00010x-VJ; Thu, 28 Nov 2019 12:24:31 +0000
Received: from ns.iliad.fr ([212.27.33.1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iaIqK-000100-Ph
 for linux-arm-kernel@lists.infradead.org; Thu, 28 Nov 2019 12:24:22 +0000
Received: from ns.iliad.fr (localhost [127.0.0.1])
 by ns.iliad.fr (Postfix) with ESMTP id 9D2EA2034E;
 Thu, 28 Nov 2019 13:24:17 +0100 (CET)
Received: from [192.168.108.51] (freebox.vlq16.iliad.fr [213.36.7.13])
 by ns.iliad.fr (Postfix) with ESMTP id 87F53201B5;
 Thu, 28 Nov 2019 13:24:17 +0100 (CET)
Subject: Re: sparse warnings for arch/arm64/kernel/vdso/vgettimeofday.c
To: Vincenzo Frascino <vincenzo.frascino@arm.com>,
 Thomas Gleixner <tglx@linutronix.de>
References: <bc4cc5c0-5192-4772-5444-17bba3ab74fa@free.fr>
 <848ca352-ea77-9840-d94a-96cc78b79795@arm.com>
From: Marc Gonzalez <marc.w.gonzalez@free.fr>
Message-ID: <23a4ac1c-40c2-94ba-63ff-8c74c26fdbf2@free.fr>
Date: Thu, 28 Nov 2019 13:24:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <848ca352-ea77-9840-d94a-96cc78b79795@arm.com>
Content-Language: en-US
X-Virus-Scanned: ClamAV using ClamSMTP ; ns.iliad.fr ;
 Thu Nov 28 13:24:17 2019 +0100 (CET)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191128_042420_984472_C8FC6AF5 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [212.27.33.1 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (marc.w.gonzalez[at]free.fr)
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
Cc: Mark Rutland <mark.rutland@arm.com>, Arnd Bergmann <arnd@arndb.de>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will.deacon@arm.com>,
 Russell King <linux@armlinux.org.uk>, Dave Martin <dave.martin@arm.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/11/2019 11:44, Vincenzo Frascino wrote:

> On 26/11/2019 10:42, Marc Gonzalez wrote:
>
>> Running 'make C=2' on v5.4 (arm64 defconfig) outputs:
>>
>>   CHECK   arch/arm64/kernel/vdso/vgettimeofday.c
> 
> [...]
> 
>> Are the above warnings all false positives?
>> Do I need to update my version of sparse maybe?
>>
> 
> I downloaded the latest git of sparse and seems that the only warning I am
> getting is:
> 
> linux/lib/vdso/gettimeofday.c:224:5: warning: symbol '__cvdso_clock_getres' was
> not declared. Should it be static?

Interesting. Dunno which version I'm running, as sparse appears
to ignores the --version flag.

$ apt list --installed | grep ^sparse
sparse/bionic,now 0.5.1-2 amd64 [installed]

https://sparse.wiki.kernel.org/index.php/Main_Page

I appear to be running a 2 year old version.

Sorry for the noise. I need to figure out how to upgrade this without
breaking apt...

Regards.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
