Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB3A1176ECB
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  3 Mar 2020 06:35:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=V8B5jtTsgzMn5aFcsRsEGpnXhr621ZQPPa4AyFUkTbA=; b=OfH0CGF/G82GP/
	3rnfegu40MdoDbgoqV1xLl1QD6mCRzXFdRz5UboqJgmlATR0upw7cvLvTUCoOqaRg4G6HHLOw5tVI
	NHbC0X1ASYsnu4pgeHZ7zAS75QAEBjAwsuk0VF5puERZDfn9O5/9F9NOCJmAX/mCfKQJopDavSeVt
	7W9aYkho8zIt4Z6jydsFACqn5BSNNcqt1WzIOBmqIqZvOvXJ/ge6/wdbV5ZPQv887cxZNWvQpAlMV
	Not7qAjtuLhFF3TArX9kVi/wMtHaEE7bn8WIBE56MU6qrviA21nIDj98oKeBuz+rwmkwmtuLXzxq8
	107XSNGpqh9WSyzOvkmg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j90D8-0007du-MW; Tue, 03 Mar 2020 05:35:18 +0000
Received: from mail-db5eur01on0628.outbound.protection.outlook.com
 ([2a01:111:f400:fe02::628]
 helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j90Cd-0007Tt-2K
 for linux-arm-kernel@lists.infradead.org; Tue, 03 Mar 2020 05:34:48 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=U7z+GPTeJH69Az92bFyOdGi0h2CXq2Lez+XmuirMj7KMSt0Cqsk6wCLcv044DoAczL3oYT2oQ08UyH69IAM4O5076m7D9ZhfkNHPzdbFvwHLgeVEf2mZlsv8hFB5dk36ZSPNYthEgcCGHIBJnRS8UzRZ6oEDSPPxEB9XRTwpB+wVML5tgVeP5qWoKDEQBRq1E/SRGdJ+3pUiT+FcUZkAyrt2x1mozxi/HfoH2Jlfokl5kuoCBDrLE51hDIi8M81uF51rfZ4WtSR/204l5Y7fz50bd0ficAVBd9JOPVtRT9LlEb3ikBnACLkdATMNhgeM74fi+lCafyLkzwD4c5y+ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DILQIeMYHj4BOmcxBSjNqv7C6IEJOnu8A3fEVFDGr5U=;
 b=S3ZfTDonFwAwkPG+YEgkz8BTyFl+e9S9gluKzBrsX67+8AjDbOsfu8UpvE+3DBY0epQHqWeFqMgDg1Rgwez9/Q9iPFW22bWWqznsQgHtDUAtodv/6PEJnreUyCTVSBqi10HTHFAcWDKjMjENLtwk5xTLuU4BjxZdigy6CycSg2AULd66qTTHLxRo3UbEWzNqPdpY329xkwgYVJe72dhKHGnDZRljgVpQQo2VtGRoY4Yt9TBdMp2qzXe+d/o03AEPGr6HOAC13KA2HNgYOdAdCFuw/FvrzvSop/TfCSBYZeDoNcuH1Q04Vhx/Jq2B3WfMxMTMS6g12qVDCEcLLJpxGQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DILQIeMYHj4BOmcxBSjNqv7C6IEJOnu8A3fEVFDGr5U=;
 b=FzJJ1e9AD3WkbNUz5Z7nOXjh86fcOpkA/nnx92n1+f/eiXF7KOEjDpLr3j5dt9iBSQkDnetSq6bcEyu1sXVXYULnxMTkGN8TeQ+kO3Rtg2Dbp+SXHI8xAG5jDmxSsUhcjaF2Rlr5/0S/J1I+yMwXA2yw9t1CW0X6TDxT4KcvXwk=
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com (52.135.139.151) by
 DB7PR04MB4489.eurprd04.prod.outlook.com (52.135.138.15) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2772.18; Tue, 3 Mar 2020 05:34:44 +0000
Received: from DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788]) by DB7PR04MB4618.eurprd04.prod.outlook.com
 ([fe80::e449:ea49:c382:9788%5]) with mapi id 15.20.2772.019; Tue, 3 Mar 2020
 05:34:44 +0000
