Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AD3C138399
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  7 Jun 2019 06:54:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=L8ws0F9EgnXuyAmYBf2UQT1fcSInEamzT/iyDNx8mv4=; b=FNrD+Q6fLOkTXl
	iwkkSicDU+wIvLfr6Z9iLKlbXlzzu4WmFGoAuwAm6SAa+jYooFoDKyAHmg0X4QfeKjYXzqciTP+Tf
	ra/ou8U/GNOATVB43uRJdLFIQ1lMwE8473bCE7DabxGpR8g3IqNGzNPJRrnGv/WcxeeAElvN4CMYw
	V3i4daYJHw7fYC2XNN3FYszWyjvk8m+iNaF26ekMkmDVw7gOGYauZbac8vxsGd0E/12uPTXXrfvQY
	IvEeUxIVforFteEYQBoH86cEUQ4uftPA79jNvuEXn1+qhx6HDoO5YGW+ErK4FyGDyQfkij43izPZU
	zhJJbcw/7378nrzmcbnw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ6th-0005Ek-KV; Fri, 07 Jun 2019 04:54:37 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ6tV-0005Dp-AY; Fri, 07 Jun 2019 04:54:28 +0000
Received-SPF: Pass (esa5.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa5.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa5.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa5.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
X-IronPort-AV: E=Sophos;i="5.63,562,1557212400"; d="scan'208";a="34772477"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 06 Jun 2019 21:54:22 -0700
Received: from chn-vm-ex04.mchp-main.com (10.10.87.151) by
 chn-vm-ex03.mchp-main.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Thu, 6 Jun 2019 21:54:21 -0700
Received: from NAM04-CO1-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5
 via Frontend Transport; Thu, 6 Jun 2019 21:54:21 -0700
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector1-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=1MOfrxpcLloTDFR+GlMIfx0ID92W6ANeQcMXQWwoxHY=;
 b=FhFitQfEZPAS/tVmoXbF/KHz478+zK3X65pX/gdNYSTOWN8ea4671SM/VAb9qpVKeBgotefXGdc7fC7hD/tqID6rLApXqndCuviQZjEp9T3IH6HChRsDeBrIM9gtvIg8xJULa5s30wXcr0Ls8PTBzGOjdOxM31RdGm2UW6JSppA=
Received: from BN6PR11MB1842.namprd11.prod.outlook.com (10.175.98.146) by
 BN6PR11MB1905.namprd11.prod.outlook.com (10.175.97.141) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.1943.22; Fri, 7 Jun 2019 04:54:19 +0000
Received: from BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36]) by BN6PR11MB1842.namprd11.prod.outlook.com
 ([fe80::e581:f807:acdc:cb36%9]) with mapi id 15.20.1943.018; Fri, 7 Jun 2019
 04:54:19 +0000
From: <Tudor.Ambarus@microchip.com>
To: <ludovic.Barre@st.com>, <marek.vasut@gmail.com>
Subject: Re: [PATCH] mtd: spi-nor: stm32: remove the driver as it was replaced
 by spi-stm32-qspi.c
Thread-Topic: [PATCH] mtd: spi-nor: stm32: remove the driver as it was
 replaced by spi-stm32-qspi.c
