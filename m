Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5146AA0714
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 28 Aug 2019 18:17:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=tqpqshNXrewOvIrzWmyQPZt4lZ19kybtzjr9dGyt0g4=; b=UB7Gi7fBJy0jrhS0mQbpgRHp1
	zemiylYJFvVNoeXFn1YhLBmRd4Od+YSPVsyIAogCxuGHk0iS4hEsBG7Z1Z0GTWxixNmc0sgDK1rDB
	dyAYDECDWunK0j761G54X7KJhYIQ3Z1BacaF4UXFeqSkgpFUKvh6KbrDMz8TqQ/qq/ifLcqGJYwf6
	FiOYjnY9EhNf4SeHLvl/e4/B8Eq575LpanjdabzHLxvQeh4bp3RjQwymIzQMZ1V/v/OR0l0pBejTg
	S9B2vXAFo0gEVpFkILhAHpLkDGAdECGjLjyiLzpudE6MkT2RUYfaXNDMPAfzT8SgfgCT9Cf0r4O/r
	PmZg/dzig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i30ct-0005TK-Ej; Wed, 28 Aug 2019 16:16:51 +0000
Received: from hqemgate15.nvidia.com ([216.228.121.64])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i30cf-0005SZ-3s
 for linux-arm-kernel@lists.infradead.org; Wed, 28 Aug 2019 16:16:38 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate15.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d66a8e40000>; Wed, 28 Aug 2019 09:16:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Wed, 28 Aug 2019 09:16:34 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Wed, 28 Aug 2019 09:16:34 -0700
Received: from DRHQMAIL107.nvidia.com (10.27.9.16) by HQMAIL101.nvidia.com
 (172.20.187.10) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 16:16:33 +0000
Received: from [10.25.74.161] (10.124.1.5) by DRHQMAIL107.nvidia.com
 (10.27.9.16) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Wed, 28 Aug
 2019 16:16:28 +0000
Subject: Re: [PATCH V2 3/6] PCI: tegra: Add support to configure sideband pins
To: Andrew Murray <andrew.murray@arm.com>
References: <20190828131505.28475-1-vidyas@nvidia.com>
 <20190828131505.28475-4-vidyas@nvidia.com>
 <20190828150739.GX14582@e119886-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <015280f6-cf13-9a36-6ae7-77476d089af4@nvidia.com>
Date: Wed, 28 Aug 2019 21:46:26 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190828150739.GX14582@e119886-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL101.nvidia.com (172.20.187.10) To
 DRHQMAIL107.nvidia.com (10.27.9.16)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1567008996; bh=vkYR9GMGra4mXvzpjpzlucRSvf0JCKSyhfkQefgDo5g=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=ddOdhhcYgMCMUdb0NaOCMhghD3DAvywx7L0BfIq4QMvoctZLVx6TYtgcTOWclJqd1
 Kk5QMQWGX+FdIkHUG+yE+dFVqPPL2JPHnamym5DTHQJ5RrGsjvtzPckOR4ct3icH3n
 kCVV6C3TQnc35zWT2euvmQP/mBZ52L7x1JhVWJAgvn05Mi5U8tbzCM6htKUHVtGfl6
 xYhsu/1q0UBrr458CbH/lzSxu99dJmrc1xEPJJ3IMYPLXhWR0TKHihzHQNrpli90zw
 FtrGsKFehb71WlKSxCLC9ZxPCmQYeXv7qntl9qOoeOh8VaCFgBbrNAorTAI4jyOjwX
 df6qf8GLoa4GA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190828_091637_172603_99416FC0 
X-CRM114-Status: GOOD (  13.37  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.64 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, lorenzo.pieralisi@arm.com,
 mperttunen@nvidia.com, mmaddireddy@nvidia.com, kthota@nvidia.com,
 gustavo.pimentel@synopsys.com, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, kishon@ti.com, linux-tegra@vger.kernel.org,
 thierry.reding@gmail.com, linux-pci@vger.kernel.org, bhelgaas@google.com,
 digetx@gmail.com, jonathanh@nvidia.com, linux-arm-kernel@lists.infradead.org,
 sagar.tv@gmail.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 8/28/2019 8:37 PM, Andrew Murray wrote:
> On Wed, Aug 28, 2019 at 06:45:02PM +0530, Vidya Sagar wrote:
>> Add support to configure sideband signal pins when information is present
>> in respective controller's device-tree node.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>> V2:
>> * Addressed review comment from Andrew Murray
>> * Handled failure case of pinctrl_pm_select_default_state() cleanly
>>
>>   drivers/pci/controller/dwc/pcie-tegra194.c | 11 +++++++++--
>>   1 file changed, 9 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
>> index fc0dbeb31d78..057ba4f9fbcd 100644
>> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
>> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
>> @@ -1304,8 +1304,13 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>>   	if (ret < 0) {
>>   		dev_err(dev, "Failed to get runtime sync for PCIe dev: %d\n",
>>   			ret);
>> -		pm_runtime_disable(dev);
>> -		return ret;
>> +		goto fail_pm_get_sync;
>> +	}
>> +
>> +	ret = pinctrl_pm_select_default_state(pcie->dev);
> 
> This patch looks OK, though you're still using pcie->dev here instead of dev.
I'll take care of this.
Thanks for the thorough review.

- Vidya Sagar

> 
> Thanks,
> 
> Andrew Murray
> 
>> +	if (ret < 0) {
>> +		dev_err(dev, "Failed to configure sideband pins: %d\n", ret);
>> +		goto fail_pinctrl;
>>   	}
>>   
>>   	tegra_pcie_init_controller(pcie);
>> @@ -1332,7 +1337,9 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>>   
>>   fail_host_init:
>>   	tegra_pcie_deinit_controller(pcie);
>> +fail_pinctrl:
>>   	pm_runtime_put_sync(dev);
>> +fail_pm_get_sync:
>>   	pm_runtime_disable(dev);
>>   	return ret;
>>   }
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
