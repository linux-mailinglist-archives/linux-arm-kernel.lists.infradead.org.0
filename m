Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 052ECDC3E0
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 18 Oct 2019 13:20:21 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=NKELIDDtICkf+oI2Q/VAfQgi6NJytNeWjYrz4c4f1z0=; b=NLxaLH3RAWajE3Cpti6Ct9cxB
	bzrS6akdizBX86d8quUmcT+aO90WW3DzRxnpi23fXJphLgMhAUDo1/cjs/K42uQfoZvsV9uT0aZv6
	7Esqmp6CBpLgRckjlvO6mOdeEiQ188OcDDoqylo25tYmzzSaqTE0t33i8J6emTTdZqA+VcvHAR8xP
	pIXPQAUjwmZww3TIn6bSAGF/1aZJ33Eq42v/+PG/JKb6BaLSBg74KHQ+khXXZMm6kFCWqSrJlW4YA
	JnOFPZFQs5Y3FtlhnbeAJ4jgOw5XYX7KP5mOs6AGTZUcmE2fQvjnXBZ713awghL2TxJpm47s9w/AI
	WEInHFkuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iLQIt-00022i-44; Fri, 18 Oct 2019 11:20:19 +0000
Received: from imap1.codethink.co.uk ([176.9.8.82])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iLQIi-0001fn-Aw
 for linux-arm-kernel@lists.infradead.org; Fri, 18 Oct 2019 11:20:11 +0000
Received: from [167.98.27.226] (helo=[10.35.5.173])
 by imap1.codethink.co.uk with esmtpsa (Exim 4.84_2 #1 (Debian))
 id 1iLQIg-0000Pg-JD; Fri, 18 Oct 2019 12:20:06 +0100
Subject: Re: [PATCH] do not export show_fiq_list
To: Russell King - ARM Linux admin <linux@armlinux.org.uk>
References: <20191018103513.24096-1-ben.dooks@codethink.co.uk>
 <20191018111757.GH25745@shell.armlinux.org.uk>
From: Ben Dooks <ben.dooks@codethink.co.uk>
Organization: Codethink Limited.
Message-ID: <4cf40a46-e3b0-978e-5ff9-15e5410ac6a0@codethink.co.uk>
Date: Fri, 18 Oct 2019 12:20:05 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191018111757.GH25745@shell.armlinux.org.uk>
Content-Language: en-GB
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191018_042010_479364_5A9834A9 
X-CRM114-Status: GOOD (  14.86  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [176.9.8.82 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: linux-kernel@lists.codethink.co.uk, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 18/10/2019 12:17, Russell King - ARM Linux admin wrote:
> On Fri, Oct 18, 2019 at 11:35:13AM +0100, Ben Dooks (Codethink) wrote:
>> The show_fiq_list() is not used outside the file it is
>> defined in, so make it static and remove the header
>> file declaration (which it did not include) to remove
>> the following sparse warning:
>>
>> arch/arm/kernel/fiq.c:85:5: warning: symbol 'show_fiq_list' was not declared. Should it be static?
> 
> NAK.  This is called from arch/arm/kernel/irq.c; making it static will
> create a link failure.
> 
> Please don't take sparse "suggestions" as the correct solution, always
> research the warning thoroughly before coming up with a solution.  In
> this case:
> 
> $ grep -r show_fiq_list arch/arm
> 
> would have shown why this change is wrong.

yes, failed to see irq.c was != to fiq.c


-- 
Ben Dooks				http://www.codethink.co.uk/
Senior Engineer				Codethink - Providing Genius

https://www.codethink.co.uk/privacy.html

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
