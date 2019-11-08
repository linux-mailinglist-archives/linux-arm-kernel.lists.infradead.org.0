Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D5DCF430A
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 10:23:16 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4szYXXM7RSX6jVq0hhw5u/p9bGC5Iu6fg+6DhCF9NWU=; b=Z+HLtunJvDVjevulRbJk2LKpm
	UFKPkTxhFTu5H9SkiMFzjSeuXINwabeaOEblcbUWpIAFKb8UZC9z2wf6g4fobA2q1fk2B1i3QLQCh
	6L4u/kmiZErD7UNEIyAmmvdDHwL0pol5rCZowBtsE/2UtqqYPlQfb57wUD5wPo4rwsRFJamNJXxhA
	fvAHiKXJWVbWv/V5KruK7+Uxgej9WFzIg3ipzhwU9/vu8zr3QiQZ0gGUyB8nv0fDE+eg1wjjRMpqI
	KcQwZTg37j2fyihQr1pGHMshXPa0pB9fwyBlhwidtboj0FcmY+UB0VD8syA6L641YfGsBhL/GB1w/
	QAXxrdBdg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iT0U6-0005np-MP; Fri, 08 Nov 2019 09:23:14 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iT0Ty-0005jI-7o
 for linux-arm-kernel@lists.infradead.org; Fri, 08 Nov 2019 09:23:07 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id xA89MrOZ028622;
 Fri, 8 Nov 2019 03:22:53 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1573204973;
 bh=zb4tt7HNgghJpj7aEIDr1k6z/Q2WE2sfSo6030XK974=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=S2emD8s85c4YNwGFBERxXeJ+Dji/fOBWQDiySJ0RwDIY4dpaVqIWrxRdpV1k0G+6Y
 k4rTTqmFd9ete1kHlAEDUlZeCI1zk57JHTlZ+QrmOUqgFhaPjo9etiLg8dYnP0sbKp
 PqUdjYzjCg2zPfXMzzUMZ2S+E7YUmsbeZQqnD4Tk=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA89MrXS031001;
 Fri, 8 Nov 2019 03:22:53 -0600
Received: from DLEE115.ent.ti.com (157.170.170.26) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 8 Nov
 2019 03:22:53 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DLEE115.ent.ti.com
 (157.170.170.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 8 Nov 2019 03:22:52 -0600
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id xA89MnJ5010398;
 Fri, 8 Nov 2019 03:22:49 -0600
Subject: Re: [PATCH 09/10] crypto: add timeout to crypto_wait_req
To: Herbert Xu <herbert@gondor.apana.org.au>
References: <20191017122549.4634-1-t-kristo@ti.com>
 <20191017122549.4634-10-t-kristo@ti.com>
 <CAOtvUMeBXjDBhSVgMOW=hshEx_AkNPg-Zk2c2jCDzY8vyXWW5g@mail.gmail.com>
 <076f0bc6-ad04-9543-db02-d7c7060db036@ti.com>
 <CAOtvUMc7pbtPAPUbEmz_MTHmB9LboQVdgG-t9tHCr=biEbFuUQ@mail.gmail.com>
 <20191108022759.GB1140@sol.localdomain>
 <d55c0182-5fb0-2ef9-f056-54b396fb0026@ti.com>
 <20191108091608.i5fxt2vu2nwrybgn@gondor.apana.org.au>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <2ab94492-21e4-fbe0-41eb-e12b02511d7c@ti.com>
Date: Fri, 8 Nov 2019 11:22:48 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191108091608.i5fxt2vu2nwrybgn@gondor.apana.org.au>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_012306_383962_0F4AA549 
X-CRM114-Status: GOOD (  13.06  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Gilad Ben-Yossef <gilad@benyossef.com>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 linux-omap@vger.kernel.org, David Miller <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 08/11/2019 11:16, Herbert Xu wrote:
> On Fri, Nov 08, 2019 at 09:40:57AM +0200, Tero Kristo wrote:
>>
>> The problem is not detecting a hung task, the problem is determining what
>> caused the hang. Personally I don't care if the system dies if a crypto
>> accelerator self test has failed, as long as I get reported about the exact
>> nature of the failure. The failures are expected to happen only in
>> development phase of a crypto driver.
>>
>> With the timeout patch in place, I get reported what exact crypto test case
>> failed and I can focus my debug efforts on that one.
> 
> If that's all you need then how about just making the wait killable?

Yeah, that would be an alternative.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
