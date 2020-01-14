Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F3E1139FBF
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Jan 2020 04:11:44 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=fFSvAjxRxW8H3aAHdiYkMHRKgr2GESep55NoeFYUaQQ=; b=THq6guZdg/YwTM
	9i9sX2Cfyj0DKY6MjREAz8HINcUus+r5IeoKCRxTCp471eWZ/wOogZG6aMiAIi4Zw2cj79z0IorG5
	yPNvKxO6XXDT/ts447hLI1DDAzy3tOndbFvS16MyI7gi8yz71we6IkwZGzwkYAlYSCo9fEGpBOWwZ
	Z+zXz/4lWo4rvp36DZ+iaTXq2IaLyZpgZb3s1fze5fHu+mstxkf3yTmcQqoguJiloBgi+r1KPgSps
	Hl0XizDI3ygk8ZltldYDP5+z++0556a1vHn236/FYafR6dzJOZMLqxN5UiqjIIywP67d9Qd74MwZP
	1d80aSO7Nj47AvMjTDLw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irCcF-0004OK-7K; Tue, 14 Jan 2020 03:11:39 +0000
Received: from mail-sh.amlogic.com ([58.32.228.43])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irCc8-0004Jw-Ch; Tue, 14 Jan 2020 03:11:33 +0000
Received: from [10.18.29.227] (10.18.29.227) by mail-sh.amlogic.com
 (10.18.11.5) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1591.10; Tue, 14 Jan
 2020 11:11:52 +0800
Subject: Re: [PATCH v5 1/4] dt-bindings: power: add Amlogic secure power
 domains bindings
To: Kevin Hilman <khilman@baylibre.com>, <linux-amlogic@lists.infradead.org>
References: <1573532930-39505-1-git-send-email-jianxin.pan@amlogic.com>
 <1573532930-39505-2-git-send-email-jianxin.pan@amlogic.com>
 <7ha76rdj35.fsf@baylibre.com>
From: Jianxin Pan <jianxin.pan@amlogic.com>
Message-ID: <61dcfe1a-e987-aa40-34da-71150554f708@amlogic.com>
Date: Tue, 14 Jan 2020 11:11:52 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <7ha76rdj35.fsf@baylibre.com>
Content-Language: en-US
X-Originating-IP: [10.18.29.227]
X-ClientProxiedBy: mail-sh.amlogic.com (10.18.11.5) To mail-sh.amlogic.com
 (10.18.11.5)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200113_191132_437057_73D033ED 
X-CRM114-Status: UNSURE (   8.76  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, Hanjie Lin <hanjie.lin@amlogic.com>,
 Victor Wan <victor.wan@amlogic.com>, linux-pm@vger.kernel.org,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Neil Armstrong <narmstrong@baylibre.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Jian Hu <jian.hu@amlogic.com>,
 Xingyu Chen <xingyu.chen@amlogic.com>, linux-arm-kernel@lists.infradead.org,
 Jerome Brunet <jbrunet@baylibre.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

HI Kevin,

Thanks for your review, I will put pwrc under secure-monitor node.

On 2020/1/14 7:37, Kevin Hilman wrote:
> Jianxin Pan <jianxin.pan@amlogic.com> writes:
> 
>> Add the bindings for the Amlogic Secure power domains, controlling the
>> secure power domains.
>>
>> The bindings targets the Amlogic A1 and C1 compatible SoCs, in which the
>> power domain registers are in secure world.
>>
>> Signed-off-by: Jianxin Pan <jianxin.pan@amlogic.com>
>> ---
>>  .../bindings/power/amlogic,meson-sec-pwrc.yaml     | 37 ++++++++++++++++++++++
>>  include/dt-bindings/power/meson-a1-power.h         | 32 +++++++++++++++++++
>>  2 files changed, 69 insertions(+)
>>  create mode 100644 Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>>  create mode 100644 include/dt-bindings/power/meson-a1-power.h
>>
>> diff --git a/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> new file mode 100644
>> index 00000000..2ed269f
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/power/amlogic,meson-sec-pwrc.yaml
>> @@ -0,0 +1,37 @@
>> +# SPDX-License-Identifier: (GPL-2.0+ OR MIT)
>> +# Copyright (c) 2019 Amlogic, Inc
>> +# Author: Jianxin Pan <jianxin.pan@amlogic.com>
>> +%YAML 1.2
>> +---
>> +$id: "http://devicetree.org/schemas/power/amlogic,meson-sec-pwrc.yaml#"
>> +$schema: "http://devicetree.org/meta-schemas/core.yaml#"
>> +
>> +title: Amlogic Meson Secure Power Domains
>> +
>> +maintainers:
>> +  - Jianxin Pan <jianxin.pan@amlogic.com>
>> +
>> +description: |+
>> +  Meson Secure Power Domains used in A1/C1 SoCs.
>> +
>> +properties:
>> +  compatible:
>> +    enum:
>> +      - amlogic,meson-a1-pwrc
>> +
>> +  "#power-domain-cells":
>> +    const: 1
>> +
>> +required:
>> +  - compatible
>> +  - "#power-domain-cells"
>> +
>> +examples:
>> +  - |
>> +    pwrc: power-controller {
>> +          compatible = "amlogic,meson-a1-pwrc";
>> +          #power-domain-cells = <1>;
>> +          secure-monitor = <&sm>;
> 
> As requested by Rob, please put this under the secure-monitor node.
> 
> Kevin
> 
> .
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
