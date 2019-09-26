Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C2823BF3B9
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 26 Sep 2019 15:07:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=UTl2Woj+Sq0x4WHbYzwRpiUzDrNb92SKeTqfrYzfEbM=; b=l7ieqwislqENbr
	30lqjx9NKzhEp7rGNb1hWg+60RXL+NrlAkTh4Y6FX2mtTw4kQBuXnGmG4DyVUBp9hBXG36xrUI9sX
	NdgG2lhW8bOkyOQOAJBZvkh5uCCI8YGdAOFWmwHjLgfwZwenBT8gZ9nVZpD7wJUDHtMTpjG4gK52L
	kzCEVhf463gQbCSiXJULU5EIkKacX86lR7fJK9g8Q84M8r7wXObzgPRqXUkTK5QrBGXFfE8BHdo3s
	ta1kao6c/DPg847B3Taj0bIEo56YqyV492taepDn3X3OtDj/ADZW17zKnqU7tEPMNPEzJUXI7uD3+
	TZDNAL4JRap3bIGvorRg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iDTUB-00048N-FN; Thu, 26 Sep 2019 13:07:07 +0000
Received: from mail-eopbgr800073.outbound.protection.outlook.com
 ([40.107.80.73] helo=NAM03-DM3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iDTTS-0003sA-6v
 for linux-arm-kernel@lists.infradead.org; Thu, 26 Sep 2019 13:06:24 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=hXroI18EIjco1g5Q/3M341EWh5vWKznfp6WTSsrLBoCXPOdFI4tAd/fl8Z9EGA2Jr97idj+8cLXBevSqiFRK703eZ5BbViOLR18HmMfOa4RTqSBir1DVlpAUqHfC4vOEK9gxcLv9ysuN3cEVZfY4jQgYLW1Wf3IF197jjmF2tiQBZtO/vJW6Kst0UKv30E9xsFCFn/fam/pJ5//h2ch8V38+NS0OdjUb2TC/kVrAvS/RaW0d8U1CZUc67lQ2Y0/W3zEOH1/oQv9GcWuM4kgTPIuspGmh+GAnTWIrbG53y9+Lhv7czS/IC75jAv3PbXkFynjEGt+oJM49O1d+Npjh3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VL9HzTEkc/wjv3khKaw0zjSfi39rJef31TTroN02ESw=;
 b=U781/gVlPqyDuBNPG3X6zUL+P78VRJ/IqkqZu/gKTZtEBxXWRPD3B7VbUTdhz1zOqh7emy2uV/MHdud6m9PwYl97JQeOECP7KKQRxVpfke7uMJIvUNSS2cDMcJr0DOeSnkCpa0YtM7YkCMqhVDIP1EBT749GWDxdcpLfGCoaH7epX0AMJjbkgfZXdtBqsVYCgwSOMtrcdR3u2KDg1aO6pKPDjhZGTbWoPx+5i/F/qZ+CaRfiYW/PtyBFWRxP/XEl6gJgMshKSY9l5mKXqBfIfHfXmparTOPIVOgqY+41FLd/9fIHPjv+vDJK2tvUfoKubrwK2Cjt5CYWSrEXZS7mkA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=verimatrix.com; dmarc=pass action=none
 header.from=verimatrix.com; dkim=pass header.d=verimatrix.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=verimatrix.com;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VL9HzTEkc/wjv3khKaw0zjSfi39rJef31TTroN02ESw=;
 b=czeh+nN0LmxlOVfIiPYyLr/GTpv/oiV6PjgVPPkEJ0xXrA1pk3CRf9XbSwD35kyqSFlaDmmEHW8zeZotlIHISrvjDspZJnW/AR3y9Jw4A4Nt3/fXPCG6JbthwPupMOzEzsg3sgrAHL2N2Bh5Zybm/lpevDBFeSl6pJ4ASN3C9bg=
Received: from MN2PR20MB2973.namprd20.prod.outlook.com (52.132.172.146) by
 MN2PR20MB3054.namprd20.prod.outlook.com (52.132.173.159) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.2284.20; Thu, 26 Sep 2019 13:06:19 +0000
Received: from MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717]) by MN2PR20MB2973.namprd20.prod.outlook.com
 ([fe80::6d07:5f09:97bf:c717%7]) with mapi id 15.20.2305.017; Thu, 26 Sep 2019
 13:06:19 +0000
