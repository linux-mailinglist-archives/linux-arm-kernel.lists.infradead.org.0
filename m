Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EE8659368
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 07:27:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=4Tr6MtRhH7K5Typv2ouyS6Ul9yBdkOANeWI5QdYRXS4=; b=jhj8NfYiJL9mGy2t/6694DFe0
	IU1tpUqM8b6Uj4BXWereRjUQV+iMjnqEVNRwqD67xt8SA85exx6po3Kd9wYhmp6MioIDV5ogA44BA
	uW+cPlzZel1lawMiLJMsmXHB9f6s0jy7xJc0fsCgqMtK70NKiCzd7kve7q8thCKcHvZDytMrNiSbJ
	koGB50kBHMmHB9d5yjWpKc2JMcJyYIF3wUrYKBIbshUTPgblvq9eyGCtcvEriQs2YoWViVKQvm2zZ
	z3d32FtUhmC349VW3TnLegoyBg1jEL77DAIRQmfkNKyxRWwBc9W3uZAKM2PGnmZjOs/ZWb2H4RD/d
	cjR8vmloQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgjPx-0003vA-3K; Fri, 28 Jun 2019 05:27:25 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgjPj-0003un-Nw
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 05:27:13 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5S5R6oB118599;
 Fri, 28 Jun 2019 00:27:06 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561699626;
 bh=v0WcvKhwBQFtUMJMsq4+vIFQxzwxel+wYQa/dpCCq90=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=QaDAF8j7OAbedgraNDWGF6dM0JqP56fk7lYR949dQfK1vL/2LtSwWXoRor7BuYW2F
 EkEnQU3PkVENZ05YhKmtg7k500BDqiAx1tNgaXq4yHCBk9p4V7BQHT0VyL7leg1wt7
 Pjc6x9zSYU4FqWuxk1jKWXoQJpCSbDZS3ophT2aY=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5S5R6gp017910
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 00:27:06 -0500
Received: from DFLE100.ent.ti.com (10.64.6.21) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 00:27:05 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 00:27:05 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5S5R2XE031643;
 Fri, 28 Jun 2019 00:27:03 -0500
Subject: Re: [RESEND PATCH 05/10] crypto: sha256_generic: Export the Transform
 function
To: Eric Biggers <ebiggers@kernel.org>
References: <20190628042745.28455-1-j-keerthy@ti.com>
 <20190628042745.28455-6-j-keerthy@ti.com>
 <20190628050944.GE673@sol.localdomain>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <7ddfdddc-38ba-a435-f688-4d0e29c0513c@ti.com>
Date: Fri, 28 Jun 2019 10:57:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <20190628050944.GE673@sol.localdomain>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190627_222711_823988_555E6887 
X-CRM114-Status: GOOD (  12.87  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: nm@ti.com, devicetree@vger.kernel.org, herbert@gondor.apana.org.au,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 28/06/19 10:39 AM, Eric Biggers wrote:
> On Fri, Jun 28, 2019 at 09:57:40AM +0530, Keerthy wrote:
>> The transform function can be used as is by other crypto
>> drivers that need to transform the 256 bit key using cpu.
>> Hence export it.
> 
> What is this supposed to mean?  SHA-256 is an unkeyed hash function.

HMAC-SHA256 my bad.

> 
> Also, you need to actually explain why this is needed.  If your hardware
> supports SHA-256, why do you need to use the C sha256_transform()?

Hardware supports only HMAC from pre-computed inner and outer digests is 
supported, i.e. the host must carry out initial preparation stage to
generate intermediate hash state for both inner pad and outer pad.

Hence the need to export the transform function. I will add it in the 
commit message.

> 
> - Eric
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
