Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D9AB522C9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Jun 2019 07:22:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=c7VeESKhb1pfGasydUKaXAjrdhwZpf3Oe4RmlLNdFsM=; b=fS2+Ui4J/js+VF
	Jfrc25RZqCavAjoQvI0B9Zu8X5audpISZRp2XStqwUEacyTM+snfgJH6NEVGhK24IH+kNlXCzhjn7
	f/+BTwC8nS63dG1GOBY+Sb/L8BLjCaJ8hG+hcOCNt64G+l5thOesqFpsjMKlIA8Jaa6AZcIJLhUxj
	NXKlVIrirZBAriCAbm2d99Wdikl9OdoVnIjumVpsOkjTFGxYZg3j7mIx2+z0oALLtCVD5WTzrlbju
	scCmzSOVWAX0VB3/12xzj65M4tMB9glu58qnqHBOjwLdMQs4hqZL/ZPPEpbvh00AuNCGD5lYusZ08
	mRiIVsGomFxsTQxeA+yQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfdua-0008RN-Es; Tue, 25 Jun 2019 05:22:32 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfdto-0008QI-Lx; Tue, 25 Jun 2019 05:21:47 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5P5LbtN116561;
 Tue, 25 Jun 2019 00:21:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561440097;
 bh=9F8HTAfQZLe8MRr2+hW7iIFR3FLEFhyWWylUj5bW8XI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HOgXmJYFcuWOQyAJM0HpBVeN7etxOVRkfo6bN5X1+G8Bw9x++7ZPIM8UUUkjCxOKW
 Ktql0ZfDsmrS+9MfboHxuQOKzaS9LyLi6a5qY9HcMbIe0X+o1gDurCFP/t/ajCAN7E
 0Qs4pDXjUyZNiU8/9cJd34P8SQlA4iWA8lVA0f8Y=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5P5La1a008858
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 25 Jun 2019 00:21:37 -0500
Received: from DFLE103.ent.ti.com (10.64.6.24) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 25
 Jun 2019 00:21:36 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE103.ent.ti.com
 (10.64.6.24) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 25 Jun 2019 00:21:36 -0500
Received: from [172.24.190.233] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5P5LYAR122424;
 Tue, 25 Jun 2019 00:21:35 -0500
Subject: Re: [PATCH v2] phy: meson-g12a-usb3-pcie: disable locking for
 cr_regmap
To: Neil Armstrong <narmstrong@baylibre.com>
References: <20190605090215.29905-1-narmstrong@baylibre.com>
 <990fd423-fe01-0c35-1ec9-99b43e1d9bc0@baylibre.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <fbec0de6-bd42-7cee-29ba-a07cc7c2b974@ti.com>
Date: Tue, 25 Jun 2019 10:50:05 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.1
MIME-Version: 1.0
In-Reply-To: <990fd423-fe01-0c35-1ec9-99b43e1d9bc0@baylibre.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190624_222145_059731_1C5AD1F3 
X-CRM114-Status: GOOD (  17.71  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 24/06/19 6:30 PM, Neil Armstrong wrote:
> Hi Kishon,
> 
> On 05/06/2019 11:02, Neil Armstrong wrote:
>> Locking is not needed for the phy_g12a_usb3_pcie_cr_bus_read/write() and
>> currently it causes the following BUG because of the usage of the
>> regmap_read_poll_timeout() running in spinlock_irq, configured by regmap fast_io.
>>
>> Simply disable locking in the cr_regmap config since it's only used from the
>> PHY init callback function.
> 
> Gentle ping,
> Is the commit log right now ?

merged now, thanks!

-Kishon

> 
> Thanks,
> Neil
> 
>>
>> BUG: sleeping function called from invalid context at drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c:85
>> in_atomic(): 1, irqs_disabled(): 128, pid: 60, name: kworker/3:1
>> [snip]
>> Workqueue: events deferred_probe_work_func
>> Call trace:
>>  dump_backtrace+0x0/0x190
>>  show_stack+0x14/0x20
>>  dump_stack+0x90/0xb4
>>  ___might_sleep+0xec/0x110
>>  __might_sleep+0x50/0x88
>>  phy_g12a_usb3_pcie_cr_bus_addr.isra.0+0x80/0x1a8
>>  phy_g12a_usb3_pcie_cr_bus_read+0x34/0x1d8
>>  _regmap_read+0x60/0xe0
>>  _regmap_update_bits+0xc4/0x110
>>  regmap_update_bits_base+0x60/0x90
>>  phy_g12a_usb3_pcie_init+0xdc/0x210
>>  phy_init+0x74/0xd0
>>  dwc3_meson_g12a_probe+0x2cc/0x4d0
>>  platform_drv_probe+0x50/0xa0
>>  really_probe+0x20c/0x3b8
>>  driver_probe_device+0x68/0x150
>>  __device_attach_driver+0xa8/0x170
>>  bus_for_each_drv+0x64/0xc8
>>  __device_attach+0xd8/0x158
>>  device_initial_probe+0x10/0x18
>>  bus_probe_device+0x90/0x98
>>  deferred_probe_work_func+0x94/0xe8
>>  process_one_work+0x1e0/0x338
>>  worker_thread+0x230/0x458
>>  kthread+0x134/0x138
>>  ret_from_fork+0x10/0x1con,
>>
>> Fixes: 36077e16c050 ("phy: amlogic: Add Amlogic G12A USB3 + PCIE Combo PHY Driver")
>> Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
>> ---
>>  drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> index 6233a7979a93..ac322d643c7a 100644
>> --- a/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> +++ b/drivers/phy/amlogic/phy-meson-g12a-usb3-pcie.c
>> @@ -188,7 +188,7 @@ static const struct regmap_config phy_g12a_usb3_pcie_cr_regmap_conf = {
>>  	.reg_read = phy_g12a_usb3_pcie_cr_bus_read,
>>  	.reg_write = phy_g12a_usb3_pcie_cr_bus_write,
>>  	.max_register = 0xffff,
>> -	.fast_io = true,
>> +	.disable_locking = true,
>>  };
>>  
>>  static int phy_g12a_usb3_init(struct phy *phy)
>>
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
