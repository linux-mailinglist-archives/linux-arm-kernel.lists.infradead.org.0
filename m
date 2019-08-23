Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 023659B85B
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 23 Aug 2019 23:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-ID:In-Reply-To:
	References:Message-ID:Date:Subject:To:From:Reply-To:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=IV7g5P7vxSK5i82BBlDfNrEn77bTdHLHZGKg6NwTx08=; b=sE5+YHffh3MICa
	2AzPBQY+2o9IGw2x6ZANkl6PH7nIBPxe+jEXIXbzd2sxCstp9+96111BnEpR9jj+2zl3fOWimm3JF
	ux/wAA3vVH0dgVnkX5c9vV2zDTo2YKeCFFGYCL4pN/m/ChN056Y/JWbT+s5GPxT5S6dtNoYjbq7E9
	CNyp7Ru4lcU6S7ckX3DEKfVTRgokeuIOjem4VOCEdeUsl5n6OyEg+TfFt2C6hQFCzrVJli+wVS0+3
	T5zw7kY1wPML6MKs6FzA+ZJHbUssvBCxBhTmzW4oUXqGs1vbAHHLUJkRW7Vv5/ePWKH2wolOvU1N0
	K54WuB2TKvbU8UijLGlg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i1HZZ-0004m2-5V; Fri, 23 Aug 2019 21:58:17 +0000
Received: from mail-eopbgr730124.outbound.protection.outlook.com
 ([40.107.73.124] helo=NAM05-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i1HZR-0004lc-Dd
 for linux-arm-kernel@lists.infradead.org; Fri, 23 Aug 2019 21:58:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=d1EkpdLfyx/v96aCRXVA5nHPw0P7ZTpel0Etz8EmPlY2K+irZ4Otkpr5Qv0nIYOolJz+qmKdhK+1KxeM2fBsHEzyfl4aDMdkrjmWmmWyRpCk1vcpgEf+VDlkBLU1o8S3Q0Zi04VYwYU5G2ZE1KUnPpa7Gj6mYrNMuOuSGFmn1Yrihya7FajWgXl9ljofx9/F7SJCt2l9eu9YyaKmJRsDgyYPOnCfk41AzWnmqBtuZxyMjaB5W5tzxkc+rib/GaaQm2kOJo7c8nr848HYxbke2NQ0LaDd0qGcInuGOCQIevSA6eSr64gWe1c2qcVYiNj/1TUPZqjtiOt/SRD0bCKr2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+15AuWsYroL9LW4VXjaZCJFMXePsi9rZcg3Tcu9VZaM=;
 b=MUfpEaCATgYMS765gjDYdwjCDpaCUn4MF5z7BecY6PNCmNEz09se6eiA91pkODasCq56lq/UycHxUI0JSXXWhh+GEz5Vtu0dWfuCIhEr0RtUBp5k84A8zC6iLBIDYlc8yNQ2lWkExguYZ7+JNX91cuM55r+1DvbsjOqRjB3yLBwuLdF7zaDp34OiSk2dSuL1WtP4gJKobdIVtFGNG0l75VkI/v6lM8uaYD8D0UogUgMZXNCJTce+/zpJMSyN1SzlvBg5SHqFBhN+syrQfp9f/2sGbU+15w8MHJ8ErG+syJmKKv/TxAxKWKAqLebY6SF7PpmerieqE+sWZQFAX8FBbA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wavecomp.com; dmarc=pass action=none header.from=mips.com;
 dkim=pass header.d=mips.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wavecomp.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+15AuWsYroL9LW4VXjaZCJFMXePsi9rZcg3Tcu9VZaM=;
 b=XmBEwPVvZq38GZmQ5jgMsSUxf+GhRt368mKsypUHUacthzEM8eYYnf8xbI6Nt75GFdP/QiQXH8EC3ERpWmuhcmwuy9/+jD6rfJxGLBuFM1f6Q8ZMgi6rwaf3HBBQX5ot9yyDFypTa3+tg+k3EuFYThvB+U7Nn/G3iFS1HTwJn6M=
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com (10.171.214.23) by
 CY4PR2201MB1414.namprd22.prod.outlook.com (10.171.211.150) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2178.18; Fri, 23 Aug 2019 21:58:04 +0000
Received: from CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::2d81:1469:ceaf:1168]) by CY4PR2201MB1272.namprd22.prod.outlook.com
 ([fe80::2d81:1469:ceaf:1168%5]) with mapi id 15.20.2178.020; Fri, 23 Aug 2019
 21:58:04 +0000
