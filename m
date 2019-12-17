Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C67B912260D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Dec 2019 08:59:59 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p8LaLjcTLGOrWPFwSe+iL8nSgDreWr3tgkaKeT/OZrk=; b=hxm8e4E8AB7qXP
	yxGc/szlrAErwL8YjUx9yN9JxV+L5LcBfRNJK7E546QTCY2nFFAZBttxt/8p6p/50S6fRKESWdNs0
	F16fN0K6OCZS1oSsjYAWdH5GyU0gkyFHQyXh9rmScR+gU7s34e28dJGLyqhtzRIGFq9vSo5HP+5Uv
	HbPRPy56b8Wyt6jEIsmoHw74HvEzo6h+tEvsMRyoA9PibzFdijO5RqFgI92wQe42BZ+nLP11o4ANE
	jSoXUuu8z39p4uAerBZsDFdByc6dh8cfhl98UQpzpKYi813TokifaVzcwoHDZjSiSlvaOuxbPCEMj
	Q7xKWshz/B1c89xSU9Eg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ih7ln-0001N8-VV; Tue, 17 Dec 2019 07:59:51 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ih7le-0001Lw-H9
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Dec 2019 07:59:44 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Eugen.Hristev@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="Eugen.Hristev@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Eugen.Hristev@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Eugen.Hristev@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: cyMCWzrN6h2l6bDxjeHh/cByJ3EWmOy/j+coNbeXZ8Kd/kZWcQumwNRDLc7vds1KaRZs/X8JBf
 ZenltYZFh4IJvCp9wHgX/JRthUBEF2MbM+Btd/iYHGh95tD80EGR2Zg4qDK4nusNL3neE902qh
 zjA/eNkWumZ+KX1mG8xA16fv48ZfdMks7q1k1NbOZyBIc4xhNHgOVhVWDuOoYtyRCwvOqasNZE
 bKlUJ0YxcqXbXcxGEFbqJrVuuYTsnGDU+UUn16ptI2dhaZ70FLzmuGwqZhJT9edqjQraSyeSaQ
 I3A=
X-IronPort-AV: E=Sophos;i="5.69,324,1571727600"; d="scan'208";a="59239123"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 17 Dec 2019 00:59:40 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.85.152) by
 chn-vm-ex01.mchp-main.com (10.10.85.143) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Tue, 17 Dec 2019 00:59:42 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Tue, 17 Dec 2019 00:59:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=BUl751Zgh5RhWX5CXiZb+k1d6d4PCpqE5t57MkOZuP9jUhsn1M9ikZxeLsg8JZ4kEI2JTDrf9qHf7B/yJLM5hoAgiviHq3x45+WEn52ean2AHh9QDuqoDz2cytMp+mzr1w5Uy2DZ9A9kwiORsZl0bPQkVYDQBjVHSISUVblRy2Ui6YbmgPxPeEA4G8zWZBu631u5sHoexeLg3mmnu/DsN5gTCTlj7SP+Ojd1a19Uh7eATXSYv2PTse8aj6suM+s49I6Tu/GrTRDHPDBWjEx/XpnYcM4i8bs24GJn38ElEdP26PCqSsiH/xJuxoez2tma3mA/mGkLaPdHIwBOkYYxyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BltOCjsnQ+CYpVZ1XekLJqThIT44rFTQB2ZX/wHBjoY=;
 b=cAsoBu6fO+GNZpZR6wVtOwU7GUUWJJHJos1jBMdeKLLGjyJpR6L94MQrEo3qE/L+GZkeUseS0O2AsE9m7mwNBjrfuGYwNDPXKhLA9yzdoz2PE2nBN8TKlx7LR14/MNSC1uDEp+GeMM+hTzYElZZM7SnIJrWhD/UzmN846VebC8bTQTtPiFtFZGMUPRDia5XXpjoT6yWkBfCnht6RVo2Zl0Q3WHG9mS0bMBjSBftWr/C/j6568mQb25mNkWyT5mrGf87U531UrhHe2Bcp/5ScXcQHRTPGAtK9+6GXbbHZkOhZgQnW9vrJ6S/tHlxSf2VkhepZ3nAvLXAZig8M1cLPdg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=BltOCjsnQ+CYpVZ1XekLJqThIT44rFTQB2ZX/wHBjoY=;
 b=HcfQwS/gvXSR9YLSoLzb9+o+Nt2i8G9ZmRnYlxokeLdgGIf9b65QcSQSq/OI5ABSY+W7DI58XTXVhWJC7MxKHDFayxz28+rLiEGz3cYb+T9Z3kpcrkOijbmht1pRBYK1cOwUvRG2BDxQATw6f1T6+tWvzl+lkSdFYQIXQ5Gvk5c=
Received: from DM5PR11MB1242.namprd11.prod.outlook.com (10.168.108.8) by
 DM5PR11MB1993.namprd11.prod.outlook.com (10.168.107.18) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2538.17; Tue, 17 Dec 2019 07:59:35 +0000
Received: from DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1]) by DM5PR11MB1242.namprd11.prod.outlook.com
 ([fe80::9039:e0e8:9032:20c1%12]) with mapi id 15.20.2538.019; Tue, 17 Dec
 2019 07:59:34 +0000
