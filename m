Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 93E5C114EE2
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  6 Dec 2019 11:16:33 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Ur6tKCrgC8Zekuw4/sKavQau4TVPXyGbUC4c+sMNSfU=; b=RCATtTsnv2fuRBDDQSbZk7SYu
	hqJ2LXGz+vaU05sAgCX/2mzWFp1FvhkXzkF+kzt1znor97p90KCb/zZBGVbT6XG1m99J/fOVUGA+d
	jXHsJ66BavW34+9OhLxkk3LZiGvNFi7M/+E6uurvG4tTT2aVXV3OItWZH4CN7e085XomU3Br6Te9m
	yT/X9G/OvNJi8i6s7Cjy/rsV7Ds6wP8+X9Bsr2uQYuYhRhzv1HjUHqox58fHMvhWi8ymxlY3dhLig
	oA1Jn3u45TqjsctTQCyZIYJqTLlpZgzsvQzfocNeRWGuE0ku4Fv84QC52hMmKnPDT7hLuwZWmGiUr
	EgMQpycJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1idAez-0008Vx-Rj; Fri, 06 Dec 2019 10:16:29 +0000
Received: from mx08-00252a01.pphosted.com ([91.207.212.211])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1idAek-0008Ut-5h
 for linux-arm-kernel@lists.infradead.org; Fri, 06 Dec 2019 10:16:16 +0000
Received: from pps.filterd (m0102629.ppops.net [127.0.0.1])
 by mx08-00252a01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id
 xB6AEw2Y032373
 for <linux-arm-kernel@lists.infradead.org>; Fri, 6 Dec 2019 10:16:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=raspberrypi.org;
 h=subject : to :
 cc : references : from : message-id : date : mime-version : in-reply-to :
 content-type : content-transfer-encoding; s=pp;
 bh=9GgYl9S1nL+peS4sDvUeeZmWgbpy1Ur8lxeMl3yRwtc=;
 b=eLPrbAOE+XtcjHwZKfgDJEG3f2szxOL9CzvD4u5Tp76yaXOu8HZ5u4BpfjMBlH14u0T8
 ggDpf3cMXALAHypkJntqi5WDHvYm4HPec88GP+6sxCoOGL4e296fe3WPlxbY0xlR+zwa
 EUuqEXOzXeRQZfyFezW7qaJnKBs60vaMu8AmUq+bI78e91WdvAHNfah11hLxgU+zcfD/
 JaqJuNvfAHz52JwEpt9HbFVgBdmGy8uJb5JygEcnBusjdLdCmA/uqsFUe/cEH2dhawao
 Ye04aAp++vKppGxGbA8a+zGinIsh0NKEGhhu/0pD3mItkAdFksPLY069vuPAdXO9XCj6 Eg== 
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70])
 by mx08-00252a01.pphosted.com with ESMTP id 2wncsy1sc5-1
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=OK)
 for <linux-arm-kernel@lists.infradead.org>; Fri, 06 Dec 2019 10:16:09 +0000
Received: by mail-wr1-f70.google.com with SMTP id z14so2965900wrs.4
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 06 Dec 2019 02:16:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=raspberrypi.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=9GgYl9S1nL+peS4sDvUeeZmWgbpy1Ur8lxeMl3yRwtc=;
 b=MTzmN/6q2yxsK9wikV4N236QQisGPJskuPO98xzlu2pYAU8GTzCp4Kt1BQnQswl17H
 v70r1/iLhJKHzznB035De8bQ/UWTXLaknHmdl+Y+F6aVs2MM2k/7MUxACTWH93Rfyf6D
 czFcdDfHfpjUTqaki8VUj/nEeVM+LpZMIFQ8nGNjRi4k4d77BRx5Ch5+VIzZLIEySS5R
 1IQq5fea6OgrsfWr/0K2YuBfMmSvlWJNs2WyAdnP+xkCFzFcOee2EMx5SObtRLJ5tk0c
 1sGZXXK3pMCCK6J3hKYL3r/8BTd2brNrSylfy4XDkMxSW2wAs4OVTSSP5iEs+DyNFIp2
 DZkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=9GgYl9S1nL+peS4sDvUeeZmWgbpy1Ur8lxeMl3yRwtc=;
 b=JM+M1hD4YMViGt1FQ+f1PfJ4ZhPNeNpbyGiDfVmPSjWeaxcSTEY8KvfzVoH7HxvOb6
 pAGUZBMOllTokB3k0FBCjRQhRuLto4myFQyRw2IVwT9lXEqJ7E+LxI1fR8xSo/dzF8Oz
 PUIq8h0no21ULvKabMhe+d69Pl/eAdGE27l7ToBHa+pxugS7T9hyQz5a1HSVnVB6bUf3
 8DDpchDEAYil04bcIGJxBGMg/7kRzLctXsnazn4wJCijl249Ja/240nKdaiLTwtpLZxn
 PgQqqpq3f/It8sJSTtJ8F9dkaCURI/v3ODB/HXabI/4Ovx/O+2yAWKlicHre3EhDlOv9
 VSHw==
