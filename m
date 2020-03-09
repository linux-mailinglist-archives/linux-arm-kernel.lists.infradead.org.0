Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A7617E28D
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 15:29:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K2ghx00qT/q+G4tdYeKzEsImjOWlelSpeQwJ3436n2s=; b=Ju9u5kWC/BENxt
	7LbFwTJJG2SxFPuHOtHWJ2GTmAWgBpV77/xvXLbSHaOHQ7uPnf8KgkKXw1f7v58MAQSb9fZbfhmxW
	Czr3oKhD+Md0SU4QFUSS1ycV+I08Bw2iky/a5DZt5Ji//1QVGwXMRbnHVvQ/xVOR0ufXZ2V5Oulm4
	t7B4gfN7q0qcojYqbJ7xfFdj8ueWRv0kOPFPS8NjhROOfbyWAwYfcScq1+tC4v2V57yM+Z3LtgKz2
	DMvoTfsT/3cjpBFS1fsRoggZIuktNrNk01do6d/+RfkeE9JFfmkrwGUMYFY36xaD7OBUzee0YFW31
	1f7Tl/cNEz6GoyUvNlKw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBJP6-0000Do-N8; Mon, 09 Mar 2020 14:29:12 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBJOw-0000DP-G2
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 14:29:04 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 029ESbNs038839;
 Mon, 9 Mar 2020 09:28:38 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1583764118;
 bh=PK9HkNhFkjhSgbGPGf8aZjBq6q1NmO8OJkQ0UtLLUrY=;
 h=Subject:From:To:CC:References:Date:In-Reply-To;
 b=SAn3421TiO84EvcU9BpsikWSA7JcG9TeTbS74dJ9CuUaj/W4qCxM8fB1bLvYwzywm
 IZI88wB5cUFyHKslgUJH4OPJ2CNLN+wQQYzklbnNR3RrJTP3/Sd/ftkFhxU0EArGqX
 tGaKORIcLhVvGK4/hxqc3NAglL8E/IP3Jvk8WNy8=
Received: from DLEE113.ent.ti.com (dlee113.ent.ti.com [157.170.170.24])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 029ESbBw082094;
 Mon, 9 Mar 2020 09:28:37 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE113.ent.ti.com
 (157.170.170.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 9 Mar
 2020 09:28:37 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 9 Mar 2020 09:28:37 -0500
Received: from [10.24.69.157] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 029ESXq0049548;
 Mon, 9 Mar 2020 09:28:34 -0500
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
From: Faiz Abbas <faiz_abbas@ti.com>
To: Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com> <20200219203529.GA21085@bogus>
 <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
 <20b86553-9b98-1a9d-3757-54174aa67c62@pengutronix.de>
 <72e4b1f4-e7f1-cccd-6327-0c8ab6f9f9a7@ti.com>
 <679bdfd3-5325-b903-de5f-1beb5b577d73@ti.com>
Message-ID: <8400282d-8003-549b-3560-5b55b318e57a@ti.com>
Date: Mon, 9 Mar 2020 20:00:23 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <679bdfd3-5325-b903-de5f-1beb5b577d73@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200309_072902_624777_48B4B489 
X-CRM114-Status: GOOD (  14.13  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

Hi Marc,

On 02/03/20 1:46 pm, Faiz Abbas wrote:
> Marc,
> 
> On 26/02/20 2:40 pm, Faiz Abbas wrote:
>> Hi Marc,
>>
>> On 21/02/20 2:01 pm, Marc Kleine-Budde wrote:
>>> On 2/21/20 9:31 AM, Faiz Abbas wrote:
>>>> Hi Rob,
>>>>
>>>> On 20/02/20 2:05 am, Rob Herring wrote:
>>>>> On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
>>>>>> Some CAN transceivers have a standby line that needs to be asserted
>>>>>> before they can be used. Model this GPIO lines as an optional
>>>>>> fixed-regulator node. Document bindings for the same.
>>>>>>
>>>>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>>>>> ---
>>>>>>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>>>>>>  1 file changed, 3 insertions(+)
>>>>>
>>>>> This has moved to DT schema in my tree, so please adjust it and resend.
>>>>
>>>> Ok.
>>>>>
>>>>>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>>> index ed614383af9c..f17e2a5207dc 100644
>>>>>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>>>> @@ -48,6 +48,9 @@ Optional Subnode:
>>>>>>  			  that can be used for CAN/CAN-FD modes. See
>>>>>>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>>>>>>  			  for details.
>>>>>> +
>>>>>> +- xceiver-supply: Regulator that powers the CAN transceiver.
>>>>>
>>>>> The supply for a transceiver should go in the transceiver node.
>>>>>
>>>>
>>>> Marc, while I have you here, do you agree with this?
>>>
>>> I'll look into the details later today.
>>>
>>
>> Sure. Be sure to take another look at my attempt to use the transceiver
>> with a phy driver some time ago.
>>
>> https://lore.kernel.org/patchwork/patch/1006238/
>>
> 
> Do you have any comments?
> 

Gentle ping.

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
