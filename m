Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E1011C8412
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  7 May 2020 09:59:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bVNcE3AQqwMGVf+ePFaC8Y+AGXyF86ibdg+f6VxSW3c=; b=uL1Jw/mkJz4tRj
	Ooc6nfJNT4r4uLvg1IaMtm6SupP2crJ1xk/dF0rYeLn0Uss0QpU2R904t0ukXJ9JL8IBb1Eulkjur
	ZEHhk0vRowWbnwBpHX2AqGH5ECFqN2Gih/z/5PDSSjL9qnoAWSW13NGtz4OnhGAsYpuVFEbam34zY
	PuY5TlLmcHGaTSrxBBjlxJilFcblW/ElOnjSqBwfs+sbCLtCVpGsknuCmhJlgAXVMoqUAo0MUXIQt
	juKqCq/m3UgcrgIqMbmmuu0P7O/rkoQKsoV0DsUwqjGi5GOPUHMOgvD3yMp2YvQZGuksZz5tyOuyk
	ydYYSR2pG/okWhuye++Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWbRM-00032q-26; Thu, 07 May 2020 07:59:32 +0000
Received: from mail-eopbgr40046.outbound.protection.outlook.com ([40.107.4.46]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWbRF-00031q-1Z
 for linux-arm-kernel@lists.infradead.org; Thu, 07 May 2020 07:59:26 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=G9TDtcdnMgyHYNPgRvBt378ri8LSOJKelLECLKKXd+KXrn8ua78rsWVijVcko4PaCDE7qdutjM2R1fuktLA61GIh7NtPNlqViQkRE8jnuxsw2aYOrvkh/jVjpw534SiIeLZKlE/K8MMkCm9iHZZEHmhv3QBuDb7vNE/EzwtHbxjRR9LQXjd3F+zYUqpERnSO5W6mrEtIJnR9M1LH8yQEOflZksOAG0XVPfonLFPAhfFLnrJxoSUE5RYUjdX/mszNdUzA8hbXeE7zsR1k9j2HFxmGU6dh8NdouciN74YnJq5u1fHKsGckUtRfjQmSqZ7cdGYG0bUB3jxI7suXOywvXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jaOrgQm0xXmvTxz58JiLZJpIQMN6Zz7unOrhYkVwjSM=;
 b=TQL9md5Iowl/aPPg605eSN/vBUa8soQvKpdbjOV4rk4j94wRfEfYFkilEqb+AnGCbWqjdauK+DzxsNtDjMfKrWL6UXJxIqIx3RJHujCt2O9uZMAqcB0t0jb2FxBRbTNDo2i1DQrGNs1yUK9GNPyyplznATgQ2XxnhDkvx1kNF/AsSKMwCjr1Y/iSnNTrEzaHvQnre2GsrYKP+PauZVh0hbcIMrdEst7JCqtqNstO05pHDK8EsTVTl35x2Qn5SAnr+MxskLn+T1CBPdmm/phEIDWBhKC9B33UyLBvOEtWRq+IoN83a7mQC/js+LzrjUmH7apqNbxhH6K19MFbUoWdew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jaOrgQm0xXmvTxz58JiLZJpIQMN6Zz7unOrhYkVwjSM=;
 b=ZrsDrHZG/YaskWWrE5VzNaAi7tDHDdgUCHfRMRwM3GyGgJu1KknLdUTDYmldD1AfrNnw/veivUQLRaHbw2S8Fe9tQn+5qM9Xbibze6VVwUqq7SS83sJgAlfOv+G94SM21a2BqHjt9CbnS4584+QrNxMEQ4pwCmFuqz2pS5RHqyM=
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com (2603:10a6:4:a1::14)
 by DB6PR0402MB2693.eurprd04.prod.outlook.com (2603:10a6:4:96::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.2958.21; Thu, 7 May
 2020 07:59:16 +0000
Received: from DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871]) by DB6PR0402MB2760.eurprd04.prod.outlook.com
 ([fe80::d17b:d767:19c3:b871%6]) with mapi id 15.20.2979.028; Thu, 7 May 2020
 07:59:16 +0000
From: Peng Fan <peng.fan@nxp.com>
To: Aisheng Dong <aisheng.dong@nxp.com>, "shawnguo@kernel.org"
 <shawnguo@kernel.org>, "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
 Leonard Crestez <leonard.crestez@nxp.com>, Abel Vesa <abel.vesa@nxp.com>
