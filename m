Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 843AF9B6AE
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 21:12:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=vcSQ+fgDDGHUTlu8rfnLdu0ymDO4iQgZb/Cr9EIACJI=; b=DWvn39/j0h1RUK
	KKviXy2XAUSk0ljEkAgm5PNsEv4OqMnP4NielfTib7RiAVeaACqIP17xIfJl58IMrnQ8yu1BVZSK5
	ffmert86vWtM8eelLjRs6jkgPnLcZhP8ojgl6/0mlCWC4TNnVxfR9uCyBwEWcBlKJQrG2mVpkV7WQ
	Q7BMAPFy2+9wr9m/QqnRrT1k3ldHE70hMdgKZwisFBVhVaalUj9yNxn4GDzI6vJG5h5VJZ3o3A0vW
	qL1jZnb2M3qtJSMqz9Uxv5L9xP7JtBMTpaydVPqc8EHviq0lMPI2PaakcSZ9ak90+a/eeRM0oEvfQ
	eDxAbJuGxLVOT2YqmI4A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1EyN-00042L-Pg; Fri, 23 Aug 2019 19:11:43 +0000
Received: from mail-ve1eur02on0618.outbound.protection.outlook.com
 ([2a01:111:f400:fe06::618]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1EyF-00041M-HX
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 19:11:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=As2xMRq4glTIu/8FmqipYrzou4bO6ippOcQCxutWe9V/4yBwlMLF39ZTpx2KkOEc/A8MDfv7jnAYtr4v7F5TDLoNJjOIP43zv0X7ogn8T9bL6MZRCMUOWGD2XLSnYisKYFxsjfinSnOWF0Som+f6Vu9ujlUXjdxBHr72k3y82X66/sT5XvmFcf5VZRcBAt4OxWWbliEA8wA1ygyumJ3X32Andyuq/YTp6tdj1nqGm70+GjQeZfW6EPMpAmIWMw/FlUGSwg1gv5fVtav1M2ayG4ha9mgwVYeUN5FbqdDFKJvGgwLkdNVhmWtBp1rZGusPaQCirwZhv7h5RGD5x7Ye/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jymAq2v/YzYBaJb8qC1WGpbL+wvEGUPZTdLCiVQmFfk=;
 b=Bn+kZdiqrlcVfVjk63K7xO0GUGZ+Aj/0bpPX88CRsWRQsXIO3dOdZp/Z6/Aw46s2059yRH3cX3qS4uHiB3Xz93bq2sQY078IkY6+26B/MLMCNASrcYKm4Fq2+bWqsWMY6u7H6pWoudX70GhH1HgLwOUGNLSsjKRLg/5dt0dLZNj0cS7uT2Q1hNY8xpcBQAX3EUrfIzCpYj5hGopAIRg2PGphoxtCg8Muymzr6cX6BB/BIfpVZe81wPp7SnJwVKGg9r36E4pMgcRwHWRQYyYiZM0eivfikuoMpjKW0TWv563huiJkTC8tvZYjoPnpYcBKGCWEnpgqdnwvMUok1ygmzA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=nxp.com; dmarc=pass action=none header.from=nxp.com; dkim=pass
 header.d=nxp.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=nxp.com; s=selector2; 
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jymAq2v/YzYBaJb8qC1WGpbL+wvEGUPZTdLCiVQmFfk=;
 b=hCL36r5wwLFae8HGlmofxMqwJe0jy3dsgdR8yBvqL5J9X/PlQuk03RZJSJid9fsxpAGhPcPW4KyamGlrp0J55ZUJoL6uNYKzkfLpSLSWzMaWmExqlp45MXdEjn0u8/wZeXJ5Rg9aVeJLoBIRZhd+J6Prd3RiCq3C8TtjVHd0vqw=
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com (10.175.20.18) by
 VI1PR0402MB2717.eurprd04.prod.outlook.com (10.175.22.139) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.16; Fri, 23 Aug 2019 19:11:30 +0000
Received: from VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023]) by VI1PR0402MB2863.eurprd04.prod.outlook.com
 ([fe80::7de6:ea4b:9b5d:d023%7]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 19:11:30 +0000
From: Stefan-gabriel Mirea <stefan-gabriel.mirea@nxp.com>
To: "corbet@lwn.net" <corbet@lwn.net>, "robh+dt@kernel.org"
 <robh+dt@kernel.org>, "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
 "catalin.marinas@arm.com" <catalin.marinas@arm.com>, "will@kernel.org"
 <will@kernel.org>, "shawnguo@kernel.org" <shawnguo@kernel.org>, Leo Li
 <leoyang.li@nxp.com>
Subject: [PATCH v3 0/7] Add initial support for S32V234-EVB
Thread-Topic: [PATCH v3 0/7] Add initial support for S32V234-EVB
Thread-Index: AQHVWeaSf3fMl3EAgEiOhwJSBo8Ewg==
Date: Fri, 23 Aug 2019 19:11:30 +0000
Message-ID: <20190823191115.18490-1-stefan-gabriel.mirea@nxp.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-mailer: git-send-email 2.22.0
x-clientproxiedby: AM5PR0402CA0007.eurprd04.prod.outlook.com
 (2603:10a6:203:90::17) To VI1PR0402MB2863.eurprd04.prod.outlook.com
 (2603:10a6:800:af::18)
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=stefan-gabriel.mirea@nxp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [212.146.100.6]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 761eccd0-70a7-420f-0279-08d727fdb46d
x-ms-office365-filtering-ht: Tenant
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600166)(711020)(4605104)(1401327)(4618075)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:VI1PR0402MB2717; 
x-ms-traffictypediagnostic: VI1PR0402MB2717:
x-ms-exchange-purlcount: 6
x-ms-exchange-transport-forked: True
x-microsoft-antispam-prvs: <VI1PR0402MB2717419F3125E4A9F015D6C9DFA40@VI1PR0402MB2717.eurprd04.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:4941;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(376002)(39860400002)(366004)(396003)(346002)(189003)(199004)(476003)(2501003)(66446008)(6436002)(6486002)(386003)(6506007)(50226002)(966005)(81156014)(66574012)(256004)(86362001)(14444005)(66946007)(64756008)(66556008)(66476007)(66066001)(186003)(8936002)(6512007)(6306002)(25786009)(81166006)(36756003)(478600001)(52116002)(8676002)(14454004)(102836004)(6116002)(5660300002)(486006)(26005)(2201001)(71200400001)(53936002)(71190400001)(1076003)(316002)(110136005)(7416002)(54906003)(4326008)(99286004)(7736002)(305945005)(6636002)(3846002)(2616005)(2906002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:VI1PR0402MB2717;
 H:VI1PR0402MB2863.eurprd04.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: nxp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: OvtUPGdQWDAagI9q7+SOmGAkPj7C+ej5Cio45n/dQu1vc97caL+1R+v/kL+u/Ey8sPLNL0Bic2Z387BPI2Sk1j2qHsOJ9PlsIBaZGR6E3bipPrfVaWkLcKjbj0UpYN/CL5FW8hp5S8HjMFwCBh6gd3GMGfysw8b9Inrs2pix2x2U1gRNDNKEJGpeqjui9uL3TjEC8FQEStU5R81EBvZMFCd4/YqPnT5FB2GuuebVnp9IBvQxDwj9lhpeuP8ThtmUvZEJDFgINCsWQ59kbHc8kDoDrK4lT6EA4j/9v1tS14bek4N/MJkIY2X5qOUGsmQ/y19FQ59Sx9WPykL/Fvn971ZroD/vfVnQXfTD6Dn3bg5PIoKemjiuXUSVLZ6dIAiJ3Ps9lp+hOClXecmfhNbJ6/Zszw04TZNW1gRFbBFShDQ=
Content-ID: <FC40214232A0B445B098DD4713A8872C@eurprd04.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 761eccd0-70a7-420f-0279-08d727fdb46d
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 19:11:30.6015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: lrzqXP31+V9t4qGVkIEUKgQmAZWw5xnxPPb1gmBN2aUHVDOmklNtkmaLIQ+1w/krahaVFR5EVdC0WJ7Dw4/wNrzrs7h/XlW++QDnyvi7io0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1PR0402MB2717
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_121135_698453_E4AA7B0E 
X-CRM114-Status: GOOD (  18.09  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:111:f400:fe06:0:0:0:618 listed in]
 [list.dnswl.org]
 0.0 T_SPF_PERMERROR        SPF: test of record failed (permerror)
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 "linux-doc@vger.kernel.org" <linux-doc@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>,
 "jslaby@suse.com" <jslaby@suse.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGVsbG8sDQoNCk5YUCdzIFMzMlYyMzRbMV0gKCJUcmVlcnVubmVyIikgdmlzaW9uIG1pY3JvcHJv
Y2Vzc29ycyBhcmUgdGFyZ2V0ZWQgZm9yDQpoaWdoLXBlcmZvcm1hbmNlLCBjb21wdXRhdGlvbmFs
bHkgaW50ZW5zaXZlIHZpc2lvbiBhbmQgc2Vuc29yIGZ1c2lvbg0KYXBwbGljYXRpb25zIHRoYXQg
cmVxdWlyZSBhdXRvbW90aXZlIHNhZmV0eSBsZXZlbHMuIFRoZXkgaW5jbHVkZSBsZWFkaW5nDQpl
ZGdlIENhbWVyYSBWaXNpb24gbW9kdWxlcyBsaWtlIEFQRVgtMiwgSVNQIGFuZCBHUFUuIFRoZSBT
MzJWMjM0LUVWQiBhbmQNClMzMlYyMzQtU0JDIGJvYXJkcyBhcmUgYXZhaWxhYmxlIGZvciBjdXN0
b21lciBldmFsdWF0aW9uLg0KDQpUaGUgZm9sbG93aW5nIHBhdGNoIHNlcmllcyBpbnRyb2R1Y2Vz
IG1pbmltYWwgZW5hYmxlbWVudCBzdXBwb3J0IGZvciB0aGUNCk5YUCBTMzJWMjM0LUVWQjJbMl0g
Ym9hcmQsIHdoaWNoIGxldmVyYWdlcyBtb3N0IG9mIHRoZSBTb0MgY2FwYWJpbGl0aWVzLg0KVXAg
dG8gdjIsIHRoaXMgc2VyaWVzIGFsc28gaW5jbHVkZWQgdGhlIGZzbF9saW5mbGV4dWFydCBkcml2
ZXIsIHdoaWNoIGhhcw0KYmVlbiBpbmNsdWRlZCBpbiBHcmVnIEtyb2FoLUhhcnRtYW4ncyB0dHkg
Z2l0IHRyZWVbM10uDQoNCkluIHRoZSBmdXR1cmUsIHdlIGFpbSB0byBzdWJtaXQgbXVsdGlwbGUg
ZHJpdmVycyB1cHN0cmVhbSwgd2hpY2ggY2FuIGJlDQpmb3VuZCBpbiB0aGUga2VybmVsIG9mIG91
ciBBdXRvIExpbnV4IEJTUFs0XSAoIkFMQiIpLCBzdGFydGluZyB3aXRoIGJhc2ljDQpwaW5tdXhp
bmcsIGNsb2NrIGFuZCB1U0RIQyBkcml2ZXJzLg0KDQpGb3IgdmFsaWRhdGlvbiwgeW91IGNhbiB1
c2UgdGhlIFUtQm9vdCBib290bG9hZGVyIGluIHRoZSBBTEJbNV0sIHdoaWNoIHdlDQpidWlsZCBh
bmQgdGVzdCB3aXRoIG91ciBwYXRjaGVkIHZlcnNpb24gb2YgdGhlIExpbmFybyBHQ0MgNi4zLjEg
MjAxNy4wNQ0KdG9vbGNoYWluIGZvciBBUk0gNjQtYml0LCB3aXRoIHNvdXJjZXMgYXZhaWxhYmxl
IG9uIFs2XS4NCg0KQ2hhbmdlcyBpbiB2MzoNCiogUmVtb3ZlIHRoZSBwYXRjaCAndHR5OiBzZXJp
YWw6IEFkZCBsaW5mbGV4dWFydCBkcml2ZXIgZm9yIFMzMlYyMzQnDQogIGZvbGxvd2luZyBpdHMg
YWNjZXB0YW5jZVszXTsNCiogUmVwbGFjZSAnRnJlZXNjYWxlJyB3aXRoICdOWFAnIGluIHRoZSBB
UkNIX1MzMiBjb25maWcgZGVmaW5pdGlvbiBhbmQgdGhlDQogICdtb2RlbCcgcHJvcGVydHkgZnJv
bSB0aGUgZGV2aWNlIHRyZWU7DQoqIFJlbW92ZSB0aGUgJ2ZzbC0nIHByZWZpeGVzIGZyb20gdGhl
IGR0c2kgYW5kIGR0cyBmaWxlIG5hbWVzOw0KKiBNb3ZlIHRoZSAnbW9kZWwnIHByb3BlcnR5IGZy
b20gKGZzbC0pczMydjIzNC5kdHNpIHRvIHMzMnYyMzQtZXZiLmR0czsNCiogQWRkIG5ld2xpbmVz
IGJldHdlZW4gdGhlIGNwdSBub2RlcyBpbiBzMzJ2MjM0LmR0c2k7DQoqIE1ha2UgdXNlIG9mIEdJ
Q19TUEksIEdJQ19QUEksIEdJQ19DUFVfTUFTS19TSU1QTEUgYW5kIElSUV9UWVBFXyogaW4gdGhl
DQogICdpbnRlcnJ1cHRzJyB0dXBsZXM7DQoqIE1vdmUgdGhlICd0aW1lcicgYW5kICdpbnRlcnJ1
cHQtY29udHJvbGxlcicgbm9kZXMgYmVmb3JlICdzb2MnIGluDQogIHMzMnYyMzQuZHRzaTsNCiog
QmUgY29uc2lzdGVudCB3aXRoIHRoZSAnTElORmxleEQnIHNwZWxsaW5nIGluIGRvY3VtZW50YXRp
b24sIHN0cmluZ3MgYW5kDQogIGNvbW1lbnRzOyBhZGQgbmV3IHBhdGNoICdzZXJpYWw6IGZzbF9s
aW5mbGV4dWFydDogQmUgY29uc2lzdGVudCB3aXRoIHRoZQ0KICBuYW1lJyB0byB1cGRhdGUgdGhl
IExJTkZsZXhEIGRyaXZlciBhcyB3ZWxsOw0KKiBSZW1vdmUgZnJvbSBmc2wsczMyLWxpbmZsZXh1
YXJ0LnR4dCBhIHN0YXRlbWVudCByZWdhcmRpbmcgdGhlIGxpbWl0YXRpb24NCiAgdG8gVUFSVCBt
b2RlOw0KKiBNYWtlIHRoZSBjb21wYXRpYmxlIHN0cmluZyBTb0Mgc3BlY2lmaWMgKCJmc2wsczMy
djIzNC1saW5mbGV4dWFydCIpOyBhZGQNCiAgbmV3IHBhdGNoICdzZXJpYWw6IGZzbF9saW5mbGV4
dWFydDogVXBkYXRlIGNvbXBhdGlibGUgc3RyaW5nJyB0byB1cGRhdGUNCiAgdGhlIExJTkZsZXhE
IGRyaXZlciBhcyB3ZWxsOw0KKiBJbiB0aGUgTElORmxleEQgYmluZGluZyBkb2N1bWVudGF0aW9u
LCBpbnNlcnQgYSBzcGFjZSBiZXR3ZWVuIGxhYmVsIGFuZA0KICBub2RlIG5hbWUgYW5kIHJlbW92
ZSB0aGUgJ3N0YXR1cycgcHJvcGVydHkuDQoNCkNoYW5nZXMgaW4gdjI6DQoqIFVwZGF0ZSB0aGUg
ZW50cnkgaW4gZnNsLnlhbWwgdG8gYXBwbHkgdG8gYWxsIFMzMlYyMzQgYmFzZWQgYm9hcmRzOw0K
KiBBZGQgY2hvc2VuIG5vZGUgdG8gZHRzLCB3aXRoIGEgJ3N0ZG91dC1wYXRoJyBwcm9wZXJ0eSBm
b3IgZWFybHljb247DQoqIFJlbW92ZSBsaW5mbGV4X3ZlcmlmeV9wb3J0KCksIGJlY2F1c2UgaXQg
d2FzIG9ubHkgY2FsbGVkIGZyb20NCiAgdWFydF9zZXRfaW5mbygpLCB3aGljaCB3YXMgZ29pbmcg
dG8gYWx3YXlzIGZhaWwgYXQgdGhlICJiYXVkX2Jhc2UgPCA5NjAwIg0KICBjaGVjaywgYXMgd2Ug
YXJlIG5vdCB1c2luZyB1YXJ0Y2xrIGZyb20gdWFydF9wb3J0IHlldDsNCiogRml4IGNvbXBhdGli
bGUgc3RyaW5nIHVzZWQgaW4gT0ZfRUFSTFlDT05fREVDTEFSRS4NCg0KWzFdIGh0dHBzOi8vd3d3
Lm54cC5jb20vcHJvZHVjdHMvcHJvY2Vzc29ycy1hbmQtbWljcm9jb250cm9sbGVycy9hcm0tYmFz
ZWQtcHJvY2Vzc29ycy1hbmQtbWN1cy9zMzItYXV0b21vdGl2ZS1wbGF0Zm9ybS92aXNpb24tcHJv
Y2Vzc29yLWZvci1mcm9udC1hbmQtc3Vycm91bmQtdmlldy1jYW1lcmEtbWFjaGluZS1sZWFybmlu
Zy1hbmQtc2Vuc29yLWZ1c2lvbjpTMzJWMjM0DQpbMl0gaHR0cHM6Ly93d3cubnhwLmNvbS9zdXBw
b3J0L2RldmVsb3Blci1yZXNvdXJjZXMvZXZhbHVhdGlvbi1hbmQtZGV2ZWxvcG1lbnQtYm9hcmRz
L3VsdHJhLXJlbGlhYmxlLWRldi1wbGF0Zm9ybXMvczMydi1tcHVzLXBsYXRmb3Jtcy9zMzJ2LXZp
c2lvbi1hbmQtc2Vuc29yLWZ1c2lvbi1ldmFsdWF0aW9uLXN5c3RlbTpTMzJWMjM0RVZCDQpbM10g
aHR0cHM6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvZ3JlZ2toL3R0
eS5naXQvY29tbWl0Lz9oPXR0eS1uZXh0JmlkPWI5NTM4MTViODE5YjBmMzI3YjU1MzhmZWJhMzYz
OWQ1MmRiNzAxNzINCls0XSBodHRwczovL3NvdXJjZS5jb2RlYXVyb3JhLm9yZy9leHRlcm5hbC9h
dXRvYnNwczMyL2xpbnV4Lw0KWzVdIGh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3JnL2V4dGVy
bmFsL2F1dG9ic3BzMzIvdS1ib290Lw0KWzZdIGh0dHBzOi8vc291cmNlLmNvZGVhdXJvcmEub3Jn
L2V4dGVybmFsL3MzMmRzL2NvbXBpbGVyL2djYy8NCg0KRWRkeSBQZXRyaciZb3IgKDEpOg0KICBk
dC1iaW5kaW5nczogYXJtOiBmc2w6IEFkZCB0aGUgUzMyVjIzNC1FVkIgYm9hcmQNCg0KTWloYWVs
YSBNYXJ0aW5hcyAoMik6DQogIGFybTY0OiBJbnRyb2R1Y2UgY29uZmlnIGZvciBTMzINCiAgYXJt
NjQ6IGRlZmNvbmZpZzogRW5hYmxlIGNvbmZpZ3MgZm9yIFMzMlYyMzQNCg0KU3RlZmFuLUdhYnJp
ZWwgTWlyZWEgKDIpOg0KICBzZXJpYWw6IGZzbF9saW5mbGV4dWFydDogVXBkYXRlIGNvbXBhdGli
bGUgc3RyaW5nDQogIHNlcmlhbDogZnNsX2xpbmZsZXh1YXJ0OiBCZSBjb25zaXN0ZW50IHdpdGgg
dGhlIG5hbWUNCg0KU3RvaWNhIENvc21pbi1TdGVmYW4gKDIpOg0KICBhcm02NDogZHRzOiBmc2w6
IEFkZCBkZXZpY2UgdHJlZSBmb3IgUzMyVjIzNC1FVkINCiAgZHQtYmluZGluZ3M6IHNlcmlhbDog
RG9jdW1lbnQgRnJlZXNjYWxlIExJTkZsZXhEIFVBUlQNCg0KIC4uLi9hZG1pbi1ndWlkZS9rZXJu
ZWwtcGFyYW1ldGVycy50eHQgICAgICAgICB8ICAgMiArLQ0KIC4uLi9kZXZpY2V0cmVlL2JpbmRp
bmdzL2FybS9mc2wueWFtbCAgICAgICAgICB8ICAgNiArDQogLi4uL2JpbmRpbmdzL3NlcmlhbC9m
c2wsczMyLWxpbmZsZXh1YXJ0LnR4dCAgIHwgIDIyICsrKw0KIGFyY2gvYXJtNjQvS2NvbmZpZy5w
bGF0Zm9ybXMgICAgICAgICAgICAgICAgICB8ICAgNSArDQogYXJjaC9hcm02NC9ib290L2R0cy9m
cmVlc2NhbGUvTWFrZWZpbGUgICAgICAgIHwgICAyICsNCiBhcmNoL2FybTY0L2Jvb3QvZHRzL2Zy
ZWVzY2FsZS9zMzJ2MjM0LWV2Yi5kdHMgfCAgMjUgKysrKw0KIGFyY2gvYXJtNjQvYm9vdC9kdHMv
ZnJlZXNjYWxlL3MzMnYyMzQuZHRzaSAgICB8IDEzOSArKysrKysrKysrKysrKysrKysNCiBhcmNo
L2FybTY0L2NvbmZpZ3MvZGVmY29uZmlnICAgICAgICAgICAgICAgICAgfCAgIDMgKw0KIGRyaXZl
cnMvdHR5L3NlcmlhbC9LY29uZmlnICAgICAgICAgICAgICAgICAgICB8ICAgOCArLQ0KIGRyaXZl
cnMvdHR5L3NlcmlhbC9mc2xfbGluZmxleHVhcnQuYyAgICAgICAgICB8ICAgOCArLQ0KIGluY2x1
ZGUvdWFwaS9saW51eC9zZXJpYWxfY29yZS5oICAgICAgICAgICAgICB8ICAgNCArLQ0KIDExIGZp
bGVzIGNoYW5nZWQsIDIxMyBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkNCiBjcmVhdGUg
bW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9mc2ws
czMyLWxpbmZsZXh1YXJ0LnR4dA0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybTY0L2Jvb3Qv
ZHRzL2ZyZWVzY2FsZS9zMzJ2MjM0LWV2Yi5kdHMNCiBjcmVhdGUgbW9kZSAxMDA2NDQgYXJjaC9h
cm02NC9ib290L2R0cy9mcmVlc2NhbGUvczMydjIzNC5kdHNpDQoNCi0tIA0KMi4yMi4wDQoNCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
