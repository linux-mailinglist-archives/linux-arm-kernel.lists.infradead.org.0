Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F501C9B14
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 11:51:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=RdfmM2s7HDurP9AgojFg+WTkr8E9WXapkTTwQQ628pc=; b=Vo9fYJbDP/EC9J
	qACC2r334HjKRRvOFNtFHUaBiq2Og9s9kHczsEk093QEcUmDkm5XrRQ3sw9WpuNlokwzgSxwtm2nC
	dsxErLDDV66JHlU8vF0oaKnsnL7sj9XcoXvDOdhGtOMI7JOQTJxDC9ZCTvQYe6ckVeckUhelBSnyi
	xlbcGXtEaUbEnA9TPf2vgMbMIr/NGH+Sgqqa/SfrSlkNfGIG8qrTO82W4kRfcDspB1YZbdCGaIyaf
	i6w4dxFnjr/7ych1/5eF631l03sf0T3Fvsb1hsULf8e6sE1I2OyWj7o4HfiLcNaJtYWz1JwIc7poD
	Dx3PZAK9Uut+npDfNAsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFxlH-0008Ca-79; Thu, 03 Oct 2019 09:51:03 +0000
Received: from esa6.microchip.iphmx.com ([216.71.154.253])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFxl8-0008Bz-8i
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 09:50:55 +0000
Received-SPF: Pass (esa6.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa6.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa6.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa6.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: MkluPPFsg5Ib2cg8FswmPIjMYo1s77gH9S57yof9Q1VH0aY2TjN4w+0u96YGs9tjgrD9ED4RU7
 tEbeveT0JclPUu8odNKBaLLypEhirs2vZaDPJJ9oZKEOhKccCC3BpPe50Y5H3jdJggfrdOSJC9
 XczHyVyvvWRgeZP9d54kuhYufX6TqLS2OXNHsUeR0kYG3FHbQCASCbOg24O3EW8bB0uh4b1ZEd
 Ag1QoS/ZdfMUYIPMtBukch/ois9e6BMZQibzgMAQ3VWowrAvyPqg1fP5Jv/N5EOUT2E54/3zxg
 WQM=
X-IronPort-AV: E=Sophos;i="5.67,251,1566889200"; d="scan'208";a="48621408"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa6.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 03 Oct 2019 02:50:50 -0700
Received: from chn-vm-ex02.mchp-main.com (10.10.87.72) by
 chn-vm-ex02.mchp-main.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 3 Oct 2019 02:50:50 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.72) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5 via Frontend
 Transport; Thu, 3 Oct 2019 02:50:50 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aiRf6PrOTKb2EsEEWXNujneoMmzkK8FV68skvpW4vdCSkusg/lOHQjbjc0ZiB8aj/9VtkS5qJD5f7BeUcsmiNQ8KWJweViY5vGOWc9kSy3ttHXKNRSfDzhC19qBkecXgTW6RiWr7tcntP+HBcvRuL7GlZFPXThDYO+QXoq0SjZsxDhvaV642SzDW1/lgEdkYxE6TAACxa+IttUIWnqW2NmtECewAoLt1hTWMB/LTts1g67tTEh/e4Lqe2JdCeQLM99GRvAJPChH3sanfgSt8yx5A+dKCjodUs2tuK1dq0sRNLS8Rhk65HbW5CujxlPIvG2pItNQpm/62UsbIqw7kWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzmTikPZANCszziYTF6k3AdeqnVMdcLl32IXCuTT+jc=;
 b=YuPET3L5KNAAJmnVn4Q29b0tPpW4HDqyrAutPdrEqCdkPN7OsNRLGWgFS5DpNL0A8j5LMgKDM0br0KbgvF5fAQlChBrhtE7hYt/1Y+rc4Uw+u/21ppfoLLP9CfNX9RIqaBH8RwlVlLKfyPC4eeLmqM/CTlQ+KNPMO58xgcmhTNQWxFWg8y2QYUyQ4qfLzzpHcF3I2qL15FsCb4mXYvAFf5S4vjk55aWK3CyK6Sfs21PKqOiqkyRv2bxhx1fzoDDT7yUMzXcSCLgnbj1fiNtfdnJ5gOBWqSW35ad8ZpZo/t3AZk7l76zw6/DF8A9QNr+1q0chNqyJgYcdGjidefoWXg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uzmTikPZANCszziYTF6k3AdeqnVMdcLl32IXCuTT+jc=;
 b=tyPN+mVZbh3dlKlnIkRXA3er0/eBhpb70qiXiIGBC8Do7fwu724kb61dcwjEOhj4ouUzGXWwmCCpHvyrBujoyGt2d02PnYK1h7asRht2cf2LRSvEFNhpU+FMrtkh2wwhJy+wp9/VyaLwlFAnAAP6HPjjsqdQHNR1hN/ihUrYlEQ=
Received: from BY5PR11MB4435.namprd11.prod.outlook.com (10.255.89.94) by
 BY5PR11MB4195.namprd11.prod.outlook.com (52.132.253.90) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2305.16; Thu, 3 Oct 2019 09:50:45 +0000
