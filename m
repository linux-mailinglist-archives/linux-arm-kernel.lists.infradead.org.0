Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C16D9CD18
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 26 Aug 2019 12:12:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=yhPOQ6GjgIPr47ZoxgpK2iDyomdY63ANW7w1NpX8EdY=; b=hNeq8F9lvay4qz
	/C6/hJUvgLIL1Zu0K47me8aN0RHFELEteI9m312WPMB3ZUuPSuzsnEJFFefKC/JnZLCv63Wpu7upZ
	CxayF7X2Vq1FDXsYc9wXATcwy74cDw0Psg7BneQKiK4jb9FSkSDh+i2KjxU2X1r4mD9xNOvDLJKBv
	YJaSR9M+ici5LOJYfftEwj7mj9vTFihb8H57UgnzQeg2BjQaSO3KjyLETsaGg0mRt+ZQ9+QCJ1D+V
	VqLOLLJ5TkWmBR+LBLwoOPp40TeusdN0CGG9AURmP8dfERGVzANmIBtchUOb4dtREPhyjB4Dfygse
	WfueV3mbZelm3FMjzybw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2BzK-0006uc-9T; Mon, 26 Aug 2019 10:12:38 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2BzA-0006p0-Sz
 for linux-arm-kernel@lists.infradead.org; Mon, 26 Aug 2019 10:12:30 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7QACHem020466;
 Mon, 26 Aug 2019 05:12:17 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1566814337;
 bh=ZNs6U4m8I4snjz0a7R+a3bK5jQt7SGpowKEruEugN2E=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=gbvUPApNIe6GKxn4HyFlLM+Z5dP2BG7IQ2Y6MkcnUAQryYyGZ9vYFGRoTBokGpY/J
 hM0HtJGPsp05wXnQc/VpZmgpZ7jRvT9ecyzeLu35otBuWKIg0TK1ySF2QNUIQHJAEb
 EbKtyK3zghwiUtI+J84/KBt62+jjrt6Ogwo54O9w=
Received: from DFLE102.ent.ti.com (dfle102.ent.ti.com [10.64.6.23])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7QACHGQ080207
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 26 Aug 2019 05:12:17 -0500
Received: from DFLE115.ent.ti.com (10.64.6.36) by DFLE102.ent.ti.com
 (10.64.6.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Mon, 26
 Aug 2019 05:12:17 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Mon, 26 Aug 2019 05:12:16 -0500
Received: from [172.24.190.117] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7QACD72092396;
 Mon, 26 Aug 2019 05:12:14 -0500
Subject: Re: [PATCH v5 0/3] soc: ti: k3: Allow for exclusive and shared device
 requests
To: <santosh.shilimkar@oracle.com>, Nishanth Menon <nm@ti.com>, Tero Kristo
 <t-kristo@ti.com>, Santosh Shilimkar <ssantosh@kernel.org>, Rob Herring
 <robh+dt@kernel.org>
References: <20190729122453.32252-1-lokeshvutla@ti.com>
 <05218f41-9601-9a6c-8ac1-3bf1482e1c3d@ti.com>
 <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
From: Lokesh Vutla <lokeshvutla@ti.com>
Message-ID: <ad77afd4-feb6-8123-3207-2518d7a98106@ti.com>
Date: Mon, 26 Aug 2019 15:41:28 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <226a7b55-8a4d-aa25-9392-004d5ea097e4@oracle.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190826_031229_039862_6A972C0A 
X-CRM114-Status: GOOD (  14.44  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
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
Cc: Device Tree Mailing List <devicetree@vger.kernel.org>,
 Sekhar Nori <nsekhar@ti.com>,
 Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 21/08/19 1:36 PM, santosh.shilimkar@oracle.com wrote:
> On 8/20/19 2:48 PM, Lokesh Vutla wrote:
>>
>>
>> On 29/07/19 5:54 PM, Lokesh Vutla wrote:
>>> Sysfw provides an option for requesting exclusive access for a
>>> device using the flags MSG_FLAG_DEVICE_EXCLUSIVE. If this flag is
>>> not used, the device is meant to be shared across hosts. Once a device
>>> is requested from a host with this flag set, any request to this
>>> device from a different host will be nacked by sysfw.
>>>
>>> Current tisci firmware and pm drivers always requests for device with
>>> exclusive permissions set. But this is not be true for certain devices
>>> that are expcted to be shared across different host contexts.
>>> So add support for getting the shared or exclusive permissions from DT
>>> and request firmware accordingly.
>>
>> Gentle Ping on this series.
>>
> I can queue this up.

Thanks Santosh.

Regards,
Lokesh


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