From: <Eugen.Hristev@microchip.com>
To: <peter.ujfalusi@ti.com>, <jic23@kernel.org>
Subject: Re: [PATCH] iio: adc: at91: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Topic: [PATCH] iio: adc: at91: Use dma_request_chan() instead
 dma_request_slave_channel()
Thread-Index: AQHVtK62ARE9EHW0SkuabQ9x+H8R5Ke99mWA
Date: Tue, 17 Dec 2019 07:59:34 +0000
Message-ID: <102e71da-8b9c-8528-3bec-b4a22895fb44@microchip.com>
References: <20191217075043.23539-1-peter.ujfalusi@ti.com>
In-Reply-To: <20191217075043.23539-1-peter.ujfalusi@ti.com>
Accept-Language: en-US, ro-RO
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 20bab96c-8d2c-4511-1abe-08d782c70e86
x-ms-traffictypediagnostic: DM5PR11MB1993:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DM5PR11MB19930214EE9715101DB2DC69E8500@DM5PR11MB1993.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 02543CD7CD
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(39860400002)(366004)(136003)(396003)(346002)(376002)(189003)(199004)(66446008)(64756008)(66946007)(66556008)(66476007)(36756003)(76116006)(316002)(54906003)(26005)(110136005)(71200400001)(81166006)(2906002)(6512007)(86362001)(6506007)(2616005)(53546011)(31696002)(5660300002)(478600001)(31686004)(186003)(8936002)(91956017)(8676002)(81156014)(4326008)(6486002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DM5PR11MB1993;
 H:DM5PR11MB1242.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: rlqCXOo33f6YZlH18pxM005qbLsOmxdEQbbAQ3Mv6IrmhCOBhJ57yb3ttfUUJka6d8MUgyduv0lnRE1K0svHOIKSRyGncBMBCpYaoOxTMnvcyCqAaQb0puO2kL1B1kyWKsZ1wpIV8g+ACfLrcrUTl7i+R1u7IASLfxIgLvLOfyJL3ufKSgBoBkK/ks2CNzB/kkZuH1+sbAIMh5U9av4p/zCxN9qqpOtOI2kSwY2W4KLYv7k9Ge4iB1qRDa4e6aJkjNeDsr/l/8ENvj95C+bOGoLKU/4fdY6tpnUIokTHwiQQp32CQ+GugsNTTuSKbEt3dXb4cvHui4pAPmnOEC50t9eJmwL3/JXRdGjkR7uOJNIGcDzObPCcruivYaiSxbpUEFKv/vqfHcvRWoycTdZd5ijiL8fwZvSiKlAcC1cXWK+F/vwqcVxi3FUBhQ1U6u0a
Content-ID: <D2D76EEC08250F4591517B12BACDF2B7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 20bab96c-8d2c-4511-1abe-08d782c70e86
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Dec 2019 07:59:34.8887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Wryc3MqQY86XP5M3g3avWNnG72BjcoOLPqDf9kGkLHtnKj0ApRefMCDv0pGyCLtb5SemxOOtDH7cdG0e5AqTyc02k+3p+GlrwDMUEqSMxAE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR11MB1993
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191216_235942_633733_76A1A885 
X-CRM114-Status: GOOD (  14.91  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-iio@vger.kernel.org, vkoul@kernel.org,
 Ludovic.Desroches@microchip.com, linux-arm-kernel@lists.infradead.org,
 linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 17.12.2019 09:50, Peter Ujfalusi wrote:

> dma_request_slave_channel() is a wrapper on top of dma_request_chan()
> eating up the error code.
> 
> By using dma_request_chan() directly the driver can support deferred
> probing against DMA.
> 
> Signed-off-by: Peter Ujfalusi <peter.ujfalusi@ti.com>
> ---
>   drivers/iio/adc/at91-sama5d2_adc.c | 6 +++---
>   1 file changed, 3 insertions(+), 3 deletions(-)

Hi Peter,

Thank you for the patch.
Nitpick : at91 is another driver (old one for different platforms), so 
can you please change the commit oneline to iio: adc: at91-sama5d2_adc: 
to not be confused about which driver is affected.

Thanks !
Eugen

> 
> diff --git a/drivers/iio/adc/at91-sama5d2_adc.c b/drivers/iio/adc/at91-sama5d2_adc.c
> index e1850f3d5cf3..a5c7771227d5 100644
> --- a/drivers/iio/adc/at91-sama5d2_adc.c
> +++ b/drivers/iio/adc/at91-sama5d2_adc.c
> @@ -1444,10 +1444,10 @@ static void at91_adc_dma_init(struct platform_device *pdev)
>          if (st->dma_st.dma_chan)
>                  return;
> 
> -       st->dma_st.dma_chan = dma_request_slave_channel(&pdev->dev, "rx");
> -
> -       if (!st->dma_st.dma_chan)  {
> +       st->dma_st.dma_chan = dma_request_chan(&pdev->dev, "rx");
> +       if (IS_ERR(st->dma_st.dma_chan))  {
>                  dev_info(&pdev->dev, "can't get DMA channel\n");
> +               st->dma_st.dma_chan = NULL;
>                  goto dma_exit;
>          }
> 
> --
> Peter
> 
> Texas Instruments Finland Oy, Porkkalankatu 22, 00180 Helsinki.
> Y-tunnus/Business ID: 0615521-4. Kotipaikka/Domicile: Helsinki
> 
> 
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
