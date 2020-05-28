Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 783251E706D
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 29 May 2020 01:32:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8d0vDzxcwGFIZ5CT1J7dKPfq/jaQtH1RWwbI3hREPeI=; b=o6Y5NTRMsbML1L
	eUWKUKlUN/PucV7/E6c1dVt85MKsYWBkTxl/JfV5i6jJ+Bv5pu5FtprgOQ4t+zAN7EUUMcRmSH1eJ
	SEnM9ME5zvlvnfEl+uLgzs407Gl0+gSO7bBocA6OfwA63HVz/jVfrd/efn/P5Y9y/Zzy9FUxHgGHd
	vbzVJxfTdfmIcH80XOyHKoA1DFmMc4K/O8oPp6gP2Hh+X/Ig+8dYHZwmz/CPTzw7QNe0B2bMNVBfZ
	zb3DTz7A5OUUPdJnAUdj6D0OcFJI7HKcGNN4mhu5UcEWGrRr+xCh26EczvbOjmzUnHTEVDp3lSL1S
	bBJwj9zFNujzsYPhTsWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jeS0Z-0004xL-R0; Thu, 28 May 2020 23:32:19 +0000
Received: from mo-csw1115.securemx.jp ([210.130.202.157]
 helo=mo-csw.securemx.jp)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jeS0P-0004wf-GC
 for linux-arm-kernel@lists.infradead.org; Thu, 28 May 2020 23:32:12 +0000
Received: by mo-csw.securemx.jp (mx-mo-csw1115) id 04SNVu9N031491;
 Fri, 29 May 2020 08:31:57 +0900
X-Iguazu-Qid: 2wHHidEfEA3snzzKSb
X-Iguazu-QSIG: v=2; s=0; t=1590708716; q=2wHHidEfEA3snzzKSb;
 m=jdOY2cj/9f4LKCDjgQbRz6SjJB8M5CBkVnU7PWnvmBY=
Received: from imx12.toshiba.co.jp (imx12.toshiba.co.jp [61.202.160.132])
 by relay.securemx.jp (mx-mr1113) id 04SNVtrx017081;
 Fri, 29 May 2020 08:31:56 +0900
Received: from enc02.toshiba.co.jp ([61.202.160.51])
 by imx12.toshiba.co.jp  with ESMTP id 04SNVtDt017170;
 Fri, 29 May 2020 08:31:55 +0900 (JST)
Received: from hop101.toshiba.co.jp ([133.199.85.107])
 by enc02.toshiba.co.jp  with ESMTP id 04SNVsu5012770;
 Fri, 29 May 2020 08:31:55 +0900
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kgEl75hpsTCHNrrSYOFDHShHHMHB+YUJH9aow0pg2k7tGml47OrUixoypVvSw+60Z9hbMtsx9Vs8kris2Ge5uF4PJQvZTAxIFHF3tUthPT3OCz+wMScPGq8BVsyOaZ8VkfmTWcudLiMSQquhdNr7cMoqgHttS8McPJ2ywVYYs6sNhKsSVdGBH0ohn9Hdc35uZuBiuUgIsoltAaO5Y/hM9g0lXYcZjjmMxcglWj1fLCoHvOry0w11nhd4flu9uBsCESAp4uJoQ5jEnY0VZdaO+TXvPcpShdiRNZxQIAYUJNbkb65R8g9VsTxmOMNDE7OU/A0DyIM4yMfAjMixXf++hg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TuhLjDt3gK0S1um4gxQYm7QVbM84v1Xx8/gH1sF6Yw8=;
 b=JTIwmDEJKkY2yucsJO4l8dZWYIXv/TYUofAU4mRH+tWVwtRhnTJtMgSQoeWJjdCvdwVpe8j4mwGDv4iLFi8H6shCInSQvwmdZjCr6QBsI5OObZgpiuIfGXs3XxMGrFFzCEn0VAl2gx5xk9lUoS9+teqmBSv7o0YJJExEXxngX93UySwFl4XzG7dOR3cOQGNVpPKzABl2uz1qJ+c+uJpEpvNxrcMsGuZuk0wWilYp7buVT2QE5va70Dh3Q//sfxQo/2mhAMM2w0m9XrAqBGtyM9DJSRv49GtWj6P5KMKBnSszMVrWpi7Css8XKqaYxJ3eP4nyGW/e6izdarVn6LLI+Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=toshiba.co.jp; dmarc=pass action=none
 header.from=toshiba.co.jp; dkim=pass header.d=toshiba.co.jp; arc=none