From: Joakim Zhang <qiangqing.zhang@nxp.com>
To: Will Deacon <will@kernel.org>
Subject: RE: [PATCH 1/2] perf/imx_ddr: Correct the CLEAR bit definition
Thread-Topic: [PATCH 1/2] perf/imx_ddr: Correct the CLEAR bit definition
Thread-Index: AQHV69ts1bdLZsaXVEGwNoVH/rXyKqg1Mt0AgAEvKxA=
Date: Tue, 3 Mar 2020 05:34:44 +0000
Message-ID: <DB7PR04MB46187AA313F8C27005B09248E6E40@DB7PR04MB4618.eurprd04.prod.outlook.com>
References: <20200225125644.18853-1-qiangqing.zhang@nxp.com>
 <20200302112534.GC7995@willie-the-truck>
In-Reply-To: <20200302112534.GC7995@willie-the-truck>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=qiangqing.zhang@nxp.com; 
x-originating-ip: [222.93.202.38]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: dcd48384-7b94-4c24-1386-08d7bf34948e
x-ms-traffictypediagnostic: DB7PR04MB4489:|DB7PR04MB4489:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB7PR04MB4489A4EE5229F7127DD1E2B6E6E40@DB7PR04MB4489.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:5516;
x-forefront-prvs: 03319F6FEF
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(396003)(376002)(136003)(39860400002)(346002)(366004)(199004)(189003)(4744005)(66476007)(71200400001)(66946007)(33656002)(52536014)(6916009)(2906002)(66446008)(66556008)(26005)(86362001)(64756008)(316002)(81166006)(7696005)(8676002)(4326008)(8936002)(186003)(54906003)(5660300002)(6506007)(478600001)(76116006)(55016002)(9686003)(53546011)(81156014);
 DIR:OUT; SFP:1101; SCL:1; SRVR:DB7PR04MB4489;
 H:DB7PR04MB4618.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: ppJkr9l/tpTfwJT+c/vGx9AlrYwcDiWfRKsKdg1iQ4VfTO6669BdIS1MAJM0F212Fx8HIocJixlsV+rrMDuj5X1YkLWMMoQCB3KOAZd1hxb8LjLocuXlAMEeF809ouO7WX2riMgE7PY0CYyT5aoS3IcXxD4Kn7lhYnlrwv5q1AluZPDpzbTiYuhQQYSVR0/NWvRAw5G0adpC0xQuFPzcgDXJTLmu6Gg7wdmlS2slj5ATpKq7M0RWy5QC7Ex1YmitSQkLHL5GO9IX01rXmbElKtPdGsQVI0kneS+X0883HFslad0vhFX9ox9ls1y0HaTRY4OUQI6uzG2QoktYQ/yGXgPk/9XaZy/J9xY+p8IeLzHf/FokHfMkhPSmI4BrI7dXKSkIoVM1y61D67w8HPARxrsLN+pa6s6BPe2KlE8omNE/WYN+5GjAe6FFVMFbDBeY
