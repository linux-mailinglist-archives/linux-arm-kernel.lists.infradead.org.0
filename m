Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F9AE14C3FC
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Jan 2020 01:26:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:Subject:To:From:
	Date:MIME-Version:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=LTm87KzEXmM00bp3gQhpk5I6zmZXAAOD2xvUw/g+gTQ=; b=Attk70879GxW+F6UMoS8wO6/X
	ucJ6lv2i12CWjTlgAxQCcQh50dzROVwYBGabnk+M+1r8sd+HxJGvmAPAngZ8XSIbV2DdZ9iJzfP5P
	5qJgkxo5hM+RdIBgJi9HEjrn0tbLaIxwr0sX34Rw1i8ZxWvdSJSMswGPp2S8S1+FvkUu2utS8eDiQ
	hCyKd5kGj+ZoWGb9dBpYbSMbiGuK8NOEjnWwEXjxeNcn0cvzcpAHg4Sob5FgxxbQVY/kbxfUyxDmR
	IXWhnOFby20NgOmRYKHiyfNYvNnvexATeSgSouvp8GzdFHFyktRGeAfSfGq7mFrvPZYE0zpG30Jvg
	y1lXqbBsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iwbBv-0000Cc-B9; Wed, 29 Jan 2020 00:26:47 +0000
Received: from kross.rwserver.com ([69.13.37.146] helo=kross2019.rwserver.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat
 Linux)) id 1iwbBn-0000Bp-IG
 for linux-arm-kernel@lists.infradead.org; Wed, 29 Jan 2020 00:26:41 +0000
