Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 374FE169BA4
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 02:13:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=n5SXzFwDBXpU0FccU6vNCeKip27/J2dvxT9l2Wt2r3w=; b=scdDiFpT4FVDedC0drIt5ocYF
	SNmHgFezl9IcYXmB8Vsjcbnb+RiH7BoV4KRl8LwsKuKxLRBI8W+cOVIIX5XNLG9kg9zs98Zv12/5D
	sZWAa7966qU+rEysvt90m2Cp7Ju8b1S7jm+IttX5DLgzes5FuZ4l07fUtRS9OJ5LKsNFqBKq0fx5u
	nsYEoOFF864LrBQfIW7ZdqiVsIZWPhQa+FR7j300YqZOwbdOyNuWKpdX/SjrUlqd8nbQTnliMTx8E
	y2Gf+WmthoFm56cbSi1KWyQOUwYc2dwpYKanc0PXDSRgiq7zJROFpm/arb17QSg+4l3mAYMrJeNj+
	dzQ5QvfVQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j62Iz-0003ER-6i; Mon, 24 Feb 2020 01:13:05 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j62Is-0003E2-0c
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 01:12:59 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 01O1Cl99116584;
 Sun, 23 Feb 2020 19:12:47 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1582506767;
 bh=IqVWASLT7aINSbL5SEyNqr9FEXULB8G5X7AY+iwQoX4=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=G5rowaEp6JlthuiWuocNqdJxXGH2PUygMpd9oymQNtxnZbSCwac80hGHlk7eU67vc
 DyNpwvT26Uleu33CUthsYe7/cQhgmO9iInF7VMJjgqzZh8yJ48qVW71YfFOwdk4R/i
 oZ5TNU8/m293ezyP2z/r8tritGHMOWDzjAXrM7vQ=
Received: from DLEE107.ent.ti.com (dlee107.ent.ti.com [157.170.170.37])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 01O1ClLZ121797
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 23 Feb 2020 19:12:47 -0600
Received: from DLEE109.ent.ti.com (157.170.170.41) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Sun, 23
 Feb 2020 19:12:46 -0600
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE109.ent.ti.com
 (157.170.170.41) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Sun, 23 Feb 2020 19:12:46 -0600
Received: from [10.250.132.7] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id 01O1ChMI046730;
 Sun, 23 Feb 2020 19:12:43 -0600
Subject: Re: [PATCH v2 1/4] dt-bindings: thermal: k3: Add VTM bindings
 documentation
To: Rob Herring <robh@kernel.org>
References: <20200214063443.23589-1-j-keerthy@ti.com>
 <20200214063443.23589-2-j-keerthy@ti.com> <20200218202048.GA32279@bogus>
 <6895cf5e-9195-c914-f4ce-a83f36027dbf@ti.com>
 <CAL_JsqLamx4hdXLJ5SCP1FPHRP11JP6V-1=NyRY2QM1bvtMtpg@mail.gmail.com>
From: "J, KEERTHY" <j-keerthy@ti.com>
Message-ID: <fb571925-a4c7-d7ea-ddc4-d5573f1727e1@ti.com>
Date: Mon, 24 Feb 2020 06:42:42 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLamx4hdXLJ5SCP1FPHRP11JP6V-1=NyRY2QM1bvtMtpg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200223_171258_154097_CEC13BD4 
X-CRM114-Status: GOOD (  14.96  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Amit Kucheria <amit.kucheria@verdurent.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>, Zhang Rui <rui.zhang@intel.com>, "moderated
 list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 2/21/2020 1:58 AM, Rob Herring wrote:
> On Wed, Feb 19, 2020 at 1:40 AM Keerthy <j-keerthy@ti.com> wrote:
>>
>>
>>
>> On 19/02/20 1:50 am, Rob Herring wrote:
>>> On Fri, 14 Feb 2020 12:04:40 +0530, Keerthy wrote:
>>>> Add VTM bindings documentation. In the Voltage Thermal
>>>> Management Module(VTM), K3 AM654 supplies a voltage
>>>> reference and a temperature sensor feature that are gathered in the band
>>>> gap voltage and temperature sensor (VBGAPTS) module. The band
>>>> gap provides current and voltage reference for its internal
>>>> circuits and other analog IP blocks. The analog-to-digital
>>>> converter (ADC) produces an output value that is proportional
>>>> to the silicon temperature.
>>>>
>>>> Signed-off-by: Keerthy <j-keerthy@ti.com>
>>>> ---
>>>>
>>>> Changes in v2:
>>>>
>>>>     * Fixed make dt_binding_check errors.
>>>>
>>>>    .../bindings/thermal/ti,am654-thermal.yaml    | 57 +++++++++++++++++++
>>>>    1 file changed, 57 insertions(+)
>>>>    create mode 100644 Documentation/devicetree/bindings/thermal/ti,am654-thermal.yaml
>>>>
>>>
>>> My bot found errors running 'make dt_binding_check' on your patch:
>>>
>>> Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
>>> Error: Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts:21.41-42 syntax error
>>> FATAL ERROR: Unable to parse input tree
>>> scripts/Makefile.lib:300: recipe for target 'Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml' failed
>>> make[1]: *** [Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml] Error 1
>>> Makefile:1263: recipe for target 'dt_binding_check' failed
>>> make: *** [dt_binding_check] Error 2
>>>
>>> See https://patchwork.ozlabs.org/patch/1237882
>>> Please check and re-submit.
>>
>> Rob,
>>
>> I am using:
>>
>> Tree: https//github.com/devicetree-org/dt-schema.git
>> branch: master
>>
>> I have make dt_binding_check working for
>> Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dt.yaml
>>
>> Documentation/devicetree/bindings/thermal/ti,am654-thermal.example.dts
>> is created without any errors :
>>
>> https://pastebin.ubuntu.com/p/6MkMbKPpbY/
>>
>> I did not see any errors as the other files erred out.
> 
> 'make -k' is your friend.
> 

Okay

> What branch are you on. Only linux-next breaks generally.

linux-next

Thanks,
Keerthy
> 
>> Today i tried with DT_SCHEMA_FILES option and then finally reproduced
>> the errors. It is a bit confusing for the first time users.
>>
>> Now i have it compiled without any errors.
>>
>> Posting v3 in a bit.
>>
>> - Keerthy
>>
>>
>>>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
