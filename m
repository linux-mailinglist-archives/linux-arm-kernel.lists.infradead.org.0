Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74DDB3105E
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 31 May 2019 16:38:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JboyrwPXJrPEMrSjlq2GksJsPE5nVsGQmi3ZzOayJlY=; b=oGH8w8gm6QHSK5
	jSVl/tJh1YjVeZkvaIv6JKzJcXOHaYYDfEhmu3NEsTx79RIMp4KWG2HFK7eufyOucj5lBDArHJKXJ
	/r2e5idUB2UHcw6OsoI78bQAep0yRq4tTpu/TV61jsZ3saWE/cEAws6S9uOt1IVlg/jl6OqQtlrab
	DHvHAPsNSGvLcpTKSfxMX4ttG+C2yCnjJATgRdqvn9Z/kuxYbgyapwvqFyXptBAasgwZ9uPZJBNR6
	dVJkiDeuYHZcdHp2XftqjraTgWupe/r55a/T5W3HV/P8pdrwaePz0WoY9KreFw2SFK+XP83SjIx4T
	8ZgsV9oY83qiq7mph+1g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWifR-0001ys-IJ; Fri, 31 May 2019 14:38:01 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWifJ-0001yC-Qb; Fri, 31 May 2019 14:37:55 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x4VEbplN017657;
 Fri, 31 May 2019 09:37:51 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1559313471;
 bh=zZgQ70nXbR7VQXN97IAfQFiWqnaeO/F+zfJEbFVW/qc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=FJSBML7vdqyGPKRY8PjpPy5WX/LhKShKt50DkSD1S88xlTjLxD3tnrAKs8IOHSViI
 TlVoBHxIhoh92erINraWh7PLohZS1TgJsrssjO1RtUZ92PwZYEg6xFSqm/p1wlcCM1
 vTgpGXUlYf2GTq9CnI3QAvUx4+GlDdeVRiAvo/fo=
Received: from DLEE102.ent.ti.com (dlee102.ent.ti.com [157.170.170.32])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x4VEbojt063709
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 31 May 2019 09:37:51 -0500
Received: from DLEE108.ent.ti.com (157.170.170.38) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 31
 May 2019 09:37:50 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 31 May 2019 09:37:50 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x4VEbmh4103596;
 Fri, 31 May 2019 09:37:49 -0500
Subject: Re: [PATCH] phy: meson-g12a-usb3-pcie: disable locking for cr_regmap
To: Neil Armstrong <narmstrong@baylibre.com>
References: <20190531103137.14901-1-narmstrong@baylibre.com>
 <4dc22a2e-66ca-0556-3aa3-4ed8887c2b1b@ti.com>
 <2a354f12-61a8-6b4e-8006-e442245a92ec@baylibre.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <84bdde38-96a5-6ba0-dc81-e157202a4c52@ti.com>
Date: Fri, 31 May 2019 20:06:29 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <2a354f12-61a8-6b4e-8006-e442245a92ec@baylibre.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_073753_945678_C5A95DD6 
X-CRM114-Status: GOOD (  18.85  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.0 T_DKIMWL_WL_HIGH       DKIMwl.org - Whitelisted High sender
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 31/05/19 7:52 PM, Neil Armstrong wrote:
> On 31/05/2019 12:35, Kishon Vijay Abraham I wrote:
>> Hi,
>>
>> On 31/05/19 4:01 PM, Neil Armstrong wrote:
>>> Fix the following BUG by disabling locking for the cr_regmap config.
>>
>> What caused the BUG in the first place? The commit log needs more details or
>> else this looks like a workaround to mask a BUG.
> 
> I thought it was pretty explicit, phy_g12a_usb3_pcie_cr_bus_read() sleeps
> with regmap_read_poll_timeout() while ran in spinlock_irq, caused by regmap fast_io = true
> 
> Locking is not needed in our case, this regmap is only used by the PHY init() callback.
> 
> Should I send a v2 with such explanation ?

yes, should atleast mention locking is not needed here.

-Kishon

> 
> Neil
> 
>>
>> Thanks
>> Kishon
>>
>>>
>>> BUG: sleeping function called from invalid context at drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c:85
>>> in_atomic(): 1, irqs_disabled(): 128, pid: 60, name: kworker/3:1
>>> [snip]
>>> Workqueue: events deferred_probe_work_func
>>> Call trace:
>>>  dump_backtrace+0x0/0x190
>>>  show_stack+0x14/0x20
>>>  dump_stack+0x90/0xb4
>>>  ___might_sleep+0xec/0x110
>>>  __might_sleep+0x50/0x88
>>>  phy_g12a_usb3_pcie_cr_bus_addr.isra.0+0x80/0x1a8
>>>  phy_g12a_usb3_pcie_cr_bus_read+0x34/0x1d8
>>>  _regmap_read+0x60/0xe0
>>>  _regmap_update_bits+0xc4/0x110
>>>  regmap_update_bits_base+0x60/0x90
>>>  phy_g12a_usb3_pcie_init+0xdc/0x210
>>>  phy_init+0x74/0xd0
>>>  dwc3_meson_g12a_probe+0x2cc/0x4d0
>>>  platform_drv_probe+0x50/0xa0
>>>  really_probe+0x20c/0x3b8
>>>  driver_probe_device+0x68/0x150
>>>  __device_attach_driver+0xa8/0x170
>>>  bus_for_each_drv+0x64/0xc8
>>>  __device_attach+0xd8/0x158
>>>  device_initial_probe+0x10/0x18
>>>  bus_probe_device+0x90/0x98
>>>  deferred_probe_work_func+0x94/0xe8
>>>  process_one_work+0x1e0/0x338
>>>  worker_thread+0x230/0x458
>>>  kthread+0x134/0x138
>>>  ret_from_fork+0x10/0x1c
>>>
>>> Fixes: 36077e16c050 ("phy: amlogic: Add Amlogic G12A USB3 + PCIE Combo PHY Driver")
>>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>>> ---
>>>  drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c | 2 +-
>>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>>> index 6233a7979a93..ac322d643c7a 100644
>>> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>>> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>>> @@ -188,7 +188,7 @@ static const struct regmap_config phy_g12a_usb3_pcie_cr_regmap_conf = {
>>>  	.reg_read = phy_g12a_usb3_pcie_cr_bus_read,
>>>  	.reg_write = phy_g12a_usb3_pcie_cr_bus_write,
>>>  	.max_register = 0xffff,
>>> -	.fast_io = true,
>>> +	.disable_locking = true,
>>>  };
>>>  
>>>  static int phy_g12a_usb3_init(struct phy *phy)
>>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
