Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C211610F2
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 17 Feb 2020 12:19:03 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uAr4DeKejm5ag3zuuOawUHvin6uGkv9dk7lqqG3pOBw=; b=uOrQ09r079qH0B
	yQqkuYJp7bO8Vae4KpZigv8tRBtzSxycACLiBzNfRcSxc3mwLmI6V2wkl7fB1F/004OVJ3F1Ijbpy
	aG7l8I76LGmEGcYfhwyDqKDTEG3CGZcuCbuhCwtdfm1/CPr1IRC3p3YPi/IeOo3FwwtmdzgaI96BU
	3WI72BbrAb2K0fJHw8A/SqK636XAE7hErZG74eYKKTJVWqRhgQjmB11H8A7FFKW3FoJsFqL2x52BU
	twaF2oL29T/ITlp9IXYqIRmKQTkVixYwvOUWVxbL/a9zv8k9TnTBDec8N+nUp6x4CGm1x2MWN5JLI
	Ci2T0eMo6UcTpuhN09Pg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j3eQQ-00088Q-GL; Mon, 17 Feb 2020 11:18:54 +0000
Received: from mail-eopbgr70081.outbound.protection.outlook.com ([40.107.7.81]
 helo=EUR04-HE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j3eQG-00086w-D6
 for linux-arm-kernel@lists.infradead.org; Mon, 17 Feb 2020 11:18:45 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=GNzxC1jl82yagyEgRSKvc43z2nvMe+GejuFwqV9YelLKnhb6+uDglVouFyEnGyBSJX0EiNms+IJzClB5bp9PtqzU7d/BtEwxz0BIHmQgeMvOxJZPl9x9Z8rkijoTOn1yebt0D1vRwcjwC2MQL/mqL215kdRRVgI8tWEzJmWpu3PQVAkSKlxqB1iynAzCWPqkLQtai8hF56bvgx83otKP3DfWvHpn5FpMqMv7IEfvxDtSFdNRrjBiYzhQ9+8apHUeI4b5oQUDFvV/USHPo9khHacLm8rJ3WSiaHYDPqgPG50EKMQho6gf23XuZoD10s51vXqLdUJ7ZIwpVz3Jg0AdEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9IRT0C7aY0aUFAJ3B6bMGu3gol6GqC+/KhOXcSYskE=;
 b=dx6K1ou0Cg+goAb3yAxhCGzj7Q26u/1nY1uduoBqwE247w82U804EhDZ6IyCE0vp2WfjiFPpFLoOVvL/rCe8liI5tBUX7ggK4MiqTeu5WB1HkGVJXCF9oGMvp147Pjbhu49IvlSCfEdDoEIMm0JD8+Mg6t2m6MKO60mUqcP2Y6jEL82qWs+AqejCU5cMdoT36hCDIhGV00MFLAK1KbDsw/s/T22oWSTYWyM6wAlMvKreBC59c43CWPHr0bTVm3cnnubmrbLk8WNKOnsnc1z81cNtQcjuMjuz1G2NCf7C3c37ph1FqxQiOSAHvNOuAoympMTX1tknXXfKHB0b9fvx5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=C9IRT0C7aY0aUFAJ3B6bMGu3gol6GqC+/KhOXcSYskE=;
 b=lrBkXujsAKYQSPyCWk1hSDciwkY924jBHy6PuPI96Zrszc0H9EQU/iOMPBoCf7yGG30ElcZf2TCD/rhO8EpMoSjRjJnwUFQ1PK00wZ6jwmjjeojLfgfirLGT2+kHI9+OhyBV3PVOSoWq43si4MT+tX+lT5mefVY9ECn47vjTvNg=
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com (52.134.72.18) by
 DB3PR0402MB3659.eurprd04.prod.outlook.com (52.134.66.160) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2707.21; Mon, 17 Feb 2020 11:18:38 +0000
Received: from DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96]) by DB3PR0402MB3916.eurprd04.prod.outlook.com
 ([fe80::e44d:fa34:a0af:d96%5]) with mapi id 15.20.2729.028; Mon, 17 Feb 2020
 11:18:38 +0000
From: Anson Huang <anson.huang@nxp.com>
To: =?utf-8?B?VXdlIEtsZWluZS1Lw7ZuaWc=?= <u.kleine-koenig@pengutronix.de>
Subject: RE: [PATCH V3 2/7] ARM: dts: imx6sx: Add missing UART RTS/CTS pins mux
Thread-Topic: [PATCH V3 2/7] ARM: dts: imx6sx: Add missing UART RTS/CTS pins
 mux
Thread-Index: AQHV5XXXj4PCuaVf3E2fPk4xLzrhHagfJFmAgAAYTmA=
Date: Mon, 17 Feb 2020 11:18:38 +0000
Message-ID: <DB3PR0402MB39167B32B8C713AC410D811DF5160@DB3PR0402MB3916.eurprd04.prod.outlook.com>
References: <1581931886-12173-1-git-send-email-Anson.Huang@nxp.com>
 <1581931886-12173-2-git-send-email-Anson.Huang@nxp.com>
 <20200217095007.sn7hqbqoqcv75ic3@pengutronix.de>
