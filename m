Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DDA614DFA6
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 30 Jan 2020 18:10:14 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bw1X8VHgUsZl1Jbh58ceLPD4NjfbAsoNblIVuNQ/wNE=; b=uJKbNmamhwnhxL
	sMc03jrxQXBq8cWUEoCtHLJg5/CC09YZOHAx2oDxzjWksxM/EV50mzv1ZOnahcMlYqYjz33LN+xc/
	4SwJ1ixHC7ZJE3Q3V7PH3fwb9wymzDtcjDytg8hkP8u/OP6djFgTHVJvf6bhunypww3C1uPSc55Q2
	FwOrhjAP62iBM9HRSL5CZL9zUU/gHlJ8zZhG1Yq2HPXJnIORC0TY2rQ4Ee+Vng5st4424hKWT+Gic
	olVV9kQknKxLXKGTFRGgIfijGaxg0wxY95IFKDT7CazZrdd5ujXAiRs0vi0ireZwEJ3R+01b3F1f7
	iZq/ZePSIkgeMeymzF5Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ixDKL-000267-DW; Thu, 30 Jan 2020 17:10:01 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ixDKD-00024x-Hz
 for linux-arm-kernel@lists.infradead.org; Thu, 30 Jan 2020 17:09:55 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 00UH8sTu120578;
 Thu, 30 Jan 2020 11:08:54 -0600
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1580404134;
 bh=zCnXxzU/EUyxz2StGAYBKDJKmkVjS0wWM+yswum6tEc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=G39DJeW9wpm9C/7pNqXSda95uaioGn1Ihy5r/RUiX0c+l58jt9GtlfYrZ95LFcKMw
 9+h3vai439QcZ6jcMzv2NnByN4gaI/JerdlZMNDzipRa5I0EiNxXxm9DEA3t9hs2hP
 A/ylH5/pLGwg2/PYQYczua4RutEdnmo+sOk08g3A=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 00UH8sdK126653
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 30 Jan 2020 11:08:54 -0600
Received: from DFLE105.ent.ti.com (10.64.6.26) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Thu, 30
 Jan 2020 11:08:54 -0600
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Thu, 30 Jan 2020 11:08:54 -0600
Received: from [128.247.58.153] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 00UH8rQO026105;
 Thu, 30 Jan 2020 11:08:53 -0600
Subject: Re: [PATCH v2] mfd: syscon: Use a unique name with regmap_config
To: Andy Shevchenko <andy.shevchenko@gmail.com>
References: <20200127231208.1443-1-s-anna@ti.com>
 <CAHp75VfaOfBZYjQa960keORW=VjOn2PdwoYpJMG7SsN83daSJg@mail.gmail.com>
From: Suman Anna <s-anna@ti.com>
Message-ID: <99a04c52-1ff6-1611-5cf6-2c71b810ba43@ti.com>
Date: Thu, 30 Jan 2020 11:08:53 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAHp75VfaOfBZYjQa960keORW=VjOn2PdwoYpJMG7SsN83daSJg@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200130_090953_696712_3EDCD96D 
X-CRM114-Status: GOOD (  15.81  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
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
Cc: David Lechner <david@lechnology.com>, Arnd Bergmann <arnd@arndb.de>,
 Tony Lindgren <tony@atomide.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux OMAP Mailing List <linux-omap@vger.kernel.org>,
 Lee Jones <lee.jones@linaro.org>,
 linux-arm Mailing List <linux-arm-kernel@lists.infradead.org>,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Andy,

On 1/30/20 9:34 AM, Andy Shevchenko wrote:
> On Tue, Jan 28, 2020 at 1:14 AM Suman Anna <s-anna@ti.com> wrote:
>>
>> The DT node full name is currently being used in regmap_config
>> which in turn is used to create the regmap debugfs directories.
>> This name however is not guaranteed to be unique and the regmap
>> debugfs registration can fail in the cases where the syscon nodes
>> have the same unit-address but are present in different DT node
>> hierarchies. Replace this logic using the syscon reg resource
>> address instead (inspired from logic used while creating platform
>> devices) to ensure a unique name is given for each syscon.
> 
>> -       syscon_config.name = of_node_full_name(np);
>> +       syscon_config.name = kasprintf(GFP_KERNEL, "%pOFn@%llx", np,
>> +                                      (u64)res.start);
> 
> Explicit castings in printf() usually tell us that something is not okay.

Yes, I agree in general.

> Yes, for resource_size_t we have %pa.

And that was the first thing I tried when doing v2, before moving away
from it. This is not for a console printf statement, but is rather for
the regmap debugfs name. Using a %pa adds the 0x and leading zeros in
the debugfs name, when compared to the name before this patch. The
typecast retains the current format, and replaces the unit-address
without the leading 0s either. Introducing a local-variable to avoid the
typecast is overkill.

> 
> On top of that, I would rather see %pfwn to avoid modification for
> other fwnode types.

Did you mean %pfwP? That can probably be handled when syscon code is
updated to use fwnode API.

regards
Suman

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