Received: from BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::e824:da88:261f:dee]) by BY5PR11MB4435.namprd11.prod.outlook.com
 ([fe80::e824:da88:261f:dee%2]) with mapi id 15.20.2305.023; Thu, 3 Oct 2019
 09:50:44 +0000
From: <Tudor.Ambarus@microchip.com>
To: <kamel.bouhara@bootlin.com>, <Nicolas.Ferre@microchip.com>,
 <alexandre.belloni@bootlin.com>, <Ludovic.Desroches@microchip.com>,
 <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Topic: [PATCH v2] soc: at91: Add Atmel SFR SN (Serial Number) support
Thread-Index: AQHVectWTpmuxb05HkGRE83g0lM8EKdIqYCAgAAC7AA=
Date: Thu, 3 Oct 2019 09:50:44 +0000
Message-ID: <b3e10d4c-4cdc-4401-a488-0b3d101d9ad0@microchip.com>
References: <20191003091636.21060-1-kamel.bouhara@bootlin.com>
 <8b8649d8-351b-8903-cb54-a56d7b6191df@microchip.com>
In-Reply-To: <8b8649d8-351b-8903-cb54-a56d7b6191df@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VE1PR08CA0008.eurprd08.prod.outlook.com
 (2603:10a6:803:104::21) To BY5PR11MB4435.namprd11.prod.outlook.com
 (2603:10b6:a03:1ce::30)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a3e5b62e-b901-43d3-8fdc-08d747e728c8
x-ms-traffictypediagnostic: BY5PR11MB4195:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <BY5PR11MB419523F711836C46F3E8B48EF09F0@BY5PR11MB4195.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 01792087B6
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(136003)(346002)(366004)(39860400002)(396003)(376002)(189003)(199004)(110136005)(81166006)(81156014)(102836004)(446003)(53546011)(2501003)(476003)(3846002)(6116002)(256004)(14454004)(86362001)(31696002)(478600001)(2616005)(66946007)(2906002)(66446008)(6512007)(66476007)(66556008)(64756008)(4744005)(26005)(6246003)(66066001)(6506007)(386003)(6486002)(31686004)(25786009)(7736002)(229853002)(52116002)(76176011)(36756003)(486006)(305945005)(4326008)(99286004)(186003)(8936002)(8676002)(71190400001)(11346002)(316002)(5660300002)(6436002)(71200400001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BY5PR11MB4195;
 H:BY5PR11MB4435.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 6hzV2TJK0Y5k6nuxpS+I1UFsUacBuu0+fkFQRV1StIx/hWCDB7gpgAQgwvxNsP3SDtBYcmElaTijgdH+4YY6FOYRBDIW0drF/zf9f7T1GVQvJ7h4alOBzKFOAHHSdCWCvDY+mpisuEU68XhENPxrSBxoW2M+AvshoyyEGHqdQununr/xDTnmnqpObmdYMi3JlwzKyRBgFvkwaUFBwo1HbvRjX1bzh5y2JKHKtQyPCK6o1syqKygIUpicB9F3ZdPG87UMyAC354EExGE8cysJ7P6jHqgtY11tcd5XfmSjkMIYKQk2gGLqxZyhl+slfMO0ur4MgQigjXXGs0ooqnPN/kj4CCbvMKvDHIiayHqO3xvNU8Aco3Jxy04mNTlpddgVH2kMNHJjt2Ix6+BJo+hXOA0J4Llrm9gcqW6/61rdWHg=
Content-ID: <BF49930FFC6273458F83E1C9494107A7@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a3e5b62e-b901-43d3-8fdc-08d747e728c8
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Oct 2019 09:50:44.7672 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: +5BfH+JhnGw9wbBrwrCNtWF/9RW6Fi8utz3lMnY0VFaWHLil8uAGiIMFE13oBMNwgV2sysHHjsUHiYw7Be9wUbO9P97bZxyTr3GFI2VsmSs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY5PR11MB4195
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191003_025054_342948_7EFD8E5F 
X-CRM114-Status: UNSURE (   9.49  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.154.253 listed in list.dnswl.org]
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



On 10/03/2019 12:40 PM, Tudor.Ambarus@microchip.com wrote:
cut

> 
> how about renaming this to struct atmel_sfr_priv?
> 
>> +	struct device			*dev;
> 
> this is not used, maybe you can drop it?
> 
>> +	struct regmap			*regmap;
>> +	struct nvmem_config		*config;

where is priv->config used?

>> +	struct atmel_sfr_drvdata	*drvdata;
> 
> this is not used, maybe you can drop it?
> 
>> +};

cut

>> +static struct atmel_sfr_drvdata sama5d2_sama5d4_drvdata = {

struct should be const. And I'm not sure about the sama5d2_sama5d4 naming. Maybe
choose "5d4_drvdata" and use it for 5d2 too? Maybe Nicolas has a preference here.

Thanks,
ta

>> +	.nregs = 2 * 4,
>> +};
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
