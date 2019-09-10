Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BB182AE481
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 09:15:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=yrmPiPDSEkw+rmSIIefZMcXF93YMkcADf6FK5GcAmHU=; b=bYOskwKzraJU/KP8azdN+3u0J
	8bA9MX3Ypy/7BZdie/yDYsgM2hZ52LlUMPyWxuVGm1L0Bid1FzfTEl16z43lcWjtpG1rP7QW+Dr/v
	QIlNmLi9DlettEkwhqxGS0kb3QSBRujOV1D3zhFTQZIeSzDKrKiTI70f7yorH+owQQVvTV2nGIjlS
	qYeJDcm5eBO92H9wH8EVGvPANy8OKT/AsGX45R4uAmyE1ruHBuPnNiw+XuxSD7bwyIbezYRzcXdPA
	ILN6bKPP9FW4lRpK2DKuIds5WhpDzUKAz3N6J/r37eq+2bzhWhR7SEvev43N0IDqTKyuBl63E6cD/
	KBGRZSfzA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7aMz-0004RO-TO; Tue, 10 Sep 2019 07:15:22 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7aF5-0008M5-Mt
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 07:07:14 +0000
Received: from lelv0265.itg.ti.com ([10.180.67.224])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id x8A773kY063473;
 Tue, 10 Sep 2019 02:07:03 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1568099223;
 bh=qhrJHNazfc5CMwtBCfE9AmHbBpmQjdMCtB10M++D6ZI=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=aV5MsxeyOwzwuZre588rIVKEGGzYc0ka2baZHICXVKLIOPQ85G4qlEBnlMU9/6aq/
 QWLgTsFdP5pvBhU4DDK+fl1lFQb/bNpW77FzDyhCS66xccgugv/apXAeh1XkKaeRA6
 5L+806zvG7l2Kb7IKCSvyZDZbZTvjv6TKV9eZRD4=
Received: from DLEE106.ent.ti.com (dlee106.ent.ti.com [157.170.170.36])
 by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x8A7735E059383
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 10 Sep 2019 02:07:03 -0500
Received: from DLEE102.ent.ti.com (157.170.170.32) by DLEE106.ent.ti.com
 (157.170.170.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Tue, 10
 Sep 2019 02:07:03 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE102.ent.ti.com
 (157.170.170.32) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Tue, 10 Sep 2019 02:07:03 -0500
Received: from [10.250.98.116] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id x8A76xLj100346;
 Tue, 10 Sep 2019 02:07:00 -0500
Subject: Re: [PATCH v2 06/14] dmaengine: ti: Add cppi5 header for UDMA
To: Peter Ujfalusi <peter.ujfalusi@ti.com>, Vinod Koul <vkoul@kernel.org>
References: <20190730093450.12664-1-peter.ujfalusi@ti.com>
 <20190730093450.12664-7-peter.ujfalusi@ti.com>
 <20190908142528.GP2672@vkoul-mobl>
 <8699f999-7834-a083-2c7b-3ea909b1e011@ti.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <8486fbb1-9d2c-9230-6205-85d58b93697c@ti.com>
Date: Tue, 10 Sep 2019 10:06:58 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8699f999-7834-a083-2c7b-3ea909b1e011@ti.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_000712_435576_042040E9 
X-CRM114-Status: GOOD (  13.02  )
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
Cc: nm@ti.com, devicetree@vger.kernel.org, lokeshvutla@ti.com, j-keerthy@ti.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, tony@atomide.com,
 robh+dt@kernel.org, ssantosh@kernel.org, dmaengine@vger.kernel.org,
 dan.j.williams@intel.com, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 09/09/2019 13:59, Peter Ujfalusi wrote:
> 
> 
> On 08/09/2019 17.25, Vinod Koul wrote:
>> On 30-07-19, 12:34, Peter Ujfalusi wrote:
>>
>>> +/**
>>> + * Descriptor header, present in all types of descriptors
>>> + */
>>> +struct cppi5_desc_hdr_t {
>>> +	u32 pkt_info0;	/* Packet info word 0 (n/a in Buffer desc) */
>>> +	u32 pkt_info1;	/* Packet info word 1 (n/a in Buffer desc) */
>>> +	u32 pkt_info2;	/* Packet info word 2 Buffer reclamation info */
>>> +	u32 src_dst_tag; /* Packet info word 3 (n/a in Buffer desc) */
>>
>> Can we move these comments to kernel-doc style please
> 
> Sure, I'll move all struct and enums.
> 
>>> +/**
>>> + * cppi5_desc_get_type - get descriptor type
>>> + * @desc_hdr: packet descriptor/TR header
>>> + *
>>> + * Returns descriptor type:
>>> + * CPPI5_INFO0_DESC_TYPE_VAL_HOST
>>> + * CPPI5_INFO0_DESC_TYPE_VAL_MONO
>>> + * CPPI5_INFO0_DESC_TYPE_VAL_TR
>>> + */
>>> +static inline u32 cppi5_desc_get_type(struct cppi5_desc_hdr_t *desc_hdr)
>>> +{
>>> +	WARN_ON(!desc_hdr);
>>
>> why WARN_ON and not return error!
> 
> these helpers were intended to be as simple as possible.
> I can go through with all of the WARN_ONs and replace them with if()
> pr_warn() and either just return or return with 0.
> 
> Would that be acceptable?
> 

This should never happens in working system unless there is buggy code.
I think It can be just removed

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
