Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B9471A0491
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Apr 2020 03:36:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=9oR0dq+koh24mPJPWQ9HnZgiiWAYSrldSL+PLrEOGKE=; b=CMDFPVPe8YQJte2vwLqmSW3Hb
	07u5Az8PaiJEaf9pLgDVeHWu0WO6emXoMGyw3yLKrU1kylASCVS/h0Mabb6GH4WRb59g6u8R7Yk28
	eXjyavveJyyr1RbFRR7ROrc3cooputOaa+j3zI9GgidLdUS8WPWXqkxdUqfcSmHvKzvjzBQs94C4M
	RSgzDhMg8x+VZO4WXpXNSlkVHF/Apr8JYGVxB/G+TaMyZYSLzbyCzBAZntj3rqYZSu8yazkPtUK+i
	KwEcbNBo+YETVnEFwpMRIzX28cHjK//xriJqVew2y5yLL/Xm267D1rG2UC/PAKcv+W31cqRgc8TKK
	+KM3jJokg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLdA5-0006YE-UK; Tue, 07 Apr 2020 01:36:21 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLd9z-0006Xe-7V
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Apr 2020 01:36:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0371a2mr099188;
 Mon, 6 Apr 2020 20:36:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1586223363;
 bh=RMkSGchD+bJ2vzbZvvD9aI/oPbB/u3xEJqJPtplbABo=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vdzx1TJopX7tEmUBLcATi2AnLZDXYKJDwWTTtMjPyQo3RatKRwH1PxxF/rNZ+V+E9
 maCMowMwjjGqVlupHEYWldLzbKwQBXx3KA8IAsGPSXMbh/vY7hFsRJWdLWxx/n2zd4
 Q9jV0r3PRu+gNeQj9MsrTUOFt4kUDpZ89FOJKMMc=
Received: from DFLE104.ent.ti.com (dfle104.ent.ti.com [10.64.6.25])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0371a2d7109754
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 6 Apr 2020 20:36:02 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE104.ent.ti.com
 (10.64.6.25) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 6 Apr
 2020 20:36:02 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 6 Apr 2020 20:36:02 -0500
Received: from [10.250.133.125] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0371Zwol116791;
 Mon, 6 Apr 2020 20:35:59 -0500
Subject: Re: [PATCH v5 4/4] arm64: dts: ti: am6: Add VTM node
To: Amit Kucheria <amit.kucheria@verdurent.com>
References: <20200331075356.19171-1-j-keerthy@ti.com>
 <20200331075356.19171-5-j-keerthy@ti.com>
 <CAHLCerOwqOmGRotiofs_xtB9XEa-YUwYWFgJGNMXQqifW+azAA@mail.gmail.com>
From: "J, KEERTHY" <j-keerthy@ti.com>
Message-ID: <c32f0401-357c-c59d-d589-840f46b95fa0@ti.com>
Date: Tue, 7 Apr 2020 07:05:58 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <CAHLCerOwqOmGRotiofs_xtB9XEa-YUwYWFgJGNMXQqifW+azAA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200406_183615_349808_DD7977AC 
X-CRM114-Status: GOOD (  15.32  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Mark Rutland <mark.rutland@arm.com>, "open list:OPEN
 FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 LKML <linux-kernel@vger.kernel.org>, t-kristo@ti.com,
 Rob Herring <robh+dt@kernel.org>, Zhang Rui <rui.zhang@intel.com>,
 lakml <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 4/7/2020 12:35 AM, Amit Kucheria wrote:
> On Tue, Mar 31, 2020 at 1:24 PM Keerthy <j-keerthy@ti.com> wrote:
>>
>> VTM stands for voltage and thermal management. Add the vtm node and
>> the associated thermal zones on the SoC.
>>
>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>> ---
>>   arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi | 11 +++++++++++
>>   1 file changed, 11 insertions(+)
>>
>> diff --git a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> index f4227e2743f2..54a133fa1bf2 100644
>> --- a/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> +++ b/arch/arm64/boot/dts/ti/k3-am65-wakeup.dtsi
>> @@ -89,4 +89,15 @@
>>                  clocks = <&k3_clks 59 0>;
>>                  clock-names = "gpio";
>>          };
>> +
>> +       wkup_vtm0: thermal@42050000 {
>> +               compatible = "ti,am654-vtm";
>> +               reg = <0x42050000 0x25c>;
>> +               power-domains = <&k3_pds 80 TI_SCI_PD_EXCLUSIVE>;
>> +               #thermal-sensor-cells = <1>;
>> +       };
>> +
> 
> Make this patch 3
> 
>> +       thermal_zones: thermal-zones {
>> +               #include "k3-am654-industrial-thermal.dtsi"
>> +       };
>>   };
> 
> Move this with what is currently patch 3.

Agreed on all the comments on patch 3 & 4.

I will incorporate them.

- Keerthy
> 
>> --
>> 2.17.1
>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
