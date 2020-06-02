Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E8F11EB7F5
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jun 2020 11:08:19 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=CWtim+eYHvD1QxIO85mkwscTEfaprDKdYalWLzXwBF8=; b=hV/M2KVBk7hd7J09gh9xnmYnB
	ltOnTeKe/rrEwBAwFNc5wWo2O1UnvRiwYFQw7DrxTz/MD5s9mcFmLmNHdTiZeUIhq3VmdJ5SyGNCm
	iVjZOrWvIQ0V0dBBO7Q5R86znTy7lnBT93I9AEmzmvFsLaFYDsuZlJ+bCJgnrKF4GWImz4/C/R6/D
	OXfcKnoErTDpnC8pRiYF1EJ+SauL4eeYyx4qiGqzoZnF4CQKhXPQCdLPurh3BDDDSUW52x1+xUXkz
	YAKSagFbacv+VflrVUIlJ9PwA1YPEzV7A5Kl5H5yQfxijxoAbW0uPIBvhC2b26sTS3p4jPf8wkRsH
	Seq6BBBpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jg2u3-0001Qs-HF; Tue, 02 Jun 2020 09:08:11 +0000
Received: from mx.socionext.com ([202.248.49.38])
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jg2ts-0001OI-In
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jun 2020 09:08:01 +0000
Received: from unknown (HELO iyokan-ex.css.socionext.com) ([172.31.9.54])
 by mx.socionext.com with ESMTP; 02 Jun 2020 18:07:59 +0900
Received: from mail.mfilter.local (m-filter-2 [10.213.24.62])
 by iyokan-ex.css.socionext.com (Postfix) with ESMTP id D462A60057;
 Tue,  2 Jun 2020 18:07:59 +0900 (JST)
Received: from 172.31.9.53 (172.31.9.53) by m-FILTER with ESMTP;
 Tue, 2 Jun 2020 18:07:59 +0900
Received: from yuzu.css.socionext.com (yuzu [172.31.8.45])
 by iyokan.css.socionext.com (Postfix) with ESMTP id 6A9B24036A;
 Tue,  2 Jun 2020 18:07:59 +0900 (JST)
Received: from [10.213.31.100] (unknown [10.213.31.100])
 by yuzu.css.socionext.com (Postfix) with ESMTP id D4B10120136;
 Tue,  2 Jun 2020 18:07:58 +0900 (JST)
Subject: Re: [PATCH v2 5/5] PCI: uniphier: Add error message when failed to
 get phy
To: Rob Herring <robh@kernel.org>
References: <1589536743-6684-1-git-send-email-hayashi.kunihiko@socionext.com>
 <1589536743-6684-6-git-send-email-hayashi.kunihiko@socionext.com>
 <20200601214302.GA1538223@bogus>
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Message-ID: <410530a4-b4fa-b39e-4187-5e87315ef6c9@socionext.com>
Date: Tue, 2 Jun 2020 18:07:58 +0900
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.1
MIME-Version: 1.0
In-Reply-To: <20200601214302.GA1538223@bogus>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200602_020800_765645_05FF7D18 
X-CRM114-Status: GOOD (  22.26  )
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

On 2020/06/02 6:43, Rob Herring wrote:
> On Fri, May 15, 2020 at 06:59:03PM +0900, Kunihiko Hayashi wrote:
>> Even if phy driver doesn't probe, the error message can't be distinguished
>> from other errors. This displays error message caused by the phy driver
>> explicitly.
>>
>> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
>> ---
>>   drivers/pci/controller/dwc/pcie-uniphier.c | 7 +++++--
>>   1 file changed, 5 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/pci/controller/dwc/pcie-uniphier.c b/drivers/pci/controller/dwc/pcie-uniphier.c
>> index 493f105..7ae9688 100644
>> --- a/drivers/pci/controller/dwc/pcie-uniphier.c
>> +++ b/drivers/pci/controller/dwc/pcie-uniphier.c
>> @@ -468,8 +468,11 @@ static int uniphier_pcie_probe(struct platform_device *pdev)
>>   		return PTR_ERR(priv->rst);
>>   
>>   	priv->phy = devm_phy_optional_get(dev, "pcie-phy");
>> -	if (IS_ERR(priv->phy))
>> -		return PTR_ERR(priv->phy);
>> +	if (IS_ERR(priv->phy)) {
>> +		ret = PTR_ERR(priv->phy);
>> +		dev_err(dev, "Failed to get phy (%d)\n", ret);
> 
> This will print an error on EPROBE_DEFERRED which isn't an error.

Thanks for pointing out.
Surely this message should be suppressed when returning EPROBE_DEFERRED.

Thank you,
  
---
Best Regards
Kunihiko Hayashi

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
