Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B3E11C37E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 03:47:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=NmVXlUmhTSkwFJydSyDESJIIjY6dhBCmdSnnjNvHx9A=; b=r/mjXjtGiQnTWB
	SV2hbs9miC5nOnJ5ssA0r9z8BPJk+aw/6KHsnL1aBiUJmTSFP6aFVSaztriyA1vJjRnj3p2Odfnt9
	U9AnRwE1RBcggqGi7J4LJtiPey+757r76J+arBfTGcp2W5LSPZ9np8/+hN8t7MON2yn/GtPlPQOlw
	NN8dERUUSAAxcHRxyWjwrS8tnvSAFvWccuOf/MJY39BZJaIJmB9sjXXYWHvf3rL7sla1WoM9jwtrE
	F7zeX/nDv43XlHPYHTXWMbX4UTNQJZTH2wn1rDJklfyhi+OzQLQ7VgfRacuslbiAOAuDtHF2HuIgK
	Fo9VoGwg2YqZCfHR0Q7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifEVt-0005tt-Nc; Thu, 12 Dec 2019 02:47:37 +0000
Received: from mail-eopbgr50052.outbound.protection.outlook.com ([40.107.5.52]
 helo=EUR03-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifEVl-0005sg-52
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 02:47:30 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Thuntt5GQP0uf5ezwfd8YO4XzSRM+S+3fl52mGZ2U1EuVoubIS0EKHHzrNg9+RU3ml/Pcf7e6q3VXLfZlmFyilI+ex11b3jRZtsDvVmCv9+Prw96pcNkFMyBSgD1zop1UF99vzCfgWILsbzlxg7P8FGhAwcgpgzWCWTTs/xEbpF4NBo97f7nnRzIaEWCXrxOqtvieoDimPskMWFTrThPCpxRKNDiXNCszrblzAyRlV/EAyqwl5xwlwK8BaIjNBO6mEtfdOU5A8WgIcmJJLiloOURG9XrU0LGU37LpCUlJEnzBK/p7gVGvWOJshy5zuTI5kSsNmH3fNfF3NyFs/I/pw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCp0+kDVDjp1137fGiqxMvXFCkNG+CjgWLtWE/FDWuk=;
 b=NAahaDRPjXdLoUuZpy1u9jOXevzye20JupFzXBqS3jaoaSqm5du1R38tdzuzd6vmtc6krjwblWGRWotND/X+PpeQdbfayz1WsBE0Mkl6PYcPnDRAUMSiCTjDZXXIQ6S1oj8wIqAsfO89Kl/karuQw2nQ+45DG9FmVFPdgk0xtym2pvZLnda9bzAeatLZqECNOnnLGkR0s+TU1ACOzXAEC2C1nuhdVEBgj4CzXTh8KEI/TcCsaZKAhbmi0UxAteAREHvqwMulJttVFFcScDqgyCULXSQZbAvqpkRx4DRy3biIkqXjDtayoXZEoSuNdMwr/ZdkQaOLxzdNsTLj3xkkHw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=PCp0+kDVDjp1137fGiqxMvXFCkNG+CjgWLtWE/FDWuk=;
 b=EC1ZxRyeKz7hBqGnlgmrl114EKqOfhq8B9fbH6YZQOhw/QKfIMEriiWjM1maeytDHXubc9ewK10AM1UR9gO1jmDtlg8IsJ+BiKwpSRWMQJ0mD+8RuDk6KhfKFGPpOvMoOY7ECSxueWsdLzTYyWjHQiE9ZxM7GRXPfeA+Zy9AkAM=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3947.eurprd04.prod.outlook.com (52.134.67.147) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2516.13; Thu, 12 Dec 2019 02:47:24 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::b5ce:fe6b:6c06:fdb1%6]) with mapi id 15.20.2516.019; Thu, 12 Dec 2019
 02:47:24 +0000
From: Anson Huang <anson.huang@nxp.com>
To: Leonard Crestez <leonard.crestez@nxp.com>, Shawn Guo
 <shawnguo@kernel.org>, Marco Felsch <m.felsch@pengutronix.de>