In-Reply-To: <20200217095007.sn7hqbqoqcv75ic3@pengutronix.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=anson.huang@nxp.com; 
x-originating-ip: [220.161.57.125]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 170cae05-957b-4870-8340-08d7b39b22f4
x-ms-traffictypediagnostic: DB3PR0402MB3659:|DB3PR0402MB3659:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB3PR0402MB3659724A0A003F79F1530672F5160@DB3PR0402MB3659.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:1060;
x-forefront-prvs: 0316567485
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(366004)(39860400002)(396003)(346002)(376002)(189003)(199004)(76116006)(66446008)(66476007)(66946007)(64756008)(66556008)(7416002)(55016002)(4326008)(9686003)(4744005)(478600001)(8936002)(6916009)(54906003)(66574012)(2906002)(26005)(186003)(44832011)(6506007)(33656002)(316002)(5660300002)(8676002)(81156014)(71200400001)(81166006)(86362001)(52536014)(7696005)(32563001);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB3PR0402MB3659;
 H:DB3PR0402MB3916.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: 54DNpiQEK4PiTsU+S4A2cErLAbv2tgIjfZBnl1qzrwg7VJHx6PuF4tLpG3PE1KudcUUxM8ZwYQ2x1KrYTaF1hTWjXqLe/DrBv82z71s1KxPbGwxM2ar04zzdtnvp+jmvAwWcQ446vHgFbZAwRKC1Gck0vD3Bce0ZY0JB7ixCib5j/YyAmwqJCVWu19GRvgs3g9xUo6R/fPt5bhQyVQSm3evL1+TjUdzf2EVj7hGnizZGZ7BDGrfQx9bg+jEUiqEK+OKHSt+KvWQx06Ezb62eMznsO0/gsHYBPMYy59GJOtbD7/TAkH6J8E4jCDDedmz7nEkgmCjR0RZPw2D3i6UqbmhEwyS2Je/PQ99XNuXKuVuPt20BrSEWF2gES3EnEDV/bFa2rHIN3tqkAUsXd7VanTmQXABpLXnYaMFQLodrJAauMytGkQhyB8L8o/p9zazENrDgEoHnvOjVOrRFLIuGy2xKNs3GewGapQikr+rIaJ0XaS22wzX04SIJCPZkIcrQ
x-ms-exchange-antispam-messagedata: MJKoVNgh4t7qwplO0DeED4ddOlXIPabTTQwwlxlw7W93zLsoRHzjM42F9X2k9HrPmpdCCvUL7NkG6V2ehl0sqMXejhV+mEmxbN6M4jHPMHLlfBwjfc4E8ROUTBAsgRpPvoxBkm7+Z6X0AVBcdevM/g==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 170cae05-957b-4870-8340-08d7b39b22f4
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Feb 2020 11:18:38.2847 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uzhUuiEyRH+UQCoEJaHFS0VEAz6xVMKk54pY/vjei4rtzxVq59mCf3SPRxWxJiGFkjUC7q6H1cEN7MFxfqnHPw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB3PR0402MB3659
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200217_031844_545773_71035F34 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.7.81 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "shawnguo@kernel.org" <shawnguo@kernel.org>,
 "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>, dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIFV3ZQ0KDQo+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggVjMgMi83XSBBUk06IGR0czogaW14NnN4
OiBBZGQgbWlzc2luZyBVQVJUIFJUUy9DVFMNCj4gcGlucyBtdXgNCj4gDQo+IE9uIE1vbiwgRmVi
IDE3LCAyMDIwIGF0IDA1OjMxOjIxUE0gKzA4MDAsIEFuc29uIEh1YW5nIHdyb3RlOg0KPiA+IFNv
bWUgb2YgVUFSVCBSVFMvQ1RTIHBpbnMnIERDRS9EVEUgbXV4IGZ1bmN0aW9uIGFyZSBtaXNzaW5n
LCBhZGQgdGhlbS4NCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuc29uIEh1YW5nIDxBbnNvbi5I
dWFuZ0BueHAuY29tPg0KPiA+IFJldmlld2VkLWJ5OiBVd2UgS2xlaW5lLUvmnppuaWcgPHUua2xl
aW5lLWtvZW5pZ0BwZW5ndXRyb25peC5kZT4NCj4gDQo+IEh1aCwgdGhpcyBpcyBub3QgaG93IEkg
d3JvdGUgbXkgbmFtZSA6LSkNCg0KU29ycnksIGxvb2tzIGxpa2UgdGhlICJmZW5jIiBpcyBpbmNv
cnJlY3QgYmVjYXVzZSBvbmUgY2hhcmFjdGVyIG9mIHlvdXIgbmFtZSwgSQ0Kd2lsbCByZXNlbmQg
dGhlIHBhdGNoIHdpdGggY29ycmVjdCBuYW1lLg0KDQpUaGFua3MsDQpBbnNvbi4NCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
