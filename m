Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B5FB819757D
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 30 Mar 2020 09:21:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=h1uT+AVoQOto5wSfiGPU47r+BNq3Zf4Pjf2YKNp+Ztw=; b=eL/WUTh90Efku2kJgy2ZEWRFv
	YElqBv0hBrYRTKtdGQ7GckXtlkR9G1BfdJXpEfszHxdJjqjWdkASDCnOKmt5/5l49xxM+DGgemYUH
	HxkIF+/uGG37u3u2gb/br3uxhL5Wmk3hCYjpgojXT+2TVbe6hCKibE4fWaxg809gxENzKGZrfDQO2
	6iHwX53vrszALWSlkeNZSWoqE2hkKV5dZ16gQFIE4HiZujhIeRAj8bntW+kdQh1xn6cZ1JzmBYBJ4
	CTC8Dz761uublgQe9bmrdhHRvFsaSFSY6MSLUTVfG2nscnF4DjPp2T1VfUOpq+PYXWpaoUThw0+4p
	QkpB66E+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jIoji-0007tW-34; Mon, 30 Mar 2020 07:21:30 +0000
Received: from fllv0015.ext.ti.com ([198.47.19.141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIojZ-0007sw-3w
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 07:21:22 +0000
Received: from fllv0034.itg.ti.com ([10.64.40.246])
 by fllv0015.ext.ti.com (8.15.2/8.15.2) with ESMTP id 02U7Femr070666;
 Mon, 30 Mar 2020 02:15:40 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1585552540;
 bh=NXREPC6AjT+tb9XAu2s06xCTTiXQAq15gLRQdGHSrsc=;
 h=Subject:To:CC:References:From:Date:In-Reply-To;
 b=N7GDFfuNeAhgRmOm/cs0ZBnR0jXDoxuJ0gH6W2WZzvAz238bc/fq+eC9OmFUJUon7
 nDrqZPPaIW4lYuyAlII5IY2FBcU5KM9TBx6El5LhsmWELSjDHkstJME8SJ7ci6PCYG
 dNPTovCGAtmj6+aiYKzX6nqBD1YRrLwbGkZMwnEM=
Received: from DLEE108.ent.ti.com (dlee108.ent.ti.com [157.170.170.38])
 by fllv0034.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 02U7FeHx098221
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Mon, 30 Mar 2020 02:15:40 -0500
Received: from DLEE112.ent.ti.com (157.170.170.23) by DLEE108.ent.ti.com
 (157.170.170.38) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3; Mon, 30
 Mar 2020 02:15:39 -0500
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1847.3 via
 Frontend Transport; Mon, 30 Mar 2020 02:15:39 -0500
Received: from [127.0.0.1] (ileax41-snat.itg.ti.com [10.172.224.153])
 by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 02U7FZIN103554;
 Mon, 30 Mar 2020 02:15:36 -0500
Subject: Re: [PATCH net-next v6 00/11] net: ethernet: ti: add networking
 support for k3 am65x/j721e soc
To: Vladimir Oltean <olteanv@gmail.com>, David Miller <davem@davemloft.net>
References: <20200323225254.12759-1-grygorii.strashko@ti.com>
 <20200326.200136.1601946994817303021.davem@davemloft.net>
 <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
From: Tero Kristo <t-kristo@ti.com>
Message-ID: <8f5e981a-193c-0c1e-1e0a-b0380b2e6a9c@ti.com>
Date: Mon, 30 Mar 2020 10:15:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CA+h21hr8G24ddEgAbU_TfoNAe0fqUJ0_Uyp54Gxn5cvPrM6u9g@mail.gmail.com>
Content-Language: en-US
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_002121_245016_72613629 
X-CRM114-Status: GOOD (  15.09  )
X-Spam-Score: -2.7 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.141 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.2 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Rob Herring <robh@kernel.org>, Grygorii Strashko <grygorii.strashko@ti.com>,
 devicetree@vger.kernel.org, netdev <netdev@vger.kernel.org>, nsekhar@ti.com,
 lkml <linux-kernel@vger.kernel.org>, kishon@ti.com, peter.ujfalusi@ti.com,
 Murali Karicheri <m-karicheri2@ti.com>, Jakub Kicinski <kuba@kernel.org>,
 "moderated list:ARM/Mediatek SoC support"
 <linux-arm-kernel@lists.infradead.org>, rogerq@ti.com
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 28/03/2020 03:53, Vladimir Oltean wrote:
> Hi David,
> 
> On Fri, 27 Mar 2020 at 05:02, David Miller <davem@davemloft.net> wrote:
>>
>> From: Grygorii Strashko <grygorii.strashko@ti.com>
>> Date: Tue, 24 Mar 2020 00:52:43 +0200
>>
>>> This v6 series adds basic networking support support TI K3 AM654x/J721E SoC which
>>> have integrated Gigabit Ethernet MAC (Media Access Controller) into device MCU
>>> domain and named MCU_CPSW0 (CPSW2G NUSS).
>>   ...
>>
>> Series applied, thank you.
> 
> The build is now broken on net-next:
> 
> arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
> (phandle_references):
> /interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
> Reference to non-existent node
> or label "mcu_conf"
> 
>    also defined at
> arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3
> arch/arm64/boot/dts/ti/k3-j721e-mcu-wakeup.dtsi:303.23-309.6: ERROR
> (phandle_references):
> /interconnect@100000/interconnect@28380000/ethernet@46000000/ethernet-ports/port@1:
> Reference to non-existent node
> or label "phy_gmii_sel"
> 
>    also defined at
> arch/arm64/boot/dts/ti/k3-j721e-common-proc-board.dts:471.13-474.3
> 
> As Grygorii said:
> 
> Patches 1-6 are intended for netdev, Patches 7-11 are intended for K3 Platform
> tree and provided here for testing purposes.

Yeah, I think you are missing a dependency that was applied via the K3 
branch earlier. They are in linux-next now, but I am not so sure how 
much that is going to help you.

You could just drop the DT patches from this merge and let me apply them 
via the platform branch.

-Tero
--
Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki. Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
