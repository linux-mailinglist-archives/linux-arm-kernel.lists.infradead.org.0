Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 684AB144AFF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 22 Jan 2020 06:02:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mW8Pm+A+CVaZ4aCpXxIzpZe+jQcqjYNlZRKcAAXH1ns=; b=X+FEB2MPn5v/sO
	FyanTlBAcCdx49fnCFnxMqZ9ZcLsjPNWC/ElONLEq16lrn5oIpRsttYkyZz1vyGYbLYWGqPMGLigw
	4KH469indxZs931K7BcDvIjIzD3uPNShpyC737ycmLSPvq3bMIJG8kkkU9i4rpjVLFIWex0aMYRId
	ki2wEurzh9viDP48SBSz7DElcz/5cgYg/15fV8UBxFs13L2JNFo7qf4ZvfOnAB6P2Uddozva5ECGa
	yBWAg9V+FVMfqp1eU4mSt21JjMiXvTztf1EVjzLK/aKbEfXTo1phv29dlrNIgY2wf/x1hQVweMm7/
	fnw78UQ/nl6hoy8jt2bw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iu89v-0006Yt-Ic; Wed, 22 Jan 2020 05:02:31 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iu89i-0006Ya-Js
 for linux-arm-kernel@lists.infradead.org; Wed, 22 Jan 2020 05:02:20 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00M52EbK034781;
 Tue, 21 Jan 2020 23:02:14 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1579669334;
 bh=19Euv4bypX6Nyf5cnWQL/mS9NVJvz1Qup12v8d47CGY=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=NCRNfyWuc/18KD4nNqw6EIUZdIKLO4uIUnoiv4ipzx/IwraS4DtamhJa0iNEi0l/4
 5YvNzKFkUQbtC2J+KC9Tl+Z6xftNufhBsN2IDu4/IUQsMm6DXa+ACLOlnpxVjAv49j
 gdpa8v9LKz895pnMTvNjAEc1Nwyz3NI63ucoitI0=
Received: from DFLE108.ent.ti.com (dfle108.ent.ti.com [10.64.6.29])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00M52E70073297
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 21 Jan 2020 23:02:14 -0600
Received: from DFLE107.ent.ti.com (10.64.6.28) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Tue, 21
 Jan 2020 23:02:14 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE107.ent.ti.com
 (10.64.6.28) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Tue, 21 Jan 2020 23:02:14 -0600
Received: from [10.24.69.159] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00M528Us130655;
 Tue, 21 Jan 2020 23:02:09 -0600
Subject: Re: [PATCH 2/5] arm64: dts: ti: k3-j721e-main: Add serdes_ln_ctrl
 node to select SERDES lane mux
To: Rob Herring <robh@kernel.org>
References: <20200108111830.8482-1-rogerq@ti.com>
 <20200108111830.8482-3-rogerq@ti.com> <20200115014724.GA20772@bogus>
 <1c55f0a8-99e3-934f-e8b8-d090df06a12e@ti.com>
 <CAL_JsqLfJDN2LnqWHehFiM-SQyeqQAk2wjoKRbBiPy4tc5OkMQ@mail.gmail.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <d1b9fb54-9f6b-ef23-1c6f-d4c341a22785@ti.com>
Date: Wed, 22 Jan 2020 10:35:11 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.1
MIME-Version: 1.0
In-Reply-To: <CAL_JsqLfJDN2LnqWHehFiM-SQyeqQAk2wjoKRbBiPy4tc5OkMQ@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200121_210218_753341_2B283954 
X-CRM114-Status: GOOD (  19.89  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Vignesh R <vigneshr@ti.com>, Sekhar Nori <nsekhar@ti.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Tero Kristo <t-kristo@ti.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Rob,

On 21/01/20 11:27 PM, Rob Herring wrote:
> On Mon, Jan 20, 2020 at 11:10 PM Kishon Vijay Abraham I <kishon@ti.com> wrote:
>>
>> Hi Rob,
>>
>> On 15/01/20 7:17 AM, Rob Herring wrote:
>>> On Wed, Jan 08, 2020 at 01:18:27PM +0200, Roger Quadros wrote:
>>>> From: Kishon Vijay Abraham I <kishon@ti.com>
>>>>
>>>> Add serdes_ln_ctrl node used for selecting SERDES lane mux.
>>>>
>>>> Signed-off-by: Kishon Vijay Abraham I <kishon@ti.com>
>>>> Signed-off-by: Sekhar Nori <nsekhar@ti.com>
>>>> Signed-off-by: Roger Quadros <rogerq@ti.com>
>>>> ---
>>>>  arch/arm64/boot/dts/ti/k3-j721e-main.dtsi | 26 +++++++++++
>>>>  include/dt-bindings/mux/mux-j721e-wiz.h   | 53 +++++++++++++++++++++++
>>>>  2 files changed, 79 insertions(+)
>>>>  create mode 100644 include/dt-bindings/mux/mux-j721e-wiz.h
>>>>
>>>> diff --git a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> index 24cb78db28e4..6741c1e67f50 100644
>>>> --- a/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> +++ b/arch/arm64/boot/dts/ti/k3-j721e-main.dtsi
>>>> @@ -5,6 +5,8 @@
>>>>   * Copyright (C) 2016-2019 Texas Instruments Incorporated - http://www.ti.com/
>>>>   */
>>>>  #include <dt-bindings/phy/phy.h>
>>>> +#include <dt-bindings/mux/mux.h>
>>>> +#include <dt-bindings/mux/mux-j721e-wiz.h>
>>>>
>>>>  &cbass_main {
>>>>      msmc_ram: sram@70000000 {
>>>> @@ -19,6 +21,30 @@
>>>>              };
>>>>      };
>>>>
>>>> +    scm_conf: scm_conf@100000 {
>>>
>>> Don't use '_' in node names.
>>
>> Okay.
>>>
>>>> +            compatible = "syscon", "simple-mfd";
>>>
>>> Needs a specific compatible especially since the child node doesn't have
>>> one.
>>
>> Child node has "mmio-mux" as compatible no? Are you referring to
>> something else here?
> 
> I'm referring to exactly what I quoted, but that's also a generic
> compatible, so you'd never be able to match any of this block to a
> specific driver or handle any quirks.

Okay, right now we didn't see the need for a specific compatible but I
guess that is necessary to make it more future proof. Will add a
specific compatible.

Thanks
Kishon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
