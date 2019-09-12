Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 31780B153A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 22:11:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=B1g2zE0cApyiKgO5nnHZDlq1Bq3T4Dj+R49vWfNCOD0=; b=fU+bc5ZCferLB+LlXJCwCbPCO
	LiHjGRNYQDpn2OdVkEfKziS6VQ9pci8+a31MbMyfvfSeGhkzB39gbAFA4njy4xL1+IoPYoj0j2z6P
	rYg22l+iMVzvb3Qct8koRraQJIQcleXE9NuQ5XTuVHNwXcEc38qC673wbfkHYy6VgDyQxnXuTpziQ
	AK0d2rJmlsh/Rpims9VR1HyYr5q0GxR+XHr7QZFO0N6rnIm1bAIQ+TBX4yHYIKP3IpeXjjLn1u3sm
	LMos9ts4jZ+fkiAo/vYNwM+a/G44otLE+jLSgBgYmdzsqfgWhLJG2MQEvFWTtlyB5cTQXTVRJoOA5
	bCQfXUrEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8VRc-0002Wj-VY; Thu, 12 Sep 2019 20:11:57 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8VPP-0000V7-RA
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Sep 2019 20:09:42 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8CK9PoF109697;
 Thu, 12 Sep 2019 15:09:25 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568318965;
 bh=16OqD2YMbnKdC6QRUB/lstU38e2Kzn/xLVzjMK9d4Fk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=A01AIhVgDkqOT4Mu/kRkM4untpi8TLC/eI7KZniejEmoiN5TrobB0F/cE81XdVCpc
 MhH/nqk+5kxCLQxhdIz6unn/IcpMyrTIMv3d8OUx9JOC6A2a81HGUrra8EpNbqKZ/u
 Rlu/aICwUh8uMNE/WE673u+LFj83m2LbKI1uKrdY=
Received: from DLEE110.ent.ti.com (dlee110.ent.ti.com [157.170.170.21])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8CK9P7e027699
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 12 Sep 2019 15:09:25 -0500
Received: from DLEE110.ent.ti.com (157.170.170.21) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 12
 Sep 2019 15:09:25 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE110.ent.ti.com
 (157.170.170.21) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 12 Sep 2019 15:09:25 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8CK9MQv004968;
 Thu, 12 Sep 2019 15:09:23 -0500
Subject: Re: [PATCHv5 10/10] ARM: OMAP2+: pdata-quirks: add PRM data for reset
 support
To: Tony Lindgren <tony@atomide.com>
References: <20190912113916.20093-1-t-kristo@ti.com>
 <20190912113916.20093-11-t-kristo@ti.com>
 <20190912170953.GT52127@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <4103d986-20fa-0dce-df6b-b0955ceabd74@ti.com>
Date: Thu, 12 Sep 2019 23:09:21 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190912170953.GT52127@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_130940_305770_09C3A11B 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree@vger.kernel.org, linux-omap@vger.kernel.org, robh+dt@kernel.org,
 p.zabel@pengutronix.de, ssantosh@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 12/09/2019 20:09, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [190912 11:40]:
>> @@ -565,6 +566,12 @@ void omap_pcs_legacy_init(int irq, void (*rearm)(void))
>>   	pcs_pdata.rearm = rearm;
>>   }
>>   
>> +static struct ti_prm_platform_data ti_prm_pdata = {
>> +	.clkdm_deny_idle = clkdm_deny_idle,
>> +	.clkdm_allow_idle = clkdm_allow_idle,
>> +	.clkdm_lookup = clkdm_lookup,
>> +};
>> +
>>   /*
>>    * GPIOs for TWL are initialized by the I2C bus and need custom
>>    * handing until DSS has device tree bindings.
>> @@ -664,6 +671,11 @@ static struct of_dev_auxdata omap_auxdata_lookup[] = {
>>   	/* Common auxdata */
>>   	OF_DEV_AUXDATA("ti,sysc", 0, NULL, &ti_sysc_pdata),
>>   	OF_DEV_AUXDATA("pinctrl-single", 0, NULL, &pcs_pdata),
>> +	OF_DEV_AUXDATA("ti,omap4-prm-inst", 0, NULL, &ti_prm_pdata),
>> +	OF_DEV_AUXDATA("ti,omap5-prm-inst", 0, NULL, &ti_prm_pdata),
>> +	OF_DEV_AUXDATA("ti,dra7-prm-inst", 0, NULL, &ti_prm_pdata),
>> +	OF_DEV_AUXDATA("ti,am3-prm-inst", 0, NULL, &ti_prm_pdata),
>> +	OF_DEV_AUXDATA("ti,am4-prm-inst", 0, NULL, &ti_prm_pdata),
>>   	{ /* sentinel */ },
>>   };
> 
> Hmm I think I already commented on this.. Just one entry please:
> 
> 	OF_DEV_AUXDATA("ti,omap-prm-inst", 0, NULL, &ti_prm_pdata),
> 
> As the auxdata is the same for all of them. Note that all the
> dts files need to have also the generic compatible
> "ti,omap-prm-inst" after the SoC specific one.

Ok that should be fine, sorry for missing it out. I can update this in 
the next rev, just need to update the dt binding also.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
