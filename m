Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E55BE10B3F4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 27 Nov 2019 17:57:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ast4HPg7VGOZSqYR5VuUsZ6Lst0NV2B55cY8n7GT/+I=; b=twFb42v2/IXtyH
	PJPjaeU4gfev4/oDy9ic5E7apbGrM9ebbd7iKhbX+TaiOerZ2Wekr6rlZEfz8rv9sik2HOZK9hmfV
	NNXYZwIGWJCf9hW8j8q1tq74hRwvJEnBIqvwQGTEsOcWuRt7gXtGcJSKaj8gYjbY1ucXphtvuJRle
	OYy4191pPh5XR1O/oQP4zDN0Xsj/2W/Go6efP8Bo3Uqf00yMtdTEodCGp6UTLaoUedWzD7U4d5pu9
	2xMMsO6R+1gY8/3VEtpiMU7I+qweOEAT0t++wbLj5rYevKACLpGPKdsViVilYqnVhdVIMcMU3o9OA
	NHjS1DS/UpG6+yUNIYfw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ia0cg-0007Wf-3h; Wed, 27 Nov 2019 16:57:02 +0000
Received: from esa4.microchip.iphmx.com ([68.232.154.123])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ia0cV-0007VM-1e
 for linux-arm-kernel@lists.infradead.org; Wed, 27 Nov 2019 16:56:54 +0000
Received-SPF: Pass (esa4.microchip.iphmx.com: domain of
 Tudor.Ambarus@microchip.com designates 198.175.253.82 as
 permitted sender) identity=mailfrom;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="Tudor.Ambarus@microchip.com";
 x-conformance=spf_only; x-record-type="v=spf1";
 x-record-text="v=spf1 mx a:ushub1.microchip.com
 a:smtpout.microchip.com -exists:%{i}.spf.microchip.iphmx.com
 include:servers.mcsv.net include:mktomail.com
 include:spf.protection.outlook.com ~all"
Received-SPF: None (esa4.microchip.iphmx.com: no sender
 authenticity information available from domain of
 postmaster@email.microchip.com) identity=helo;
 client-ip=198.175.253.82; receiver=esa4.microchip.iphmx.com;
 envelope-from="Tudor.Ambarus@microchip.com";
 x-sender="postmaster@email.microchip.com"; x-conformance=spf_only
Authentication-Results: esa4.microchip.iphmx.com;
 spf=Pass smtp.mailfrom=Tudor.Ambarus@microchip.com;
 spf=None smtp.helo=postmaster@email.microchip.com;
 dkim=pass (signature verified) header.i=@microchiptechnology.onmicrosoft.com;
 dmarc=pass (p=none dis=none) d=microchip.com
IronPort-SDR: gn6ytM2ciJ3CUMAezpuYAcObJMOg3j/isO/uULPTPK8E32SWDNaxDe6MS00on8G/QLRpHzNTej
 Npk2UNJmFyBCDIK6lfEDNdSdcrKeKcoEFUtuE70clf/mTOs8Lf5nciKR+NVYLIEYP8aR0uD3U4
 uowpxwr0qdjnIOzqhv1hIIri8WztB3bz4yg5yR0K76THaU9G9oXC4DccYcTkPP+C/0yLefkUhA
 1agxO3cjQauaabPIEs9qh2npi4qYG8NmtrXLpCYB8igbnB1ZJqnWeGLcFWXhLm/0kDMNOTeG4d
 ZBk=
X-IronPort-AV: E=Sophos;i="5.69,250,1571727600"; d="scan'208";a="56818734"
Received: from smtpout.microchip.com (HELO email.microchip.com)
 ([198.175.253.82])
 by esa4.microchip.iphmx.com with ESMTP/TLS/AES256-SHA256;
 27 Nov 2019 09:56:44 -0700
Received: from chn-vm-ex01.mchp-main.com (10.10.85.143) by
 chn-vm-ex04.mchp-main.com (10.10.85.152) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.1713.5; Wed, 27 Nov 2019 09:56:39 -0700
