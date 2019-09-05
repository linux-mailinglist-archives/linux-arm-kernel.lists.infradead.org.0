Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CB1A9D6B
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Sep 2019 10:45:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+4XpBmAGqeaZu/L4pg+kpwHDcr8BTq3FHIelgQWD5yY=; b=u8e0jBRIZ6ETif
	HYy1zZkYN+JGA9Prw+4Jl6uSvDxzA5tyT4UJZVAGCUJuUZyjxeYDk5SzIcYwi/RQl5L/mdTnz/WDZ
	JojAs5ZNzScBNKilpl/FXWE2WV/lgGWhZMwXLjCOXUliQC7cAx38OdHdhlbnPh92OSC69dtcyol2n
	y5ZxeXU0W8hRFRQKcscPyUuuuOZrKLIHadYJsIG4NKnyUN+XOqiJ16GNWLxlKHtleIN7HbSjXO6qq
	nRsorO7PK0bHloZfVBwpzaUBAArn0TiRkKz/70kEIBZSwgw/WYiCHYCcKz+76kabYMIMANqHJfj6D
	ekg9qaUZa1maGr2Kz08Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5nNv-0003eY-AG; Thu, 05 Sep 2019 08:44:55 +0000
Received: from esa5.hgst.iphmx.com ([216.71.153.144])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5nNi-0003dF-IW; Thu, 05 Sep 2019 08:44:43 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
 d=wdc.com; i=@wdc.com; q=dns/txt; s=dkim.wdc.com;
 t=1567673083; x=1599209083;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=4NdGWVOfFBg9vN1vd36not3xMvSXGtQkuCnHi0X9aAA=;
 b=K0TMsG425qGSDc6IF4+W8sCjCNI9eVbt73U3W3+DFbef+wxFzu7TCe/N
 L+m/EcPFUDVqril6zfyKQAZjEfCl77dRc+jgJK5NN27POYaqCPRCk6ska
 dolRUeEZ+3Gdq9OpSjL0OE1eAd8Qwr03a9ZPFHkwmKDLQeOZV7JVFgCTp
 ZH2nN7TXSgmbU4XjJfm30fZkUpBOlV5MJCa7vUwse969Wzmh+40TZYpEg
 mXAT3j9dGq1wX28EG4dzDcRwEl15VhQWYeJZlRrNQNjw3Jeko2nEk4C08
 xBlutxt5LgTrfVMykirmx6e5ZsEPo63qCpQ4SVurJ4WZfELqMx3xF9Zhd w==;
IronPort-SDR: k80FLqrxZbdixP5tXmEPppRrAt6AE0YhxMsUSYSxn9nzxI8Fo+iGdQGNbY+FVRKaRv+HOrd/cs
 6JyxRwXipTqw0HXsUE7dw59tN+z1QIvHB3V/IzKTXxbkEIhAr1WE6H/ZkfMMGSPXJHs8JSgZBZ
 Z+jZDbgz9muLGu4w/5GWqfxYziMSVZS1dUBjjsSxNKtRrUThyacS5wMnw9l4ogeAiYm2zdcxzG
 Nlc+G8pC/G5LkI1VQyASA1QDWAyS6rvsWWtHUbz2Q7syfcpBr017GiSfgedHibN6wPxfI419DS
 Q7k=
