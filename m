Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B24BCC9E0D
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 14:07:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iitkMHDwmpzBkxeepSTprqThx/NuRsZ6pB0+SdlFAuc=; b=avjWYKbQNwuJow
	WOSFBeXZRESX2X83EohshTCXaZvg0Mn1KrfJ0zn/FoV5ctuJUlpasL2N4BrwNKYdgIzOR6GmXEAPD
	5vx94dQA9x7BfCuv1favLO7HDhcNM52ft7gNCJIAq1Ch7Yh3Aps6vU8rdR+hOP5XHiq38eynvHftB
	cgckqVkh9H9Pk+2CR/uDHfXhcyAMB1GSr9D9kXxsJWqGlX1uUXeDhWfaBsYkn4xbFDri7+ylc0VC6
	C8+EQL+Z6xSudJ69Et7eRezneuppA4biE+K3AZBfZ5h6cSewrBmlJOexPR45dd8wxYlyYtqTjX1ia
	ZHFCdYQDtZjimE4ROFTw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFzsn-0005wy-BG; Thu, 03 Oct 2019 12:06:57 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFzsf-0005wI-BD
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 12:06:50 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: PpaI02TX6QTuIEnJ3CgdMZKXM5n/RGfhitsI6OO22OSAXmxTy/NQK54GMkwC6emwknpUX3WXEH
 OMKrIIGol/Ju/VbiiZt3Wig2X1X9vM1FH3wnFbxdsUFJKW6NdIwED8aLhrEolVdGTE1B4m1ANO
 wZcFMW1P4kpj7jtH/8jPLCowdC14cDfMsTbJPK9QmPsEDP4ta/QozfImGpBmsD0BypcuvCJhv5
 a38qEJIi7XXisNiCUTPV7iRd7+Fem0L7WXoYVkZHHg6QHRYtl/wIRTdH5jIS9GIfvzX1LMQCiB
 8zA=
X-IronPort-AV: E=Sophos;i="5.67,252,1566889200"; d="scan'208";a="50288963"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Oct 2019 05:06:25 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Oct 2019 05:06:25 -0700
Received: from NAM04-SN1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 3 Oct 2019 05:06:25 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=EWXNEWJNacwE9h1eBV3eQqsVCMW51r/xuF8mbVdlDmhhVWlpufOLq4dKv8ZtKMk1CcMNWhW+gJQawE/gJKYZDfrcAmrhKGBLH0ADQs8PE1LRN/AtXDC9+LHxJ36vFWohtgvONnFsgQBs8R4AluJ3ciW5o6fc+D2JpOW/mR+abk92PfoJVwuiLDdU7MJSFSJSiv323V2TNci+2AzzxqcH0KvFio3wxk2CfYwKaC355GOxRh5+XGlu/At9TDEwMmGEOSkVFhIDL5ZwdXI85qrWUVnKUSr/5JLqx6emtrwe/ghtH+6Y1ULYX3fx/hkkQtmQsmVSU9YKuMIgelH63rDooQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2oyQT0FVcz9pBGQlfrgDcv5ODckR/yHI8KxKMtyZtE=;
 b=e1gQnXAKvFmLa6120S37ugWSzQX0LhZLsZ2D9drByLES6c8SAodf523eEb+OxvOlYPKhMEDt+3KK0FoyVNETLjtbTZZ9Opqsez5ZudAbXvJqUCeG099mmlZgDlRhiZ2sEnSJsIDIoibwnpPgFMAUuPqhLENa4XX+/XasxNfztJfbOMtqTyBz56vQcUs7ar6MVwWURYE8nSSR83XepIf3zvN/vQYYyzEdk1vW+mToUUjeI/vk7q04aokdCVe4C+8LXS/F9c1cwhC48FVmsX8DC75174oEvINxJdffWfiuckI1iI/aFsGroXuDuYQD9Do7nG7wlM95IqpjsBQ2rvW7lw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C2oyQT0FVcz9pBGQlfrgDcv5ODckR/yHI8KxKMtyZtE=;
 b=FQaZHFmiZ+7KOd0tl8rtPlbGiITcyQvtR3Re8wFcZ6URE6IwJ9ts4OYiqnFs9rsmHtgQ/S8LtFhvKIZQy84FqfpgnCths9aUhilx5TJI0bzEm+ww+58YItQ/40lvzh4VOKxQouu7O98apGVXVdEJlyXhXrcX9Q9fe2ko0Y1YMf0=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1840.namprd11.prod.outlook.com (10.175.55.12) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.20; Thu, 3 Oct 2019 12:06:24 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::5d81:aef1:f63:3735%3]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 12:06:23 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Tudor.Ambarus@microchip.com>, <kamel.bouhara@bootlin.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVectM7Jz3M3M/B061F3C7m5BerqdIqYqAgAAC6wCAACXfgA==
