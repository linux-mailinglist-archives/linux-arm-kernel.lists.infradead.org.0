Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57096F5DB1
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  9 Nov 2019 07:23:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=zModV6xf/KlDvf6IMfAIKYvPb8fEP/COtpcGM6FgNK4=; b=LZue4/EKt5WLCL
	BO5pwo+ropPb8OAopwFVxkcOU7r5NMm4oK3FoxfMeeQ4RaXi8JwxgOIsPLdfkn1OjERFsr8hoqU/5
	o9g1eFHLDTWrqx3zF7NKzZ3f4ehGI7J5yMEU9T0Hga3JRWXLYfOPeBt79UQCkUJhU9dKIMKGUun60
	a6jL38+ws/L1Xm+oTpnIdgPHma1ZXA2H2JXUvXghg+eayVjsxDbk4L1LGWm7bg6EjmMbUbmIFUqo9
	Nzk555BW4H2hWwf/Z2L9fhQi+lq4UXFQKpZvBcWHWog8H2Nj9u6/en5SFnJ9cDmcwM9wQpLVa/W1c
	NHKPH50Ey+R1rYZ9gHGg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iTK9x-0003L3-LK; Sat, 09 Nov 2019 06:23:45 +0000
Received: from esa5.microchip.iphmx.com ([216.71.150.166])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iTK9m-0003KU-PM
 for linux-arm-kernel@lists.infradead.org; Sat, 09 Nov 2019 06:23:36 +0000
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
IronPort-SDR: 7P1/hi4SilswJRNBQ86Y1VW8zjgvKQFi9McEEFFWKJRZTm41OfY1R3UMPl8mzF1N85U4kHZOIJ
 uWBIipppkIEArQ+rys2Ax5bBARvXdTIEIMBX910JdEs1HHuGM/8xUm8NLdit1zYCMlG4XIl+O6
 WKm23w5ULFaNyl5PxbSp/EuVYOhfR5G0AkO62wws/4IOW04nwGtaxe9gYcTvBVZTERDrSnA+Xv
 euvuI/QGb4H1RlWReOm0ODCJ/nIGpWQWM756HFuYhBL4nw6vcWeq+DHFdB+Z1ZDBgq5jQxIDqB
 EO4=
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="54800979"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa5.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 08 Nov 2019 23:23:33 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Fri, 8 Nov 2019 23:23:09 -0700
Received: from NAM04-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Fri, 8 Nov 2019 23:23:08 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=S/W2bsQtGD507YM4AFWMhBzLZlrGeldlzJtZC4elmQg5XI00BMSLn3Le3LABifPcLPCUlHftSgNSEFjhbsIbifxBny4Be376zU9mK4muaCHUy8l+EDe3z9X9pUCFimxIBSYbga+JfxTxZZMku+uZ4jzoJLSY10BhQTP7amfm7AyDbWQi/YznfRBB8q5FWOXD2EJMagYgVvnUfpGKk1LL8jGkpVnLVy1GBGV8cVazH8IcKTKh8aeNqEg/shsmS+O4v8o7U/iNNAiK/PDTUE662MsHGlhLHvM/DnIbOm2AiEt2wjv1xMo77/vg/cq5cg2jxqCbmKkJ6n9n01EWgG+gzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Kmagvn7nV6sSDSgnw4oXYs1P7kYkfwJkcJhLJyvKQc=;
 b=JWOSCgT15yZhENwsSk5c44Vd4UB7SC5hFnHHm5PRNED3S9AYepu7u91gz4GVvf5TrHrUafoWDrEbvzKUSi2PmKqiWYC64S73u1a60WcFwdX3PfGCrZqw50/tIUS4UDa258e8wISRh9DwiCnbRNYbJNyLKLMMhMv8zNbZzY4SV/mNx5mc8Qawpnhr/RCIo0F4lms/o6SqbqsnrpGiN8cF8rXJptLy/BIlpRdABfbwaQWN4i8tthAt7lJfNmOqBqW822OaxXGO/YtuxCqcGwiy8A+DxyxgOZR1zuYqfZu2ikYL/VyCC8IQweJ+8+Prr64V94u/kwfFdiGJfMshkaPetQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Kmagvn7nV6sSDSgnw4oXYs1P7kYkfwJkcJhLJyvKQc=;
 b=cLL+mO8fpJxjVO5kV7SJuhTbobKlDf4QC4G44LUBHbYzBo7sVAgAL8X93V+JxfV/1IdC174qOeR1BOSYisctIZr166TFTW1dS6CwYbHwYJVQb0y5slo1jWmtxo3qsRM89M778snPEl5AIwHh74MlJkZEbsq0TYZbeI7TPthaqg8=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4287.namprd11.prod.outlook.com (52.135.37.17) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2430.20; Sat, 9 Nov 2019 06:23:06 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::c09c:36c8:3301:4457%5]) with mapi id 15.20.2430.023; Sat, 9 Nov 2019
 06:23:06 +0000
