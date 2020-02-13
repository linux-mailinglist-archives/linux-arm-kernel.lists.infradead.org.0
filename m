Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 18E1415BD65
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 13 Feb 2020 12:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=jS7eeWe7WFJrZtnWiFP2/Zr4jijGW7GTxSym0VvBKvI=; b=Izh3miR77BCVJ3q8qjeNBAodn
	fFjYwp/Xt9UJfef6z7EV9ELfBBlr3A4gHPoYmNccXX5Z95ZjSqllp+uX45DkcdXNq+0QtXvwS5p0Y
	jPNbzsI1mGp0DGLKKbivAqx4WhpWlSthA02rcnfT1K4iETNNLmrwsPSKA7Txi9fgHofkz0h6bNhMl
	xrUPZdkKtfPTkQIDOLS+SdLuBSL97FBIB7e8rf0kD7e3anufu8n8/VMkPIchru0QRMkQBP6B00GSs
	nX8Li1TjOVTlFRh8lpSvAq9CKM5s/kEllBuzZvDQg2PAtcnRPQGYogbPOT/S77HftLhfZmRN5zq32
	NS2qRla7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j2CO0-0001t1-KI; Thu, 13 Feb 2020 11:10:24 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j2CNj-0001XV-SN
 for linux-arm-kernel@lists.infradead.org; Thu, 13 Feb 2020 11:10:09 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01DBA1Bc096628;
 Thu, 13 Feb 2020 05:10:01 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1581592201;
 bh=a0YM8nWmHENhFyW+m7rbVJdEC+tUi+4yZir+iRtz1DI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=aWl6b8LPDijCV7/S4YmUWyLvdOjp3mbFvawG6llddtboFv0SmmncLLU3fgzhwlhV+
 rQNdpu5EWIhVdVoZm3KpqQkJN+wwWCqjVWiQeDiwx7RJwb2qaR9LRGfUhdW51dn/Qv
 Fq4uyL5fsQbLOEdhAeaTvFrDli9yB2x8dvsVIREU=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01DBA0b9047012;
 Thu, 13 Feb 2020 05:10:00 -0600
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 13
 Feb 2020 05:10:00 -0600
Received: from fllv0039.itg.ti.com (10.64.41.19) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 13 Feb 2020 05:10:00 -0600
Received: from [10.24.69.174] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01DB9uUm069657;
 Thu, 13 Feb 2020 05:09:57 -0600
Subject: Re: [PATCH 3/4] arm64: dts: ti: am654: Add thermal zones
To: Lokesh Vutla <lokeshvutla@ti.com>, <rui.zhang@intel.com>,
 <robh+dt@kernel.org>, <daniel.lezcano@linaro.org>
References: <20200213102440.20539-1-j-keerthy@ti.com>
 <20200213102440.20539-4-j-keerthy@ti.com>
 <0d0a5c81-3b85-afbd-7fd6-8c2a6432ec86@ti.com>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <2c8bc161-8a2a-f8ef-3b7b-99ced7f90478@ti.com>
Date: Thu, 13 Feb 2020 16:40:03 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <0d0a5c81-3b85-afbd-7fd6-8c2a6432ec86@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200213_031008_008880_F9BC7776 
X-CRM114-Status: GOOD (  13.63  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 amit.kucheria@verdurent.com, linux-pm@vger.kernel.org,
 linux-kernel@vger.kernel.org, t-kristo@ti.com,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 13/02/20 4:31 pm, Lokesh Vutla wrote:
> 
> 
> On 13/02/20 3:54 PM, Keerthy wrote:
>> The am654 SoC has three thermal zones namely MPU0, MPU1 and MCU
>> zones
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   .../boot/dts/ti/am654-industrial-thermal.dtsi | 45 +++++++++++++++++++
>>   1 file changed, 45 insertions(+)
>>   create mode 100644 arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi
>>
>> diff --git a/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi b/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi
>> new file mode 100644
>> index 000000000000..cdc3d40c3f60
>> --- /dev/null
>> +++ b/arch/arm64/boot/dts/ti/am654-industrial-thermal.dtsi
> 
> Can you rename file to k3-am654-industrial-thermal.dtsi. This will be consistent
> with other k3-am654 dt files.

yes. I will rename this to k3-* in v2.

Thanks,
Keerthy

> 
> Thanks and regards,
> Lokesh
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