X-IronPort-AV: E=Sophos;i="5.64,470,1559491200"; d="scan'208";a="118421646"
Received: from mail-bn3nam01lp2055.outbound.protection.outlook.com (HELO
 NAM01-BN3-obe.outbound.protection.outlook.com) ([104.47.33.55])
 by ob1.hgst.iphmx.com with ESMTP; 05 Sep 2019 16:44:38 +0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=HM0ygg9YmS/DTCGQ7m3/OAQc+lNK0O0RuGiH81NFIR7ZXWxTdSrsaWJgetRMq3zl+QGNGZasAYT2FnXWWxzhodC4HCaiy3t5lcefyN+yq51/BiawK5IjtKOCKNfEwjEY/pCRyiDMudnmGeEzCarQYC/lIaimzPXUNhHvaudFVUTIaf419NC9+oQNC3RTa52bwYyFWKvjaxjMkBOeRKcVcA70gFYkZDdSV1pdw+jjI1I8DvIU2NUaqJpGiFCzegUmSd7jAOGcKL1CgnttpHy5Zlfv/qp7eYoKIOFW5Fv+lwH1wO3YYt7nJBA79vM5gjLN7YkxPpkBRcyzipgwOG1NTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NdGWVOfFBg9vN1vd36not3xMvSXGtQkuCnHi0X9aAA=;
 b=Ok4S2DfP47B3vEp7RwWn4TRqAdiS2XEOteAkVXiDEaUGwpCzYHNxDjvJYHQizaQOE28QEMimONZ3AiP0lIkkUrWfNGBgYp5rHeKCEiV7DSA3v+YOFOlw4GaPqwbbfXZT0CqgKeIe12250u+F44meI6vKNGAfGWnt5le0Ej6URqwbF7RtOdvN9RoRDmJd0YJ/hTje46sotY/XfIdY2p/0wEmAEMPSbYJweO2hgLCvkCAROfK2IleLzJXxLN9LG48cz6xnJrD3FSZ2Th7HnObhd8Jf5kfcfRKtmp5EQwBDmpdzMf/ivqJ+Wf8Cm5Shri/zbfQ6zLWPo/hAwzuCoyoTRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wdc.com; dmarc=pass action=none header.from=wdc.com; dkim=pass
 header.d=wdc.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=sharedspace.onmicrosoft.com; s=selector2-sharedspace-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=4NdGWVOfFBg9vN1vd36not3xMvSXGtQkuCnHi0X9aAA=;
 b=Xc8fSxsq+IveGmDfcxH/l6C/6AHkT4E5q7EuQCC8KbPYxbK1co17NdCUiDM4vQRqHMKkYC1iVjnFQ2ttzSepxzwVhB1ruDCf31LUFigpvW46zymPxCyWsoy2KmGgORDLDUk4mCreIrgDCgK2PHK1yRJ5fde3e0w23bu5haQ2wTs=
Received: from MN2PR04MB6991.namprd04.prod.outlook.com (10.186.144.209) by
 MN2PR04MB6784.namprd04.prod.outlook.com (10.141.117.143) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2220.19; Thu, 5 Sep 2019 08:44:35 +0000
Received: from MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371]) by MN2PR04MB6991.namprd04.prod.outlook.com
 ([fe80::9c2b:ac1b:67b8:f371%2]) with mapi id 15.20.2220.022; Thu, 5 Sep 2019
 08:44:35 +0000
From: Avri Altman <Avri.Altman@wdc.com>
To: Chaotian Jing <chaotian.jing@mediatek.com>, Ulf Hansson
 <ulf.hansson@linaro.org>
Subject: RE: [PATCH v2 2/2] mmc: block: add CMD13 polling for ioctl() cmd with
 R1B response
Thread-Topic: [PATCH v2 2/2] mmc: block: add CMD13 polling for ioctl() cmd
 with R1B response
Thread-Index: AQHVY78FV3LC8eVs1UiHHYg0C+TgPaccxI9Q
Date: Thu, 5 Sep 2019 08:44:35 +0000
Message-ID: <MN2PR04MB6991D9707092B671FB129DC0FCBB0@MN2PR04MB6991.namprd04.prod.outlook.com>
References: <20190905075318.15554-1-chaotian.jing@mediatek.com>
 <20190905075318.15554-3-chaotian.jing@mediatek.com>
