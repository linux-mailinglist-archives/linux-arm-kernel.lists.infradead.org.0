Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C81E5CA06
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  2 Jul 2019 09:38:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NTRUqUzab0sS0O6CC4S3t+0r1gPGXBW7C6sQ9mzm4Z8=; b=l9weUxKAzs3Liw
	pF6xnctApL/r7wyFMOxW5WWJjaLZ3wJZcdpkI8P+lYGKm4fprDMfrmyhMgRos3x/z16zWt8w1OSym
	3W3ztbsLV4rzEyHuI4MjMdC8EwlTuxP8vFKJN+pYHUNC2uiFTbNlgbiJ015X2kocwKNV56qWS385m
	SBSlk72ssBps2zemciDwIhSUgYPJTRCy/JHRkRCY4YQh9KiXJ7EtUs9QDqr+D+ar5hk6ashhXftH/
	EdfYZxYpToIy7qir6eA1yYIOuorO7k7a4DkGy7TI6tg0rFDaZ0Trlfp/IwfLmRDNS2WLOdymZhCH1
	Qy+9DKlk52tP3XI1RXRQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hiDMz-0005OV-Nn; Tue, 02 Jul 2019 07:38:29 +0000
Received: from mail-eopbgr140081.outbound.protection.outlook.com
 ([40.107.14.81] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hiDMh-0005Kv-4O
 for linux-arm-kernel@lists.infradead.org; Tue, 02 Jul 2019 07:38:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jQmlocEVeiX5yqsJMfurkQCYK4OJK2XSPSxaqiJyk2M=;
 b=WZpixlcLj7VlPvE1cYWX3Jwd6KR6d+g9LeEbmUASEg/92PqgQrbxBm5wJasCFA6b6qdHXaPxCk3NJ58FL8KJpam9hk8D95agvMRmOJdJ/1SphY9R2O68vaW0hszz4mlu92QhBYVh2KUJrRtKfYfu+2Pavzc18XA8Buh8DJY6qHs=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3929.eurprd04.prod.outlook.com (52.134.70.31) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2032.20; Tue, 2 Jul 2019 07:38:07 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::3945:fcda:5bdd:8191%4]) with mapi id 15.20.2032.019; Tue, 2 Jul 2019
 07:38:07 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Topic: [PATCH V2] soc: imx-scu: Add SoC UID(unique identifier) support
Thread-Index: AQHVLWJufgF2wmbUA02qCFDX/HZj7qa29qQAgAAAUZA=
Date: Tue, 2 Jul 2019 07:38:07 +0000
Message-ID: <DB3PR0402MB3916EE2A43DAFFEAB592BE61F5F80@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <20190628032544.8317-1-Anson.Huang@nxp.com>
 <20190702073522.blujpmxddw7brr7c@pengutronix.de>
In-Reply-To: <20190702073522.blujpmxddw7brr7c@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: d1333016-ef86-42e8-0487-08d6fec039e4
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600148)(711020)(4605104)(1401327)(4618075)(2017052603328)(7193020);
 SRVR:DB3PR0402MB3929; 
x-ms-traffictypediagnostic: DB3PR0402MB3929:
x-microsoft-antispam-prvs: <DB3PR0402MB39296FC694F09D8C72B5FAEDF5F80@DB3PR0402MB3929.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6790;
x-forefront-prvs: 008663486A
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(366004)(376002)(346002)(136003)(396003)(39860400002)(189003)(199004)(6916009)(81166006)(8676002)(81156014)(66556008)(6436002)(229853002)(66446008)(73956011)(6506007)(2906002)(64756008)(66946007)(52536014)(66066001)(74316002)(6116002)(102836004)(76116006)(3846002)(478600001)(66476007)(8936002)(86362001)(4744005)(53936002)(76176011)(446003)(7696005)(11346002)(55016002)(6246003)(476003)(316002)(71190400001)(71200400001)(9686003)(486006)(14454004)(33656002)(305945005)(186003)(68736007)(44832011)(256004)(4326008)(54906003)(99286004)(25786009)(5660300002)(26005)(7736002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3929;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: PmnTKjYXpcUAR+rP4sfDmbGAPJnbvqAbNh6jzhKiX7l4tbma+k7Fj51mqCFgMNWQDB1dV0ROh1aBxMuH+KyxNh+fbpLU6bDVJjLtfN8e11QFO4NSKXcQI87ZSFi2cj8wm8mNPvJVeIC3eAcoUJ1fPgBoEcABfeE1W6x8z4MfAzR/lPxuhG5LQ5H/fCxfxR4+SEy6GQb0ERxuunSIk0Be7N1DGMlUY9isgnOCSKoXke5a7bH67GcGyXBE+FBF2pe5CicUW6fTCRMPEF9+BKR0ix5ymWh0V0rc3/hpsZQwho7Yh9wejdf/ifBgbcZmaJDeItNRiQ8uVd7oY71E/ScxJ9mjFotJuxyHC0vKt535FEdSGuTkAe8/lS8rrEjDhm6gZgGQ7ISCjAdEnSoNe6S+Lieg5rC4yHewWqJCtYbACoU=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d1333016-ef86-42e8-0487-08d6fec039e4
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2019 07:38:07.6565 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: anson.huang@nxp.com
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3929
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190702_003811_422175_58643A22 
X-CRM114-Status: GOOD (  11.03  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.14.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, Abel Vesa <abel.vesa@nxp.com>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi, Marco

> > +	hdr->ver = IMX_SC_RPC_VERSION;
> > +	hdr->svc = IMX_SC_RPC_SVC_MISC;
> > +	hdr->func = IMX_SC_MISC_FUNC_UNIQUE_ID;
> > +	hdr->size = 1;
> > +
> > +	/*
> > +	 * SCU FW API always returns an error even the
> > +	 * function is successfully executed, so skip
> > +	 * returned value check.
> > +	 */
> > +	imx_scu_call_rpc(soc_ipc_handle, &msg, true);
> 
> Please can you add a TODO: or FIXME: tag and also provide the firmware
> version containing the bug? I know that developers are very busy and follow-
> up fixes never reach mainline ;)

As I replied in previous mail, I will send out a V3 with below comment:

+       /*
+        * SCU FW API does NOT have returned value for
+        * this function, so skip returned value check.
+        */
+       imx_scu_call_rpc(soc_ipc_handle, &msg, true);

Thanks,
Anson.

> 
> Regards,
>   Marco

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
