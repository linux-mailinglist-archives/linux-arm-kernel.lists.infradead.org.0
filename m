Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F14716FA43
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 10:09:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AomA4HHYwZwglMwWDyf6pv5Hjvn/m1Q7kNOuPsnym70=; b=DIF6Xf1SmsiBVK
	6GHhuP5YUHqFz/J52Kc8HT4MGUJxorx5WVpfMU4w8+8u7P/l/hJ+GOW7tRu3jr8TAHOvcGmKwfPeN
	+Ts7XghbpCo/nWlNAXH7YW/R4umpsPTkVShACIfcdWoiZI85cFWMW3gC+9JUG/fIhg7ejWRunWCx/
	STEArc9RlD5FVqAcnab+s32Fl1utBA0Gv+i3qtSMw410uoLRxJA1TlUvRZnO45FujbNC8b5s4lDiH
	or1voPjIEjdTkmz6nSGxzOzelIo0DBpK8w88qv11ef7ZkY28oafwwyb0/8sMQsHA3kKLeY+vpfNW5
	EzJ6fjY+4CM9f8IpMKuw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6sgr-0006Bu-9i; Wed, 26 Feb 2020 09:09:13 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6sgf-0006B0-K4
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 09:09:04 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01Q98kPl100212;
 Wed, 26 Feb 2020 03:08:46 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582708126;
 bh=715M2fEsQcQ9pGCNA+WdZUDo8i9Ym6s9zxFMk/XbQHM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=CEG0EYD07SZfu0ZemKPihOoI30dStRLAC+bcraQqR//LNHsqF4Akstjvlb/UI5lY4
 54RSGgkjvojx/j0Cf2rAAZ2SD0nnTwpy+54VZG5VizfndJzvMQ2MKGcdIWrbBqX6Ll
 KlzqFMqsNnWT1ohsOhwZI4DsDIr00JJUYoGGAPHU=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01Q98kCs075706
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Wed, 26 Feb 2020 03:08:46 -0600
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Wed, 26
 Feb 2020 03:08:46 -0600
Received: from localhost.localdomain (10.64.41.19) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Wed, 26 Feb 2020 03:08:45 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by localhost.localdomain (8.15.2/8.15.2) with ESMTP id 01Q98fuI103976;
 Wed, 26 Feb 2020 03:08:41 -0600
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
To: Marc Kleine-Budde <mkl@pengutronix.de>, Rob Herring <robh@kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com> <20200219203529.GA21085@bogus>
 <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
 <20b86553-9b98-1a9d-3757-54174aa67c62@pengutronix.de>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <72e4b1f4-e7f1-cccd-6327-0c8ab6f9f9a7@ti.com>
Date: Wed, 26 Feb 2020 14:40:18 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20b86553-9b98-1a9d-3757-54174aa67c62@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_010901_782792_59A3E8B8 
X-CRM114-Status: GOOD (  14.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lgirdwood@gmail.com,
 netdev@vger.kernel.org, sriram.dash@samsung.com, linux-kernel@vger.kernel.org,
 linux-can@vger.kernel.org, broonie@kernel.org, wg@grandegger.com,
 catalin.marinas@arm.com, linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Marc,

On 21/02/20 2:01 pm, Marc Kleine-Budde wrote:
> On 2/21/20 9:31 AM, Faiz Abbas wrote:
>> Hi Rob,
>>
>> On 20/02/20 2:05 am, Rob Herring wrote:
>>> On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
>>>> Some CAN transceivers have a standby line that needs to be asserted
>>>> before they can be used. Model this GPIO lines as an optional
>>>> fixed-regulator node. Document bindings for the same.
>>>>
>>>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>>>> ---
>>>>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>>>>  1 file changed, 3 insertions(+)
>>>
>>> This has moved to DT schema in my tree, so please adjust it and resend.
>>
>> Ok.
>>>
>>>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>> index ed614383af9c..f17e2a5207dc 100644
>>>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
>>>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
>>>> @@ -48,6 +48,9 @@ Optional Subnode:
>>>>  			  that can be used for CAN/CAN-FD modes. See
>>>>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>>>>  			  for details.
>>>> +
>>>> +- xceiver-supply: Regulator that powers the CAN transceiver.
>>>
>>> The supply for a transceiver should go in the transceiver node.
>>>
>>
>> Marc, while I have you here, do you agree with this?
> 
> I'll look into the details later today.
> 

Sure. Be sure to take another look at my attempt to use the transceiver
with a phy driver some time ago.

https://lore.kernel.org/patchwork/patch/1006238/

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
