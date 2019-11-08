Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 245A2F4176
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 08:41:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=wmavsyiQ1NpcOL6tD0ZNSBkdwqWUh9hI4jTV+zt6WOo=; b=Rybu0LVVlIPGsg3q86kd6ncMB
	CfL6HGJ3J94PJICtgcert7OsqL61dPrCwBnlsW/LBPSctuHUhyG+XI3fxr1uKqs68LA7AuLKZ6OQn
	5FK8LdarhruNhw8z7sfWxWIlksJKKUAmkArcNtIqiWAabehSPlkdpFkY+/6NFpHCyxu4Si0FIQRtZ
	xsWpFxQv7Q+9SjGra8jbvcGi9l7ck92AnADQppW+QyNm4JushFIbvsGUUfEEvi26NTWpmKMwuWNH5
	ArC1dUltZDDpuL22LzkNwkjKkDpfu4x2Rfga2lcRsDVvu+FXH4HaUGPdkd7+yurf8Ei2HlWUAzNYn
	27ME3jhpA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSytV-0003xS-Gb; Fri, 08 Nov 2019 07:41:21 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSytN-0003wa-M9
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 07:41:15 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA87f1JB064030;
 Fri, 8 Nov 2019 01:41:01 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573198862;
 bh=8p57qwOk81qIZzYrBvDYBp3MiSplInyVjuIvJT9EzBE=;
 h=Subject:To:References:From:Date:In-Reply-To;
 b=QLHM/T7QV4DXcb4rvpTw7NQ42f4gHZ+sWcPZbWGEAJ36Yb9fE54BOkuE6OfZScEmG
 qNbRELdBFtcas80D5rWZr5rsu3EIgTqGZU95YmeCU8aQ/CjxXaNSk0ZRi5MmKL2O+v
 OeGPn2K+u5Bh/z4dI+oL2m5LQ7BTSeCWf4nfeSrc=
Received: from DFLE103.ent.ti.com (dfle103.ent.ti.com [10.64.6.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA87f1Cf001150;
 Fri, 8 Nov 2019 01:41:01 -0600
Received: from DFLE112.ent.ti.com (10.64.6.33) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 8 Nov
 2019 01:40:45 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 8 Nov 2019 01:40:45 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA87evV2090261;
 Fri, 8 Nov 2019 01:40:58 -0600
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
To: Gilad Ben-Yossef <gilad@benyossef.com>, Herbert Xu
 <herbert@gondor.apana.org.au>, David Miller <davem@davemloft.net>, Linux
 Crypto Mailing List <linux-crypto@vger.kernel.org>, Ard Biesheuvel
 <ard.biesheuvel@linaro.org>, <linux-omap@vger.kernel.org>, Linux ARM
 <linux-arm-kernel@lists.infradead.org>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
 <20191108022759.GB1140@sol.localdomain>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
Date: Fri, 8 Nov 2019 09:40:57 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108022759.GB1140@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_234113_873346_57B604D3 
X-CRM114-Status: GOOD (  22.22  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/11/2019 04:27, Eric Biggers wrote:
> On Wed, Nov 06, 2019 at 09:33:20AM +0200, Gilad Ben-Yossef wrote:
>> On Wed, Nov 6, 2019 at 9:25 AM Tero Kristo <t-kristo@ti.com> wrote:
>>>
>>> On 06/11/2019 08:39, Gilad Ben-Yossef wrote:
>>>> Hi,
>>>>
>>>>
>>>> On Thu, Oct 17, 2019 at 3:26 PM Tero Kristo <t-kristo@ti.com> wrote:
>>>>>
>>>>> Currently crypto_wait_req waits indefinitely for an async crypto request
>>>>> to complete. This is bad as it can cause for example the crypto test
>>>>> manager to hang without any notification as to why it has happened.
>>>>> Instead of waiting indefinitely, add a 1 second timeout to the call,
>>>>> and provide a warning print if a timeout happens.
>>>>
>>>> While the incentive is clear and positive, this suggested solution
>>>> creates problems of its own.
>>>> In many (most?) cases where we are waiting here, we are waiting for a
>>>> DMA operation to finish from hardware.
>>>> Exiting while this pending DMA operation is not finished, even with a
>>>> proper error return value, is dangerous because
>>>> unless the calling code takes great care to not release the memory the
>>>> DMA is being done from/to, this can have disastrous effects.
>>>>
>>>> As Eric has already mentioned, one second might seem like a long time,
>>>> but we don't really know if it is enough.
>>>>
>>>> How about adding a second API (ig. crypto_wait_req_timeout) which
>>>> supports a calee specified timeout where
>>>> the calle knows how to correctly deal with timeout and port the
>>>> relevant call sites to use this?
>>>
>>> Yeah, that would work for me. I guess we could just swap the testmgr to
>>> use this timeout API, as it is quite clear it should timeout rather than
>>> wait indefinitely, and afaics, the data buffers it uses are limited
>>> size. It doesn't really matter for it whether the timeout is 1 second or
>>> 10 seconds, as long as it eventually times out.
>>
>>
>> As long as you avoid releasing the memory used on timeout, that should
>> work well, I think.
>>
> 
> The memory is always going to be freed eventually, though.  Although the crypto
> tests currently reuse the input/output buffers and the request structure from
> one test to the next, they're freed at the end of the tests.  Also, it's unsafe
> for one request structure to be used for multiple requests concurrently anyway.
> 
> I think crypto_wait_req_timeout() would just be fundamentally unsafe.
> 
> Couldn't you just use CONFIG_DETECT_HUNG_TASK=y instead?  It should report if
> any thread is blocked for too long.

The problem is not detecting a hung task, the problem is determining 
what caused the hang. Personally I don't care if the system dies if a 
crypto accelerator self test has failed, as long as I get reported about 
the exact nature of the failure. The failures are expected to happen 
only in development phase of a crypto driver.

With the timeout patch in place, I get reported what exact crypto test 
case failed and I can focus my debug efforts on that one.

Anyways, as said this is just a nice to have patch, and can be dropped 
no issues there. I was just thinking some other people might find it 
useful also.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
