Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 045C5E4AE8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 25 Oct 2019 14:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=YiFftY7Fz1VCej9nBlxOVRtrItdbhZVMEAR6ghRY9MI=; b=WKU5Ow5ROp5sjLWdUFxTUy8Ue
	jI/GURssgzKq5rlS6gbcOh3JoRKpLBNaMwst5WJWIrk3u11qQPqHgq/YlBYN5NT95XizPLRtQCcMA
	7vjXhn+YGRZiEykLjnO8tR4jrRmTidgLJExSRMBp8s6j4OCmsaw/sh/PD8Xe9LjLgedIMd6NoOmUH
	siii8gCTrOHF2zC7Qd6ioPRbPZuo5aAu0Keq/fgcI4vu5Avy4vNSOn0oBlU/K2Xu0URtJ6OzlDbN8
	BLS1kGltjL7Ix6//5+W6kCmZwRjbgN1c592+v4S0CVXbjSxWCI1g3Q8oDg4FVm1vADz6xBhaKcAB8
	lBV1ngZhQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNyY6-0004NQ-4E; Fri, 25 Oct 2019 12:18:34 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNyXu-00046V-4N
 for linux-arm-kernel@lists.infradead.org; Fri, 25 Oct 2019 12:18:23 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x9PCIAAB097511;
 Fri, 25 Oct 2019 07:18:10 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1572005890;
 bh=+AzN6QW8Y9V9KQdYzGUqYfgRbdiMJlLbgEwmAB6P/78=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=GVNJe/qymU047YRv+aTEq5SjDKaOQ3kDyFLM0M8vuM6Ggf1mh1raMGzlb1Gsn2D2c
 E/AW1kbD/9rorjIUQKuLnCtpeD+y4rVsXdIAxnHPTXyvYw7bcQKkmt1ATIsALgSTsf
 RDOMq6OPv/YTENR50VIvS/sjAtYztCJUzDNPjS2E=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x9PCIAEZ024029
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 25 Oct 2019 07:18:10 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 25
 Oct 2019 07:17:59 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 25 Oct 2019 07:17:59 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x9PCI7A8025611;
 Fri, 25 Oct 2019 07:18:08 -0500
Subject: Re: [PATCH 00/10] crypto: omap fixes towards 5.5
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <CAKv+Gu_HNOTSvWRTzLMeECaM8qCi5w806ht_e68e5vgcU9aQvQ@mail.gmail.com>
 <8f97d690-a88a-55cb-eb67-206e01873d94@ti.com>
 <bf22f7dd-5446-d736-611b-6465df45b74d@ti.com>
 <CAKv+Gu_ABcosRm30nrtCY429Xki8_b9GAzQ=hQ=Kiuo2o6Y2ng@mail.gmail.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <359434e9-3289-2982-edc1-b93e76c28700@ti.com>