From: <Tudor.Ambarus@microchip.com>
To: <ardb@kernel.org>, <linux-crypto@vger.kernel.org>
Subject: Re: [PATCH v3 08/29] crypto: atmel-aes - switch to skcipher API
Thread-Topic: [PATCH v3 08/29] crypto: atmel-aes - switch to skcipher API
Thread-Index: AQHVk90MoVdSv33QXUOLAx243AJe1aeCZIaA
Date: Sat, 9 Nov 2019 06:23:06 +0000
Message-ID: <fe064b41-94b8-1695-dc43-da8e151c77a8@microchip.com>
References: <20191105132826.1838-1-ardb@kernel.org>
 <20191105132826.1838-9-ardb@kernel.org>
In-Reply-To: <20191105132826.1838-9-ardb@kernel.org>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: VI1P193CA0020.EURP193.PROD.OUTLOOK.COM
 (2603:10a6:800:bd::30) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [5.12.60.46]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 12942c85-b92f-463e-31f1-08d764dd484e
x-ms-traffictypediagnostic: MN2PR11MB4287:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4287484895CDD852CC7C67DDF07A0@MN2PR11MB4287.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5797;
x-forefront-prvs: 021670B4D2
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(396003)(346002)(136003)(39860400002)(376002)(366004)(189003)(199004)(31696002)(71190400001)(6506007)(107886003)(71200400001)(486006)(76176011)(102836004)(2906002)(53546011)(99286004)(386003)(31686004)(11346002)(7736002)(2501003)(446003)(476003)(26005)(25786009)(36756003)(2616005)(66066001)(305945005)(4326008)(86362001)(6436002)(6116002)(3846002)(66476007)(66556008)(64756008)(14454004)(478600001)(186003)(6512007)(8936002)(66446008)(316002)(8676002)(81156014)(81166006)(256004)(229853002)(5660300002)(66946007)(6486002)(110136005)(4744005)(54906003)(6246003)(52116002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4287;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: MVvZoBTFKoULtxgHlz1q0yxbO4CjxYR67tbHxgqCgzFWL0J2F93vb5B3Oz7EVuBR/WtwQLt633qSybqvXDoaZfAE5IepO1aLl5w+6FV+55LcuXw3VqM3JccEtZYBsWQxX4hF+BrywE/LpC3PCQJCkpLpjGBdF+u+H5OKLWc4QymWIgzzD/rgeZSXXOm0NQiaar/C+hGbgG/wgYt1FXptAttv1KgDi53DQbqngH73elaazJwRH880TruPYfZLf2Y/hgC6ml3YUvVCrOK1VqFcm54l3WJOGN6G0ClA7nYuPjz45QOGiq3nx3zyd62ITrK6GayDKc64Sz/1HplnAj/0LWWx8PyWldAFkaMV99og89LGzwazFKv1sZEyh1qmNOYYLBP/3q3TpmbYDPI63OvPvP/TqgYdvWZylApA/U5PO2Aj9eVCMZVGt3KlZskCzXdH
Content-ID: <693EBB30A4E23D42BF49A30252435200@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 12942c85-b92f-463e-31f1-08d764dd484e
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Nov 2019 06:23:06.1897 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: VBR2COXkn4mw7mac076AiDmjxb/HCPvLLPAZVsqIWNZ7XUUKiQNCzFXXXiK0BSrsjS6YOwoe72Fw+BI7kaZGVFEw3oPchVvCcTliopN08Rc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4287
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191108_222334_835298_87A6CDAC 
X-CRM114-Status: UNSURE (   9.80  )
X-CRM114-Notice: Please train this message.
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
Cc: alexandre.belloni@bootlin.com, herbert@gondor.apana.org.au,
 ebiggers@google.com, Ludovic.Desroches@microchip.com, davem@davemloft.net,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/05/2019 03:28 PM, Ard Biesheuvel wrote:
> Commit 7a7ffe65c8c5 ("crypto: skcipher - Add top-level skcipher interface")
> dated 20 august 2015 introduced the new skcipher API which is supposed to
> replace both blkcipher and ablkcipher. While all consumers of the API have
> been converted long ago, some producers of the ablkcipher remain, forcing
> us to keep the ablkcipher support routines alive, along with the matching
> code to expose [a]blkciphers via the skcipher API.
> 
> So switch this driver to the skcipher API, allowing us to finally drop the
> blkcipher code in the near future.
> 
> Cc: Nicolas Ferre <nicolas.ferre@microchip.com>
> Cc: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Cc: Ludovic Desroches <ludovic.desroches@microchip.com>
> Signed-off-by: Ard Biesheuvel <ardb@kernel.org>

Tested-by: Tudor Ambarus <tudor.ambarus@microchip.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