In-Reply-To: <20190905075318.15554-3-chaotian.jing@mediatek.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=Avri.Altman@wdc.com; 
x-originating-ip: [212.25.79.133]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: c365405c-3b67-42fe-056f-08d731dd47de
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:MN2PR04MB6784; 
x-ms-traffictypediagnostic: MN2PR04MB6784:
x-microsoft-antispam-prvs: <MN2PR04MB6784914D9EFEAE4B2AD1CD98FCBB0@MN2PR04MB6784.namprd04.prod.outlook.com>
wdcipoutbound: EOP-TRUE
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 015114592F
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(4636009)(376002)(366004)(136003)(39860400002)(396003)(346002)(199004)(189003)(81156014)(5660300002)(316002)(54906003)(26005)(110136005)(81166006)(14444005)(7696005)(476003)(25786009)(6436002)(6116002)(3846002)(8676002)(52536014)(71190400001)(71200400001)(102836004)(99286004)(229853002)(486006)(66066001)(6506007)(478600001)(2906002)(8936002)(4326008)(7736002)(446003)(305945005)(14454004)(4744005)(256004)(186003)(9686003)(74316002)(86362001)(7416002)(11346002)(76176011)(55016002)(33656002)(76116006)(53936002)(66946007)(66476007)(6246003)(64756008)(66556008)(66446008);
 DIR:OUT; SFP:1102; SCL:1; SRVR:MN2PR04MB6784;
 H:MN2PR04MB6991.namprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: mT09dlgI7BOOu1LFWdRO3VJetslmHh67wSYvxgiEsucAsxZc7whNeYKiSPkOV1MN3dkq1WLFZIlRWcGYsIbYWjJwv0a7dy9shX/reDeYgURIPDMuF1TOesdia8+yPTXcXV4GotHYq6Zn3qNEERYRz3S6Ovu6Uz9/J3WSexrsL0bzQmtHcRT5HmmmAduRby/LM1G/SefTWLcwvEfHYzWxAo3T7fp6BwQkM8jtqQ7n4Oq9XMmQq4QtgFX6oCNSf46DYCJRhd5E+dfsJmaVFiDrGZwWr5Gr/6W8qiXOwFwgvYxHahO9pA1Y8Xz6JUl2F/pP+xGjPp5MbqLkMRzmE8JyQXsHZ2lzRaAFvn1GjB4ov7pXd+16AHlArD33xA/Sv+Htf2LfidKZJEPudLm1BUjKmh1tS9ZvATGdf80KVjjBFjk=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: wdc.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c365405c-3b67-42fe-056f-08d731dd47de
X-MS-Exchange-CrossTenant-originalarrivaltime: 05 Sep 2019 08:44:35.6298 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: b61c8803-16f3-4c35-9b17-6f65f441df86
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: DmIGjktbr7+KvvfqoaO213lNIlgNEzH7DLZ14dnwTyB7glYd3Npje8hiiVdpN9gaEAYf+GFF7ools0TmLCjZ+A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR04MB6784
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190905_014442_748538_BFED0B73 
X-CRM114-Status: UNSURE (   8.93  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.153.144 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Jens Axboe <axboe@kernel.dk>, Chris Boot <bootc@bootc.net>,
 "srv_heupstream@mediatek.com" <srv_heupstream@mediatek.com>,
 "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>,
 Zachary Hays <zhays@lexmark.com>, YueHaibing <yuehaibing@huawei.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ming Lei <ming.lei@redhat.com>,
 Wolfram Sang <wsa+renesas@sang-engineering.com>,
 "linux-mediatek@lists.infradead.org" <linux-mediatek@lists.infradead.org>,
 Hannes Reinecke <hare@suse.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


> 
> 
> currently there is no CMD13 polling and other code to wait card
> change to transfer state after R1B command completed. and this
> polling operation cannot do in user space, because other request
> may coming before the CMD13 from user space.
> 
> Signed-off-by: Chaotian Jing <chaotian.jing@mediatek.com>
Reviewed-by: Avri Altman <avri.altman@wdc.com>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
