Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DB269167524
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 21 Feb 2020 09:30:37 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fb5C/RC+l0kRI0RP1AHHXLUTz4lwTEjFe+SM4tvawBU=; b=cDeqvlDuBiPxgT
	6zJnTfyoAEM1NM+beYpJfOUx7AnsPiiZWYAOX5dwvFKcJG7PxZE6Em3Mz40bBmS+Zh7vfYHmlR0vQ
	Z9YEWC96m0QWUw47DBj/rAufmz63o3Zlvdo2GC2NQVbwKPO0tA4N44w+qJSRdMJgwrajmD7moZ/5z
	MZ7A3/opOhxPqEO/XFpn9g36Bpv3nUzvGGg6/MvzVgbE5KOpIQ/j/3G2KCC0h6pV7jegPS9El+9F8
	GaGotHEjyUaKJl0oU4IX6O1UcFKapiqVmmScasaje0hq+Xe/hlkvKdmKwEOLvUY0iwjwbSrsGqMvF
	Rx+TFht0oLYWs5+l2uoQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j53hj-0007rQ-H3; Fri, 21 Feb 2020 08:30:35 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j53hY-0007qF-1c
 for linux-arm-kernel@lists.infradead.org; Fri, 21 Feb 2020 08:30:25 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01L8UBTi015091;
 Fri, 21 Feb 2020 02:30:11 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582273811;
 bh=+GwlT/Yat0yhSuALWos65geLATvxwiVl9nMI6ZThU74=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=DghcjZaQsPfTbKfnW/1UJ7PRfuWJ+c78eU1tqmFIwTARL8D3YzAwWvMkKNdkYCFIi
 1CX8KZmbKFisJ4b4RetAzP2XHCypsnQVCIkHkvtXm3S7sFP9Rn0hqyLvfnk7VDW9Ia
 Xe6Cl4sojFoR1i3HHMeA6X9uI3Tn53vK3Rulj7Ik=
Received: from DFLE114.ent.ti.com (dfle114.ent.ti.com [10.64.6.35])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01L8UBXA075825
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 21 Feb 2020 02:30:11 -0600
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE114.ent.ti.com
 (10.64.6.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Fri, 21
 Feb 2020 02:30:11 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Fri, 21 Feb 2020 02:30:11 -0600
Received: from [172.24.190.4] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01L8U6eo107119;
 Fri, 21 Feb 2020 02:30:07 -0600
Subject: Re: [PATCH v2 1/3] dt-bindings: m_can: Add Documentation for
 transceiver regulator
To: Rob Herring <robh@kernel.org>
References: <20200217142836.23702-1-faiz_abbas@ti.com>
 <20200217142836.23702-2-faiz_abbas@ti.com> <20200219203529.GA21085@bogus>
From: Faiz Abbas <faiz_abbas@ti.com>
Message-ID: <a987bcd7-ca1c-dfda-72f3-cd2004a87ea5@ti.com>
Date: Fri, 21 Feb 2020 14:01:46 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200219203529.GA21085@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200221_003024_173236_FF0FEECA 
X-CRM114-Status: GOOD (  15.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-can@vger.kernel.org, broonie@kernel.org, mkl@pengutronix.de,
 wg@grandegger.com, catalin.marinas@arm.com,
 linux-arm-kernel@lists.infradead.org, dmurphy@ti.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 20/02/20 2:05 am, Rob Herring wrote:
> On Mon, Feb 17, 2020 at 07:58:34PM +0530, Faiz Abbas wrote:
>> Some CAN transceivers have a standby line that needs to be asserted
>> before they can be used. Model this GPIO lines as an optional
>> fixed-regulator node. Document bindings for the same.
>>
>> Signed-off-by: Faiz Abbas <faiz_abbas@ti.com>
>> ---
>>  Documentation/devicetree/bindings/net/can/m_can.txt | 3 +++
>>  1 file changed, 3 insertions(+)
> 
> This has moved to DT schema in my tree, so please adjust it and resend.

Ok.
> 
>> diff --git a/Documentation/devicetree/bindings/net/can/m_can.txt b/Documentation/devicetree/bindings/net/can/m_can.txt
>> index ed614383af9c..f17e2a5207dc 100644
>> --- a/Documentation/devicetree/bindings/net/can/m_can.txt
>> +++ b/Documentation/devicetree/bindings/net/can/m_can.txt
>> @@ -48,6 +48,9 @@ Optional Subnode:
>>  			  that can be used for CAN/CAN-FD modes. See
>>  			  Documentation/devicetree/bindings/net/can/can-transceiver.txt
>>  			  for details.
>> +
>> +- xceiver-supply: Regulator that powers the CAN transceiver.
> 
> The supply for a transceiver should go in the transceiver node.
> 

Marc, while I have you here, do you agree with this?

Thanks,
Faiz

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
