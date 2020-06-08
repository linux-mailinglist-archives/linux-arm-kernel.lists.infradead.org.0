Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D15D11F118E
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  8 Jun 2020 04:53:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vYRoyVjrQVgf4u4fG4SLzrNpKtR8fTaayr/FMKZgMGE=; b=ugalCc42AL9B2e
	c9dE370opio9Q0vaKm761mx6bWjC+UL373WFalHTdcMSvKsrN+ljHeZTyjwKQRBtGN4kwEhKSpeHk
	A5NrjTXqzD7Yw8/4WsOhXO+JqKLEu1s2ubnzr6r0KtIIutus1JlYJ76hpWV/Wi0/TD/VntFy/XqEY
	FwBj6GfzRSO9AttutOeR1pmxKQV2T32EB2XzmzffyDpVEe+WDHlugkHQyfeFRGBUbQkxThtQo9uPR
	/5uuJGqHE6ww4w0Ovn34MloKVlLzvGK8seV/uJPVKQC9hSbf51fC7pKB0NV8ptrl30ZE65G4O/9AC
	K0ASaBkDCY9+Zckp5lUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ji7ut-0007Lx-62; Mon, 08 Jun 2020 02:53:39 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ji7uV-00076O-6B
 for linux-arm-kernel@lists.infradead.org; Mon, 08 Jun 2020 02:53:16 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0582qxNA090132;
 Sun, 7 Jun 2020 21:52:59 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1591584779;
 bh=dhAMeBt4kcAcqu7sDNT2ZR+MCN19NDKXPCvR8Kg/PyM=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=HuziIkI3O+Uc/IRLX7VYCKHDJ1K5N5kJ1HYi8g8DLTM4j+xhrc8vSQ9O2P5z+4znC
 Mi3z2C/W+5Tnz2ljlejhJmrf8J1TmOiFVsJrbJbeYmAvdHzwyogClErINglpnph1JT
 2l3e67rBetMBW7H2o9qaZyHwV5m0zeAoKN70hHa4=
Received: from DFLE115.ent.ti.com (dfle115.ent.ti.com [10.64.6.36])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0582qxhx112430
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Sun, 7 Jun 2020 21:52:59 -0500
Received: from DFLE108.ent.ti.com (10.64.6.29) by DFLE115.ent.ti.com
 (10.64.6.36) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Sun, 7 Jun
 2020 21:52:59 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE108.ent.ti.com
 (10.64.6.29) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Sun, 7 Jun 2020 21:52:59 -0500
Received: from [10.250.233.85] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0582qs9R005834;
 Sun, 7 Jun 2020 21:52:55 -0500
Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
To: Alim Akhtar <alim.akhtar@samsung.com>, "'Martin K. Petersen'"
 <martin.petersen@oracle.com>, <robh@kernel.org>
References: <CGME20200528013223epcas5p2be85fa8803326b49a905fb7225992cad@epcas5p2.samsung.com>
 <20200528011658.71590-1-alim.akhtar@samsung.com>
 <159114947915.26776.12485309894552696104.b4-ty@oracle.com>
 <013a01d63d3e$ecf404d0$c6dc0e70$@samsung.com>
From: Kishon Vijay Abraham I <kishon@ti.com>
Message-ID: <89b96bd0-a9a3-cdd8-dc67-1f9f49eef264@ti.com>
Date: Mon, 8 Jun 2020 08:22:54 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <013a01d63d3e$ecf404d0$c6dc0e70$@samsung.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200607_195315_378781_7C74C253 
X-CRM114-Status: GOOD (  13.82  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [198.47.19.142 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: devicetree@vger.kernel.org, linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kwmad.kim@samsung.com, avri.altman@wdc.com, 'Vinod Koul' <vkoul@kernel.org>,
 cang@codeaurora.org, stanley.chu@mediatek.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Alim,

On 6/8/2020 8:15 AM, Alim Akhtar wrote:
> 
> 
>> -----Original Message-----
>> From: Martin K. Petersen <martin.petersen@oracle.com>
>> Sent: 03 June 2020 08:02
>> To: robh@kernel.org; Alim Akhtar <alim.akhtar@samsung.com>
>> Cc: Martin K . Petersen <martin.petersen@oracle.com>; krzk@kernel.org;
> linux-
>> samsung-soc@vger.kernel.org; avri.altman@wdc.com;
>> stanley.chu@mediatek.com; linux-scsi@vger.kernel.org; linux-arm-
>> kernel@lists.infradead.org; cang@codeaurora.org;
> devicetree@vger.kernel.org;
>> kwmad.kim@samsung.com; linux-kernel@vger.kernel.org
>> Subject: Re: [PATCH v10 00/10] exynos-ufs: Add support for UFS HCI
>>
>> On Thu, 28 May 2020 06:46:48 +0530, Alim Akhtar wrote:
>>
>>> This patch-set introduces UFS (Universal Flash Storage) host
>>> controller support for Samsung family SoC. Mostly, it consists of UFS
>>> PHY and host specific driver.
>>> [...]
>>
>> Applied [1,2,3,4,5,9] to 5.9/scsi-queue. The series won't show up in my
> public
>> tree until shortly after -rc1 is released.
>>
> Thanks Martin,
> Hi Rob and Kishon/Vinod
> Can you please pickup dt-bindings and PHY driver respectively?

You might have CC'ed me only for the PHY patch. I don't have the dt-bindings in
my inbox. Care to re-send what's missing again? This will be merged after -rc1
is tagged.

Thanks
Kishon

> 
>> Thanks!
>>
>> --
>> Martin K. Petersen	Oracle Linux Engineering
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
