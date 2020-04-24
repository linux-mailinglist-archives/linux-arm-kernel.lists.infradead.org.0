Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F0E31B7B20
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 24 Apr 2020 18:09:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=fe/UqrJ1DXoJTCorxWLRJXF4RFdUaqCJJ2K1LeGJtaI=; b=oEvT2ecj0vy0f35wGW0uU9KJo
	f+Ol8zb0ARKDGlyjH8fzDWMoj5IiCYYMLwQn2PSZeqQu/nU6+WydgwXBNet3JOrxvTGVqeE1mdLN7
	Ob7Wx+4eYj1kH6TseRszM7Wl2PzYr1q6rGGYjp2jdexalG0v2hhyzGwMlt9MxySpVaPtcHGL8vsix
	WBmmBQAKTi6K3Q22UNzxZIv1xvj6eNLvuXcP5EGW/tZ2SL3Vkfcxu/F0xFdqlDDS3qZOpkiZrDSoC
	isKTDz0Edm7GVwY4dYChsh5NLnw5rhVg7A7MvbXhuK7YzH2MpGeWayucLdx7ts0HVtNF5w/kX6oK5
	GpwqqZaQQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jS0t8-0000RA-D7; Fri, 24 Apr 2020 16:09:14 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jS0ei-0005kZ-6p
 for linux-arm-kernel@lists.infradead.org; Fri, 24 Apr 2020 15:54:22 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 03OFsFk1113611;
 Fri, 24 Apr 2020 10:54:15 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1587743655;
 bh=F3vv+/r3MYmKyP0QQdhLLRZ5pZyCQ8GYvR24m2BMlOA=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=XM1DY4VD2Th0ZfhWMczUmt/ftTXPrHB0X3xwD/aLkUpE5S5z/XMm1JUAr8upTfTmi
 Zh4L5aqe+bG7IrunszBMGsupbf35SfX2cq8uGhS+FcWeU5xNi3bDFiQBapiCuq1WEJ
 QuMNv70tftuSNhyNvHiOtT68kQAiJ+R28ePLbxis=
Received: from DFLE112.ent.ti.com (dfle112.ent.ti.com [10.64.6.33])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 03OFsFnX071649
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 24 Apr 2020 10:54:15 -0500
Received: from DFLE109.ent.ti.com (10.64.6.30) by DFLE112.ent.ti.com
 (10.64.6.33) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Fri, 24
 Apr 2020 10:54:14 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE109.ent.ti.com
 (10.64.6.30) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Fri, 24 Apr 2020 10:54:14 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id 03OFsDlg038492;
 Fri, 24 Apr 2020 10:54:13 -0500
Subject: Re: [PATCH 00/17] ARM: dts: dra7/am57xx: remoteproc support
To: Tony Lindgren <tony@atomide.com>
References: <20200424151244.3225-1-t-kristo@ti.com>
 <20200424155128.GK37466@atomide.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <5f8d4dbb-f4fc-ee97-8542-610e98d3f895@ti.com>
Date: Fri, 24 Apr 2020 18:54:12 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200424155128.GK37466@atomide.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200424_085420_557869_6334BE33 
X-CRM114-Status: GOOD (  17.95  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: s-anna@ti.com, linux-omap@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 24/04/2020 18:51, Tony Lindgren wrote:
> * Tero Kristo <t-kristo@ti.com> [200424 08:13]:
>> Hi Tony,
>>
>> This series adds the DT nodes necessary for remoteproc support, now that
>> the driver side changes are (mostly) in. Couple of things to note
>> though.
>>
>> 1) There is a new IOMMU issue, for which I posted a fix today [1]
>> 2) The remoteproc core still has an issue for which there is ongoing
>>     discussion [2]
>>
>> With these two issue taken care of, the omap remoteproc support is
>> functional. The question though is, whether we should just wait until
>> the above two issues are resolved and merge the DT patches post that, or
>> merge the DT patches with status = "disabled".
> 
> If there are no dependencies between the pending driver fixes and
> the dts changes I see no reason to not merge the dts changes.

Yeah, no hard dependencies as such, just that things won't work properly 
before they are in.

-Tero

> 
>> There aren't any boot failures without the mentioned two issues though,
>> as one needs to enable the RPMSG_VIRTIO support before the failures
>> really kick in (issue [2]), and this config is not enabled for OMAPs
>> yet. Also, multi-v7 config doesn't seem to enable omap remoteproc,
>> so that is safe also.
> 
> OK thanks for checking that.
> 
>> Another thing I was considering myself was to squash all the board
>> specific reserved-memory region patches into the
>> dra7-ipu-dsp-common.dtsi files. However Suman wants to have these
>> separate and as he is the actual author for these, I posted them in this
>> form. But anyway, just so you know it would be possible to merge them
>> together.
> 
> OK. The combining of common features can be done in later patches
> too.
> 
> Regards,
> 
> Tony
> 
>> [1] https://lore.kernel.org/linux-iommu/20200424145828.3159-1-t-kristo@ti.com/T/#u
>> [2] https://lkml.org/lkml/2020/4/20/1094

--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
