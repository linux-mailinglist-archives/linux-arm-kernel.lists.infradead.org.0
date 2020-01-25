Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 292BF149279
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 25 Jan 2020 02:10:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=sJYuXW4oqYKiLpxXfjTiSgAX6PUXAU0v8SiO1YuPJ8w=; b=mknJRTr1/urIttlpsmzvIVrOW
	3RMDiMQDbvHqibgtT3cK89NTLu7McMwZFqJwe08GwJTf48leOBVhSb32T6BDVbpFUKNM5RQaUbvt7
	cmjxkATI3savnUAwcXprLnqRQ8kKZ+SE8R3p6NuVtoR7FNvmSGZl7nh7LUt7LQDT8YhRK89zKV8hj
	yytzdq6I9aLMX0oMnZRhXTJ6QyrDhKpIft5ojZ3Q1Z6l5cDsJFH0kdtSniVdyI0fDtE7NNe6bhp0t
	/EnLWkRaYStTjIwdF/6mY6GA8e5oFKZ5rX1lyUGqcDUR8a2065pPQCo3ksR/rSOEtsaR0U2ihwCRz
	YBwWEaagg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iv9xs-0005vL-7B; Sat, 25 Jan 2020 01:10:20 +0000
Received: from kross.rwserver.com ([69.13.37.146] helo=kross2019.rwserver.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iv9xh-0005KP-5T
 for linux-arm-kernel@lists.infradead.org; Sat, 25 Jan 2020 01:10:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by kross2019.rwserver.com (Postfix) with ESMTP id ADA55B3DC2;
 Fri, 24 Jan 2020 19:10:05 -0600 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuralgames.com;
 h=user-agent:message-id:references:in-reply-to:subject:subject
 :from:from:date:date:content-transfer-encoding:content-type
 :content-type:mime-version; s=default; t=1579914605; x=
 1581729006; bh=oobQmrNrtMrH5ic0QlZWtjmXlS2bin04onbQAnRpyJI=; b=g
 1w1f5kv5ixK4UfVj48ni8bD3RCw1DXYJy8+YnATBfjEGqB7+wMPBm5d3kIcsaOBS
 MEeRZDujLnNQIP/QVcKRCPUD1fIf260MmOsEJUlzojaejtbETzjCLfHYU/ISy84P
 KyvzeG7ldpFXIES2zkKUcV/P7FgNrAGQnQH+zEr3es=
X-Virus-Scanned: Debian amavisd-new at kross2019.rwserver.com
Received: from kross2019.rwserver.com ([127.0.0.1])
 by localhost (kross2019.rwserver.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yE5rXoj6bgXT; Fri, 24 Jan 2020 19:10:05 -0600 (CST)
Received: from rwserver.com (localhost [IPv6:::1])
 (Authenticated sender: linux@neuralgames.com)
 by kross2019.rwserver.com (Postfix) with ESMTPA id 30E46B3DC1;
 Fri, 24 Jan 2020 19:10:05 -0600 (CST)
MIME-Version: 1.0
Date: Fri, 24 Jan 2020 19:10:05 -0600
From: linux@neuralgames.com
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
In-Reply-To: <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
 <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
Message-ID: <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
X-Sender: linux@neuralgames.com
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200124_171009_348310_666A3C33 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-aspeed <linux-aspeed@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Matt Mackall <mpm@selenic.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Joel Stanley <joel@jms.id.au>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2020-01-22 19:53, Andrew Jeffery wrote:
>> Thanks for reviewing the patch.
>> 
>> The RNG on Aspeed hardware allows eight different modes for combining
>> its four internal Ring Oscillators that together generate a stream of
>> random bits. However, the timeriomem-rng driver does not allow for 
>> mode
>> selection so, the Aspeed RNG with this generic driver runs always on
>> mode 'seven' (The default value for mode according to the AspeedTech
>> datasheets).
>> 
>> I've performed some testings on this Aspeed RNG using the NIST
>> Statistical Test Suite (NIST 800-22r1a) and, the results I got show 
>> that
>> the default mode 'seven' isn't producing the best entropy and linear
>> rank when compared against the other modes available on these SOCs.  
>> On
>> the other hand, the driver that I'm proposing here allows for mode
>> selection which would help improve the random output for those looking
>> to get the best out of this Aspeed RNG.
> 
> Have you published the data and results of this study somewhere? This
> really should be mentioned in the commit message as justification for
> not using timeriomem-rng.
> 
> Andrew

Hi Andrew,

I have uploaded the results of my tests to my GitHub, along with all the 
binaries
containing the random bits that I collected from this Aspeed RNG using 
all 8 modes.
You can also find in this repository a patch for the hw_random core 
driver that
I've been using to collect this data. Here is the link:
   https://github.com/operezmuena/aspeed-rng-testing

You can see in the reports that when using large enough samples (40Mb in 
size)
this Aspeed RNG consistently fails the linear rank and entropy tests, no 
matter
what RNG mode is selected. However, modes 2, 4 and 6 produce better 
entropy than
the rest.
I'm now collecting rng data from 2 other AST2520 SOCs that I have in 
order to
compare results.

Regards,
Oscar




_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