Received: from localhost (localhost [127.0.0.1])
 by kross2019.rwserver.com (Postfix) with ESMTP id 2BC1BB436A;
 Tue, 28 Jan 2020 18:26:36 -0600 (CST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=neuralgames.com;
 h=user-agent:message-id:references:in-reply-to:subject:subject
 :from:from:date:date:content-transfer-encoding:content-type
 :content-type:mime-version; s=default; t=1580257595; x=
 1582071996; bh=NcEq+8O19pWFogVE4XEPDEfmjtWbyS6YyD31VnkTQO8=; b=v
 shDoo2M3zBT1my+yjm4Pau0sd8OAbNDbgpfch12tec7ZmYgDa+4cTiX6/hLX8hNU
 CPEkkcDDCTmI1Orqsua+BVx0Et2Kq8zoIbzZIS41ZA4b33FciyBIay2Q99V/MMG5
 GeybSomHbdtlGmEsh0YdnOyhGxoQdbdW2BMiWqUGGo=
X-Virus-Scanned: Debian amavisd-new at kross2019.rwserver.com
Received: from kross2019.rwserver.com ([127.0.0.1])
 by localhost (kross2019.rwserver.com [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id yl3H-oaJq5TK; Tue, 28 Jan 2020 18:26:35 -0600 (CST)
Received: from rwserver.com (localhost [IPv6:::1])
 (Authenticated sender: linux@neuralgames.com)
 by kross2019.rwserver.com (Postfix) with ESMTPA id 79B3BB4365;
 Tue, 28 Jan 2020 18:26:35 -0600 (CST)
MIME-Version: 1.0
Date: Tue, 28 Jan 2020 18:26:35 -0600
From: linux@neuralgames.com
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH 1/2] hwrng: Add support for ASPEED RNG
In-Reply-To: <b83f2a1f-e1be-433c-8dc8-c469cb38f423@www.fastmail.com>
References: <20200120150113.2565-1-linux@neuralgames.com>
 <CACPK8XfuVN3Q=npEoOP-amQS0-wemxcx6LKaHHZEsBAHzq1wzA@mail.gmail.com>
 <4446ffb694c7742ca9492c7360856789@neuralgames.com>
 <575811fd-24ca-409c-8d33-c2152ee401d7@www.fastmail.com>
 <136bbab84d13d8d56a5ac297e415975e@neuralgames.com>
 <b83f2a1f-e1be-433c-8dc8-c469cb38f423@www.fastmail.com>
Message-ID: <27c5505acd8d09f70ec9cd12982b2e3e@neuralgames.com>
X-Sender: linux@neuralgames.com
User-Agent: Roundcube Webmail/1.3.8
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200128_162639_739486_975A24D9 
X-CRM114-Status: GOOD (  21.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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

On 2020-01-27 18:53, Andrew Jeffery wrote:
> On Sat, 25 Jan 2020, at 11:40, linux@neuralgames.com wrote:
>> On 2020-01-22 19:53, Andrew Jeffery wrote:
>> >> Thanks for reviewing the patch.
>> >>
>> >> The RNG on Aspeed hardware allows eight different modes for combining
>> >> its four internal Ring Oscillators that together generate a stream of
>> >> random bits. However, the timeriomem-rng driver does not allow for
>> >> mode
>> >> selection so, the Aspeed RNG with this generic driver runs always on
>> >> mode 'seven' (The default value for mode according to the AspeedTech
>> >> datasheets).
>> >>
>> >> I've performed some testings on this Aspeed RNG using the NIST
>> >> Statistical Test Suite (NIST 800-22r1a) and, the results I got show
>> >> that
>> >> the default mode 'seven' isn't producing the best entropy and linear
>> >> rank when compared against the other modes available on these SOCs.
>> >> On
>> >> the other hand, the driver that I'm proposing here allows for mode
>> >> selection which would help improve the random output for those looking
>> >> to get the best out of this Aspeed RNG.
>> >
>> > Have you published the data and results of this study somewhere? This
>> > really should be mentioned in the commit message as justification for
>> > not using timeriomem-rng.
>> >
>> > Andrew
>> 
>> Hi Andrew,
>> 
>> I have uploaded the results of my tests to my GitHub, along with all 
>> the
>> binaries
>> containing the random bits that I collected from this Aspeed RNG using
>> all 8 modes.
>> You can also find in this repository a patch for the hw_random core
>> driver that
>> I've been using to collect this data. Here is the link:
>>    https://github.com/operezmuena/aspeed-rng-testing
>> 
>> You can see in the reports that when using large enough samples (40Mb 
>> in
>> size)
>> this Aspeed RNG consistently fails the linear rank and entropy tests, 
>> no
>> matter
>> what RNG mode is selected. However, modes 2, 4 and 6 produce better
>> entropy than
>> the rest.
>> I'm now collecting rng data from 2 other AST2520 SOCs that I have in
>> order to
>> compare results.
> 
> Nice work. Eyeballing the summaries, it seems mode 6 or mode 4 may be
> improvements over 7? What's your analysis? It would be nice to have the
> data from your other two SoCs to corroborate. Again, going forward, 
> please
> point to your measurements in your commit message.
> 

Hi Andrew,

I pushed to my GitHub repository the RNG dumps and NIST reports from the 
other 2 SOCs. The results are similar to the first SOC. None of the 
modes passed the NIST test for linear rank and approximate entropy. 
Also, these SOCs show that mode 6 produces better results than mode 7. 
However, having only a sample of 3 SOCs isn't going to give us 
statistical significance about which mode would be the best one on these 
SOCs but, it is hinting us that perhaps allowing the selection of other 
RNG modes would be a good feature to have in a driver.
Now, I must say that this is the first RO-based RNG that I have tested 
and I'm a bit concerned about the results I've been getting. I'm now 
wondering how RNGs from other SOC vendors would perform with this same 
test suite.

> Not that I've looked, but is it feasible to augment timeriomem-rng with
> the ability to configure the RNG rather than implement a new driver? 
> Why
> didn't you go that route?
> 
> Andrew

I decided to wrote the Aspeed-RNG driver because was under the 
impression that the community would prefer dedicated drivers over 
generic ones for these SOCs.  However, enhancing timeriomem-rng module 
is not hard at all.  As I matter of fact, I'm currently testing changes 
to timeriomem-rng and so far so good. If you would like to have a quick 
look to my changes, I just pushed patches to the same repo a couple of 
hours ago:  
https://github.com/operezmuena/aspeed-rng-testing/tree/master/patches

Thanks
Oscar

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