From: <nobuhiro1.iwamatsu@toshiba.co.jp>
To: <will@kernel.org>
Subject: RE: [PATCH/RFC] arm64/kernel: Fix return value when cpu_online()
 fails in __cpu_up()
Thread-Topic: [PATCH/RFC] arm64/kernel: Fix return value when cpu_online()
 fails in __cpu_up()
Thread-Index: AQHWNH+anHX2TlxNhkWMgowGdZ/+aKi9JlgAgAD9mFA=
Date: Thu, 28 May 2020 23:31:38 +0000
X-TSB-HOP: ON
Message-ID: <OSBPR01MB2983F091AD2762D6430F00E6928E0@OSBPR01MB2983.jpnprd01.prod.outlook.com>
References: <20200527233457.2531118-1-nobuhiro1.iwamatsu@toshiba.co.jp>
 <20200528081204.GC22156@willie-the-truck>
In-Reply-To: <20200528081204.GC22156@willie-the-truck>
Accept-Language: ja-JP, en-US
Content-Language: ja-JP
authentication-results: kernel.org; dkim=none (message not signed)
 header.d=none;kernel.org; dmarc=none action=none header.from=toshiba.co.jp;
x-originating-ip: [103.91.184.4]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: a29722e4-209d-411d-800b-08d8035f44c9
x-ms-traffictypediagnostic: OSBPR01MB1525:
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <OSBPR01MB1525223D35DB0BB31C2E3A79928E0@OSBPR01MB1525.jpnprd01.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:6108;
x-forefront-prvs: 0417A3FFD2
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: Hnh7Cr6XuR19hUdyA+wHC4bz9V+MShV645DZwXtUZ95dSJkhdodlXr6flFUhNe8vYaR47mW1s7TsB/rprPO9wLchxIxy6EKrEPKi19a5EB/pMWPY0DufNeWPaQEWbDMoM9eu7u0/NCdxOntWNJ4WEU1tnCJzedQT+Tc0fkOjc6XIsfwtAfu2l1zFjyNI+eLHmw+SmzV6c7tE7El8+JDKNDomFt3TkCfEp9uZe/48xsp/HOHIOcM5zf3rgybln+Ki4iEJOK3j5JIRP6/CD9Q29DYTwNVzvhuHqhFwmWsUgUJ9vArmXSTrBsPhxYz0XenwfJ89nCnFjhlcqiGAxa21zA==
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:OSBPR01MB2983.jpnprd01.prod.outlook.com; PTR:; CAT:NONE;
 SFTY:;
 SFS:(4636009)(39860400002)(136003)(366004)(396003)(346002)(376002)(6506007)(9686003)(86362001)(4326008)(66446008)(316002)(71200400001)(66556008)(26005)(64756008)(5660300002)(107886003)(33656002)(66476007)(66946007)(52536014)(54906003)(8936002)(83380400001)(53546011)(6916009)(55016002)(8676002)(2906002)(7696005)(478600001)(186003)(76116006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata: ruvg7lQMNY5+Dl8UoT5r6SUfoR7aS4P1DjM66J9XJkgDZrqmSxcK5bXq2mUkeZgiMHopx3yXMiQO6YBpb7ktLnKkAXPDWgF2JlAqqEnwFcUsRIVb2GOp5d946eJh73HKeAa9kXH2a3iiupcxUoHhq86uYldL1t7B4Su+h13gnTF+o4Y0ecPD84C/XYFmXmB9TpMb/bXk6W12t/ZfPC4VFAVpxPd/E8T/LhasVwOL9Z1WC8HLiWsFddPlTYeTWap66ZZK9xaB+Y09oKiZQ+B7HNa+8feZhyvQ5loFbJ59Fe355+fMQlAwkIcjXylxgvfOvsX05GBlFBsIQrKFwDJNjCLkuzH+2GQUZWoz7Vad6tO/YK4eCtPCJJe5ZzYgf9fJkpqFWgV4ojdN24I1kGJiNeSRsGNSgw7Rr9HKb6h4cBpTRyczXVqlqXZ/EsBsPrgeC+SRjjw09cDOPrVDReRjHD6vdSSqAjqzrpWr69Jwd6I=
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-Network-Message-Id: a29722e4-209d-411d-800b-08d8035f44c9
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 May 2020 23:31:38.2598 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: f109924e-fb71-4ba0-b2cc-65dcdf6fbe4f
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: iR5S7aMPFxkL7jUndV9u3GP59i1e+XAGBON1RiN50Vwup67ceGpWof+8hG25EkiPw3mND2iegstcXsoPrguL8iljBFoMpDwjSa6RgvCYHs7fu7eRlofai9tVDb9l8O7M
X-MS-Exchange-Transport-CrossTenantHeadersStamped: OSBPR01MB1525
X-OriginatorOrg: toshiba.co.jp
MSSCP.TransferMailToMossAgent: 103
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200528_163209_815082_94806673 
X-CRM114-Status: GOOD (  22.77  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [210.130.202.157 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [210.130.202.157 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
Cc: mark.rutland@arm.com, catalin.marinas@arm.com, gshan@redhat.com,
 yuji2.ishikawa@toshiba.co.jp, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksDQoNClRoYW5rcyBmb3IgeW91ciByZXZpZXcuDQpUaGUgcGF0Y2ggaGFzIGFscmVhZHkgYmVl
biBhcHBsaWVkLi4uDQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogV2ls
bCBEZWFjb24gW21haWx0bzp3aWxsQGtlcm5lbC5vcmddDQo+IFNlbnQ6IFRodXJzZGF5LCBNYXkg
MjgsIDIwMjAgNToxMiBQTQ0KPiBUbzogaXdhbWF0c3Ugbm9idWhpcm8o5bKp5p2+IOS/oea0iyDi
lqHvvLPvvLfvvKPil6/vvKHvvKPvvLQpIDxub2J1aGlybzEuaXdhbWF0c3VAdG9zaGliYS5jby5q
cD4NCj4gQ2M6IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZzsgTWFyayBSdXRs
YW5kIDxtYXJrLnJ1dGxhbmRAYXJtLmNvbT47IGNhdGFsaW4ubWFyaW5hc0Bhcm0uY29tOw0KPiBT
aWduZWQtb2ZmLWJ5IDogR2F2aW4gU2hhbiA8Z3NoYW5AcmVkaGF0LmNvbT47IGlzaGlrYXdhIHl1
amko55+z5bedIOaCoOWPuCDvvLTvvKTvvLPvvKMg4peL77yk77yz77yy77yj4pah77yl77y06ZaL
4peL77yl77y077yTKQ0KPiA8eXVqaTIuaXNoaWthd2FAdG9zaGliYS5jby5qcD4NCj4gU3ViamVj
dDogUmU6IFtQQVRDSC9SRkNdIGFybTY0L2tlcm5lbDogRml4IHJldHVybiB2YWx1ZSB3aGVuIGNw
dV9vbmxpbmUoKSBmYWlscyBpbiBfX2NwdV91cCgpDQo+IA0KPiBPbiBUaHUsIE1heSAyOCwgMjAy
MCBhdCAwODozNDo1N0FNICswOTAwLCBOb2J1aGlybyBJd2FtYXRzdSB3cm90ZToNCj4gPiBJZiBi
b290X3NlY29uZGFyeSgpIHdhcyBzdWNjZXNzZnVsLCBhbmQgY3B1X29ubGluZSgpIHdhcyBhbiBl
cnJvciBpbg0KPiA+IF9fY3B1X3VwKCksIC1FSU8gd2FzIHJldHVybmVkLCBidXQgMCBpcyByZXR1
cm5lZCBieSBjb21taXQgZDIyYjExNWNiZmJiNw0KPiA+ICgiYXJtNjQva2VybmVsOiBTaW1wbGlm
eSBfX2NwdV91cCgpIGJ5IGJhaWxpbmcgb3V0IGVhcmx5IikuDQo+ID4gVGhlcmVmb3JlLCBicmlu
Z3VwX3dhaXRfZm9yX2FwKCkgY2F1c2VzIHRoZSBwcmltYXJ5IGNvcmUgdG8gd2FpdCBmb3IgYQ0K
PiA+IGxvbmcgdGltZSwgd2hpY2ggbWF5IGNhdXNlIGJvb3QgZmFpbHVyZS4NCj4gPiBUaGlzIGNv
bW1pdCBzZXRzIC1FSU8gdG8gcmV0dXJuIGNvZGUgdW5kZXIgdGhlIHNhbWUgY29uZGl0aW9ucy4N
Cj4gPg0KPiA+IEZpeGVzOiBkMjJiMTE1Y2JmYmI3ICgiYXJtNjQva2VybmVsOiBTaW1wbGlmeSBf
X2NwdV91cCgpIGJ5IGJhaWxpbmcgb3V0IGVhcmx5IikNCj4gPiBDQzogU2lnbmVkLW9mZi1ieTog
R2F2aW4gU2hhbiA8Z3NoYW5AcmVkaGF0LmNvbT4NCj4gPiBDQzogQ2F0YWxpbiBNYXJpbmFzIDxj
YXRhbGluLm1hcmluYXNAYXJtLmNvbT4NCj4gPiBDQzogTWFyayBSdXRsYW5kIDxtYXJrLnJ1dGxh
bmRAYXJtLmNvbT4NCj4gPiBUZXN0ZWQtYnk6IFl1amkgSXNoaWthd2EgPHl1amkyLmlzaGlrYXdh
QHRvc2hpYmEuY28uanA+DQo+ID4gU2lnbmVkLW9mZi1ieTogTm9idWhpcm8gSXdhbWF0c3UgPG5v
YnVoaXJvMS5pd2FtYXRzdUB0b3NoaWJhLmNvLmpwPg0KPiA+IC0tLQ0KPiA+ICBhcmNoL2FybTY0
L2tlcm5lbC9zbXAuYyB8IDEgKw0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgMSBpbnNlcnRpb24oKykN
Cj4gPg0KPiA+IGRpZmYgLS1naXQgYS9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYyBiL2FyY2gvYXJt
NjQva2VybmVsL3NtcC5jDQo+ID4gaW5kZXggMDYxZjYwZmU0NTJmNy4uZWE2Nzc2ODBlNDI3NyAx
MDA2NDQNCj4gPiAtLS0gYS9hcmNoL2FybTY0L2tlcm5lbC9zbXAuYw0KPiA+ICsrKyBiL2FyY2gv
YXJtNjQva2VybmVsL3NtcC5jDQo+ID4gQEAgLTEzNyw2ICsxMzcsNyBAQCBpbnQgX19jcHVfdXAo
dW5zaWduZWQgaW50IGNwdSwgc3RydWN0IHRhc2tfc3RydWN0ICppZGxlKQ0KPiA+ICAJaWYgKGNw
dV9vbmxpbmUoY3B1KSkNCj4gPiAgCQlyZXR1cm4gMDsNCj4gPg0KPiA+ICsJcmV0ID0gLUVJTzsN
Cj4gPiAgCXByX2NyaXQoIkNQVSV1OiBmYWlsZWQgdG8gY29tZSBvbmxpbmVcbiIsIGNwdSk7DQo+
ID4gIAlzZWNvbmRhcnlfZGF0YS50YXNrID0gTlVMTDsNCj4gPiAgCXNlY29uZGFyeV9kYXRhLnN0
YWNrID0gTlVMTDsNCj4gDQo+IFRoaXMgYXBwZWFycyB0byByZXN0b3JlIHRoZSBvbGQgYmVoYXZp
b3VyLCBzbyBsb29rcyBnb29kIHRvIG1lLiBJJ2QgcHJvYmFibHkNCj4ganVzdCByZXBsYWNlIHRo
ZSBmaW5hbCAncmV0dXJuIHJldCcgd2l0aCAncmV0dXJuIC1FSU8nIHNpbmNlIGl0J3MgbmV2ZXIN
Cj4gZ29pbmcgdG8gYmUgYW55dGhpbmcgZWxzZS4NCg0KWWVhaCwgeW91ciBzdWdnZXN0aW9uIGlz
IGJldHRlci4NCg0KPiANCj4gQWxzbyAtLSBhcmVuJ3QgeW91IGluIGEgcHJldHR5IHNlcmlvdXMg
bWVzcyBpZiB0aGUgQ1BVIHN0YXJ0cyBidXQgZG9lc24ndA0KPiBjb21lIG9ubGluZT8gSSB0aGlu
ayB0aGUgcGF0Y2ggaXMgZmluZSwgYnV0IHRoaXMgcmVhbGx5IHNob3VsZG4ndCBoYXBwZW4sDQo+
IHJpZ2h0PyBDb3VsZCB5b3Ugc2hhcmUgeW91ciBkbWVzZz8NCj4NCg0KSSBwYXN0ZSB0aGUgZG1l
c2cgYmVsb3cuIEl0IHN0b3BzIHdpdGggInByaW50azogYm9vdGNvbnNvbGUgW3BsMTFdIGRpc2Fi
bGVkIiBpbiBteSBlbnZpcm9ubWVudC4NCkFmdGVyIGNoZWNraW5nIHRoZSBiaXNlY3QgYW5kIHRo
ZSBjb2RlLCBJIHJlYWxpemVkIHRoYXQgdGhlcmUgd2FzIGEgcHJvYmxlbSB3aXRoIHRoZSB0YXJn
ZXQgY29tbWl0Lg0KQW5kIFNvQyBlbmFibGUtbWV0aG9kIHRoYXQgY2F1c2VzIHRoZSBwcm9ibGVt
IHVzZXMgc3Bpbi10YWJsZSBpbnN0ZWFkIG9mIFBDU0kuDQoNCi0tLS0NClN0YXJ0aW5nIGtlcm5l
bCAuLi4NCg0KQm9vdGluZyBMaW51eCBvbiBwaHlzaWNhbCBDUFUgMHgwMDAwMDAwMDAwIFsweDQx
MGZkMDM0XQ0KTGludXggdmVyc2lvbiA1LjcuMC1yYzctMDAwMzItZzU2NWU0ZTk3NmQ2ZSAoaXdh
bWF0c3VAcnl6ZW43KSAoZ2NjIHZlcnNpb24gOC4zLjAgKERlYmlhbiA4LjMuMC0yMSksIEdOVSBs
ZCAoR05VIEJpbnV0aWxzIGZvciBEZWJpYW4pIDIuMzQpICM4IFNNUCBQUkVFTVBUIFRodSBNYXkg
MjggMjA6NDg6NTggSlNUIDIwMjANCk1hY2hpbmUgbW9kZWw6IFRvc2hpYmEgVE1QVjc3MDAgRVZC
DQplYXJseWNvbjogcGwxMSBhdCBNTUlPIDB4MDAwMDAwMDAyODIwMDAwMCAob3B0aW9ucyAnJykN
CnByaW50azogYm9vdGNvbnNvbGUgW3BsMTFdIGVuYWJsZWQNCmNtYTogUmVzZXJ2ZWQgMTYgTWlC
IGF0IDB4MDAwMDAwMDBiNzAwMDAwMA0KTlVNQTogTm8gTlVNQSBjb25maWd1cmF0aW9uIGZvdW5k
DQpOVU1BOiBGYWtpbmcgYSBub2RlIGF0IFttZW0gMHgwMDAwMDAwMDgwMDAwMDAwLTB4MDAwMDAw
MDBiN2ZmZmZmZl0NCk5VTUE6IE5PREVfREFUQSBbbWVtIDB4YjZlMzQxMDAtMHhiNmUzNWZmZl0N
ClpvbmUgcmFuZ2VzOg0KICBETUEgICAgICBbbWVtIDB4MDAwMDAwMDA4MDAwMDAwMC0weDAwMDAw
MDAwYjdmZmZmZmZdDQogIERNQTMyICAgIGVtcHR5DQogIE5vcm1hbCAgIGVtcHR5DQpNb3ZhYmxl
IHpvbmUgc3RhcnQgZm9yIGVhY2ggbm9kZQ0KRWFybHkgbWVtb3J5IG5vZGUgcmFuZ2VzDQogIG5v
ZGUgICAwOiBbbWVtIDB4MDAwMDAwMDA4MDAwMDAwMC0weDAwMDAwMDAwYjdmZmZmZmZdDQpJbml0
bWVtIHNldHVwIG5vZGUgMCBbbWVtIDB4MDAwMDAwMDA4MDAwMDAwMC0weDAwMDAwMDAwYjdmZmZm
ZmZdDQpwZXJjcHU6IEVtYmVkZGVkIDIxIHBhZ2VzL2NwdSBzNDYxNjggcjgxOTIgZDMxNjU2IHU4
NjAxNg0KRGV0ZWN0ZWQgVklQVCBJLWNhY2hlIG9uIENQVTANCkNQVSBmZWF0dXJlczogZGV0ZWN0
ZWQ6IEFSTSBlcnJhdHVtIDg0NTcxOQ0KQnVpbHQgMSB6b25lbGlzdHMsIG1vYmlsaXR5IGdyb3Vw
aW5nIG9uLiAgVG90YWwgcGFnZXM6IDIyNTc5Mg0KUG9saWN5IHpvbmU6IERNQQ0KS2VybmVsIGNv
bW1hbmQgbGluZTogZWFybHljb249cGwwMTEsMHgyODIwMDAwMA0KRGVudHJ5IGNhY2hlIGhhc2gg
dGFibGUgZW50cmllczogMTMxMDcyIChvcmRlcjogOCwgMTA0ODU3NiBieXRlcywgbGluZWFyKQ0K
SW5vZGUtY2FjaGUgaGFzaCB0YWJsZSBlbnRyaWVzOiA2NTUzNiAob3JkZXI6IDcsIDUyNDI4OCBi
eXRlcywgbGluZWFyKQ0KbWVtIGF1dG8taW5pdDogc3RhY2s6b2ZmLCBoZWFwIGFsbG9jOm9mZiwg
aGVhcCBmcmVlOm9mZg0KTWVtb3J5OiA3NjU2MDBLLzkxNzUwNEsgYXZhaWxhYmxlICg0NjcwSyBr
ZXJuZWwgY29kZSwgMzE4SyByd2RhdGEsIDEyMzZLIHJvZGF0YSwgMzIwSyBpbml0LCAzMjdLIGJz
cywgMTM1NTIwSyByZXNlcnZlZCwgMTYzODRLIGNtYS1yZXNlcnZlZCkNClNMVUI6IEhXYWxpZ249
NjQsIE9yZGVyPTAtMywgTWluT2JqZWN0cz0wLCBDUFVzPTgsIE5vZGVzPTENCnJjdTogUHJlZW1w
dGlibGUgaGllcmFyY2hpY2FsIFJDVSBpbXBsZW1lbnRhdGlvbi4NCnJjdTogICAgUkNVIHJlc3Ry
aWN0aW5nIENQVXMgZnJvbSBOUl9DUFVTPTI1NiB0byBucl9jcHVfaWRzPTguDQogICAgICAgIFRh
c2tzIFJDVSBlbmFibGVkLg0KcmN1OiBSQ1UgY2FsY3VsYXRlZCB2YWx1ZSBvZiBzY2hlZHVsZXIt
ZW5saXN0bWVudCBkZWxheSBpcyAyNSBqaWZmaWVzLg0KcmN1OiBBZGp1c3RpbmcgZ2VvbWV0cnkg
Zm9yIHJjdV9mYW5vdXRfbGVhZj0xNiwgbnJfY3B1X2lkcz04DQpOUl9JUlFTOiA2NCwgbnJfaXJx
czogNjQsIHByZWFsbG9jYXRlZCBpcnFzOiAwDQpHSUM6IFVzaW5nIHNwbGl0IEVPSS9EZWFjdGl2
YXRlIG1vZGUNCnJhbmRvbTogZ2V0X3JhbmRvbV9ieXRlcyBjYWxsZWQgZnJvbSBzdGFydF9rZXJu
ZWztjJ3vk6PvtLHuh54gd2l0aCBjcm5nX2luaXQ9MA0KYXJjaF90aW1lcjogY3AxNSB0aW1lcihz
KSBydW5uaW5nIGF0IDE1MC4wME1IeiAocGh5cykuDQpjbG9ja3NvdXJjZTogYXJjaF9zeXNfY291
bnRlcjogbWFzazogMHhmZmZmZmZmZmZmZmZmZiBtYXhfY3ljbGVzOiAweDIyOTgzNzViZDAsIG1h
eF9pZGxlX25zOiA0NDA3OTUyMDgyNjcgbnMNCnNjaGVkX2Nsb2NrOiA1NiBiaXRzIGF0IDE1ME1I
eiwgcmVzb2x1dGlvbiA2bnMsIHdyYXBzIGV2ZXJ5IDIxOTkwMjMyNTU1NTFucw0KQ29uc29sZTog
Y29sb3VyIGR1bW15IGRldmljZSA4MHgyNQ0KcHJpbnRrOiBjb25zb2xlIFt0dHkwXSBlbmFibGVk
DQpwcmludGs6IGJvb3Rjb25zb2xlIFtwbDExXSBkaXNhYmxlZA0KLS0tDQogDQo+IEVpdGhlciB3
YXk6DQo+IA0KPiBBY2tlZC1ieTogV2lsbCBEZWFjb24gPHdpbGxAa2VybmVsLm9yZz4NCj4gDQpU
aGFua3MhDQoNCj4gQ2F0YWxpbiAtLSBkbyB5b3Ugd2FudCB0byB0YWtlIHRoaXMgKHRoZSBwcm9i
bGVtYXRpYyBjaGFuZ2Ugd2FzIGludHJvZHVjZWQNCj4gZHVyaW5nIHRoZSBsYXN0IG1lcmdlIHdp
bmRvdyBhZmFpY3QpPw0KPiANCj4gV2lsbA0KDQoNCkJlc3QgcmVnYXJkcywNCiAgTm9idWhpcm8N
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
