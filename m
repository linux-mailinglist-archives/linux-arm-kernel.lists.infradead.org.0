Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BBEA335F
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 30 Aug 2019 11:07:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=12nlf1mfHNVRRt5mHoUDgD29e8uUGv0F576C9euTJeA=; b=bHeFl0kRBUDkEyi8RXE0xP0mv
	dqg/K4Op14GP4o/uDfUEvOE33sD4n+I9WDa+jIrlkMwO2zDetU6ieHr83DH0uhAcFoDUkAmGi4hn0
	S9KxgUghDxLZ6dEcl+1fJ+U6AfSt7ZyCpjAPZLiKKrdbdWHcQCXlCqfhjsjS9MRyBs3ur60XZlFYx
	UCVZL0LXti6bE+dtDJk23QB7ylafiWXTp/z0+10ZoW7ASrccrBFPoGb5qpMUMKucBmw8xT9gOO2IV
	ln4uLF2+CrGs3PwfyPiLqns0xQtbPud70kGaZBNE5DEvHyMPpLDu0Y4GaabF8ah6c292JbJWQz6w3
	uAf4AEn1Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i3csR-0003Jr-AW; Fri, 30 Aug 2019 09:07:27 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i3csG-0003JY-QR
 for linux-arm-kernel@lists.infradead.org; Fri, 30 Aug 2019 09:07:18 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x7U97BYH075140;
 Fri, 30 Aug 2019 04:07:11 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1567156031;
 bh=pbbHjXFgEMUNVSFKH41QJG48HyK2dDKJg25+FIAOwgc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=VECDpe6GWhf9qaBrfGZm7EvMrdsIKsfbQlJ0pCe8RqkCZefHYvJ4Z8XkEiAqC2n+d
 5WFPU85s3eJKKGNfTILEspun7nwAZgkDZacGhSO9BhrkeU/TiQE9toHGZaBbp9evml
 6jYyu092MIJN8hENWF20ma/bNvT/0FWf499VLuTg=
Received: from DFLE109.ent.ti.com (dfle109.ent.ti.com [10.64.6.30])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x7U97Bo8071724
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 30 Aug 2019 04:07:11 -0500
Received: from DFLE101.ent.ti.com (10.64.6.22) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 30
 Aug 2019 04:07:11 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DFLE101.ent.ti.com
 (10.64.6.22) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 30 Aug 2019 04:07:11 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x7U97879074497;
 Fri, 30 Aug 2019 04:07:09 -0500
Subject: Re: [PATCHv2 03/11] soc: ti: omap-prm: poll for reset complete during
 de-assert
To: Philipp Zabel <p.zabel@pengutronix.de>, <ssantosh@kernel.org>,
 <linux-arm-kernel@lists.infradead.org>, <linux-omap@vger.kernel.org>,
 <robh+dt@kernel.org>
References: <20190828071941.32378-1-t-kristo@ti.com>
 <20190828071941.32378-4-t-kristo@ti.com>
 <1567084467.5345.9.camel@pengutronix.de>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <ceed701f-481c-4905-727e-ba3af2cf8ff2@ti.com>
Date: Fri, 30 Aug 2019 12:07:07 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <1567084467.5345.9.camel@pengutronix.de>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190830_020716_965251_AFF01537 
X-CRM114-Status: GOOD (  16.70  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: tony@atomide.com, devicetree@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 29/08/2019 16:14, Philipp Zabel wrote:
> Hi Tero,
> 
> On Wed, 2019-08-28 at 10:19 +0300, Tero Kristo wrote:
>> Poll for reset completion status during de-assertion of reset, otherwise
>> the IP in question might be accessed before it has left reset properly.
>>
>> Signed-off-by: Tero Kristo <t-kristo@ti.com>
>> ---
>>   drivers/soc/ti/omap_prm.c | 20 ++++++++++++++++++++
>>   1 file changed, 20 insertions(+)
>>
>> diff --git a/drivers/soc/ti/omap_prm.c b/drivers/soc/ti/omap_prm.c
>> index fd5c431f8736..afeb70761b27 100644
>> --- a/drivers/soc/ti/omap_prm.c
>> +++ b/drivers/soc/ti/omap_prm.c
>> @@ -127,6 +127,7 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>>   	u32 v;
>>   	int st_bit;
>>   	bool has_rstst;
>> +	int timeout = 0;
>>   
>>   	if (!_is_valid_reset(reset, id))
>>   		return -EINVAL;
>> @@ -153,6 +154,25 @@ static int omap_reset_deassert(struct reset_controller_dev *rcdev,
>>   	v &= ~(1 << id);
>>   	writel_relaxed(v, reset->prm->base + reset->prm->data->rstctrl);
>>   
>> +	if (!has_rstst)
>> +		return 0;
>> +
>> +	/* wait for the status to be set */
>> +	while (1) {
>> +		v = readl_relaxed(reset->prm->base + reset->prm->data->rstst);
>> +		v &= 1 << st_bit;
>> +		if (v)
>> +			break;
>> +		timeout++;
>> +		if (timeout > OMAP_RESET_MAX_WAIT) {
>> +			pr_err("%s: timedout waiting for %s:%lu\n", __func__,
>> +			       dev_name(rcdev->dev), id);
>> +			return -EBUSY;
>> +		}
>> +
>> +		udelay(1);
>> +	}
> 
> This looks like you could use
> 
> 	readl_relaxed_poll_timeout(_atomic)

Yeah true, let me change that.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