Received: from NAM01-BN3-obe.outbound.protection.outlook.com (10.10.215.89) by
 email.microchip.com (10.10.87.71) with Microsoft SMTP Server
 (version=TLS1_2, 
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256) id 15.1.1713.5 via Frontend
 Transport; Wed, 27 Nov 2019 09:56:40 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dyYWCP4MA0l7V6rBOM23mhwue0w/Pstgh7l5MBSAZTnWx7zwz3BLeKahlpjMB3XE1aqek34jT5Wqkqu2kiTlf8JRRV5NqRfhUZjEw6X4FuyEOm88Icr0dPFyxl0tSk3T+AKa83w6xrPfxqJo8uc7tBLHvsZHogCFNnwKBusGhbmuujTTE5HdOx/SD5roQFRuX4fQfQWcx8Pc/wXzF4Ojr9kuH1CQK9B3UhFu98A8b+DCmeSqeU4FmmIEzASGhxrEdjFST3Vld7C9CkV17rSmy5jWUnve1mSCiZyjgqsqjMi6MjB3lGSGUluUqAl0qv0niQpdU8NvcaCeJM7yOaJn6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHrVvhUSZz/fdB1xI9HI1q+EL/BQC7mzuxwnm+awim0=;
 b=XyQKnw0MFUtxKpagv0nc7ZEvIE/rplFTThoR/2RfBWDT4xzRO+AR92s+yIJGDpqLtGM2zaoe0ruJ7gHvvVayQdivBhs//0kcW0lgvZFR+RbsZJxC+6bwB9S+NT9rVR7f4WWD6m5MkPPTBnVV/azvLG7Q16qZl+k/tavDnc4yPd7wfA/0E37jqRkxleoHFD+L2CsXl5H2s8rkYEApdL8morfkUsggEwz0ivwQPG0yfm0DAVeDWlD4sZRuwp2wgu8okpBAe0CVLlX8CMFqgmWeDStMznHAJFTMrF3bVy0PXXetJvrQFkDOIL//957gIIzWnBOppAx0QRTwGXZrjEANng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=microchip.com; dmarc=pass action=none
 header.from=microchip.com; dkim=pass header.d=microchip.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=microchiptechnology.onmicrosoft.com;
 s=selector2-microchiptechnology-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=XHrVvhUSZz/fdB1xI9HI1q+EL/BQC7mzuxwnm+awim0=;
 b=SsCCN/3gpNwT7P5PCrRDCJTnvcExsZinNxYCFDinVItbFiheUveVRXPKiVudVrx+HtJ6sgNVuYo0EwBvQ1KllgQPcMzIFbBCLeNqF7pdl6P9PGwF7QWowP+Y/q0eI164invbpSQA0dauyAu//zxqUUk2U19OGJsKQELnRIZj1LI=
Received: from MN2PR11MB4448.namprd11.prod.outlook.com (52.135.39.157) by
 MN2PR11MB4238.namprd11.prod.outlook.com (52.135.36.210) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2474.19; Wed, 27 Nov 2019 16:56:37 +0000
Received: from MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9]) by MN2PR11MB4448.namprd11.prod.outlook.com
 ([fe80::84c:6e75:22df:cbc9%5]) with mapi id 15.20.2474.023; Wed, 27 Nov 2019
 16:56:37 +0000
From: <Tudor.Ambarus@microchip.com>
To: <herbert@gondor.apana.org.au>
Subject: Re: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Thread-Topic: [PATCH 1/2] crypto: atmel-tdes - Set the IV after {en,de}crypt
Thread-Index: AQHVm7tzmqQuq6l82kiSJWdwlyo4OqefT8MA
Date: Wed, 27 Nov 2019 16:56:37 +0000
Message-ID: <642709fe-8cee-4c08-9a4a-05aa47d43c08@microchip.com>
References: <20191115134854.30190-1-tudor.ambarus@microchip.com>
In-Reply-To: <20191115134854.30190-1-tudor.ambarus@microchip.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: AM0PR01CA0096.eurprd01.prod.exchangelabs.com
 (2603:10a6:208:10e::37) To MN2PR11MB4448.namprd11.prod.outlook.com
 (2603:10b6:208:193::29)
