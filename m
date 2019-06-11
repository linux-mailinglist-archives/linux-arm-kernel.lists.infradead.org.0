Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5692D3D45A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 11 Jun 2019 19:37:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=dE25hyvZGvfWedv9cqawqXY0YwMKo/Dc7/qqQFIl6wE=; b=gao4YzhDD2vPY31S06ybWjUNw
	S262/rgKzBq9ndsIf5IMj9Q3eV3EnDqZKguK/XqGbmRDnZ15B+zYjGkfqm7xx2pqaN0xaZQYzo9EJ
	4h3cVVgK5gNFNyvrYaAq/uiTxig1iwEl67e81b/2jxiDsYFhJVdCF4NdzozKLUTSliOUZX0aiZCuz
	QLVu+KBKABvkDgBsLK2kHEkYAHBjd3rgUV/q+pjP8I9NjzehWtMDDZ40nBQ7HgIVmT+zd2qH1qppm
	FWh005CXsbZVYHUyXHsZOjbmTfNj/Q/QDpATleu+LqNNBx3Co3rXiYvokA7tD+owhpY4kh/zvw9DL
	qfQB805bA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1haki4-0005bR-SX; Tue, 11 Jun 2019 17:37:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hakhn-0005af-5L
 for linux-arm-kernel@lists.infradead.org; Tue, 11 Jun 2019 17:37:08 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5BHb5mD016474;
 Tue, 11 Jun 2019 12:37:05 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1560274625;
 bh=iF6yw2xuGHxpTtPw7MooWyGH3TcrPgGgUGIlsmVqIw0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=e0i1aSjp/2BdZoqo2uP7dqVA7SBL664LNqOExKnCnTxV5t2TdbnByEkhlrh/ptZ7c
 ZeNeVTS6lVO2cOsgS58rz9F7QvJltE2pECZkjZWfH/Rw8LBfPW/8A8oDQyr9wqJR1r
 gQ5T4soOCWgMMfyvPY+L/s0IqAaPJM/GrZGQWaNo=
Received: from DFLE101.ent.ti.com (dfle101.ent.ti.com [10.64.6.22])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5BHb5EB033547
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 11 Jun 2019 12:37:05 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 11
 Jun 2019 12:37:04 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 11 Jun 2019 12:37:04 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5BHb1S1064295;
 Tue, 11 Jun 2019 12:37:03 -0500
Subject: Re: [PATCH] firmware: ti_sci: Add support for processor control
To: <santosh.shilimkar@oracle.com>, Suman Anna <s-anna@ti.com>, Nishanth Menon
 <nm@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>
References: <20190605223334.30428-1-s-anna@ti.com>
 <4302c224-9e50-6320-2585-60bfe0aa2a32@oracle.com>
 <2174bc51-9e28-e519-b936-9e101e2a2a4e@ti.com>
 <ea3bf059-86b0-2d8c-c42d-44c08a6ec808@oracle.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <a3eba154-d47f-1b2f-a2c6-9cb7a0ee817a@ti.com>
Date: Tue, 11 Jun 2019 20:37:01 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <ea3bf059-86b0-2d8c-c42d-44c08a6ec808@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_103707_282137_F6615048 
X-CRM114-Status: GOOD (  14.27  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Lokesh Vutla <lokeshvutla@ti.com>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/06/2019 20:16, santosh.shilimkar@oracle.com wrote:
> 
> 
> On 6/10/19 5:19 AM, Tero Kristo wrote:
>> On 08/06/2019 00:35, santosh.shilimkar@oracle.com wrote:
>>> On 6/5/19 3:33 PM, Suman Anna wrote:
>>>> Texas Instrument's System Control Interface (TI-SCI) Message Protocol
>>>> is used in Texas Instrument's System on Chip (SoC) such as those
>>>> in K3 family AM654 SoC to communicate between various compute
>>>> processors with a central system controller entity.
>>>>
>>>> The system controller provides various services including the control
>>>> of other compute processors within the SoC. Extend the TI-SCI protocol
>>>> support to add various TI-SCI commands to invoke services associated
>>>> with power and reset control, and boot vector management of the
>>>> various compute processors from the Linux kernel.
>>>>
>>>> Signed-off-by: Suman Anna <s-anna@ti.com>
>>>> ---
>>>> Hi Santosh, Nishanth, Tero,
>>>>
>>>> Appreciate it if this patch can be picked up for the 5.3 merge window.
>>>> This is a dependency patch for my various remoteproc drivers on TI K3
>>>> SoCs. Patch is on top of v5.2-rc1.
>>>>
>>> I will pick this up for 5.3.
>>
>> Santosh,
>>
>> There is a pile of drivers/firmware changes for ti-sci, which have 
>> cross dependencies, and will cause merge conflicts also as they touch 
>> same file.
>>
>> Do you mind if I setup a pull-request for these all and send it to 
>> you? They are going to be on top of the keystone clock pull-request I 
>> just sent today though, otherwise it won't compile (the 32bit clock 
>> support has dependency towards the clock driver.)
>>
> That will be great Tero.

Ok doing that.

For this patch, queuing up for 5.3, thanks.

-Tero

> 
> Regards,
> Santosh
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