Date: Thu, 3 Oct 2019 12:06:23 +0000
Message-ID: <741eeae3-666c-300f-23ba-6c646ad1252e@microchip.com>
References: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
 <8b8649d8-351b-8903-cb54-a56d7b6191df@microchip.com>
 <b3e10d4c-4cdc-4401-a488-0b3d101d9ad0@microchip.com>
In-Reply-To: <b3e10d4c-4cdc-4401-a488-0b3d101d9ad0@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0376.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:a3::28) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [213.41.198.74]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: ad46812b-6b02-4f70-e6e0-08d747fa1c16
x-ms-traffictypediagnostic: MWHPR11MB1840:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB18409A978FC202B202CDE45DE09F0@MWHPR11MB1840.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(366004)(376002)(396003)(136003)(39860400002)(199004)(189003)(71190400001)(64756008)(66556008)(66476007)(66446008)(71200400001)(26005)(476003)(2616005)(11346002)(66946007)(110136005)(6246003)(2906002)(229853002)(36756003)(486006)(5660300002)(446003)(4744005)(102836004)(81166006)(81156014)(386003)(53546011)(186003)(6506007)(52116002)(31696002)(6116002)(3846002)(8676002)(76176011)(99286004)(86362001)(31686004)(66066001)(478600001)(2201001)(256004)(6486002)(4326008)(6512007)(316002)(8936002)(6436002)(2501003)(14454004)(7736002)(25786009)(305945005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1840;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: sTWnNEAFIKzizQWELlmBdCn/Ehdl7I4h0yMHN/b/rozuKZ6Kp/MntY/bUkeCpZaoFUtqsr9HFRrvIKE364mCJI/2ETVd+bXcU3eo1Be27gZ2vidU2UOSTdgqv0WB96XDU7ZBKAjlJbSvjsYZLExFfvBsAnND41dMSWlMfXmxR798XscavY2YsSmnZicdAd+GKgoTGwxIArE0BRW6UWLPIgggKfS76A4Q78tivA//GYpfGBxmifNxLYydvkECPRJL0K4G3a0qVGJAy51V/YASp+DCXxdBE1UD22wNYjoxycLxV1XO7uiP7jT404yqb2dTBT99T9NRsWcplG3ykN03T7PkunRSC8AtaNPKKvCYAkv13NAtlTePkfBwK354/sORrw9V1fRmGdARZZ9VIeo4wDZc2EtI2roGyZcIdkFWICw=
Content-ID: <0B0A0929886A6C4B8CCBEF79A03A4B2F@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: ad46812b-6b02-4f70-e6e0-08d747fa1c16
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 12:06:23.7642 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +6ach69MvZM7A85IdQCeEyq3Qazg1iHC41zKtMW1xpJ0Qwuq20zJZ2dMKPPKFczTVcqjA/4tnvDBK0LasNds1P8TxWv8JAPSO7Z5K2J3EnQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1840
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_050649_469839_4EA1456D 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: thomas.petazzoni@bootlin.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 03/10/2019 at 11:50, Tudor Ambarus - M18064 wrote:
> 
> 
> On 10/03/2019 12:40 PM, Tudor.Ambarus@microchip.com wrote:
> cut
> 
>>
>> how about renaming this to struct atmel_sfr_priv?
>>
>>> +	struct device			*dev;
>>
>> this is not used, maybe you can drop it?
>>
>>> +	struct regmap			*regmap;
>>> +	struct nvmem_config		*config;
> 
> where is priv->config used?
> 
>>> +	struct atmel_sfr_drvdata	*drvdata;
>>
>> this is not used, maybe you can drop it?
>>
>>> +};
> 
> cut
> 
>>> +static struct atmel_sfr_drvdata sama5d2_sama5d4_drvdata = {
> 
> struct should be const. And I'm not sure about the sama5d2_sama5d4 naming. Maybe
> choose "5d4_drvdata" and use it for 5d2 too? Maybe Nicolas has a preference here.

I'm not a big fan of "5d3/5d2/5d4" type of naming. If it appeared first 
in sama5d4, then this name ca be taken to describe sama5d2 reality as 
well => sama5d4_drvdata.

Now it's dropped in v3: so we're good...

>>> +	.nregs = 2 * 4,
>>> +};


-- 
Nicolas Ferre
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
