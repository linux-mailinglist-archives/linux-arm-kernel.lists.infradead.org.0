Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D1CAF65D
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 09:06:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qzbf7+JN144yRBlxx3g+k1uqoiOW8yeGAWcAPNQOuDo=; b=QiU2eDtwT4wW1g
	+nFTrOg/hBFJHPFYktbf9TBqtjS6h6hdPMQt8bOPN3ueSg9LU80YL/0GYewLPHWSPnzfb42J731aM
	J2EKhNGR0R80vVShN01liJ9RwjWuWLCzK3lIMEClDXSeyI42qZYIWZcMLya76sH2M/nI6APol+lWZ
	2urn01VMN/hiNaqymMwbRPlemb0l4GHss7VmTWsLs8bYxDld0uOE4U2fD1nvy4ZgzyMEypIpU9dfZ
	PqHJVUuoENgriSMH66cJrc2OVQHTu6mmIpxbF26S0VTJ0D5GTh5CKdcP35IG32Ctjv4agcD5AuaSi
	9oQl2izHTRRR4Nni5Nsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7whS-00039y-0D; Wed, 11 Sep 2019 07:05:58 +0000
Received: from esa1.microchip.iphmx.com ([68.232.147.91])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7wfG-0001lo-8g
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 07:03:46 +0000
Received-SPF: Pass (esa1.microchip.iphmx.com: domain of
 Nicolas.Ferre@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="Nicolas.Ferre@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com a:mx1.microchip.iphmx.com
 a:mx2.microchip.iphmx.com include:servers.mcsv.net
 include:mktomail.com include:spf.protection.outlook.com ~all"
Received-SPF: None (esa1.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa1.microchip.iphmx.com;
 envelope-from="Nicolas.Ferre@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa1.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Nicolas.Ferre@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: 4UU2ij4CUaVoOlQdxapdg+n0yD5uZXMDiQ0UwccxRkc8ZWOOOipW5m5NeAJhUz2MVMugmT75h3
 olonsfiQh/JF1aR73ydNGLOSvGYWRZF/Pvh4vUpIq1xs60QvRCWMchc0kw4jeNWGuYG5V+4+Jc
 1yeaEwHocOfnTAfQuFjDYXuWkXgz2L972cPLEQwiaCFryYR2SDaMbfFFToOJHu6X4ePBc2PMRi
 obRSQsN3jrudNBJ+zuzz2qGpoEF67eej1RtD+sJPvpcLo2zNFyZIECswfWsi5oXVugwqnweJ7U
 mMI=
X-IronPort-AV: E=Sophos;i="5.64,492,1559545200"; d="scan'208";a="50021070"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa1.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 11 Sep 2019 00:03:37 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 11 Sep 2019 00:03:36 -0700
Received: from NAM02-BL2-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1713.5
 via Frontend Transport; Wed, 11 Sep 2019 00:03:36 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PjmdCuS6rRaqtP7ShqGNzrSxhdEobS6g/XIqyoZb6Zn+z54hnHjZVrln9z5Hn2nzI7FmaOiBDkS0wNNAphy4/EL2SjN96B8PZ9EVqZML+3WCuJ4mSCg47ZU/SvBkos3yVYtQHqb7dIPSIi614rQ3fdHRApUsnbc4O79E4ezQx2F1T1IR/9kg8Fv3gFsAK+B7+isoHybmeQp/ZqaOZulJlVlrkzVX1a1x3ZQNRZRArAwDdVmF/TaV9M2kbyQnRtK7YaY40HRc0xMDv1MN0h3lUltJ4i3DdAf9ZX5IxY0fGc6Mlp6Rbtki1To7KMJ4/8XJBgy97mKlsrtYipSAw+BbFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TsG3D75Ic6QdG+bjSpR50/r6PabK4dy/mu9sYtgtHmc=;
 b=iWXCNQK5LdXd6UWlOQccCeGkha6qRg4jezc53vhRoYRJ+0aIXMp4S/5EmK2JH9gnKeFDgTRO2nc9ySbWFne7nkcXwxCehSmSgRQZuGzifE5SWJsrfR/NH81Nuw7D3iY14AZlti93kOy3cgql0FdzfQWlNvL3oh7RXMhDc2fJg/pUQiWENrWVbuiBjYBGH3lRh7j+0xM5zJ35iChe7pnDHMHIwhP0yLCTS6u6UsZcF3EnaIcJDIGOaaah0NNZbRsEL9aa1n0Hk7+D/OxdJYAZAMu7NRQelIv+l23UDKZ7o8t8REEG6l+QPCL1xhXDCXTqC7hpyLQJO38UdU6K2xrZaA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TsG3D75Ic6QdG+bjSpR50/r6PabK4dy/mu9sYtgtHmc=;
 b=BiXCY+y2S9JvQOKZIg+1FYJfMsT2aqorW7+ufAu2PEW3ZxUdvPB0kqLY+6O5RyDKpU/7yIl7otH4LyNg5O1vJFUZgbfUY3BQP8eQ55qqDDXfzWnw+aBECz4XmwB86rjyXVHsaJNVpMCTKobpMDiIBvjblr9qdHFhg6oqr/ggY+I=
Received: from MWHPR11MB1662.namprd11.prod.outlook.com (10.172.55.15) by
 MWHPR11MB1501.namprd11.prod.outlook.com (10.172.54.136) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2241.18; Wed, 11 Sep 2019 07:03:08 +0000
Received: from MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::9943:3e43:c1ac:1efd]) by MWHPR11MB1662.namprd11.prod.outlook.com
 ([fe80::9943:3e43:c1ac:1efd%3]) with mapi id 15.20.2241.018; Wed, 11 Sep 2019
 07:03:08 +0000
