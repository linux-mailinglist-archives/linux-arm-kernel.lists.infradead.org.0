Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BCCA651A5
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 11 Jul 2019 07:49:42 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=gUdsC7bNpnVaIHjfbuBTauxnmdIll1H/n1o1fYsHfg0=; b=Fob9Wil/gR7NAjWTyXV7LwFaA
	+mYD2FKdJyoCDMMUDWlZ5+swBWrWBcwH/3K6U1opxPzlxzo4IeXx+fgVcKae0RVf0tvRmp0v/8/Nr
	tNvdSO5cO6p3e1vlZb6+Fm5iZYLOC6c1aabuFTGPCU5qUs1P2CYrC0oKcl5n+fcaUd4FK9OuXsRW2
	oOKkYxbko09l7PRtYSBenL0Zo9HfOiIyu1p8jL4iyy2OZqdpn5IhvYlyiOyP+i2BKAq1851WSINjZ
	2PY6597h8Tdsl4siipNh6qEwY+31SLZwODzqblar00qdjRfz9mQ2LMKS4PfvzAe5xMj5JujR443FN
	4jdYxGF4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hlRxa-0001DX-07; Thu, 11 Jul 2019 05:49:38 +0000
Received: from lelv0142.ext.ti.com ([198.47.23.249])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlRxO-0001Cz-56
 for linux-arm-kernel@lists.infradead.org; Thu, 11 Jul 2019 05:49:27 +0000
Received: from fllv0035.itg.ti.com ([10.64.41.0])
 by lelv0142.ext.ti.com (8.15.2/8.15.2) with ESMTP id x6B5nG0L121742;
 Thu, 11 Jul 2019 00:49:16 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1562824156;
 bh=BBGGbLWTwFoPWcPlWIHYpDkMBxZC1FoaO38iXBCy9C0=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=X1v19PGnZoZNTdlDmoTyHdKy029lSWSoEZk20BxWOlqgS5cUf65faSD2w2zgjo8T2
 wRkrOrnnLlDUrvPygmrjIgo/LPuXs51UvZTdQS+z3ZrgvE9DgRkUe4ubPVCWboH2Ow
 G4akjknRT7L9UqWnAuCdBTrh1Cs3ieFgtOslzNsQ=
Received: from DLEE105.ent.ti.com (dlee105.ent.ti.com [157.170.170.35])
 by fllv0035.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x6B5nGFC122559
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Thu, 11 Jul 2019 00:49:16 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE105.ent.ti.com
 (157.170.170.35) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Thu, 11
 Jul 2019 00:49:15 -0500
Received: from lelv0327.itg.ti.com (10.180.67.183) by DLEE103.ent.ti.com
 (157.170.170.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Thu, 11 Jul 2019 00:49:15 -0500
Received: from [172.24.191.45] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0327.itg.ti.com (8.15.2/8.15.2) with ESMTP id x6B5nC9k040369;
 Thu, 11 Jul 2019 00:49:13 -0500
Subject: Re: [PATCH v2] arm64: Kconfig.platforms: Enable GPIO_DAVINCI for
 ARCH_K3
To: Nishanth Menon <nm@ti.com>
References: <20190627110920.15099-1-j-keerthy@ti.com>
 <20190627143208.eeca4xyygml7s4n3@kahuna>
 <39f5e726-8542-b650-3bdb-7542e8fab8ac@ti.com>
 <20190628203752.rdb6vvc42qd5ofgd@kahuna>
From: Keerthy <j-keerthy@ti.com>
Message-ID: <ff0b4d00-046f-1ba6-b31e-e49197ba1050@ti.com>
Date: Thu, 11 Jul 2019 11:19:47 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <20190628203752.rdb6vvc42qd5ofgd@kahuna>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190710_224926_346356_ED9229CB 
X-CRM114-Status: GOOD (  20.30  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.23.249 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: lokeshvutla@ti.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 29/06/19 2:07 AM, Nishanth Menon wrote:
> On 09:08-20190628, Keerthy wrote:
> [..]
>>>> +	select GPIO_SYSFS
>>>> +	select GPIO_DAVINCI
>>>
>>>
>>> Could you help explain the logic of doing this? commit message is
>>> basically the diff in English. To me, this does NOT make sense.
>>>
>>> I understand GPIO_DAVINCI is the driver compatible, but we cant do this for
>>> every single SoC driver that is NOT absolutely mandatory for basic
>>> functionality.
>>
>> In case of ARM64 could you help me find the right place to enable
>> such SoC specific configs?
> 
> Is'nt that what defconfig is supposed to be all about?
> 
> arch/arm64/configs/defconfig
> 
>>
>>>
>>> Also keep in mind the impact to arm64/configs/defconfig -> every single
>>> SoC in the arm64 world will be now rebuild with GPIO_SYSFS.. why force
>>> that?
>>
>> This was the practice in arm32 soc specific configs like
>> omap2plus_defconfig. GPIO_SYSFS was he only way to validate. Now i totally
>> understand your concern about every single SoC rebuilding but now where do
>> we need to enable the bare minimal GPIO_DAVINCI config?
> 
> Well, SYSFS, I cannot agree testing as the rationale in
> Kconfig.platform. And, looking at [1], I see majority being mandatory
> components for the SoC bootup. However, most of the "optional" drivers
> go into arm64 as defconfig (preferably as a module?) and if you find a
> rationale for recommending DEBUG_GPIO, you could propose that to the
> community as well.
> 
> Now, Thinking about this, I'd even challenge the current list of configs as
> being "select". I'd rather do an "imply"[2] - yes, you need this for the
> default dtb to boot, however a carefully carved dtb could boot with
> lesser driver set to get a smaller (and less functional) kernel.
> 
>>
>> v1 i received feedback from Tero to enable in Kconfig.platforms. Hence i
>> shifted to this approach.
> 
> I noticed that you were posting a v2, for future reference, please use
> diffstat section to point to lore/patchworks link to point at v1 (I
> did notice you mentioned you had an update, thanks - link will help
> catch up on older discussions). This helps a later revision reviewer
> like me to get context.
> 
> Tero, would you be able to help with a better rationale as to where the
> boundaries are to be in your mind, rather than risk every single
> peripheral driver getting into ARCH_K3?

Tero,

Could you point me to a better place for enabling?

- Keerthy

> 
> As of right now, I'd rather we do not explode the current list out of
> bounds. NAK unless we can find a better rationale.
> 
> 
> [1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/Kconfig.platforms
> [2] https://www.kernel.org/doc/Documentation/kbuild/kconfig-language.txt
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