From: Pascal Van Leeuwen <pvanleeuwen@verimatrix.com>
To: Ard Biesheuvel <ard.biesheuvel@linaro.org>, "Jason A. Donenfeld"
 <Jason@zx2c4.com>
Subject: RE: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Topic: [RFC PATCH 00/18] crypto: wireguard using the existing crypto API
Thread-Index: AQHVc7w6foOeRxVj+U6Yc++T56fqIac9qd4AgAA0kYCAAAbroA==
Date: Thu, 26 Sep 2019 13:06:19 +0000
Message-ID: <MN2PR20MB29731267C4670FBD46D6C743CA860@MN2PR20MB2973.namprd20.prod.outlook.com>
References: <20190925161255.1871-1-ard.biesheuvel@linaro.org>
 <CAHmME9oDhnv7aX77oEERof0TGihk4mDe9B_A3AntaTTVsg9aoA@mail.gmail.com>
 <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
In-Reply-To: <CAKv+Gu-RLRhwDahgvfvr2J9R+3GPM6vh4mjO73VcekusdzbuMA@mail.gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
 smtp.mailfrom=pvanleeuwen@verimatrix.com; 
x-originating-ip: [188.204.2.113]
x-ms-publictraffictype: Email
x-ms-office365-filtering-correlation-id: 8ed80200-844d-40b1-5786-08d7428252b4
x-microsoft-antispam: BCL:0; PCL:0;
 RULEID:(2390118)(7020095)(4652040)(8989299)(5600167)(711020)(4605104)(1401327)(4534185)(4627221)(201703031133081)(201702281549075)(8990200)(2017052603328)(7193020);
 SRVR:MN2PR20MB3054; 
x-ms-traffictypediagnostic: MN2PR20MB3054:
x-ms-exchange-purlcount: 1
x-microsoft-antispam-prvs: <MN2PR20MB3054F8EDE3B66C4796922B9FCA860@MN2PR20MB3054.namprd20.prod.outlook.com>
x-ms-oob-tlc-oobclassifiers: OLM:10000;
x-forefront-prvs: 0172F0EF77
x-forefront-antispam-report: SFV:NSPM;
 SFS:(10009020)(4636009)(136003)(346002)(39850400004)(366004)(396003)(376002)(189003)(199004)(11346002)(81166006)(81156014)(3846002)(54906003)(478600001)(316002)(8676002)(74316002)(102836004)(110136005)(6246003)(6436002)(7736002)(229853002)(8936002)(99286004)(256004)(305945005)(6116002)(66066001)(6506007)(14454004)(4326008)(66476007)(71200400001)(476003)(9686003)(486006)(186003)(26005)(86362001)(66946007)(66556008)(76116006)(5660300002)(7416002)(76176011)(64756008)(446003)(66446008)(7696005)(33656002)(2906002)(14444005)(71190400001)(52536014)(25786009)(55016002)(15974865002)(18886075002);
 DIR:OUT; SFP:1101; SCL:1; SRVR:MN2PR20MB3054;
 H:MN2PR20MB2973.namprd20.prod.outlook.com; FPR:; SPF:None; LANG:en;
 PTR:InfoNoRecords; MX:1; A:1; 
received-spf: None (protection.outlook.com: verimatrix.com does not designate
 permitted sender hosts)
