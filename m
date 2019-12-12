Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C4E2011C2F4
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:08:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mwVgPQzjRKfBd2C9PwG3m5nv6b7ZIfDchwFUxRK4hE0=; b=Be67yc+jfN5j8S
	TCvzM37v6oxVId8A/b7nXFvQLXXkVZN7Uk62Mh7moB2C8ITG5b8/qSBvLkJEnJ3dLjbcOQ3B4klmR
	NLlQvl+uXMm00skPWfxHHWh1+n7lBFRU1dVv5tCWM2EK/XZw1TaNtEQFECQL8Vqp3f9orRePSohlL
	8qL2saKfqNgFFSrVOg1hzQfypb4AB0geIM50mNu5A9kGzaGVICS/AET0MoKikrasUHs9kpUsDeAme
	e1V9IW/vYl4upqzlxq6nGGbIViWps4cJZu2M3Nla5K9EfX75PNCZXOYDEf2KzndnE48XcrAd2V+z1
	5oujF6oskWqeYQIeae+w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDtg-0006gC-0n; Thu, 12 Dec 2019 02:08:08 +0000
Received: from mail-eopbgr700096.outbound.protection.outlook.com
 ([40.107.70.96] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDtU-0006fL-2x; Thu, 12 Dec 2019 02:07:57 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JnCa0IwCKm0L1if1AHGFMp8TSdFK5gz/3E/1YZafDSWjXtfdlSfzOh9n7cVzIJwUTVItfomJBik4cagTwdxvHYuX0O1F4YGBFucAl0i5RvyUW0qocm2/Y56eOD9pWtViwoCx9XU007jikyWbe80+DwK1LO8KQ6DI1GF2wdTkkPxHbACsyxZ4vT3rHE6bsgq2hzUP2GzzP3OMHO1nbzntYVCwhwbzoCHnBs5PDYLxDvKlk5hsUZIhHquuXV36zM0q/W+j4OUiUsJ3ypD8mjLcjeRi/q7VyeTod0GBA+4F5nkRxpJBkxQI/2/i85LN1qEZH9O3B9GF0G/ig+zm+9DqLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/v2eXSfOQhx0zlPwFdzUO+mmPI4Y811QrahK7QUrrgU=;
 b=Vr/+ALtm+f3tf7PPT/Pk6ueM194m8zr4UC98JglFFwOyW9GadPC0HS6DVLSREd5QVeyVdqwlM5ETEi1Ph3C/2qHaxo+szfWkJj3t0ex0zt2mY47ry2dVKcasVPz6gb1JXSyaUg7tBcfR+pn9iQ489yI8vYtBOeyKE3mV4YVQuIuyKeTKqtKgvwj60enyKaAhAwA+QCnNPSNqU6sGyi7d50RgkqvPkcN6/LgGigdFnVX6oCpVgS+NGfhW2b6QRBYAMpLOHxVodGAQdkWrmOUvYF0qSf7APQtm6n7O1Za/U4f5+t9mnHoHcYeo9VcY5teH9RkHuOY2fFAYPSKxXprIgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cypress.com; dmarc=pass action=none header.from=cypress.com;
 dkim=pass header.d=cypress.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cypress.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=/v2eXSfOQhx0zlPwFdzUO+mmPI4Y811QrahK7QUrrgU=;
 b=MeNc3TEZTlVdilvsnpQShQWw09eHTMgAK4Oj3rcaoBrbv8oJcp2eVHPndcxHhkB97KvnJk31OAZbxPzM5B8QX3wM5zusrXyT106BMobR6lDTiVRmVJzS+diGfc9w6W8qW8ndtkJ3rPhmgWD3BDtoM/YZjeKIa+4UIBBXkAkeWFI=
Received: from CY4PR06MB2342.namprd06.prod.outlook.com (10.169.185.149) by
 CY4PR06MB2744.namprd06.prod.outlook.com (10.173.43.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Thu, 12 Dec 2019 02:07:52 +0000
Received: from CY4PR06MB2342.namprd06.prod.outlook.com
 ([fe80::4930:d9e2:2f15:868d]) by CY4PR06MB2342.namprd06.prod.outlook.com
 ([fe80::4930:d9e2:2f15:868d%3]) with mapi id 15.20.2538.016; Thu, 12 Dec 2019
 02:07:52 +0000
From: Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>
To: Soeren Moch <smoch@web.de>, Kalle Valo <kvalo@codeaurora.org>, Heiko
 Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 3/9] brcmfmac: fix rambase for 4359/9
Thread-Topic: [PATCH v2 3/9] brcmfmac: fix rambase for 4359/9
Thread-Index: AQHVsH4n+6PxY2w0LUCHnMkA6uGdW6e1wOcA
Date: Thu, 12 Dec 2019 02:07:52 +0000
Message-ID: <cdb13e17-64b5-8b58-db66-6827b86dbf39@cypress.com>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-4-smoch@web.de>
In-Reply-To: <20191211235253.2539-4-smoch@web.de>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [61.222.14.99]
user-agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
x-clientproxiedby: BYAPR03CA0010.namprd03.prod.outlook.com
 (2603:10b6:a02:a8::23) To CY4PR06MB2342.namprd06.prod.outlook.com
 (2603:10b6:903:13::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chi-Hsien.Lin@cypress.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 1209edcc-b422-4b3f-e9c3-08d77ea817ef
x-ms-traffictypediagnostic: CY4PR06MB2744:|CY4PR06MB2744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR06MB274429DDADD63295C4A99045BB550@CY4PR06MB2744.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:972;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(346002)(396003)(39860400002)(366004)(136003)(376002)(189003)(199004)(26005)(2906002)(31696002)(71200400001)(110136005)(186003)(66946007)(2616005)(86362001)(31686004)(316002)(3450700001)(52116002)(5660300002)(54906003)(8676002)(6512007)(478600001)(53546011)(6506007)(4326008)(6486002)(66446008)(66556008)(81156014)(36756003)(64756008)(81166006)(8936002)(66476007)(7416002);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR06MB2744;
 H:CY4PR06MB2342.namprd06.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: cypress.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: mapK05taLiXxdvnoUHgjkzvAZVaIBGd+BokBMic+pLMYMvSPBAOH57bQH8q/NbGXdd8aXN+pjMt+u9itPAAi0q1K263b/cjCdK7Q4hEtmLLEIPyoFBZ4leX6pLNS0JkQjEcSmTz2G6J32y3hyK1x7bT5Q04s6UNn/3x3Q8wnRqRhGLpULMYs8GzmxuCu3BNLsdFItwgKOEa6RswzbIkTY6PUn+zXh5e9mRLulWGeuoNfu3zQ8Gfgpg2vs8BH6kNWIUMT3EfVjK/jAScnW2tnp0Mn5JK6tDUOBRlhFgAl0kwavP5wkbLnkijbJpa4EoWN3F0243Civyz79IKpcYq8T96b0pvyKTPigmoRaL9FsBC5g0la2E5JzeoaW3y0UW1buJzf/8iPCBACmVLUpQFgryHLamA3vM5xSADtCp/EUoae7db6uEawimaqjmsHp9eV
Content-ID: <7C4EC26E46EA7949B54C07F878B62F7B@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cypress.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1209edcc-b422-4b3f-e9c3-08d77ea817ef
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:07:52.1327 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 011addfc-2c09-450d-8938-e0bbc2dd2376
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Ol8CgijY4n+EtmltmOL5X8/UBbu6enaC00H1jjrQn9dvMTCnVarYM25HtnmgWabT20anLWcW9/ne+Yr9uLecPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR06MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_180756_239723_F18C9554 
X-CRM114-Status: GOOD (  14.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.96 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Reply-To: Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>
Cc: "brcm80211-dev-list.pdl@broadcom.com"
 <brcm80211-dev-list.pdl@broadcom.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
 "linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
 Arend van Spriel <arend.vanspriel@broadcom.com>,
 Hante Meuleman <hante.meuleman@broadcom.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Wright Feng <Wright.Feng@cypress.com>,
 brcm80211-dev-list <brcm80211-dev-list@cypress.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Franky Lin <franky.lin@broadcom.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 12/12/2019 7:52, Soeren Moch wrote:
> Newer 4359 chip revisions need a different rambase address.
> This fixes firmware download on such devices which fails otherwise.
> 
> Signed-off-by: Soeren Moch <smoch@web.de>
Acked-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>

> ---
> changes in v2: none
> 
> Cc: Kalle Valo <kvalo@codeaurora.org>
> Cc: Heiko Stuebner <heiko@sntech.de>
> Cc: Arend van Spriel <arend.vanspriel@broadcom.com>
> Cc: Franky Lin <franky.lin@broadcom.com>
> Cc: Hante Meuleman <hante.meuleman@broadcom.com>
> Cc: Chi-Hsien Lin <chi-hsien.lin@cypress.com>
> Cc: Wright Feng <wright.feng@cypress.com>
> Cc: linux-wireless@vger.kernel.org
> Cc: brcm80211-dev-list.pdl@broadcom.com
> Cc: brcm80211-dev-list@cypress.com
> Cc: netdev@vger.kernel.org
> Cc: linux-arm-kernel@lists.infradead.org
> Cc: linux-rockchip@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c | 3 ++-
>   1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index 0b5fbe5d8270..baf72e3984fc 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -712,7 +712,6 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
>   	case BRCM_CC_43569_CHIP_ID:
>   	case BRCM_CC_43570_CHIP_ID:
>   	case BRCM_CC_4358_CHIP_ID:
> -	case BRCM_CC_4359_CHIP_ID:
>   	case BRCM_CC_43602_CHIP_ID:
>   	case BRCM_CC_4371_CHIP_ID:
>   		return 0x180000;
> @@ -722,6 +721,8 @@ static u32 brcmf_chip_tcm_rambase(struct brcmf_chip_priv *ci)
>   	case BRCM_CC_4366_CHIP_ID:
>   	case BRCM_CC_43664_CHIP_ID:
>   		return 0x200000;
> +	case BRCM_CC_4359_CHIP_ID:
> +		return (ci->pub.chiprev < 9) ? 0x180000 : 0x160000;
>   	case CY_CC_4373_CHIP_ID:
>   		return 0x160000;
>   	default:
> --
> 2.17.1
> 
> .
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
