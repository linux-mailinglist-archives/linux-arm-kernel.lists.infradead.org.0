Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DE5E9CD44
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:28:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AqWCJwfY6287dTc3ghOXo8EYkD++s20EDQjL/KtvD5M=; b=lYoE5G597A8+TI
	cl8Ztm7G79mS5pt/DW+V53EKRD+8ZIftFXznSprM89YvrHro2ntDdICWMiqaIKbQU9BIyGEvrm0qN
	ymYIuEO4BKHhRFgXC/oMpwqFOCVDLcYUk7/XmBSeyZovY+RsxHDeDt0p3xFJIuSP2QATOBl9KLoOw
	TtLQmcLo/ywwBXECnbkIswyuhkBSs0NEMOY6UKViGfB8+6jroRopDFUV53MjWP1SnHDoVkbKNIINe
	fKWZZkaLpyM8RiWrb+B7yqljwi344poMOAUydIeAshVVUxEI2APIjwgkeW+R2vqkodC5i9wHckS6m
	If682i3X3RvIH+5bzcyA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2CEE-0003Uq-2y; Mon, 26 Aug 2019 10:28:02 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2CE7-0003UG-0Q
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:27:56 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QARm4n054647;
 Mon, 26 Aug 2019 05:27:48 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566815268;
 bh=YWHVURUrhUE33nyl7WY/1NgZ8W0drZvMa/4E7A6cFy0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=vuPzmI8TOy8nbFaSQzDbimDMLEFReNK+9kX1zJAp8z8l4fqMTm2bZsu22dCKx0+55
 Qb1dzxG8f5LzUF4b1miskTnHqLx9INKxu8ppqmPFMjazcQGM9pfGx6NL/ej5QHNKxt
 g4r13f3DjHOA9JuyziSvDJp2Up8JLfzvNu7XXyr0=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QARmSj008635
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 05:27:48 -0500
Received: from DFLE111.ent.ti.com (10.64.6.32) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 05:27:48 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DFLE111.ent.ti.com
 (10.64.6.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 05:27:48 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QARjSu013692;
 Mon, 26 Aug 2019 05:27:46 -0500
Subject: Re: [PATCH 5/6] dt-bindings: pinctrl: k3: Introduce pinmux
 definitions for J721E
To: Rob Herring <robh@kernel.org>
References: <20190809082947.30590-1-lokeshvutla@ti.com>
 <20190809082947.30590-6-lokeshvutla@ti.com> <20190821210232.GA22578@bogus>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <da0286cb-8e4c-e12c-240c-b6de72bdd0ee@ti.com>
Date: Mon, 26 Aug 2019 15:56:59 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <20190821210232.GA22578@bogus>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_032755_135723_6C0E7841 
X-CRM114-Status: GOOD (  12.73  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Nishanth Menon <nm@ti.com>,
 Device Tree Mailing List <devicetree@vger.kernel.org>,
 Keerthy <j-keerthy@ti.com>, linus.walleij@linaro.org,
 Tero Kristo <t-kristo@ti.com>, linux-gpio@vger.kernel.org,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 22/08/19 2:32 AM, Rob Herring wrote:
> On Fri, Aug 09, 2019 at 01:59:46PM +0530, Lokesh Vutla wrote:
>> Add pinctrl macros for J721E SoC. These macro definitions are
>> similar to that of AM6, but adding new definitions to avoid
>> any naming confusions in the soc dts files.
>>
>> Acked-by: Nishanth Menon <nm@ti.com>
>> Signed-off-by: Lokesh Vutla <lokeshvutla@ti.com>
>> Signed-off-by: Vignesh Raghavendra <vigneshr@ti.com>
>> ---
>>  include/dt-bindings/pinctrl/k3.h | 3 +++
>>  1 file changed, 3 insertions(+)
>>
>> diff --git a/include/dt-bindings/pinctrl/k3.h b/include/dt-bindings/pinctrl/k3.h
>> index 45e11b6170ca..499de6216581 100644
>> --- a/include/dt-bindings/pinctrl/k3.h
>> +++ b/include/dt-bindings/pinctrl/k3.h
>> @@ -32,4 +32,7 @@
>>  #define AM65X_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>>  #define AM65X_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
>>  
>> +#define J721E_IOPAD(pa, val, muxmode)		(((pa) & 0x1fff)) ((val) | (muxmode))
>> +#define J721E_WKUP_IOPAD(pa, val, muxmode)	(((pa) & 0x1fff)) ((val) | (muxmode))
> 
> checkpatch reports a parentheses error:         (((pa) & 0x1fff) ((val) | (muxmode)))

This was left intentionally as this macro is giving out two entries in DT like
below:

	pinctrl-single,pins = <
		J721E_IOPAD(0x0, PIN_INPUT, 7)
	>;

comes out as

	pinctrl-single,pins = <
		0x0 (PIN_INPUT | 7)
	>;

If parenthesis are added for the whole macro, the following build error occurs:
  DTC     arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dtb
Error: arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:41.24-25 syntax error
FATAL ERROR: Unable to parse input tree


Thanks and regards,
Lokesh

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
