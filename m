Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 54B601EB7E8
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:07:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Mx1mj4CLHX9NncegRVFOnpMzGxHVvY2U4Z2Y7ngPZkA=; b=llcAKiKqNcxH27qeP/VBLICC7
	SMIb6eBUfNN8axNrm5IR4wUbKQ2tJa4VkXw27mxl9/bCDpjR96j1A5hfEx9fvjFQWX+/8Sfzb4tO8
	FY34/a0kbHKx8kpBzmfiOrVXZWByEHu/j8t8ntCL9DGOaSdNC1cm9g93mU9pKE/RYKtFj7du0Kxt3
	Ft1TVjKM9Xwh8MK9O5OzZ9Qc4u2lfGPXf/KZkzVH5Np04gkkKc5fepsdg5HJboYeYYihuM3iUDNHp
	dIycNm3RCKyx1rkrfDejhSwDdNm+NdgrLNSCdv7hfMY1fVS9YA1Cp2YiXOaC5MyW8l5/FGIkQYbd8
	NazkV0wvQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2tl-0001CD-Cl; Tue, 02 Jun 2020 09:07:53 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2tf-0001Bi-46
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:07:48 +0000
Received: from unknown (HELO kinkan-ex.css.socionext.com) ([172.31.9.52])
 by mx.socionext.com with ESMTP; 02 Jun 2020 18:07:43 +0900
Received: from mail.mfilter.local (m-filter-1 [10.213.24.61])
 by kinkan-ex.css.socionext.com (Postfix) with ESMTP id BB527180B46;
 Tue,  2 Jun 2020 18:07:43 +0900 (JST)
Received: from 172.31.9.51 (172.31.9.51) by m-FILTER with ESMTP;
 Tue, 2 Jun 2020 18:07:43 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by kinkan.css.socionext.com (Postfix) with ESMTP id 673931A0E67;
 Tue,  2 Jun 2020 18:07:43 +0900 (JST)
Received: from [10.213.31.100] (unknown [10.213.31.100])
 by yuzu.css.socionext.com (Postfix) with ESMTP id BC777120136;
 Tue,  2 Jun 2020 18:07:42 +0900 (JST)
Subject: Re: [PATCH v2 4/5] PCI: uniphier: Add iATU register support
To: Rob Herring <robh@kernel.org>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-5-git-send-email-hayashi.kunihiko@socionext.com>
 <20200601213215.GA1521885@bogus>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <e6e7de73-6a89-b0e9-a9b0-de353c4e3218@socionext.com>
Date: Tue, 2 Jun 2020 18:07:42 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601213215.GA1521885@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_020747_281664_199EAAA6 
X-CRM114-Status: GOOD (  19.77  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Masami Hiramatsu <masami.hiramatsu@linaro.org>,
 Jassi Brar <jaswinder.singh@linaro.org>, Jingoo Han <jingoohan1@gmail.com>,
 linux-kernel@vger.kernel.org, Masahiro Yamada <yamada.masahiro@socionext.com>,
 linux-pci@vger.kernel.org, Bjorn Helgaas <bhelgaas@google.com>,
 Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On 2020/06/02 6:32, Rob Herring wrote:
> On Fri, May 15, 2020 at 06:59:02PM +0900, Kunihiko Hayashi wrote:
>> This gets iATU register area from reg property. In Synopsis DWC version
>> 4.80 or later, since iATU register area is separated from core register
>> area, this area is necessary to get from DT independently.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-uniphier.c | 7 +++++++
>>   1 file changed, 7 insertions(+)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
>> index a8dda39..493f105 100644
>> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
>> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
>> @@ -447,6 +447,13 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>>   	if (IS_ERR(priv->pci.dbi_base))
>>   		return PTR_ERR(priv->pci.dbi_base);
>>   
>> +	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "atu");
>> +	if (res) {
>> +		priv->pci.atu_base = devm_pci_remap_cfg_resource(dev, res);
> 
> This isn't config space, so this function shouldn't be used.
> 
> Use devm_platform_ioremap_resource_byname().

Indeed. I'll replace with it.

>> +		if (IS_ERR(priv->pci.atu_base))
>> +			priv->pci.atu_base = NULL;
>> +	}
>> +
>>   	res = platform_get_resource_byname(pdev, IORESOURCE_MEM, "link");
>>   	priv->base = devm_ioremap_resource(dev, res);
> 
> Feel free to convert this one too.

This should be replaced as well.

Thank you,
  
---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