Subject: RE: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
Thread-Topic: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
Thread-Index: AQHVsDQPlJglKgvBOUi9dVIzmSU3Cae1zDxA
Date: Thu, 12 Dec 2019 02:47:23 +0000
Message-ID: <DB3PR0402MB3916DB23342F44220495EB95F5550@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
In-Reply-To: <3dbf3c6b01b4c372544127d61746e2d9b62108d7.1576076393.git.leonard.crestez@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [119.31.174.66]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: f287f6ef-09cb-4efe-9bef-08d77ead9e2b
x-ms-traffictypediagnostic: DB3PR0402MB3947:|DB3PR0402MB3947:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB394748DB552B58DFB70430EAF5550@DB3PR0402MB3947.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:7219;
x-forefront-prvs: 0249EFCB0B
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(346002)(39860400002)(396003)(366004)(189003)(199004)(13464003)(2906002)(186003)(66946007)(6506007)(81166006)(478600001)(5660300002)(76116006)(81156014)(64756008)(4326008)(66446008)(66556008)(66476007)(53546011)(110136005)(4744005)(55016002)(9686003)(26005)(8936002)(52536014)(7696005)(316002)(86362001)(54906003)(44832011)(8676002)(33656002)(71200400001)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3947;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: G9TK314vC0zJ5WNOUVhwDJo3b6ejslH6hd1T9wI8GXjhVkZDZovkIx+SeuRyscUr806oHV13rmXyag1b8KlhksvGsBURfLRWc3wVZCprpR2Ck66XZejZyv6h3XllvX+PaeuRV+Acghfgk8bMpcKj7QL5kQyIixqNFWGQ89kVfrd4JFRdrrp9WZReEjXKSQcy1vePzW1qz6a9Q/+5dKxFEzWOotiJUaLfi1wyBtE0hNmz5RXeD6D54qHNKH5JQ+oPxwz3CMQ19ZNAD0g1QAy0/+QXmJyPq4UxFu3AyQXdaeTLBS/osyegdqCwYLIzo7NDpD25yKKruqZoEUy0lCD/uLctWs1ctWGfBuqNCWC/ZojDNxAVbTbd4yINNobmc1Fv1fKexdTt3iLYBZUGA2Qz4puw55DfR6QsothSPvmlo10Lp32JikCnhb5dBXR2Uqw2iP821wRwFc/6HH0fGgLKCZuvEiEdVD/0lK0RrzvVz/lbAAnMCx0Tior38hsWbOrrCLYAv54yc7rr5eLf+7d6ew==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f287f6ef-09cb-4efe-9bef-08d77ead9e2b
X-MS-Exchange-CrossTenant-originalarrivaltime: 12 Dec 2019 02:47:24.1746 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 92s4aVEf7n+Yoy/kxvy4fVSkeM/JO/Y7sfpm1vHOzjz/kK5y3+oCFaGKWppOgIeDRp4OC8eWODX+kx0Cb/fLEQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3947
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_184729_276939_E1D1B864 
X-CRM114-Status: GOOD (  11.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.5.52 listed in list.dnswl.org]
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
Cc: Aisheng Dong <aisheng.dong@nxp.com>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Daniel Baluta <daniel.baluta@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



> -----Original Message-----
> From: Leonard Crestez <leonard.crestez@nxp.com>
> Sent: Wednesday, December 11, 2019 11:03 PM
> To: Shawn Guo <shawnguo@kernel.org>; Marco Felsch
> <m.felsch@pengutronix.de>; Anson Huang <anson.huang@nxp.com>
> Cc: Fabio Estevam <fabio.estevam@nxp.com>; Aisheng Dong
> <aisheng.dong@nxp.com>; Daniel Baluta <daniel.baluta@nxp.com>;
> kernel@pengutronix.de; dl-linux-imx <linux-imx@nxp.com>; linux-arm-
> kernel@lists.infradead.org
> Subject: [PATCH v2] ARM: dts: imx6ul-evk: Fix peripheral regulator
> 
> Many peripherals are affected by gpio5/2, not just sensors. One of those is
> ethernet phy so network boot is current broken.
> 
> Fix by renaming reg_sensors and marking it as "always on". Also add a
> comment asking for careful testing if this is to be made dynamic in the future.
> 
> The "peri_3v3" naming is similar to imx6sx-sdb and regulator-name is same
> string as in schematics (VPERI_3V3).
> 
> Fixes: 09e2b1048954 ("ARM: dts: imx6ul-14x14-evk: Add sensors' GPIO
> regulator")
> Signed-off-by: Leonard Crestez <leonard.crestez@nxp.com>

Reviewed-by: Anson Huang <Anson.Huang@nxp.com>
_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