From: <Nicolas.Ferre@microchip.com>
To: <Eugen.Hristev@microchip.com>, <mturquette@baylibre.com>,
 <sboyd@kernel.org>, <alexandre.belloni@bootlin.com>,
 <linux-clk@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
 <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Topic: [PATCH] clk: at91: allow 24 Mhz clock as input for PLL
Thread-Index: AQHVaGukjPTRbry/ckGMFC3Lf3IeQKcmC9UA
Date: Wed, 11 Sep 2019 07:03:08 +0000
Message-ID: <0e8083a3-9443-e2f0-d4a3-1b02a5728759@microchip.com>
References: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
In-Reply-To: <1568183622-7858-1-git-send-email-eugen.hristev@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LNXP265CA0062.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:5d::26) To MWHPR11MB1662.namprd11.prod.outlook.com
 (2603:10b6:301:e::15)
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [109.208.20.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b2fe3458-ac8a-40fd-bf02-08d7368619bc
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:MWHPR11MB1501; 
x-ms-traffictypediagnostic: MWHPR11MB1501:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MWHPR11MB150197D363531750C7F0F197E0B10@MWHPR11MB1501.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 0157DEB61B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(136003)(346002)(396003)(39860400002)(366004)(189003)(199004)(486006)(26005)(64756008)(66476007)(66556008)(6436002)(6486002)(8936002)(31686004)(4744005)(2201001)(31696002)(110136005)(2501003)(14454004)(6506007)(53546011)(316002)(71190400001)(102836004)(11346002)(476003)(2906002)(186003)(99286004)(86362001)(2616005)(81156014)(81166006)(25786009)(7736002)(305945005)(71200400001)(386003)(8676002)(66446008)(3846002)(6116002)(256004)(14444005)(446003)(66066001)(478600001)(5660300002)(229853002)(66946007)(53936002)(6246003)(76176011)(6512007)(52116002)(36756003);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MWHPR11MB1501;
 H:MWHPR11MB1662.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: eocCDEOFTxMIqIgfb1PRysWRcwG8cfDMlre/SYfctd00IEuvZwhRvENLNV0ZHGGgAT1Bo80ZTt9sIc+dHIFlqxwiNyaFiW3WQp7ryPiA4gwvi43xliCIBixLqSGnEwhquZn4e+aqE/7AauqhPla8EOts/3+QQP2ty/KSo3s6lNqAClQHURrlWduw+ZLapxOQ8LDCeCjjW74hMIrZKzP4mWllFpg71Ap5PZmoM6iOFzBbUqi7OiYOXLtuXLte3UgvsWSX7/mr9Xl7Gpd84rvWc5AXFHlq3lYd6ojqEt3E4IV0kjVD+pfoqnXVGvGIC1v6vc2uRO6wREYrAmZaMBrRdKg/u6VhdHd+e+1u9IlYSKDncDlRlDsY0KNSakRQpmYxgotKdIYFU11Bt1SPwnshdVhtdjPxk1tWXnqzUpo2rEw=
Content-ID: <5AE7C555EE18024381B1E45B19217032@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: b2fe3458-ac8a-40fd-bf02-08d7368619bc
X-MS-Exchange-CrossTenant-originalarrivaltime: 11 Sep 2019 07:03:08.3881 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: gyniLpdoRDReZY8XzRZ+UNwRsr+JrgyTrfiT1MoYo68LWJFNTVwtaz+kqoGKekyrNn1M2WCyCShyOLJKJZIRO1jJz9qke8ebKTzsyiCeQBU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MWHPR11MB1501
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_000345_188624_3941E87F 
X-CRM114-Status: GOOD (  11.74  )
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.147.91 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 11/09/2019 at 08:39, Eugen Hristev - M18282 wrote:
> From: Eugen Hristev <eugen.hristev@microchip.com>
> 
> The PLL input range needs to be able to allow 24 Mhz crystal as input
> Update the range accordingly in plla characteristics struct
> 
> Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>

Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Thanks Eugen!

Best regards,
   Nicolas

> ---
>   drivers/clk/at91/sama5d2.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
> index 6509d09..0de1108 100644
> --- a/drivers/clk/at91/sama5d2.c
> +++ b/drivers/clk/at91/sama5d2.c
> @@ -21,7 +21,7 @@ static const struct clk_range plla_outputs[] = {
>   };
>   
>   static const struct clk_pll_characteristics plla_characteristics = {
> -	.input = { .min = 12000000, .max = 12000000 },
> +	.input = { .min = 12000000, .max = 24000000 },
>   	.num_output = ARRAY_SIZE(plla_outputs),
>   	.output = plla_outputs,
>   	.icpll = plla_icpll,
> 


-- 
Nicolas Ferre

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