Date: Fri, 25 Oct 2019 15:18:06 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAKv+Gu_ABcosRm30nrtCY429Xki8_b9GAzQ=hQ=Kiuo2o6Y2ng@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191025_051822_261553_00FCA5A5 
X-CRM114-Status: GOOD (  19.79  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "open list:HARDWARE RANDOM NUMBER GENERATOR CORE"
 <linux-crypto@vger.kernel.org>, linux-omap@vger.kernel.org,
 Herbert Xu <herbert@gondor.apana.org.au>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "David S. Miller" <davem@davemloft.net>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 25/10/2019 15:05, Ard Biesheuvel wrote:
> On Fri, 25 Oct 2019 at 13:56, Tero Kristo <t-kristo@ti.com> wrote:
>>
>> On 25/10/2019 14:55, Tero Kristo wrote:
>>> On 25/10/2019 14:33, Ard Biesheuvel wrote:
>>>> On Thu, 17 Oct 2019 at 14:26, Tero Kristo <t-kristo@ti.com> wrote:
>>>>>
>>>>> Hi,
>>>>>
>>>>> This series fixes a number of bugs with omap crypto implementation.
>>>>> These have become evident with the changes to the cryptomanager, where
>>>>> it adds some new test cases and modifies some existing, namely the split
>>>>> update tests. Also, while fixing the cryptomanager induced bugs, some
>>>>> other surfaced with tcrypt/IPSec tests, so fixed them aswell.
>>>>>
>>>>> Patch #9 is against crypto core modifying the crypto_wait_req
>>>>> common API to have a timeout for it also, currently it waits forever
>>>>> and it is kind of difficult to see what test fails with crypto manager.
>>>>> This is not really needed for anything, but it is kind of nice to have
>>>>> (makes debugging easier.)
>>>>>
>>>>> This series has been tested on top of 5.4-rc2, with following setups,
>>>>> on AM57xx-beagle-x15 board:
>>>>>
>>>>> - crypto manager self tests
>>>>> - tcrypt performance test
>>>>> - ipsec test with strongswan
>>>>>
>>>>> This series depends on the skcipher API switch patch from Ard Biesheuvel
>>>>> [1].
>>>>>
>>>>
>>>> Hi Tero,
>>>>
>>>> On my BeagleBone White, I am hitting the following issues after
>>>> applying these patches:
>>>>
>>>> [    7.493903] alg: skcipher: ecb-aes-omap encryption unexpectedly
>>>> succeeded on test vector "random: len=531 klen=32";
>>>> expected_error=-22, cfg="random: inplace may_sleep use_finup
>>>> src_divs=[44.72%@+4028, <flush>14.70%@alignmask+3, 19.45%@+4070,
>>>> 21.13%@+2728]"
>>>> [    7.651103] alg: skcipher: cbc-aes-omap encryption unexpectedly
>>>> succeeded on test vector "random: len=1118 klen=32";
>>>> expected_error=-22, cfg="random: may_sleep use_final
>>>> src_divs=[<reimport>41.87%@+31, <flush>58.13%@+2510]"
>>>>
>>>> These are simply a result of the ECB and CBC implementations not
>>>> returning -EINVAL when the input is not a multiple of the block size.
>>>>
>>>> [    7.845527] alg: skcipher: blocksize for ctr-aes-omap (16) doesn't
>>>> match generic impl (1)
>>>>
>>>> This means cra_blocksize is not set to 1 as it should. If your driver
>>>> uses the skcipher walk API, it should set the walksize to
>>>> AES_BLOCK_SIZE to ensure that the input is handled correctly. If you
>>>> don't, then you can disregard that part.
>>>>
>>>> [    8.306491] alg: aead: gcm-aes-omap setauthsize unexpectedly
>>>> succeeded on test vector "random: alen=3 plen=31 authsize=6 klen=9";
>>>> expected_error=-22
>>>>
>>>> Another missing sanity check. GCM only permits certain authsizes.
>>>>
>>>> [    9.074703] omap_crypto_copy_sgs: Couldn't allocate pages for
>>>> unaligned cases.
>>>>
>>>> This is not a bug, but I'm not sure if the below is related or not.
>>>>
>>>> I'll preserve the binaries, in case you need me to objdump anything.
>>>
>>> What are these tests you are executing? For me, the testmgr self test
>>> suite is passing just fine. Any extra tests you have enabled somehow?
>>>
> 
> I enabled CONFIG_CRYPTO_MANAGER_EXTRA_TESTS, which enables a bunch of
> fuzz tests of the offloaded algorithms against the generic
> implementations.

Ahha I see, let me give that a shot locally. I have so far only been 
testing with the standard suite.

> 
>>> I am also running full test on different board though (am57xx), I
>>> haven't been explicitly running anything on am335x.
>>
>> Oh, and btw, did you try without my series? I think the selftests are
>> failing rather miserably without them...
>>
> 
> No, I just tried a branch with mine and your patches applied.

Could you give it a shot without the CRYPTO_MANAGER_EXTRA_TESTS, that 
should pass with my series, and fail without?

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