x-ms-exchange-messagesentrepresentingtype: 1
x-tagtoolbar-keys: D20191127185630728
x-originating-ip: [94.177.32.156]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 3ab75948-c178-499f-7956-08d7735ac454
x-ms-traffictypediagnostic: MN2PR11MB4238:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <MN2PR11MB4238EF7CF891C80BA763A173F0440@MN2PR11MB4238.namprd11.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6430;
x-forefront-prvs: 023495660C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(376002)(346002)(39860400002)(366004)(136003)(396003)(189003)(199004)(4326008)(71190400001)(36756003)(102836004)(26005)(6506007)(8936002)(2616005)(186003)(6916009)(2906002)(305945005)(386003)(6436002)(76176011)(446003)(11346002)(52116002)(229853002)(6486002)(53546011)(5640700003)(86362001)(6512007)(6246003)(25786009)(54906003)(66446008)(71200400001)(7736002)(2501003)(5660300002)(4744005)(478600001)(31696002)(64756008)(14454004)(66556008)(66946007)(99286004)(8676002)(14444005)(81166006)(81156014)(1730700003)(3846002)(31686004)(316002)(256004)(66066001)(66476007)(2351001)(6116002)(142933001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR11MB4238;
 H:MN2PR11MB4448.namprd11.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: microchip.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: pX1INK7YlWMKMgDw1fcbQ5GWNmmSEJDY+/XrblAdUBDvTZaPiw4klaEj2nyqwMbIYsxyUPwdjKo47XNrNBrLBnjXqydU0FGX7NRRpwP1KT29PK72i9UExpoz7ob+EEyKXyi+jnPGvU8MVUlvAmZfP/bw8XZflHHajly+xgrfheK1YS7cfv+KcppaJSF5R8C5l06bN+Eg0ZRBTvQN/Mf2picwciFge8qcfVYZK4e7cI/J23vRksybblrXq7mA6h0N4pdel2dP0lTM7UVubxcAufNu3KpRbyvUYglestlZrBi/kos1z2r82l3DWJ9bYEHG7amFiR7PvHXTm01U8yhKeQlJQKiVUVKs+fCnMROHGNdzhgKwChuJN4wbasNDpqe3Q8CpL4O7m9Ne7ChVCcHWXN0lJZVbLi6lMhL90nLvV/Sp4uq7k1aBQ7XH+TD8Zdas
Content-ID: <887D088C92034E4B8607E87DCFDD82DE@namprd11.prod.outlook.com>
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: 3ab75948-c178-499f-7956-08d7735ac454
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Nov 2019 16:56:37.5974 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 3f4057f3-b418-4d4e-ba84-d55b4e897d88
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: PUWrYjWnlDEYnPvqCey57wFX8HPqCh8ge08tRKpiOfufGN7OUU3J7GGZrRxeSsckObapXbbNY/Fe5CK20d0MhaARAJhDmUjmJrrZoEXOJMI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR11MB4238
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191127_085651_125035_EE353423 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [68.232.154.123 listed in list.dnswl.org]
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
Cc: alexandre.belloni@bootlin.com, linux-kernel@vger.kernel.org,
 Ludovic.Desroches@microchip.com, linux-crypto@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On 11/15/19 3:49 PM, Tudor Ambarus - M18064 wrote:
>  static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
>  {
>  	struct skcipher_request *req = dd->req;
> @@ -580,6 +605,8 @@ static void atmel_tdes_finish_req(struct atmel_tdes_dev *dd, int err)
>  
>  	dd->flags &= ~TDES_FLAGS_BUSY;
>  
> +	atmel_tdes_set_iv_as_last_ciphertext_block(dd);

ECB mode does not use an IV, I should probably exclude the update of IV for the
ECB mode. v2 will follow.

> +
>  	req->base.complete(&req->base, err);
>  }
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
