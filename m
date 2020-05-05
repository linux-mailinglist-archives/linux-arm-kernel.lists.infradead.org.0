Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 04F841C5602
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  5 May 2020 14:56:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Fps3e2AYyKXarl11YERcVZEeIlhx4CmquiLQ6LSnMeM=; b=lHVgPPfFk3bpxZoIWB2V5ltUH
	RfNM1b+XD7+4kJrc2BgnfW/mN2QydTdo9BIsa/B1moXJrkQIDOZLgLJhWU4rIhmu+oAwHPQLjPmii
	DQkiqVR0gBPcUvzL7U5H0y/8WrJjFGWmpxvfwF+jVFs3ZV2jnN1Q0bM0zyXKlC5hiMbeLp/ebZTM9
	PIreqbXkkE5VP/VVks4pd8Xidp5TNBKA/irH/ygrA76Naouz7L4j44jCWjW7EsNEnNuxwBEJ+NOed
	477fCGv+zQP28mM1k8GHW8qJh7CPtUsXb/o/Li5oqNHmC4wvxgqbucJn/A/3rXyc8wQJldF5iJ+IZ
	+V8zB8z0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jVx75-0001i0-3y; Tue, 05 May 2020 12:55:55 +0000
Received: from lelv0143.ext.ti.com ([198.47.23.248])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jVx6w-0001hS-IK
 for linux-arm-kernel@lists.infradead.org; Tue, 05 May 2020 12:55:48 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by lelv0143.ext.ti.com (8.15.2/8.15.2) with ESMTP id 045CtgJd100492;
 Tue, 5 May 2020 07:55:42 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1588683342;
 bh=TFx+viVGB1RJAgHDimKDlop7ZpZlSmdHvKAad8iYbGk=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=OPSd7s7EyQGGbbs6oMhwkXOkxxVubFW4Hn6fLa9Mcm1djjT7WC5J6yQ4wCiTQzipJ
 e3zo/AellZ4yCplWQYc0fAPnM2yz9L4m/7BgsvCMGDTnbrWelqUHJ1xYpGlXHtaWxx
 OUBjKPr7UrAEt+R2bv5ZxIjMOVJlMWtU+3yd2V9A=
Received: from DFLE106.ent.ti.com (dfle106.ent.ti.com [10.64.6.27])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 045Ctgmi031790
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Tue, 5 May 2020 07:55:42 -0500
Received: from DFLE113.ent.ti.com (10.64.6.34) by DFLE106.ent.ti.com
 (10.64.6.27) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 5 May
 2020 07:55:42 -0500
Received: from fllv0039.itg.ti.com (10.64.41.19) by DFLE113.ent.ti.com
 (10.64.6.34) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 5 May 2020 07:55:42 -0500
Received: from [10.250.100.73] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0039.itg.ti.com (8.15.2/8.15.2) with ESMTP id 045Ctchu036626;
 Tue, 5 May 2020 07:55:39 -0500
Subject: Re: [PATCH net-next 3/7] net: ethernet: ti: am65-cpsw-nuss: enable
 packet timestamping support
To: Anders Roxell <anders.roxell@linaro.org>
References: <20200501205011.14899-1-grygorii.strashko@ti.com>
 <20200501205011.14899-4-grygorii.strashko@ti.com>
 <CADYN=9L+RtruRYKah0Bomh7UaPGQ==N9trd0ZoVQ3GTc-VY8Dg@mail.gmail.com>
 <1bf51157-9fee-1948-f9ff-116799d12731@ti.com>
 <CADYN=9LfqLLmKNHPfXEiQbaX8ELF78BL-vWUcX-VP3aQ86csNg@mail.gmail.com>
 <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
From: Grygorii Strashko <grygorii.strashko@ti.com>
Message-ID: <7c32cb2f-e0f3-8861-3cdc-ef3f922aa044@ti.com>
Date: Tue, 5 May 2020 15:55:37 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CADYN=9LDCE2sQca12D4ow3BkaxXi1_bnc4Apu7pP4vnA=5AOKA@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200505_055546_688608_C190E735 
X-CRM114-Status: GOOD (  16.75  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.248 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Nishanth Menon <nm@ti.com>, devicetree@vger.kernel.org,
 Lokesh Vutla <lokeshvutla@ti.com>, Networking <netdev@vger.kernel.org>,
 Richard Cochran <richardcochran@gmail.com>, Sekhar Nori <nsekhar@ti.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, Tero Kristo <t-kristo@ti.com>,
 Murali Karicheri <m-karicheri2@ti.com>,
 "David S. Miller" <davem@davemloft.net>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/05/2020 14:59, Anders Roxell wrote:
> On Tue, 5 May 2020 at 13:16, Anders Roxell <anders.roxell@linaro.org> wrote:
>>
>> On Tue, 5 May 2020 at 13:05, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>>>
>>> hi Anders,
>>
>> Hi Grygorii,
> 
> Hi again,
> 
>>
>>>
>>> On 05/05/2020 13:17, Anders Roxell wrote:
>>>> On Fri, 1 May 2020 at 22:50, Grygorii Strashko <grygorii.strashko@ti.com> wrote:
>>>>>
>>>>> The MCU CPSW Common Platform Time Sync (CPTS) provides possibility to
>>>>> timestamp TX PTP packets and all RX packets.
>>>>>
>>>>> This enables corresponding support in TI AM65x/J721E MCU CPSW driver.
>>>>>
>>>>> Signed-off-by: Grygorii Strashko <grygorii.strashko@ti.com>
>>>>> ---
>>>>>    drivers/net/ethernet/ti/Kconfig             |   1 +
>>>>>    drivers/net/ethernet/ti/am65-cpsw-ethtool.c |  24 ++-
>>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.c    | 172 ++++++++++++++++++++
>>>>>    drivers/net/ethernet/ti/am65-cpsw-nuss.h    |   6 +-
>>>>>    4 files changed, 201 insertions(+), 2 deletions(-)
>>>>>
>>>>> diff --git a/drivers/net/ethernet/ti/Kconfig b/drivers/net/ethernet/ti/Kconfig
>>>>> index 1f4e5b6dc686..2c7bd1ccaaec 100644
>>>>> --- a/drivers/net/ethernet/ti/Kconfig
>>>>> +++ b/drivers/net/ethernet/ti/Kconfig
>>>>> @@ -100,6 +100,7 @@ config TI_K3_AM65_CPSW_NUSS
>>>>>           depends on ARCH_K3 && OF && TI_K3_UDMA_GLUE_LAYER
>>>>>           select TI_DAVINCI_MDIO
>>>>>           imply PHY_TI_GMII_SEL
>>>>> +       imply TI_AM65_CPTS
>>>>
>>>> Should this be TI_K3_AM65_CPTS ?
> 
> instead of 'imply TI_K3_AM65_CPTS' don't you want to do this:
> 'depends on TI_K3_AM65_CPTS || !TI_K3_AM65_CPTS'
> 
> 

this seems will do the trick.
Dependencies:
PTP_1588_CLOCK -> TI_K3_AM65_CPTS -> TI_K3_AM65_CPSW_NUSS

I'll send patch.

-- 
Best regards,
grygorii

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
