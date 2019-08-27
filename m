Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 970779EF2A
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 27 Aug 2019 17:40:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=TEpOl3IWpn/ISBAmaDJUNhKBMDr9ZMsN9u3DdVuKiDo=; b=onCHDgp1oj19f4b2OrJn+JBXF
	YHJkoU2OOhEneNFUvRnUkIC0RG+89LRXkDsotr2SZotuv90UW3IgoYyFiywnWTfYF+aw65YK4yHBd
	6GvlOVlJVsJtYNL4l5IE1PU6hoQx6fNr4yh/LlMxJ/z/jiN36BdvK2H0+8UtfQ6cI6K2qYhqI6nCE
	QgFfnWaIl2LOKHnT9u30KiQjf+lSrw04I1A5jPqwEa4UOQDWDHxNZXv9wmyGtX0PxvO0Ry/gXmEGd
	9PjoviIyl6kEA9wvk4SpOZH8bl9FIhY6SKHx28aQm3avr7SP0agqq1VoCbwKRc3QPLgrN639DjaUs
	KksJHm6qQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i2daQ-000077-Rc; Tue, 27 Aug 2019 15:40:46 +0000
Received: from hqemgate14.nvidia.com ([216.228.121.143])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2daH-00006L-NU
 for linux-arm-kernel@lists.infradead.org; Tue, 27 Aug 2019 15:40:40 +0000
Received: from hqpgpgate101.nvidia.com (Not Verified[216.228.121.13]) by
 hqemgate14.nvidia.com (using TLS: TLSv1.2, DES-CBC3-SHA)
 id <B5d654ef40000>; Tue, 27 Aug 2019 08:40:36 -0700
Received: from hqmail.nvidia.com ([172.20.161.6])
 by hqpgpgate101.nvidia.com (PGP Universal service);
 Tue, 27 Aug 2019 08:40:36 -0700
X-PGP-Universal: processed;
 by hqpgpgate101.nvidia.com on Tue, 27 Aug 2019 08:40:36 -0700
Received: from [10.25.73.29] (10.124.1.5) by HQMAIL107.nvidia.com
 (172.20.187.13) with Microsoft SMTP Server (TLS) id 15.0.1473.3; Tue, 27 Aug
 2019 15:40:31 +0000
Subject: Re: [PATCH 3/6] PCI: tegra: Add support to configure sideband pins
To: Andrew Murray <andrew.murray@arm.com>
References: <20190826073143.4582-1-vidyas@nvidia.com>
 <20190826073143.4582-4-vidyas@nvidia.com>
 <20190827153029.GO14582@e119886-lin.cambridge.arm.com>
X-Nvconfidentiality: public
From: Vidya Sagar <vidyas@nvidia.com>
Message-ID: <9fe2fc1b-8fdf-e8cf-e5fd-36b536b28889@nvidia.com>
Date: Tue, 27 Aug 2019 21:10:28 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190827153029.GO14582@e119886-lin.cambridge.arm.com>
X-Originating-IP: [10.124.1.5]
X-ClientProxiedBy: HQMAIL111.nvidia.com (172.20.187.18) To
 HQMAIL107.nvidia.com (172.20.187.13)
Content-Language: en-US
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nvidia.com; s=n1;
 t=1566920436; bh=RALnJDAwbfk7yCMD7+TxIj1eEVtiHxWVO6vHKCUuBi8=;
 h=X-PGP-Universal:Subject:To:CC:References:X-Nvconfidentiality:From:
 Message-ID:Date:User-Agent:MIME-Version:In-Reply-To:
 X-Originating-IP:X-ClientProxiedBy:Content-Type:Content-Language:
 Content-Transfer-Encoding;
 b=mvMWZvETEIcF0IIS5rVUnIAxOSb5My1zfvk5h7A3mQQRyRJA4Mdtbv6b9G5zO32lA
 j4AUZpoFq6IL2McN7KJ1T10QB5rfNho12CWdDXbE7EbjkJLkNThxJc/k5twNPxFUJr
 WBNOTYWNTx5XwLJGgGxHVPJBPv0M8YgyeunmlqJXhHNvYGLNp5keRL6c5m7GuLG0sx
 /KiNJ69Q9Kp2WpBjHCNHcteKBDy48ilm9DxtyKep3np4Oq26DMi7/E7pMhZ9pV03yV
 wE4YjC5voMooSW8OPx6ScwI/mkncEJ/0FcUyFU7wPjj/XM/TFmvt/IuZe/YJPzX8+4
 dPeKc4wmiaIHw==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190827_084037_782142_6A2BDDB0 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [216.228.121.143 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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

On 8/27/2019 9:00 PM, Andrew Murray wrote:
> On Mon, Aug 26, 2019 at 01:01:40PM +0530, Vidya Sagar wrote:
>> Add support to configure sideband signal pins when information is present
>> in respective controller's device-tree node.
>>
>> Signed-off-by: Vidya Sagar <vidyas@nvidia.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-tegra194.c | 6 ++++++
>>   1 file changed, 6 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-tegra194.c b/drivers/pci/controller/dwc/pcie-tegra194.c
>> index fc0dbeb31d78..8a27b25893c9 100644
>> --- a/drivers/pci/controller/dwc/pcie-tegra194.c
>> +++ b/drivers/pci/controller/dwc/pcie-tegra194.c
>> @@ -1308,6 +1308,12 @@ static int tegra_pcie_config_rp(struct tegra_pcie_dw *pcie)
>>   		return ret;
>>   	}
>>   
>> +	ret = pinctrl_pm_select_default_state(pcie->dev);
>> +	if (ret < 0) {
>> +		dev_err(pcie->dev, "Failed to configure sideband pins\n");
> 
> I think you can just use dev instead of pcie->dev here.
Yup. I can use just 'dev' here.

> 
>> +		return ret;
> 
> Don't you need to pm_runtime_put_sync and pm_runtime_disable here?
Yup. Thanks for catching it. I'll address it in next patch series.

> 
> Thanks,
> 
> Andrew Murray
> 
>> +	}
>> +
>>   	tegra_pcie_init_controller(pcie);
>>   
>>   	pcie->link_state = tegra_pcie_dw_link_up(&pcie->pci);
>> -- 
>> 2.17.1
>>


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