x-ms-exchange-senderadcheck: 1
x-microsoft-antispam-message-info: AuVjJWxgniPal4SjH7+VgtHWIYX6Q1vgCX52VRev+JUhtJCid/ONn0cMvm/tOshraeDg5Iyv00rZpvNOVLfl5JJS2NIEHmtZRDMMfZOOmo8c4L5nRgKlpHt8rr+7LH8TNTKm6lFp0MPzPgF3lDTJBu2tnei0yVKddPc+C5qNDyqUlKPIW+XD0apJi4wxJjuO5/f3HOKaPlA1z4sv3xsdXcBCPGKpxl+BRzYmA/kzWD6juQLBeqQGHinVzvG18svaE8apwhBTRKXToe0sSQthdBWCQvBx1uqziYdpEO7gtb3k5t7DZKst59EAZCpKoddj14Xj/OSpPPoEwWo2SK9pOK2+Vqvqmsz65BpZWLFgv78Q5BhBE5jm/Ey968i5SQrrkqtiQ4oxUJHJ1q15KNAbGI9Y0F7K2u8Idkcm/fGVv/g=
x-ms-exchange-transport-forked: True
MIME-Version: 1.0
X-OriginatorOrg: verimatrix.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ed80200-844d-40b1-5786-08d7428252b4
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Sep 2019 13:06:19.3268 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: dcb260f9-022d-4495-8602-eae51035a0d0
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WoweiFBoOehZ4ONQ8Jzu4tEccuUSk5GqP7c2o39Yx7RliiCT7v2XV2JsjbOWA6FXSFBsJeRxZQtBS5yH9mLGRH+4V5SY3ZeoJPaHuLK8M8c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN2PR20MB3054
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190926_060622_390495_F03C2D3C 
X-CRM114-Status: GOOD (  28.90  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [40.107.80.73 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Catalin Marinas <catalin.marinas@arm.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Arnd Bergmann <arnd@arndb.de>,
 Eric Biggers <ebiggers@google.com>, Greg KH <gregkh@linuxfoundation.org>,
 Samuel Neves <sneves@dei.uc.pt>, Will Deacon <will@kernel.org>,
 Linux Crypto Mailing List <linux-crypto@vger.kernel.org>,
 Andy Lutomirski <luto@kernel.org>, Marc Zyngier <maz@kernel.org>,
 Dan Carpenter <dan.carpenter@oracle.com>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 David Miller <davem@davemloft.net>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

PiA+IEluIHRoaXMgY2FzZSwgdGhlIHJlbGV2YW5jZSBpcyB0aGF0IHRoZSBoYW5kc2hha2UgaW4g
V2lyZUd1YXJkIGlzDQo+ID4gZXh0cmVtZWx5IHBlcmZvcm1hbmNlIHNlbnNpdGl2ZSwgaW4gb3Jk
ZXIgdG8gZmVuZCBvZmYgRG9TLiBPbmUgb2YgdGhlDQo+ID4gYmlnIGRlc2lnbiBnYW1iaXRzIGlu
IFdpcmVHdWFyZCBpcyDigJMgY2FuIHdlIG1ha2UgaXQgMS1SVFQgdG8gcmVkdWNlDQo+ID4gdGhl
IGNvbXBsZXhpdHkgb2YgdGhlIHN0YXRlIG1hY2hpbmUsIGJ1dCBrZWVwIHRoZSBjcnlwdG8gZWZm
aWNpZW50DQo+ID4gZW5vdWdoIHRoYXQgdGhpcyBpcyBzdGlsbCBzYWZlIHRvIGRvIGZyb20gYSBE
b1MgcGVyc3BlY3RpdmUuIFRoZQ0KPiA+IHByb3RvY29sIHN1Y2NlZWRzIGF0IHRoaXMgZ29hbCwg
YnV0IGluIG1hbnkgd2F5cywganVzdCBieSBhIGhhaXIgd2hlbg0KPiA+IGF0IHNjYWxlLCBhbmQg
c28gSeKAmW0gcmVhbGx5IHF1aXRlIGxvYXRoZSB0byBkZWNyZWFzZSBoYW5kc2hha2UNCj4gPiBw
ZXJmb3JtYW5jZS4NCj4gLi4uDQo+ID4gVGFrZW4gdG9nZXRoZXIsIHdlIHNpbXBseSBjYW7igJl0
IHNraW1wIG9uIHRoZSBpbXBsZW1lbnRhdGlvbnMgYXZhaWxhYmxlDQo+ID4gb24gdGhlIGhhbmRz
aGFrZSBsYXllciwgc28gd2XigJlsbCBuZWVkIHRvIGFkZCBzb21lIGZvcm0gb2YNCj4gPiBpbXBs
ZW1lbnRhdGlvbiBzZWxlY3Rpb24sIHdoZXRoZXIgaXTigJlzIHRoZSBtZXRob2QgWmluYyB1c2Vz
IChbMl0pLCBvcg0KPiA+IHNvbWV0aGluZyBlbHNlIHdlIGNvb2sgdXAgdG9nZXRoZXIuDQo+ID4N
Cj4gDQo+IFNvIGFyZSB5b3Ugc2F5aW5nIHRoYXQgdGhlIGhhbmRzaGFrZSB0aW1pbmcgY29uc3Ry
YWludHMgaW4gdGhlDQo+IFdpcmVHdWFyZCBwcm90b2NvbCBhcmUgc28gc3RyaW5nZW50IHRoYXQg
d2UgY2FuJ3QgcnVuIGl0IHNlY3VyZWx5IG9uLA0KPiBlLmcuLCBhbiBBUk0gQ1BVIHRoYXQgbGFj
a3MgYSBORU9OIHVuaXQ/IE9yIGdpdmVuIHRoYXQgeW91IGFyZSBub3QNCj4gcHJvdmlkaW5nIGFj
Y2VsZXJhdGVkIGltcGxlbWVudGF0aW9ucyBvZiBibGFrZTJzIG9yIEN1cnZlMjU1MTkgZm9yDQo+
IGFybTY0LCB3ZSBjYW4ndCBydW4gaXQgc2VjdXJlbHkgb24gYXJtNjQgYXQgYWxsPw0KPiANCj4g
VHlwaWNhbGx5LCBJIHdvdWxkIHByZWZlciB0byBvbmx5IGludHJvZHVjZSBkaWZmZXJlbnQgdmVy
c2lvbnMgb2YgdGhlDQo+IHNhbWUgYWxnb3JpdGhtIGlmIHRoZXJlIGlzIGEgY2xlYXIgcGVyZm9y
bWFuY2UgYmVuZWZpdCBmb3IgYW4gYWN0dWFsDQo+IHVzZSBjYXNlLg0KPiANCj4gRnJhbWluZyB0
aGlzIGFzIGEgc2VjdXJpdHkgaXNzdWUgcmF0aGVyIHRoYW4gYSBwZXJmb3JtYW5jZSBpc3N1ZSBp
cw0KPiBzbGlnaHRseSBkaXNpbmdlbnVvdXMsIHNpbmNlIHBlb3BsZSBhcmUgbGVzcyBsaWtlbHkg
dG8gY2hhbGxlbmdlIGl0Lg0KPiBCdXQgdGhlIHNlY3VyaXR5IG9mIGFueSBWUE4gcHJvdG9jb2wg
d29ydGggaXRzIHNhbHQgc2hvdWxkIG5vdCBoaW5nZQ0KPiBvbiB0aGUgcGVyZm9ybWFuY2UgZGVs
dGEgYmV0d2VlbiB0aGUgcmVmZXJlbmNlIEMgY29kZSBhbmQgYSB2ZXJzaW9uDQo+IHRoYXQgd2Fz
IG9wdGltaXplZCBmb3IgYSBwYXJ0aWN1bGFyIENQVS4NCj4gDQpGdWxseSBhZ3JlZSB3aXRoIHRo
YXQgbGFzdCBzdGF0ZW1lbnQuIFNlY3VyaXR5IG9mIGEgcHJvdG9jb2wgc2hvdWxkDQoqbmV2ZXIq
IGRlcGVuZCBvbiB0aGUgcGVyZm9ybWFuY2Ugb2YgYSBwYXJ0aWN1bGFyIGltcGxlbWVudGF0aW9u
Lg0KDQpJIG1heSB3YW50IHRvIHJ1biB0aGlzIG9uIGEgdmVyeSBjb25zdHJhaW5lZCBlbWJlZGRl
ZCBzeXN0ZW0gdGhhdA0Kd291bGQgbmVjZXNzYXJpbHkgYmUgdmVyeSBzbG93LCBhbmQgSSB3b3Vs
ZCBzdGlsbCB3YW50IHRoYXQgdG8gYmUNCnNlY3VyZS4gSWYgdGhpcyBpcyB0cnVlLCBpdCdzIHBy
ZXR0eSBtdWNoIGEgZGVhbC1icmVha2VyIHRvIG1lIC4uLg0KDQpXaGljaCB3b3VsZCBiZSBhIHNo
YW1lLCBiZWNhdXNlIEkgcmVhbGx5IGRvIGxpa2Ugc29tZSBvZiB0aGUgb3RoZXINCnRoaW5ncyBX
aXJlZ3VhcmQgZG9lcyBhbmQganVzdCB0aGUgZWZmb3J0IG9mIGltcHJvdmluZyBWUE4gaW4gZ2Vu
ZXJhbC4NCg0KPiA+IElzc3VlIDIpIExpbnVz4oCZIG9iamVjdGlvbiB0byB0aGUgYXN5bmMgQVBJ
IGludmFzaW9uIGlzIG1vcmUgY29ycmVjdA0KPiA+IHRoYW4gaGUgcmVhbGl6ZXMuDQo+ID4NCj4g
PiBJIGNvdWxkIHJlLWVudW1lcmF0ZSBteSBvYmplY3Rpb25zIHRvIHRoZSBBUEkgdGhlcmUsIGJ1
dCBJIHRoaW5rIHdlDQo+ID4gYWxsIGdldCBpdC4gSXTigJlzIGhvcnJlbmRvdXMgbG9va2luZy4g
RXZlbiB0aGUgaW50cm9kdWN0aW9uIG9mIHRoZQ0KPiA+IGl2cGFkIG1lbWJlciAod2hhdCBvbiBl
YXJ0aD8pIGluIHRoZSBza2IgY2IgbWFkZSBtZSBzaHV0dGVyLg0KPiANCj4gWW91ciBpbXBsZW1l
bnRhdGlvbiBvZiBSRkM3NTM5IHRydW5jYXRlcyB0aGUgbm9uY2UgdG8gNjQtYml0cywgd2hpbGUN
Cj4gUkZDNzUzOSBkZWZpbmVzIGEgY2xlYXIgcHVycG9zZSBmb3IgdGhlIGJpdHMgeW91IG9taXQu
IFNpbmNlIHRoZSBaaW5jDQo+IGxpYnJhcnkgaXMgaW50ZW5kZWQgdG8gYmUgc3RhbmRhbG9uZSAo
YW5kIHlvdSBhcmUgcHJvcG9zaW5nIGl0cyB1c2UgaW4NCj4gb3RoZXIgcGxhY2VzLCBsaWtlIGJp
Z19rZXlzLmMpLCB5b3UgbWlnaHQgd2FudCB0byBkb2N1bWVudCB5b3VyDQo+IGp1c3RpZmljYXRp
b24gZm9yIGRvaW5nIHNvIGluIHRoZSBnZW5lcmFsIGNhc2UsIGluc3RlYWQgb2YgcmlkaWN1bGlu
Zw0KPiB0aGUgY29kZSBJIG5lZWRlZCB0byB3cml0ZSB0byB3b3JrIGFyb3VuZCB0aGlzIGxpbWl0
YXRpb24uDQo+IA0KRnJvbSBSRkM3NTM5Og0KIlNvbWUgcHJvdG9jb2xzIG1heSBoYXZlIHVuaXF1
ZSBwZXItaW52b2NhdGlvbiBpbnB1dHMgdGhhdCBhcmUgbm90IDk2DQogYml0cyBpbiBsZW5ndGgu
ICBGb3IgZXhhbXBsZSwgSVBzZWMgbWF5IHNwZWNpZnkgYSA2NC1iaXQgbm9uY2UuICBJbg0KIHN1
Y2ggYSBjYXNlLCBpdCBpcyB1cCB0byB0aGUgcHJvdG9jb2wgZG9jdW1lbnQgdG8gZGVmaW5lIGhv
dyB0bw0KIHRyYW5zZm9ybSB0aGUgcHJvdG9jb2wgbm9uY2UgaW50byBhIDk2LWJpdCBub25jZSwg
PDxmb3IgZXhhbXBsZSwgYnkNCiBjb25jYXRlbmF0aW5nIGEgY29uc3RhbnQgdmFsdWUuPj4iDQoN
ClNvIGNvbmNhdGVuYXRpbmcgemVyb2VzIHdpdGhpbiB0aGUgcHJvdG9jb2wgaXMgZmluZSAoaWYg
eW91IGNhbiBsaXZlDQp3aXRoIHRoZSBzZWN1cml0eSBjb25zZXF1ZW5jZXMpIGJ1dCBhIGdlbmVy
aWMgbGlicmFyeSBmdW5jdGlvbiBzaG91bGQNCm9mIGNvdXJzZSB0YWtlIGFsbCA5NiBiaXRzIGFz
IGlucHV0KCEpIEFjdHVhbGx5LCB0aGUgcmZjNzUzOWVzcCB2YXJpYW50DQphbHJlYWR5IHRha2Vz
IHRoYXQgcGFydCBvZiB0aGUgbm9uY2UgZnJvbSB0aGUga2V5LCBub3QgdGhlIElWLiBUaGlzDQpt
YXkgYmUgbW9yZSBjb252ZW5pZW50IGZvciB1c2Ugd2l0aCBXaXJlZ3VhcmQgYXMgd2VsbD8gSnVz
dCBmb3JjZSB0aGUNCnRyYWlsaW5nIG5vbmNlIHBvcnRpb24gb2YgdGhlIGtleSB0byB6ZXJvZXMg
d2hlbiBjYWxsaW5nIHNldGtleSgpLg0KDQo+IA0KPiBNeSBwcmVmZXJlbmNlIHdvdWxkIGJlIHRv
IGFkZHJlc3MgdGhpcyBieSBwZXJtaXR0aW5nIHBlci1yZXF1ZXN0IGtleXMNCj4gaW4gdGhlIEFF
QUQgbGF5ZXIuIFRoYXQgd2F5LCB3ZSBjYW4gaW5zdGFudGlhdGUgdGhlIHRyYW5zZm9ybSBvbmx5
DQo+IG9uY2UsIGFuZCBqdXN0IGludm9rZSBpdCB3aXRoIHRoZSBhcHByb3ByaWF0ZSBrZXkgb24g
dGhlIGhvdCBwYXRoIChhbmQNCj4gYXZvaWQgYW55IHBlci1rZXlwYWlyIGFsbG9jYXRpb25zKQ0K
PiANClRoaXMgcGFydCBJIGRvIG5vdCByZWFsbHkgdW5kZXJzdGFuZC4gV2h5IHdvdWxkIHlvdSBu
ZWVkIHRvIGFsbG9jYXRlIGENCm5ldyB0cmFuc2Zvcm0gaWYgeW91IGNoYW5nZSB0aGUga2V5PyBX
aHkgY2FuJ3QgeW91IGp1c3QgY2FsbCBzZXRrZXkoKQ0Kb24gdGhlIGFscmVhZHkgYWxsb2NhdGVk
IHRyYW5zZm9ybT8NCg0KPiANCj4gSXQgYWxsIGRlcGVuZHMgb24gd2hldGhlciB3ZSBhcmUgaW50
ZXJlc3RlZCBpbiBzdXBwb3J0aW5nIGFzeW5jDQo+IGFjY2VsZXJhdG9ycyBvciBub3QsIGFuZCBp
dCBpcyBjbGVhciB3aGF0IG15IHBvc2l0aW9uIGlzIG9uIHRoaXMNCj4gcG9pbnQuDQo+IA0KTWF5
YmUgbm90IGZvciBhbiBpbml0aWFsIHVwc3RyZWFtLCBidXQgaXQgc2hvdWxkIGJlIGEgbG9uZ2Vy
LXRlcm0gZ29hbC4NCg0KPiANCj4gV2hhdCBJICpkb24ndCogd2FudCBpcyB0byBtZXJnZSBXaXJl
R3VhcmQgd2l0aCBpdHMgb3duIGxpYnJhcnkgYmFzZWQNCj4gY3J5cHRvIG5vdywgYW5kIGV4dGVu
ZCB0aGF0IGxhdGVyIGZvciBhc3luYyBhY2NlbGVyYXRvcnMgb25jZSBwZW9wbGUNCj4gcmVhbGl6
ZSB0aGF0IHdlIHJlYWxseSBkbyBuZWVkIHRoYXQgYXMgd2VsbC4NCj4gDQpXaGF0J3Mgd3Jvbmcg
d2l0aCBhIHN0ZXAtYnktc3RlcCBhcHByb2FjaCB0aG91Z2g/IGkuZS4gbWVyZ2UgaXQgd2l0aA0K
bGlicmFyeSBjYWxscyBub3cgYW5kIHRoZW4gZ3JhZHVhbGx5IHdvcmsgdG93YXJkcyB0aGUgZ29h
bCBvZiBpbnRlZ3JhdGluZw0KKGEgdHdlYWtlZCB2ZXJzaW9uIG9mKSB0aGUgQ3J5cHRvIEFQSSB3
aGVyZSB0aGF0IGFjdHVhbGx5IG1ha2VzIHNlbnNlPw0KUm9tZSB3YXNuJ3QgYnVpbHQgaW4gb25l
IGRheSBlaXRoZXIgLi4uDQoNClJlZ2FyZHMsDQpQYXNjYWwgdmFuIExlZXV3ZW4NClNpbGljb24g
SVAgQXJjaGl0ZWN0LCBNdWx0aS1Qcm90b2NvbCBFbmdpbmVzIEAgVmVyaW1hdHJpeA0Kd3d3Lmlu
c2lkZXNlY3VyZS5jb20NCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlz
dHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3Rp
bmZvL2xpbnV4LWFybS1rZXJuZWwK