From: Paul Burton <paul.burton@mips.com>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: cleanup the dma_pgprot handling
Thread-Topic: cleanup the dma_pgprot handling
Thread-Index: AQHVWf3Wcj0vRRmtDE2acan7+F6osQ==
Date: Fri, 23 Aug 2019 21:58:04 +0000
Message-ID: <20190823215759.zprrwotlbva46y33@pburton-laptop>
References: <20190816070754.15653-1-hch@lst.de>
In-Reply-To: <20190816070754.15653-1-hch@lst.de>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-clientproxiedby: LO2P265CA0231.GBRP265.PROD.OUTLOOK.COM
 (2603:10a6:600:b::27) To CY4PR2201MB1272.namprd22.prod.outlook.com
 (2603:10b6:910:6e::23)
user-agent: NeoMutt/20180716
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pburton@wavecomp.com; 
x-ms-exchange-messagesentrepresentingtype: 1
x-originating-ip: [2a02:c7f:5e65:9900:8519:dc48:d16b:70fc]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: b74269f9-04f9-48ea-b4a3-08d72814f910
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(5600166)(711020)(4605104)(1401327)(2017052603328)(7193020);
 SRVR:CY4PR2201MB1414; 
x-ms-traffictypediagnostic: CY4PR2201MB1414:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <CY4PR2201MB14149DB010BB253D3F0874EAC1A40@CY4PR2201MB1414.namprd22.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:9508;
x-forefront-prvs: 0138CD935C
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10019020)(7916004)(396003)(366004)(376002)(136003)(39850400004)(346002)(199004)(189003)(33716001)(6116002)(6246003)(9686003)(6512007)(58126008)(11346002)(446003)(6916009)(66446008)(14454004)(66556008)(66476007)(64756008)(66946007)(8936002)(14444005)(44832011)(316002)(6306002)(476003)(102836004)(54906003)(5660300002)(478600001)(99286004)(386003)(4326008)(71200400001)(8676002)(52116002)(25786009)(53936002)(6436002)(256004)(305945005)(486006)(46003)(7736002)(42882007)(81156014)(7416002)(76176011)(6486002)(1076003)(2906002)(966005)(229853002)(186003)(71190400001)(81166006)(6506007);
 DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR2201MB1414;
 H:CY4PR2201MB1272.namprd22.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; A:1; MX:1; 