x-ms-exchange-antispam-messagedata: HsTIfms1If/7XGjrVhbhHto9YmPwPrvl28V7LgiwFCBnEP1LmiznrZ+kBn5KUky0r2ClwT7TdaAVrNekJHJPYg+2RDDE1Abl08HknHkDz+K9n0ABLPO4fRNpoOfx32Cax1dNTzIa9tgjPGBZrmZRqg==
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: dcd48384-7b94-4c24-1386-08d7bf34948e
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Mar 2020 05:34:44.6458 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: /BvYblSp09rZjb87BV3/ideED2qvQ/Rkdepr9MhcG73XFC084AohXI7yRib2f2wsJa/XJkHSOT4NJULp/QHPDA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR04MB4489
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200302_213447_115871_16D98DA7 
X-CRM114-Status: GOOD (  12.48  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe02:0:0:0:628 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 1.0 FORGED_SPF_HELO        No description available.
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
 "robin.murphy@arm.com" <robin.murphy@arm.com>,
 dl-linux-imx <linux-imx@nxp.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="gb2312"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQo+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+IEZyb206IFdpbGwgRGVhY29uIDx3aWxs
QGtlcm5lbC5vcmc+DQo+IFNlbnQ6IDIwMjDE6jPUwjLI1SAxOToyNg0KPiBUbzogSm9ha2ltIFpo
YW5nIDxxaWFuZ3FpbmcuemhhbmdAbnhwLmNvbT4NCj4gQ2M6IG1hcmsucnV0bGFuZEBhcm0uY29t
OyByb2Jpbi5tdXJwaHlAYXJtLmNvbTsgZGwtbGludXgtaW14DQo+IDxsaW51eC1pbXhAbnhwLmNv
bT47IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiBTdWJqZWN0OiBSZTog
W1BBVENIIDEvMl0gcGVyZi9pbXhfZGRyOiBDb3JyZWN0IHRoZSBDTEVBUiBiaXQgZGVmaW5pdGlv
bg0KPiANCj4gT24gVHVlLCBGZWIgMjUsIDIwMjAgYXQgMDg6NTY6NDNQTSArMDgwMCwgSm9ha2lt
IFpoYW5nIHdyb3RlOg0KPiA+IGRkcl9wZXJmX2V2ZW50X3N0b3Agd2lsbCBmaXJzdGx5IGNhbGwg
ZGRyX3BlcmZfY291bnRlcl9lbmFibGUgdG8NCj4gPiBkaXNhYmxlIHRoZSBjb3VudGVyLCBhbmQg
dGhlbiBjYWxsIGRkcl9wZXJmX2V2ZW50X3VwZGF0ZSB0byByZWFkIHRoZSBjb3VudGVyDQo+IHZh
bHVlLg0KPiA+DQo+ID4gV2hlbiBkaXNhYmxlIHRoZSBjb3VudGVyLCBpdCB3aWxsIHdyaXRlIDAg
aW50byBDT1VOVEVSX0NOVExbQ0xFQVJdIGJpdA0KPiA+IHdoaWNoIGNhdXNlIHRoZSBjb3VudGVy
IHZhbHVlIGNsZWFyZWQuIENvdW50ZXIgdmFsdWUgd2lsbCBhbHdheXMgYmUgMA0KPiA+IHdoZW4g
dXBkYXRlIHRoZSBjb3VudGVyLg0KPiA+DQo+ID4gVGhlIGNvcnJlY3QgZGVmaW5pdGlvbiBvZiBD
TEVBUiBiaXQgaXMgdGhhdCB3cml0ZSAwIHRvIGNsZWFyIHRoZQ0KPiA+IGNvdW50ZXIgdmFsdWUu
DQo+IA0KPiBPaywgc28gdGhlIGlzc3VlIGlzIHRoYXQgd2hlbiBkaXNhYmxpbmcgdGhlIGNvdW50
ZXIgd2UgY2xlYXIgdGhlIGNvdW50ZXIgdmFsdWUNCj4gYXQgdGhlIHNhbWUgdGltZS4gSSdsbCB1
cGRhdGUgdGhlIHRleHQgYW5kIGFwcGx5IHRoaXMgZml4Lg0KDQpZZXMsIFdpbGwsIHlvdSBhcmUg
cmlnaHQhDQoNCkJlc3QgUmVnYXJkcywNCkpvYWtpbSBaaGFuZw0KPiBDaGVlcnMsDQo+IA0KPiBX
aWxsDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51
eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVh
ZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1h
cm0ta2VybmVsCg==
