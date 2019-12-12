Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 590D711C301
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:09:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:Reply-To:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:
	In-Reply-To:References:Message-ID:Date:Subject:To:From:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MI+/TbbxF1ZBPQn5rwV4K3NFOcneaIQ1ke+Mrot77uE=; b=reLCtADvOqNv/v
	/UWUEbSolEhky2ZQLHEF86mvTaSfuMHOr/Wv6jj8MMC0uiRH/L5RMvakovkRdCOK0c8hxx6/Orkw4
	g0WGgGZWFGNiRsQ0s1U9mo3Ayc4HAYMoMjrs0eNvqxAaNMpMjq4qXfhxoac3/wGSdBXNbtmpX1xxK
	2ZRXdGhmrNfoiVZajwgTkp2uvkpDlKUrApBdC5jox7cYte238o5Sz9JcOd+5GTUbQ+vACyQ86IBp1
	0zW9+2HOuRWbFTvP5tdY43XrIp2rBjTl0rhRfqIB28EruJn2qYObjCYrUtzq+E9xJxUBUOmTr5qya
	52cLCNdAIif76hC+w/kw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifDvC-0007Op-2S; Thu, 12 Dec 2019 02:09:42 +0000
Received: from mail-eopbgr700122.outbound.protection.outlook.com
 ([40.107.70.122] helo=NAM04-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifDv1-0007NO-3t; Thu, 12 Dec 2019 02:09:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=TzM0fO89vWLiIWqMOoPZCGnpsvcxwQMB8ZBAe0+PrwJ9twVjFcvz85BH36MiFeZu1uCCdk+RjXSg4vGjjYL9/Ep98o4S9fwVu/9eXj7DQtu+GBhxY/cQO8NvwHtqM/IcDO8soXKukIpYUvxYCjb1OdC3UoiWhSWojeC6i9u9eEtfg2nstGN3hi5J6PaQ+PvsnYLKpxZsRjRNxb5w9MFu0xpTw40BJm5+qKC+VEsSe9X8YhzgX59J2CtO+UYzWHnYaICDWgzjliQROUOgZQvgQPty0rnohS5vE6HzFEcRlrIBwYN25hKNWE/LdzYyrKn8xC/CPvv5g/zFoutJl48XGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AHiZTNeI65E0iLQsAvO4Q3wcixqFRMxhZPw05gDywOk=;
 b=M1EqJDZKpB3otTSUsr1WrhM1zzNVwoj2RGl/Dd7r9NSRK/kaO5OSvgJ0+LMzxbvtrV1/sRJDR0Hshi+ingrkqkopoHDnFTO2z4XFZfMqUphAjLolskM1O9HUGvqb2ATOrR0SAc9oMAzxTjVwxkBqz/BsTexr2qP384QKKNxCsHcZ5Da299fb8tYipH0upzZ6GcAU3QSv84zLf6yFks6w52xeMuvRJwDt85V/QkTaBjXomx42Q/V7FvHJP1GmEVYyDI2R4KdY+SYBtD15MGJwvAsogYQKhnEsEzcUn8DaH2+NlWoGTk5N6MdBda2WV6+tYSgdM7amYaEem5IXdW33Pg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=cypress.com; dmarc=pass action=none header.from=cypress.com;
 dkim=pass header.d=cypress.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cypress.com;
 s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=AHiZTNeI65E0iLQsAvO4Q3wcixqFRMxhZPw05gDywOk=;
 b=g6zUDcH74zh+uGBD22yaSWixydQtCTPzLrUVkgDgqMDRkiBkm8XKt9eQhS06UMlgTQetU3HlOe23py/LMQWFuWd76v0wquNsNpx/AqLNLAw+1+i5PmD/3Iz4rqZ2sCgaA9+KD26yw5P17W/jEQ9YRi0HXbxHr1D6Bgp2nK4jGkw=
Received: from CY4PR06MB2342.namprd06.prod.outlook.com (10.169.185.149) by
 CY4PR06MB2744.namprd06.prod.outlook.com (10.173.43.145) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.12; Thu, 12 Dec 2019 02:09:29 +0000
Received: from CY4PR06MB2342.namprd06.prod.outlook.com
 ([fe80::4930:d9e2:2f15:868d]) by CY4PR06MB2342.namprd06.prod.outlook.com
 ([fe80::4930:d9e2:2f15:868d%3]) with mapi id 15.20.2538.016; Thu, 12 Dec 2019
 02:09:28 +0000
From: Chi-Hsien Lin <Chi-Hsien.Lin@cypress.com>
To: Soeren Moch <smoch@web.de>, Kalle Valo <kvalo@codeaurora.org>, Heiko
 Stuebner <heiko@sntech.de>
Subject: Re: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
Thread-Topic: [PATCH v2 5/9] brcmfmac: add support for BCM4359 SDIO chipset
Thread-Index: AQHVsH4pHxrVVVvksEaPoTtqwTa5Cae1wVuA
Date: Thu, 12 Dec 2019 02:09:28 +0000
Message-ID: <2e831af2-ed4a-7512-bdbd-c2582630db42@cypress.com>
References: <20191211235253.2539-1-smoch@web.de>
 <20191211235253.2539-6-smoch@web.de>
In-Reply-To: <20191211235253.2539-6-smoch@web.de>
Accept-Language: en-US, zh-TW
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [61.222.14.99]
user-agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
 Thunderbird/52.9.1
x-clientproxiedby: BY5PR20CA0004.namprd20.prod.outlook.com
 (2603:10b6:a03:1f4::17) To CY4PR06MB2342.namprd06.prod.outlook.com
 (2603:10b6:903:13::21)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Chi-Hsien.Lin@cypress.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: cefe8352-d833-4c7f-9314-08d77ea8517d
x-ms-traffictypediagnostic: CY4PR06MB2744:|CY4PR06MB2744:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <CY4PR06MB27443601EFB67FD0B47C9FF9BB550@CY4PR06MB2744.namprd06.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:2276;
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
x-microsoft-antispam-message-info: tg1Vi/eQNYbNAiQxzPAMZPTQXWtpKbqqX5c4sYQGMvqhbmAz2rtOyEgtwgSo7d6ItbH7RfoyGEgELHT4lwmYg/X0yLTn073elv7QNqayPjt+SBHL8HPZLltpS5YTFOjc1la7u4ErYuWQUY64449JyBIcCoHmZ1UtHgaakJjyKZmgJM1nt9FymFpaAEwgaH1jedxy5FBUdCzPTMFWHoCT6ZGYJH65InKNPnSgLY+lP3LyvQP5K+R4sMeRkXdQr/gTg0KyTuk0Zo88v2wUSXDY4yj7l6yE8yFAF6NxLmX2afkBDS/9XZO2OvqIi+Os407mg3EsXs7XSE0AFHhgHZFqGIOZd42rnKaQ21e9h8fU7AkUbLr2lqUNUPCw+z6iLJFApOjd1pdM/KzXW5cK/0nvnKl4sp9EKmXQTVxqIeoLbVFGx+wzz5Gt7c+C2EE/0EdX
Content-ID: <1A8FAA12A2CEB649A47F36332995AD74@namprd06.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: cypress.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cefe8352-d833-4c7f-9314-08d77ea8517d
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:09:28.8001 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 011addfc-2c09-450d-8938-e0bbc2dd2376
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: pV0iHjls9inNyg7fhyw+r9wVq9dx7dlMkzNNUm5oo1SA88iCj3vODW+c2kpWc0QnOGvMbX6sAF+ZozR0/t0cLg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR06MB2744
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_180931_160338_1D22770F 
X-CRM114-Status: GOOD (  15.71  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.70.122 listed in list.dnswl.org]
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
> BCM4359 is a 2x2 802.11 abgn+ac Dual-Band HT80 combo chip and it
> supports Real Simultaneous Dual Band feature.
> 
> Based on a similar patch by: Wright Feng <wright.feng@cypress.com>
> 
> Signed-off-by: Soeren Moch <smoch@web.de>
Acked-by: Chi-Hsien Lin <chi-hsien.lin@cypress.com>

> ---
> changes in v2:
> - add SDIO_DEVICE_ID_CYPRESS_89359 as requested
>    by Chi-Hsien Lin <chi-hsien.lin@cypress.com>
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
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c | 2 ++
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c   | 1 +
>   drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c   | 2 ++
>   include/linux/mmc/sdio_ids.h                              | 2 ++
>   4 files changed, 7 insertions(+)
> 
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> index 68baf0189305..f4c53ab46058 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/bcmsdh.c
> @@ -973,8 +973,10 @@ static const struct sdio_device_id brcmf_sdmmc_ids[] = {
>   	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_43455),
>   	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4354),
>   	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4356),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_BROADCOM_4359),
>   	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_4373),
>   	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_43012),
> +	BRCMF_SDIO_DEVICE(SDIO_DEVICE_ID_CYPRESS_89359),
>   	{ /* end: all zeroes */ }
>   };
>   MODULE_DEVICE_TABLE(sdio, brcmf_sdmmc_ids);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> index baf72e3984fc..282d0bc14e8e 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/chip.c
> @@ -1408,6 +1408,7 @@ bool brcmf_chip_sr_capable(struct brcmf_chip *pub)
>   		addr = CORE_CC_REG(base, sr_control0);
>   		reg = chip->ops->read32(chip->ctx, addr);
>   		return (reg & CC_SR_CTL0_ENABLE_MASK) != 0;
> +	case BRCM_CC_4359_CHIP_ID:
>   	case CY_CC_43012_CHIP_ID:
>   		addr = CORE_CC_REG(pmu->base, retention_ctl);
>   		reg = chip->ops->read32(chip->ctx, addr);
> diff --git a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> index 21e535072f3f..c4012ed58b9c 100644
> --- a/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> +++ b/drivers/net/wireless/broadcom/brcm80211/brcmfmac/sdio.c
> @@ -616,6 +616,7 @@ BRCMF_FW_DEF(43455, "brcmfmac43455-sdio");
>   BRCMF_FW_DEF(43456, "brcmfmac43456-sdio");
>   BRCMF_FW_DEF(4354, "brcmfmac4354-sdio");
>   BRCMF_FW_DEF(4356, "brcmfmac4356-sdio");
> +BRCMF_FW_DEF(4359, "brcmfmac4359-sdio");
>   BRCMF_FW_DEF(4373, "brcmfmac4373-sdio");
>   BRCMF_FW_DEF(43012, "brcmfmac43012-sdio");
> 
> @@ -638,6 +639,7 @@ static const struct brcmf_firmware_mapping brcmf_sdio_fwnames[] = {
>   	BRCMF_FW_ENTRY(BRCM_CC_4345_CHIP_ID, 0xFFFFFDC0, 43455),
>   	BRCMF_FW_ENTRY(BRCM_CC_4354_CHIP_ID, 0xFFFFFFFF, 4354),
>   	BRCMF_FW_ENTRY(BRCM_CC_4356_CHIP_ID, 0xFFFFFFFF, 4356),
> +	BRCMF_FW_ENTRY(BRCM_CC_4359_CHIP_ID, 0xFFFFFFFF, 4359),
>   	BRCMF_FW_ENTRY(CY_CC_4373_CHIP_ID, 0xFFFFFFFF, 4373),
>   	BRCMF_FW_ENTRY(CY_CC_43012_CHIP_ID, 0xFFFFFFFF, 43012)
>   };
> diff --git a/include/linux/mmc/sdio_ids.h b/include/linux/mmc/sdio_ids.h
> index 08b25c02b5a1..2e9a6e4634eb 100644
> --- a/include/linux/mmc/sdio_ids.h
> +++ b/include/linux/mmc/sdio_ids.h
> @@ -41,8 +41,10 @@
>   #define SDIO_DEVICE_ID_BROADCOM_43455		0xa9bf
>   #define SDIO_DEVICE_ID_BROADCOM_4354		0x4354
>   #define SDIO_DEVICE_ID_BROADCOM_4356		0x4356
> +#define SDIO_DEVICE_ID_BROADCOM_4359		0x4359
>   #define SDIO_DEVICE_ID_CYPRESS_4373		0x4373
>   #define SDIO_DEVICE_ID_CYPRESS_43012		43012
> +#define SDIO_DEVICE_ID_CYPRESS_89359		0x4355
> 
>   #define SDIO_VENDOR_ID_INTEL			0x0089
>   #define SDIO_DEVICE_ID_INTEL_IWMC3200WIMAX	0x1402
> --
> 2.17.1
> 
> .
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
