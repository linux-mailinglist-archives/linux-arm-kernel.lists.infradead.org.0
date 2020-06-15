Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 71FF61F90FA
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 10:04:51 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=a3rtL+bmE2w4VHEOYBAG051QfiACKfYQIAvadni01e8=; b=cfunSJij7Pqeqq
	lVhMlI8isPsVkGn024adsM13igfGmjj8xRuk4MVJi8vQAhD8A7K8PnkmN/yeAswWlUyN+qZXWkz2k
	nbaVEqMoYazsngWa8YSQOBVsR+0jxjkekes8jPFoYoUN4QUCaz91DR2VH3dWtXsesMRTMEXS4VFpr
	SwIm74wtowML568KNC1ybteCnUb5DXKor219hXQC5c8HpQMiGCSlM4MhARWgWNhr5CoEIhSumkxx+
	plJwQ6ufzRAnxLodlM8NBuYHhdZXgNNtsc0IpHNInJgxcXJK2bwCnQUNYdC3bUY01h8jWTUnwRj5q
	YpKmlRcp7gf6WiqURVQA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkk6o-0008Nz-A4; Mon, 15 Jun 2020 08:04:46 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkk5h-0007WD-JP
 for linux-arm-kernel@lists.infradead.org; Mon, 15 Jun 2020 08:03:39 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 05F83Pf9008385;
 Mon, 15 Jun 2020 03:03:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1592208205;
 bh=Uk+sr31sgCXRnh6PktSit7kYbZ3ovLU3+zbv2SOX1s0=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=Aq1ntnpBIbSFrlciefSobaz+dLVpHV2kpLTHqx+3vhzEgci69C74ga154PpfaAtAh
 oYmkcndvSeIZ7XePbT8IWI4EUTY3PBSqyA7tjr5sWJWcYy+7BFw0G0KT3Nbyrlmwnb
 7IanqCL+dYZWkUp3eAbiS1+JJBnd71A6R/t7EHNM=
Received: from DFLE100.ent.ti.com (dfle100.ent.ti.com [10.64.6.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 05F83PQO003489
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 15 Jun 2020 03:03:25 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE100.ent.ti.com
 (10.64.6.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Mon, 15
 Jun 2020 03:03:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Mon, 15 Jun 2020 03:03:25 -0500
Received: from [10.24.69.20] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 05F83LeO018322;
 Mon, 15 Jun 2020 03:03:22 -0500
Subject: Re: [PATCH 04/12] dt-bindings: irqchip: ti, sci-intr: Update bindings
 to drop the usage of gic as parent
From: Lokesh Vutla <lokeshvutla@ti.com>
To: Marc Zyngier <maz@kernel.org>
References: <20200520124454.10532-1-lokeshvutla@ti.com>
 <20200520124454.10532-5-lokeshvutla@ti.com> <20200528221406.GA769073@bogus>
 <f803f646-2a55-4f15-9682-1dc616d7c714@ti.com>
 <4ea8c6110a16900220a65f1d44145146@kernel.org>
 <3f253e25-2ee7-96f2-3158-7f6be0710a33@ti.com>
Message-ID: <d586e88c-2907-1771-dee2-32429082aa07@ti.com>
Date: Mon, 15 Jun 2020 13:33:20 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <3f253e25-2ee7-96f2-3158-7f6be0710a33@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200615_010337_741537_E5D51486 
X-CRM114-Status: GOOD (  16.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, Rob Herring <robh@kernel.org>,
 Grygorii Strashko <grygorii.strashko@ti.com>,
 Peter Ujfalusi <peter.ujfalusi@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>, Tero Kristo <t-kristo@ti.com>,
 Santosh Shilimkar <ssantosh@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 01/06/20 5:06 pm, Lokesh Vutla wrote:
> Hi Marc,
> 
> On 29/05/20 3:48 pm, Marc Zyngier wrote:
>> On 2020-05-29 11:14, Lokesh Vutla wrote:
>>> Hi Rob,
>>>
>>> On 29/05/20 3:44 am, Rob Herring wrote:
>>>> On Wed, May 20, 2020 at 06:14:46PM +0530, Lokesh Vutla wrote:
>>>>> Drop the firmware related dt-bindings and use the hardware specified
>>>>> interrupt numbers within Interrupt Router. This ensures interrupt router
>>>>> DT node need not assume any interrupt parent type.
>>>>
>>>> I didn't like this binding to begin with, but now you're breaking
>>>> compatibility.
>>>
>>> Yes, I do agree that this change is breaking backward compatibility. But IMHO,
>>> this does cleanup of firmware specific properties from DT. Since this is not
>>> deployed out yet in the wild market, I took the leverage of breaking backward
>>> compatibility. Before accepting these changes from firmware team, I did
>>> discuss[0] with Marc on this topic.
>>
>> And I assume that should anyone complain about the kernel being broken
>> because they have an old firmware, you'll be OK with the patches being
>> reverted, right?
> 
> I am assuming there is no one to complain as there is no product available yet
> with upstream kernel. Internally everyone is aware of the changes. So, yes I
> would agree with you to revert the changes if someone really needs it. :)

Any chance you can shower your blessings on this series :)

Thanks and regards,
Lokesh

> 
> Thanks and regards,
> Lokesh
> 
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
