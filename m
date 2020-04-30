Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F8671BEE75
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Apr 2020 05:01:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KrnN9rDXC0G95Czj6PJLysTXiTaBWTnqR6B0+cds/qA=; b=Mxqe4TRAYEpvHtB88fguUx0gs
	SKM+cKtkN4yR97TDnXSkvwlGl9WpcDDRYNrP+6BMhEaCcVCCC/z0km/V0+g6U7e7S4ED+dWli17QG
	weZAdbOI77tdZamXe32bA3ROe2yxo8R/VLLE0wQtUzpg9XMLTGGrRzkgAjR/aolVHZojSW+A+q2kg
	D36rLQMcbQjVVEr5Ts3SUsdhoUd1byeduECFz6hvLU4ixK2tGUWiOpX87QB24Kv8qihyHPCD2IbtP
	ckAYnep0W8rbByCI4jaYP4HKHVzYerDXU8OM+f1s82jIqDss/Ts+VgpPgXf/3Eh6KWkszX89B+8AN
	cqAEdgN/w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTzRY-000260-8f; Thu, 30 Apr 2020 03:00:56 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTzR2-0001lm-Lp
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Apr 2020 03:00:27 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 30 Apr 2020 12:00:19 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id F3D2D60057;
 Thu, 30 Apr 2020 12:00:19 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Thu, 30 Apr 2020 12:00:19 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id CE2EF40362;
 Thu, 30 Apr 2020 12:00:19 +0900 (JST)
Received: from [10.212.23.30] (unknown [10.212.23.30])
 by yuzu.css.socionext.com (Postfix) with ESMTP id 50E9F120498;
 Thu, 30 Apr 2020 12:00:19 +0900 (JST)
Subject: Re: [PATCH] dt-bindings: thermal: Convert UniPhier thermal monitor to
 json-schema
To: Rob Herring <robh@kernel.org>
References: <1587013935-21760-1-git-send-email-hayashi.kunihiko@socionext.com>
 <20200428162055.GA27628@bogus>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <077715ad-f327-a39f-3702-d06d4010d20b@socionext.com>
Date: Thu, 30 Apr 2020 12:00:19 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200428162055.GA27628@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_200025_378163_9E5FD109 
X-CRM114-Status: GOOD (  19.14  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Amit Kucheria <amit.kucheria@verdurent.com>,
 linux-pm@vger.kernel.org, Daniel Lezcano <daniel.lezcano@linaro.org>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 Zhang Rui <rui.zhang@intel.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2020/04/29 1:20, Rob Herring wrote:
> On Thu, Apr 16, 2020 at 02:12:15PM +0900, Kunihiko Hayashi wrote:
>> Convert the UniPhier thermal monitor binding to DT schema format.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   .../thermal/socionext,uniphier-thermal.yaml        | 57 +++++++++++++++++++
>>   .../bindings/thermal/uniphier-thermal.txt          | 65 ----------------------
>>   2 files changed, 57 insertions(+), 65 deletions(-)
>>   create mode 100644 Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
>>   delete mode 100644 Documentation/devicetree/bindings/thermal/uniphier-thermal.txt
>>
>> diff --git a/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
>> new file mode 100644
>> index 0000000..bdddc5b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/thermal/socionext,uniphier-thermal.yaml
>> @@ -0,0 +1,57 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/thermal/socionext,uniphier-thermal.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Socionext UniPhier thermal monitor
>> +
>> +description: |
>> +  This describes the devicetree bindings for thermal monitor supported by
>> +  PVT(Process, Voltage and Temperature) monitoring unit implemented on
>> +  Socionext UniPhier SoCs.
>> +
>> +maintainers:
>> +  - Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - socionext,uniphier-pxs2-thermal
>> +      - socionext,uniphier-ld20-thermal
>> +      - socionext,uniphier-pxs3-thermal
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  "#thermal-sensor-cells":
>> +    const: 0
>> +
>> +  socionext,tmod-calibration:
>> +    $ref: /schemas/types.yaml#/definitions/uint32-array
>> +    description:
>> +      A pair of calibrated values referred from PVT, in case that the values
>> +      aren't set on SoC, like a reference board.
> 
> So?:
> 
> maxItems: 2
Okay, I'll add that in v2.

Thank you,

---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