received-spf: None (protection.outlook.com: wavecomp.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: GeZiVlypx6XvjUENFejkSpKkGP5OpN13T7pYyv2o8nL2nWiVUeeebEQge+rcZzKDCMhRuxYLRUwUW5724RVIjyaTq2/DLrMGW3qhmqRdqpDuF9iwzrHATQnFaaHzSCTKevvjlHGhqFXH4/h9sB9CeBE2S1sfuLlyQr6YUQlou16XHP47Wtf3qTo4b7Wpy3ysMVXWDfjhjY/zXaMKRwpyn17su+g9eiA6LCenFAkEd/3XqPqHMRktP9sNeDcgvgPujhKYoO59EicVMpHJuBNuXPKa3UvL0fYnthdcOqiIiOy5i6r7vacG1RoYNK9jA7Olz8oy3rBAp9q+8nmN8iqQpm3RsjsqoxEyxylisFG90pTiIY70NpXpYTUhB1NxI3VjZiA4dvbBWpU+tvYnxHekTJ5pj0M6WxaJ/OXHiqEWZKE=
x-ms-exchange-transport-forked: True
Content-ID: <1C4B7209ABEB4A4BA21FDFF51979BD88@namprd22.prod.outlook.com>
MIME-Version: 1.0
X-OriginatorOrg: mips.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b74269f9-04f9-48ea-b4a3-08d72814f910
X-MS-Exchange-CrossTenant-originalarrivaltime: 23 Aug 2019 21:58:04.1602 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 463607d3-1db3-40a0-8a29-970c56230104
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 6s7AcMKI2KDWcvgKbXilApbKVoLsJWClFKM+0moHuR1SbZUzIElph++bHPA3d73NkZwFjRZ3kAA8Za8Lflw0cg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR2201MB1414
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190823_145809_527603_FDF17ECB 
X-CRM114-Status: GOOD (  17.30  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.73.124 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Shawn Anastasio <shawn@anastas.io>,
 "linux-m68k@lists.linux-m68k.org" <linux-m68k@lists.linux-m68k.org>,
 Will Deacon <will@kernel.org>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Russell King <linux@armlinux.org.uk>,
 "linux-mips@vger.kernel.org" <linux-mips@vger.kernel.org>,
 "iommu@lists.linux-foundation.org" <iommu@lists.linux-foundation.org>,
 Geert Uytterhoeven <geert@linux-m68k.org>,
 Catalin Marinas <catalin.marinas@arm.com>, James Hogan <jhogan@kernel.org>,
 Guan Xuetao <gxt@pku.edu.cn>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Robin Murphy <robin.murphy@arm.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2hyaXN0b3BoLA0KDQpPbiBGcmksIEF1ZyAxNiwgMjAxOSBhdCAwOTowNzo0OEFNICswMjAw
LCBDaHJpc3RvcGggSGVsbHdpZyB3cm90ZToNCj4gSSdkIHN0aWxsIGxpa2UgdG8gaGVhciBhIGNv
bmZpcm1hdGlvbiBmcm9tIHRoZSBtaXBzIGZvbGtzIGhvdw0KPiB0aGUgd3JpdGUgY29tYmliZSBh
dHRyaWJ1dGUgY2FuIG9yIGNhbid0IHdvcmsgd2l0aCB0aGUgS1NFRzENCj4gdW5jYWNoZWQgc2Vn
bWVudC4NCg0KUXVvdGluZyBzZWN0aW9uIDQuOCAiQ2FjaGVhYmlsaXR5IGFuZCBDb2hlcmVuY3kg
QXR0cmlidXRlcyBhbmQgQWNjZXNzDQpUeXBlcyIgb2YgIk1JUFMgQXJjaGl0ZWN0dXJlIFZvbHVt
ZSAxOiBJbnRyb2R1Y3Rpb24gdG8gdGhlIE1JUFMzMg0KQXJjaGl0ZWN0dXJlIiAoTUQwMDA4MCwg
cmV2aXNpb24gNi4wMSk6DQoNCmh0dHBzOi8vd3d3Lm1pcHMuY29tLz9kby1kb3dubG9hZD1pbnRy
b2R1Y3Rpb24tdG8tdGhlLW1pcHMzMi1hcmNoaXRlY3R1cmUtdjYtMDENCg0KPiBNZW1vcnkgYWNj
ZXNzIHR5cGVzIGFyZSBzcGVjaWZpZWQgYnkgYXJjaGl0ZWN0dXJhbGx5LWRlZmluZWQgYW5kDQo+
IGltcGxlbWVudGF0aW9uLXNwZWNpZmljIENhY2hlYWJpbGl0eSBhbmQgQ29oZXJlbmN5IEF0dHJp
YnV0ZSBiaXRzDQo+IChDQ0FzKSBnZW5lcmF0ZWQgYnkgdGhlIE1NVSBmb3IgdGhlIGFjY2Vzcy4N
Cj4NCj4gU2xpZ2h0bHkgZGlmZmVyZW50IGNhY2hlYWJpbGl0eSBhbmQgY29oZXJlbmN5IGF0dHJp
YnV0ZXMgc3VjaCBhcw0KPiDigJxjYWNoZWQgY29oZXJlbnQsIHVwZGF0ZSBvbiB3cml0ZeKAnSBh
bmQg4oCcY2FjaGVkIGNvaGVyZW50LCBleGNsdXNpdmUgb24NCj4gd3JpdGXigJ0gY2FuIG1hcCB0
byB0aGUgc2FtZSBtZW1vcnkgYWNjZXNzIHR5cGU7IGluIHRoaXMgY2FzZSB0aGV5IGJvdGgNCj4g
bWFwIHRvIGNhY2hlZCBjb2hlcmVudC4gSW4gb3JkZXIgdG8gbWFwIHRvIHRoZSBzYW1lIGFjY2Vz
cyB0eXBlLCB0aGUNCj4gZnVuZGFtZW50YWwgbWVjaGFuaXNtcyBvZiBib3RoIENDQXMgbXVzdCBi
ZSB0aGUgc2FtZS4NCj4NCj4gV2hlbiB0aGUgb3BlcmF0aW9uIG9mIHRoZSBpbnN0cnVjdGlvbiBp
cyBhZmZlY3RlZCwgdGhlIGluc3RydWN0aW9ucw0KPiBhcmUgZGVzY3JpYmVkIGluIHRlcm1zIG9m
IG1lbW9yeSBhY2Nlc3MgdHlwZXMuIFRoZSBsb2FkIGFuZCBzdG9yZQ0KPiBvcGVyYXRpb25zIGlu
IGEgcHJvY2Vzc29yIHByb2NlZWQgYWNjb3JkaW5nIHRvIHRoZSBzcGVjaWZpYyBDQ0Egb2YgdGhl
DQo+IHJlZmVyZW5jZSwgaG93ZXZlciwgYW5kIHRoZSBwc2V1ZG9jb2RlIGZvciBsb2FkIGFuZCBz
dG9yZSBjb21tb24NCj4gZnVuY3Rpb25zIHVzZXMgdGhlIENDQSB2YWx1ZSByYXRoZXIgdGhhbiB0
aGUgY29ycmVzcG9uZGluZyBtZW1vcnkNCj4gYWNjZXNzIHR5cGUuDQoNClNvIEkgYmVsaWV2ZSB1
bmNhY2hlZCAmIHVuY2FjaGVkIGFjY2VsZXJhdGVkIGFyZSBhbm90aGVyIGNhc2UgbGlrZSB0aGF0
DQpkZXNjcmliZWQgYWJvdmUgLSB0aGV5J3JlIDIgZGlmZmVyZW50IENDQXMgYnV0IHRoZSBzYW1l
ICJhY2Nlc3MgdHlwZSIsDQpuYW1lbHkgdW5jYWNoZWQuDQoNClNlY3Rpb24gNC45IHRoZW4gZ29l
cyBvbiB0byBmb3JiaWQgbWl4aW5nIGFjY2VzcyB0eXBlcywgYnV0IG5vdCBDQ0FzLg0KDQpJdCB3
b3VsZCBiZSBuaWNlIGlmIHRoZSBwcmVjaXNlIG1hcHBpbmcgZnJvbSBDQ0EgdG8gYWNjZXNzIHR5
cGUgd2FzDQpwcm92aWRlZCwgYnV0IEkgZG9uJ3Qgc2VlIHRoYXQgYW55d2hlcmUuIEkgY2FuIGNo
ZWNrIHdpdGggdGhlDQphcmNoaXRlY3R1cmUgdGVhbSB0byBiZSBzdXJlLCBidXQgdG8gbXkga25v
d2xlZGdlIHdlJ3JlIGZpbmUgdG8gbWl4DQphY2Nlc3MgdmlhIGtzZWcxIChpZS4gdW5jYWNoZWQp
ICYgbWFwcGluZ3Mgd2l0aCBDQ0E9NyAodW5jYWNoZWQNCmFjY2VsZXJhdGVkKS4NCg0KVGhhbmtz
LA0KICAgIFBhdWwNCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
