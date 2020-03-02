Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD6A9175548
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  2 Mar 2020 09:15:26 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8fZAurc/HFGJXFDWWTQmOSRia98oiKv3DEt26OAGECY=; b=QSRUtEiLgh6LQZ
	3LvZr+QJC5jKumjN6QOqCK1SpI0OOYQUSVpYhGxejdGYOO+osqUZDJ435hrhUghnoQfW9zYbVU/Kc
	JdYf/6XXzJyNV6GEUs7jrZt26NGq6blsGpAAWir/CoDjLdlhZdHNVNpo/Ih6M0V4bpktd4GdNB2tE
	hk5PWBLzb8YynI/hebhapFSqV9wrEk4Si4SVbVPfykuxIb2rePWXyq0CcgzHs4l+ZUA//yr2MBh1J
	KT/M0juHPUJ+X1PAIoNOuE70qfNJ91CSv8zHuknpJaNbdIxAnsyIQLfb5GaZOvmRv4LHs0o2all4y
	DNXt8MPDpI4gYPvETEVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j8gEP-0006FC-AO; Mon, 02 Mar 2020 08:15:17 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j8gEH-0005q6-Mq
 for linux-arm-kernel@lists.infradead.org; Mon, 02 Mar 2020 08:15:11 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0228Esbw067966;
 Mon, 2 Mar 2020 02:14:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583136894;
 bh=TdhMpVGavBMp+rXwCQqseldtj1O3C6Ev8oQyZs2QgMQ=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=DRENygLrbKRMRypHzLIXHGsOsqoyTlJ5Vkm+EKAVOcFMmK11FULvxBUIHsDLXKN+K
 aNo3jq8jEpTzrBm/UgzqoEZeGBAui6BEtEkGbb++n3N/HIJ+K6sBoq0MpMThKZ84My
 V/LeFhUvoK7C5lFZaA2WubDIoF2vtwevBqu9Gh70=
Received: from DFLE110.ent.ti.com (dfle110.ent.ti.com [10.64.6.31])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0228EsA4016695;
 Mon, 2 Mar 2020 02:14:54 -0600
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 2 Mar
 2020 02:14:54 -0600
Received: from localhost.localdomain (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 2 Mar 2020 02:14:54 -0600
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 0228EnLq073051;
 Mon, 2 Mar 2020 02:14:50 -0600
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
From: Faiz Abbas <faiz_abbas@ti.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com> <20200219203529.GA21085@bogus>
 <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
 <20b86553-9b98-1a9d-3757-54174aa67c62@pengutronix.de>
 <72e4b1f4-e7f1-cccd-6327-0c8ab6f9f9a7@ti.com>
Message-ID: <679bdfd3-5325-b903-de5f-1beb5b577d73@ti.com>
Date: Mon, 2 Mar 2020 13:46:42 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <72e4b1f4-e7f1-cccd-6327-0c8ab6f9f9a7@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_001509_878719_E2DAF10C 
X-CRM114-Status: GOOD (  14.54  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lgirdwood@gmail.com,
 netdev@vger.kernel.org, sriram.dash@samsung.com, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, broonie@kernel.org, wg@grandegger.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Marc,

On 26/02/20 2:40 pm, Faiz Abbas wrote:
> Hi Marc,
> 
> On 21/02/20 2:01 pm, Marc Kleine-Budde wrote:
>> On 2/21/20 9:31 AM, Faiz Abbas wrote:
>>> Hi Rob,
>>>
>>> On 20/02/20 2:05 am, Rob Herring wrote:
>>>> On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
>>>>> Some CAN transceivers have a standby line that needs to be asserted
>>>>> before they can be used. Model this GPIO lines as an optional
>>>>> fixed-regulator node. Document bindings for the same.
>>>>>
>>>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>>>> ---
>>>>>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>>>>>  1 file changed, 3 insertions(+)
>>>>
>>>> This has moved to DT schema in my tree, so please adjust it and resend.
>>>
>>> Ok.
>>>>
>>>>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>> index ed614383af9c..f17e2a5207dc 100644
>>>>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>> @@ -48,6 +48,9 @@ Optional Subnode:
>>>>>  			  that can be used for CAN/CAN-FD modes. See
>>>>>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>>>>>  			  for details.
>>>>> +
>>>>> +- xceiver-supply: Regulator that powers the CAN transceiver.
>>>>
>>>> The supply for a transceiver should go in the transceiver node.
>>>>
>>>
>>> Marc, while I have you here, do you agree with this?
>>
>> I'll look into the details later today.
>>
> 
> Sure. Be sure to take another look at my attempt to use the transceiver
> with a phy driver some time ago.
> 
> https://lore.kernel.org/patchwork/patch/1006238/
> 

Do you have any comments?

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