X-Gm-Message-State: APjAAAV51kNM38P6M0vwQIXHGRDyqF45tZn+9qRJp4pXVoB6Pu/p63d4
 qZaXYY3vaIyzn4nsh/4z1Gz3p5Bpb+aXohzkdeTiqSks93b2d4JAH9iDXceMVbR0XjpOaOTEs/4
 2Z2eaIon4jQsfx/8GGyR+3nON55bjaYimMtE=
X-Received: by 2002:a1c:8086:: with SMTP id b128mr9783700wmd.80.1575627368329; 
 Fri, 06 Dec 2019 02:16:08 -0800 (PST)
X-Google-Smtp-Source: APXvYqwM9YKOu9+eW68BfSK6Z25zAVRza8PYLDiZw6h7bdstTwR+zRv+oNeeaBi3D0KaNXNz/2j1Ew==
X-Received: by 2002:a1c:8086:: with SMTP id b128mr9783661wmd.80.1575627368031; 
 Fri, 06 Dec 2019 02:16:08 -0800 (PST)
Received: from ?IPv6:2a00:1098:3142:14:8514:61d5:b7c0:16be?
 ([2a00:1098:3142:14:8514:61d5:b7c0:16be])
 by smtp.gmail.com with ESMTPSA id a78sm1647809wme.9.2019.12.06.02.16.06
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Fri, 06 Dec 2019 02:16:07 -0800 (PST)
Subject: Re: [PATCH] ARM: dts: bcm2711: fix soc's node dma-ranges
To: Florian Fainelli <f.fainelli@gmail.com>,
 Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
 Rob Herring <robh+dt@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Eric Anholt <eric@anholt.net>, Stefan Wahren <wahrenst@gmx.net>
References: <20191204125633.27696-1-nsaenzjulienne@suse.de>
 <711470d3-e683-69d4-8f4e-791a76faab29@gmail.com>
From: Phil Elwell <phil@raspberrypi.org>
Message-ID: <e72de603-2ad9-5a3b-109e-8ee14bf3293c@raspberrypi.org>
Date: Fri, 6 Dec 2019 10:16:07 +0000
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <711470d3-e683-69d4-8f4e-791a76faab29@gmail.com>
Content-Language: en-US
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.95,18.0.572
 definitions=2019-12-06_02:2019-12-05,2019-12-06 signatures=0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191206_021614_573510_E4ACDB8F 
X-CRM114-Status: GOOD (  24.62  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [91.207.212.211 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, mbrugger@suse.com, linux-kernel@vger.kernel.org,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

On 06/12/2019 00:08, Florian Fainelli wrote:
> On 12/4/19 4:56 AM, Nicolas Saenz Julienne wrote:
>> Raspberry Pi's firmware has a feature to select how much memory to
>> reserve for its GPU called 'gpu_mem'. The possible values go from 16MB
>> to 944MB, with a default of 64MB. This memory resides in the topmost
>> part of the lower 1GB memory area and grows bigger expanding towards the
>> begging of memory.
>>
>> It turns out that with low 'gpu_mem' values (16MB and 32MB) the size of
>> the memory available to the system in the lower 1GB area can outgrow the
>> interconnect's dma-range as its size was selected based on the maximum
>> system memory available given the default gpu_mem configuration. This
>> makes that memory slice unavailable for DMA. And may cause nasty kernel
>> warnings if CMA happens to include it.
>>
>> Change soc's dma-ranges to really reflect it's HW limitation, which is
>> being able to only DMA to the lower 1GB area.
>>
>> Fixes: 7dbe8c62ceeb ("ARM: dts: Add minimal Raspberry Pi 4 support")
>> Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
>> ---
>>
>> NOTE: I'd appreciate if someone from the RPi foundation commented on
>> this as it's something that I'll propose to be backported to their tree.

The 0x3c000000 size was a mistake that arose from c0000000 + 3c000000 = 
fc000000, but that is mixing apples and oranges (actually DMA addresses
and host physical addresses). Please correct it as you are proposing.

> 
> I don't think our additional DTS changes will be merged until -rc1 is
> cut, so we have some time to figure this one out. Thanks
> 
>>
>>   arch/arm/boot/dts/bcm2711.dtsi | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm/boot/dts/bcm2711.dtsi b/arch/arm/boot/dts/bcm2711.dtsi
>> index 5b61cd915f2b..d6a0e350b7b4 100644
>> --- a/arch/arm/boot/dts/bcm2711.dtsi
>> +++ b/arch/arm/boot/dts/bcm2711.dtsi
>> @@ -43,7 +43,7 @@ soc {
>>   			 <0x7c000000  0x0 0xfc000000  0x02000000>,
>>   			 <0x40000000  0x0 0xff800000  0x00800000>;
>>   		/* Emulate a contiguous 30-bit address range for DMA */
>> -		dma-ranges = <0xc0000000  0x0 0x00000000  0x3c000000>;
>> +		dma-ranges = <0xc0000000  0x0 0x00000000  0x40000000>;
>>   
>>   		/*
>>   		 * This node is the provider for the enable-method for
>>
> 
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