Subject: RE: [PATCH V3 10/10] clk: imx8mp: mark memrepair clock as critical
Thread-Topic: [PATCH V3 10/10] clk: imx8mp: mark memrepair clock as critical
Thread-Index: AQHWJDWgVEWA8do9pU6mEfVx7buCsaicMdIAgAAKi/A=
Date: Thu, 7 May 2020 07:59:16 +0000
Message-ID: <DB6PR0402MB27605B486262D073D2D1C87E88A50@DB6PR0402MB2760.eurprd04.prod.outlook.com>
References: <1588830979-11586-1-git-send-email-peng.fan@nxp.com>
 <1588830979-11586-11-git-send-email-peng.fan@nxp.com>
 <AM6PR04MB49662BE27D52DC539B615B9180A50@AM6PR04MB4966.eurprd04.prod.outlook.com>
In-Reply-To: <AM6PR04MB49662BE27D52DC539B615B9180A50@AM6PR04MB4966.eurprd04.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: nxp.com; dkim=none (message not signed)
 header.d=none;nxp.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [119.31.174.71]
x-ms-publictraffictype: Email
x-ms-office365-filtering-ht: Tenant
x-ms-office365-filtering-correlation-id: 719ae3ea-319e-4141-9018-08d7f25c8a55
x-ms-traffictypediagnostic: DB6PR0402MB2693:|DB6PR0402MB2693:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <DB6PR0402MB2693AD3A29AF329392EE466088A50@DB6PR0402MB2693.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:8882;
x-forefront-prvs: 03965EFC76
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: +1ke3gkCDRl/4acNVhab5/dyPQzMUM4oGvFdDSekH7GrpGCJXVIOLiXMFffEMb+rsKJqY65uh310PnYGE+wsRO0nWaQFLprM8ux76rKYHWiAa0DSBypPcD4O5ddltP7UiCwg4M+zUZN/srQheIPZqGfG3t0nT9oc5nKeBMRzrhjH6H6QaGCDsgKh1r/QZurelhZck0EqTT1TK73NgCQhZIZ49JRw6oraDM0WOLLGb+wmqu9Zk8nmewu+4/kApHF+vkudfL+X1ToTWYtwq9/A2WW6iYHfglGSGt3BDu74S/6luvHc2uRBW9TdiO/+0xBxQdFpenUzTOoVzyMnyYeMi0R4AhEYujQjOrDf/50Qk+fiwK40ly2if/imWqocgtNLHUiWIccmRtfwnWpaVhGwP+23I+V7nkboClXy/k2FUYHUpbbChtihMPmXr/91yxoW2DD/RZxUmr6O0whkRJcOxptrw15UUtJZhKyZvE9xnKP1s6hPkAvzYeOhmfKN2RpPrWrly6tTm/U1nBdi1DIM3FVK7gAgLpFtJ8RdhWbrDGS0dJP5xAYaBzoCpHYASVsL
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB6PR0402MB2760.eurprd04.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(376002)(346002)(136003)(366004)(39860400002)(396003)(33430700001)(8676002)(6636002)(8936002)(7696005)(66556008)(71200400001)(66446008)(64756008)(86362001)(66476007)(83290400001)(83310400001)(83300400001)(2906002)(83320400001)(33440700001)(83280400001)(76116006)(5660300002)(66946007)(478600001)(4326008)(52536014)(186003)(26005)(6506007)(316002)(33656002)(44832011)(54906003)(110136005)(55016002)(9686003)(32563001);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: r6DAEZKgoJrvDx5g1j7zDQxcxaG8YBVbyjq2OYnN+9eNNu4hsKbjC8vrML3xDp4TvFGHkjKuVSsLDBAF5h3dnUgzHyEy5xVJU1HFN+OWComrygpc/+rmi+hhq3pxqGztqG6wYfAj/V8EJJ28hDPXwSNmrYiMVcmsmtMmmE4wLz4pIjWDUsGWy/1JBwgeqrS39zZ4964bwnvR6wICF8jOGlquPMBkZmAfX4zltApgD7CE6RRNrI3XxQMI9XS9QBzStS1/0xXyXKd7Lq3BNWumfnEzXpidi/XgVQ+T273WvQqKFa2h1m0I5u8fa+5wnulRaBqgFD0zPnkgC4JGG9FwHUv9cRIkKZUoXXUyciMIlJjv+XnyQtLAI6NvTA7DxYdQr1QnjhPmHsZecbm0iQPk4FgeJXN2BUP4628WAI/Hi234CE0r1zJQfTDuxrapDncgFAtVLoXe7oi/9LlJXOKbhFdk/zycZ6Rj4JRomo+wafdQtXkm4qCpfHPYkM50kwJDXlCfZtPjUbguhJcLVVyYcJfX/anAScFi2oOpfeCdUbq9/rQ2iucmxc3BF2ilJitjXYrPg6KrFau7BZiFYmh58qxE/d166gBzlFbINZWHAIPRud8cHt/B5LCiX5Iq5JRj5bWulsW862BCyDwhLJ6zxOfI+yMOD5FHTb5t65kOh5o6m0E2QRvv/+jgEoh4Xm5M30LHY+/yOMyVCGcpJmHQVOuG0bHIN3ExzR1Bt7uGl3/4HzBCQb5jpaRI9ozgWTj3HODCccpeGJi0gPVSgHdHXKjuR8gUhS6ykp3McZOOd/I=
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 719ae3ea-319e-4141-9018-08d7f25c8a55
X-MS-Exchange-CrossTenant-originalarrivaltime: 07 May 2020 07:59:16.5761 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 2uoR4gVeeAf3m6G5egvIHK7FE+mGjiDhXT7IVMfpneFRQU4+0cGA/MNxZ4sP7mSvaPDf3jc+FME39l7yPBz96A==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0402MB2693
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200507_005925_167102_67DD935A 
X-CRM114-Status: GOOD (  15.06  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [40.107.4.46 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [40.107.4.46 listed in wl.mailspike.net]
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Anson Huang <anson.huang@nxp.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>,
 "kernel@pengutronix.de" <kernel@pengutronix.de>,
 "festevam@gmail.com" <festevam@gmail.com>,
 "linux-clk@vger.kernel.org" <linux-clk@vger.kernel.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiBTdWJqZWN0OiBSRTogW1BBVENIIFYzIDEwLzEwXSBjbGs6IGlteDhtcDogbWFyayBtZW1yZXBh
aXIgY2xvY2sgYXMgY3JpdGljYWwNCj4gDQo+ID4gRnJvbTogUGVuZyBGYW4gPHBlbmcuZmFuQG54
cC5jb20+DQo+ID4gU2VudDogVGh1cnNkYXksIE1heSA3LCAyMDIwIDE6NTYgUE0NCj4gPg0KPiA+
IElmIG1lbXJlcGFpciByb290IGNsb2NrIGluIENDTSBpcyBkaXNhYmxlZCwgdGhlIG1lbW9yeSBy
ZXBhaXIgbG9naWMgaW4NCj4gPiBIRE1JTUlYIGNhbuKAmXQgd29yay4gU28gbGV0J3MgbWFyayBp
dCBhcyBjcml0aWNhbCBjbG9jay4NCj4gDQo+IEEgc21hbGwgcXVlc3Rpb24gaGVyZToNCj4gSXMg
dGhpcyBjbG9jayBjcml0aWNhbCBmb3IgdGhlIHdob2xlIHN5c3RlbSBvciBvbmx5IGZvciBIRE1J
TUlYPw0KPiBXaGF0IGlmIEhETUlJWCBpcyBub3QgZW5hYmxlZD8NCg0KSXQgaXMgbm90IG9ubHkg
Zm9yIEhETUksIGJ1dCBmb3IgTGludXggcnVudGltZSwgaXQgb25seSBhZmZlY3QgSERNSSBmb3Ig
bm93DQpwZXIgbXkgdW5kZXJzdGFuZGluZywgc28NCkxldCdzIGRyb3AgdGhpcyBwYXRjaCBmcm9t
IHRoaXMgcGF0Y2hzZXQgZm9yIG5vdy4NCg0KU2hhd24sDQogIFNpbmNlIGp1c3QgZHJvcCB0aGlz
IHBhdGNoIDEwIGZyb20gdjMsIHRoZXJlIGlzIG5vIG5lZWQgZm9yIG1lIHRvIHNlbmQgdjQ/DQoN
ClRoYW5rcywNClBlbmcuDQoNCj4gDQo+IFJlZ2FyZHMNCj4gQWlzaGVuZw0KPiANCj4gPg0KPiA+
IFJldmlld2VkLWJ5OiBMZW9uYXJkIENyZXN0ZXogPGxlb25hcmQuY3Jlc3RlekBueHAuY29tPg0K
PiA+IFNpZ25lZC1vZmYtYnk6IFBlbmcgRmFuIDxwZW5nLmZhbkBueHAuY29tPg0KPiA+IC0tLQ0K
PiA+ICBkcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jIHwgMiArLQ0KPiA+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2Nsay9pbXgvY2xrLWlteDhtcC5jDQo+ID4gYi9kcml2ZXJzL2Nsay9pbXgvY2xr
LWlteDhtcC5jIGluZGV4IGI0ZDlkYjlkNWJmMS4uYTdjNTlkN2E0MGRlDQo+IDEwMDY0NA0KPiA+
IC0tLSBhL2RyaXZlcnMvY2xrL2lteC9jbGstaW14OG1wLmMNCj4gPiArKysgYi9kcml2ZXJzL2Ns
ay9pbXgvY2xrLWlteDhtcC5jDQo+ID4gQEAgLTU5MCw3ICs1OTAsNyBAQCBzdGF0aWMgaW50IGlt
eDhtcF9jbG9ja3NfcHJvYmUoc3RydWN0DQo+ID4gcGxhdGZvcm1fZGV2aWNlDQo+ID4gKnBkZXYp
DQo+ID4gIAlod3NbSU1YOE1QX0NMS19WUFVfRzJdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgi
dnB1X2cyIiwNCj4gPiBpbXg4bXBfdnB1X2cyX3NlbHMsIGNjbV9iYXNlICsgMHhhMTgwKTsNCj4g
PiAgCWh3c1tJTVg4TVBfQ0xLX0NBTjFdID0gaW14OG1fY2xrX2h3X2NvbXBvc2l0ZSgiY2FuMSIs
DQo+ID4gaW14OG1wX2NhbjFfc2VscywgY2NtX2Jhc2UgKyAweGEyMDApOw0KPiA+ICAJaHdzW0lN
WDhNUF9DTEtfQ0FOMl0gPSBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJjYW4yIiwNCj4gPiBpbXg4
bXBfY2FuMl9zZWxzLCBjY21fYmFzZSArIDB4YTI4MCk7DQo+ID4gLQlod3NbSU1YOE1QX0NMS19N
RU1SRVBBSVJdID0NCj4gPiBpbXg4bV9jbGtfaHdfY29tcG9zaXRlKCJtZW1yZXBhaXIiLCBpbXg4
bXBfbWVtcmVwYWlyX3NlbHMsDQo+IGNjbV9iYXNlICsNCj4gPiAweGEzMDApOw0KPiA+ICsJaHdz
W0lNWDhNUF9DTEtfTUVNUkVQQUlSXSA9DQo+ID4gK2lteDhtX2Nsa19od19jb21wb3NpdGVfY3Jp
dGljYWwoIm1lbXJlcGFpciIsDQo+IGlteDhtcF9tZW1yZXBhaXJfc2VscywNCj4gPiArY2NtX2Jh
c2UgKyAweGEzMDApOw0KPiA+ICAJaHdzW0lNWDhNUF9DTEtfUENJRV9QSFldID0gaW14OG1fY2xr
X2h3X2NvbXBvc2l0ZSgicGNpZV9waHkiLA0KPiA+IGlteDhtcF9wY2llX3BoeV9zZWxzLCBjY21f
YmFzZSArIDB4YTM4MCk7DQo+ID4gIAlod3NbSU1YOE1QX0NMS19QQ0lFX0FVWF0gPSBpbXg4bV9j
bGtfaHdfY29tcG9zaXRlKCJwY2llX2F1eCIsDQo+ID4gaW14OG1wX3BjaWVfYXV4X3NlbHMsIGNj
bV9iYXNlICsgMHhhNDAwKTsNCj4gPiAgCWh3c1tJTVg4TVBfQ0xLX0kyQzVdID0gaW14OG1fY2xr
X2h3X2NvbXBvc2l0ZSgiaTJjNSIsDQo+ID4gaW14OG1wX2kyYzVfc2VscywgY2NtX2Jhc2UgKyAw
eGE0ODApOw0KPiA+IC0tDQo+ID4gMi4xNi40DQoNCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