Thread-Index: AQHVBLY5V09e/skhoEu+jgD24Fu8MKaP0KoA
Date: Fri, 7 Jun 2019 04:54:19 +0000
Message-ID: <2940804e-2df7-066c-c9da-2e842ec74a04@microchip.com>
References: <1557220598-18531-1-git-send-email-ludovic.Barre@st.com>
In-Reply-To: <1557220598-18531-1-git-send-email-ludovic.Barre@st.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1PR07CA0230.eurprd07.prod.outlook.com
 (2603:10a6:802:58::33) To BN6PR11MB1842.namprd11.prod.outlook.com
 (2603:10b6:404:101::18)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [86.120.241.49]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 086421dd-569a-4559-d8c9-08d6eb0432f7
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:BN6PR11MB1905; 
x-ms-traffictypediagnostic: BN6PR11MB1905:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <BN6PR11MB1905AD034E89C817EBDD7B51F0100@BN6PR11MB1905.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5236;
x-forefront-prvs: 0061C35778
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(346002)(39860400002)(366004)(376002)(396003)(136003)(199004)(189003)(66946007)(71190400001)(66556008)(8676002)(6116002)(486006)(316002)(53546011)(446003)(6246003)(102836004)(99286004)(6436002)(52116002)(36756003)(6512007)(2906002)(54906003)(110136005)(3846002)(6306002)(6486002)(476003)(5660300002)(2616005)(11346002)(186003)(4326008)(81166006)(386003)(71200400001)(305945005)(73956011)(6506007)(4744005)(86362001)(66476007)(76176011)(229853002)(7736002)(31696002)(68736007)(53936002)(31686004)(8936002)(81156014)(7416002)(66066001)(478600001)(256004)(64756008)(25786009)(14444005)(966005)(66446008)(72206003)(14454004)(26005);
 DIR:OUT; SFP:1101; SCL:1; SRVR:BN6PR11MB1905;
 H:BN6PR11MB1842.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: yrAZQ2rbvTCn3NTYRro74GSl+hcVuUpQiQAEYcJ2EmZgx7SEypl/Axs5f7dNbeoEkGuZFykcE+Z+YtMBF/WZdqQ2teZ3TRiJin0GRMQWwPMIphoXulBQhGxO3kOyDmnAv9R+8OS/8qKxF4A0xRkR7PnWE1FqQjpTByXz2Om30DYtyQlDyI/kM7BfhAxmsShXrLdjz39Z32X9pcARfppzhltdhXXGXuxdNCVi6N2uoeYhEkVyz6OG4c5WW6/+qrLwFcRAF65qBnwuGvf9XYm2y8cY8v1Uk3Oq7a7exPE1nBuQMUIoBGrfy37zuCeRUUWFInm71Qfzxb+VVzeqSJu940xhgN+VJUmOstrB7Ao7OacFlV+7aolf6yDU6xXUnN8q9Vq5edge9SBi7ktanlwZsEEC5uvF/a3z4jHTr+wQjBE=
Content-ID: <F1FDC19070F3C5438494749CC8BEED4D@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 086421dd-569a-4559-d8c9-08d6eb0432f7
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 Jun 2019 04:54:19.4570 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: tudor.ambarus@microchip.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN6PR11MB1905
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_215425_528847_733351F0 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [216.71.150.166 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com, bbrezillon@kernel.org,
 richard@nod.at, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 linux-mtd@lists.infradead.org, computersforpeace@gmail.com,
 dwmw2@infradead.org, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 05/07/2019 12:16 PM, Ludovic Barre wrote:
> From: Ludovic Barre <ludovic.barre@st.com>
> 
> There's a new driver using the SPI memory interface of the
> SPI framework at spi/spi-stm32-qspi.c, which can be used
> together with m25p80.c to replace the functionality of
> this SPI NOR driver.
> 
> The "new" driver uses the same dt properties and not affects
> the legacy compatibility.
> 
> Signed-off-by: Ludovic Barre <ludovic.barre@st.com>
> ---
>  .../devicetree/bindings/mtd/stm32-quadspi.txt      |  43 --
>  drivers/mtd/spi-nor/Kconfig                        |   7 -
>  drivers/mtd/spi-nor/Makefile                       |   1 -
>  drivers/mtd/spi-nor/stm32-quadspi.c                | 720 ---------------------
>  4 files changed, 771 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mtd/stm32-quadspi.txt
>  delete mode 100644 drivers/mtd/spi-nor/stm32-quadspi.c

Applied to https://git.kernel.org/pub/scm/linux/kernel/git/mtd/linux.git,
spi-nor/next branch.

Thanks,
ta
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
