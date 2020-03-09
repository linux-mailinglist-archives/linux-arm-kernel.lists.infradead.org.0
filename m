Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DDF717D90F
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Mar 2020 06:32:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:References:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=skY6YWZuZcmxnVsdxeHX48l3VuBOLOkY+6kAU5LQ9hM=; b=CwrTK7/1U2J5EY
	VyjJgIFDf1bx/tVrD9K5NeLQFbActjxkGzudn7Oa7kq+GKl9wne0TJoSEPMpYP/IJR8e842tGLShb
	iZEZHqQP2HsXfoEimwbW0ykq4T2Yo1FYLvdDfB3JbqZeVi9isPCBQ/RaEvRrkve+z1n8dk9ZFMZNO
	Ny7tjyoAVvyE4hChzhFm88l9Jp3cmcfV7cCXa90u+Y1+IdVsQ7at3lPoSGnkzv8ZIxJr98SvHoRjo
	mmT2qIqkPMAufwEWnY7d6GFpZPh3HkixsE5ooum5B4vn/+kZAs/5LR4D90jkYNcJMRL1+DoIg8lNf
	soploP6fgps6rFSKyNpw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBB1l-0000ro-3w; Mon, 09 Mar 2020 05:32:33 +0000
Received: from mswedge1.sunplus.com ([60.248.182.113] helo=mg.sunplus.com)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBB1Y-0000r3-18
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Mar 2020 05:32:22 +0000
X-MailGates: (flag:3,DYNAMIC,RELAY,NOHOST:PASS)(compute_score:DELIVER,40
	,3)
Received: from 172.17.10.65
 by mg01.sunplus.com with MailGates ESMTP Server V5.0(3656:1:AUTH_RELAY)
 (envelope-from <wells.lu@sunplus.com>); Mon, 09 Mar 2020 13:41:57 +0800 (CST)
Received: from sphcmbx01.sunplus.com.tw (unverified [172.17.9.202]) by
 SPHSML21.sunplus.com.tw (Mail System 5.5.1) with ESMTP id
 <Tddcbe78fe4ac110a41e00@SPHSML21.sunplus.com.tw>; 
 Mon, 9 Mar 2020 13:32:02 +0800
Received: from sphcmbx01.sunplus.com.tw (172.17.9.202) by
 sphcmbx01.sunplus.com.tw (172.17.9.202) with Microsoft SMTP Server (TLS) id
 15.0.1365.1; Mon, 9 Mar 2020 13:32:01 +0800
Received: from sphcmbx01.sunplus.com.tw ([fe80::e5fd:30e9:f438:74dc]) by
 sphcmbx01.sunplus.com.tw ([fe80::e5fd:30e9:f438:74dc%14]) with mapi id
 15.00.1365.000; Mon, 9 Mar 2020 13:32:01 +0800
From: =?utf-8?B?V2VsbHMgTHUg5ZGC6Iqz6aiw?= <wells.lu@sunplus.com>
To: =?utf-8?B?QW5kcmVhcyBGw6RyYmVy?= <afaerber@suse.de>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Subject: RE: [RFC 00/11] ARM: Initial Sunplus Plus1 SP7021 and BPI-F2S support
Thread-Topic: [RFC 00/11] ARM: Initial Sunplus Plus1 SP7021 and BPI-F2S support
Thread-Index: AQHV9Wc+iZ48JNOZtUa/UcV/cxjZDKg/u/EQ
Date: Mon, 9 Mar 2020 05:32:00 +0000
Message-ID: <c2239e7cb2de43c28ee9195314f56383@sphcmbx01.sunplus.com.tw>
References: <20200308163230.4002-1-afaerber@suse.de>
In-Reply-To: <20200308163230.4002-1-afaerber@suse.de>
Accept-Language: zh-TW, en-US
Content-Language: zh-TW
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.25.108.39]
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200308_223220_466711_D121B3FF 
X-CRM114-Status: GOOD (  15.85  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 Marc Zyngier <maz@kernel.org>, Jason
 Cooper <jason@lakedaemon.net>, Dvorkin Dmitry <dvorkin@tibbo.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 =?utf-8?B?5byg5p2w?= <j.zhang@sunmedia.com.cn>,
 Rob Herring <robh+dt@kernel.org>,
 "linux-serial@vger.kernel.org" <linux-serial@vger.kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>,
 Thomas Gleixner <tglx@linutronix.de>,
 =?utf-8?B?6KaD5YGl?= <qinjian@sunmedia.com.cn>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWRkZWQgSmllIFpoYW5nIGFuZCBKaWFuIFFpbiBpbiB0byBjYyBsaXN0Lg0KDQpKaWUgWmhhbmcg
aXMgc29mdHdhcmUgbGVhZGVyIG9mIFN1bnBsdXMgUGx1cyAxIChTUDcwMjEpIHBsYXRmb3JtLg0K
DQoNCi0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQpGcm9tOiBBbmRyZWFzIEbDpHJiZXIgPGFm
YWVyYmVyQHN1c2UuZGU+IA0KU2VudDogTW9uZGF5LCBNYXJjaCAwOSwgMjAyMCAxMjozMiBBTQ0K
VG86IGxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZw0KQ2M6IFdlbGxzIEx1IOWR
guiKs+mosCA8d2VsbHMubHVAc3VucGx1cy5jb20+OyBEdm9ya2luIERtaXRyeSA8ZHZvcmtpbkB0
aWJiby5jb20+OyBsaW51eC1rZXJuZWxAdmdlci5rZXJuZWwub3JnOyBBbmRyZWFzIEbDpHJiZXIg
PGFmYWVyYmVyQHN1c2UuZGU+OyBkZXZpY2V0cmVlQHZnZXIua2VybmVsLm9yZzsgUm9iIEhlcnJp
bmcgPHJvYmgrZHRAa2VybmVsLm9yZz47IEdyZWcgS3JvYWgtSGFydG1hbiA8Z3JlZ2toQGxpbnV4
Zm91bmRhdGlvbi5vcmc+OyBsaW51eC1zZXJpYWxAdmdlci5rZXJuZWwub3JnOyBUaG9tYXMgR2xl
aXhuZXIgPHRnbHhAbGludXRyb25peC5kZT47IEphc29uIENvb3BlciA8amFzb25AbGFrZWRhZW1v
bi5uZXQ+OyBNYXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPg0KU3ViamVjdDogW1JGQyAwMC8x
MV0gQVJNOiBJbml0aWFsIFN1bnBsdXMgUGx1czEgU1A3MDIxIGFuZCBCUEktRjJTIHN1cHBvcnQN
Cg0KSGVsbG8sDQoNClRoaXMgcGF0Y2ggc2VyaWVzIGFkZHMgaW5pdGlhbCBkcml2ZXJzIGFuZCBE
ZXZpY2UgVHJlZXMgZm9yIFN1bnBsdXMgUGx1czEgc2VyaWVzIChjb2RlbmFtZSBQZW50YWdyYW0p
IFNQNzAyMSBTb0MgYW5kIEJhbmFuYSBQaSBCUEktRjJTIFNCQy4NCg0KRmlyc3QsIG1pbmltYWwg
S2NvbmZpZywgRFQgYW5kIGVhcmx5Y29uIGRyaXZlciBhcmUgcHJlcGFyZWQgdG8gZ2V0IHNlcmlh
bCBvdXRwdXQgYXQgYWxsLiBOZXh0LCBpbnRlcnJ1cHQgY29udHJvbGxlciBhbmQgZnVsbCBzZXJp
YWwgZHJpdmVyIGFyZSBhZGRlZCB0aGF0IGFsbG93IHRvIGJvb3QgaW50byBhbiBpbml0cmQgd2l0
aCBpbnRlcmFjdGl2ZSBzZXJpYWwgY29uc29sZS4NCg0KRGV2aWNlIFRyZWUgZmlsZXMgYWRkZWQg
YXJlIGZvciB0aGUgQ1BVLUNoaXAgKGFrYSBBLUNoaXApIHdpdGggcXVhZCBDb3J0ZXgtQTcsIGJ1
dCB0aGUgZmlsZSBzcGxpdCBwcmVwYXJlcyBmb3IgYWxzbyBhZGRpbmcgdGhlIFBlcmlwaGVyYWwt
Q2hpcCAoQi1DaGlwKSB3aXRoDQpBUk05IGxhdGVyLiBIb3dldmVyLCBmb3Igbm93IHRoaXMgaXMg
bm90IHJlZmxlY3RlZCBpbiB0aGUgLmR0cyBmaWxlbmFtZTsgdGhpcyBjb3JyZXNwb25kcyB0byB0
aGUgdmY2MTAtIHZzLiB2ZjYxMG00LSBuYW1pbmcgc2NoZW1lLCB3aGVyZWFzIGFuIGFsdGVybmF0
aXZlIHdvdWxkIGJlIHRvIHVzZSBzcDcwMjEtY2NoaXAtIHZzLiAtcGNoaXAtIHByZWZpeCAoYXMg
c3A3MDIxLWNwdS0gbG9va3Mgd2VpcmQpLg0KSXQgaXMgYXNzdW1lZCB3ZSBjYW4gcmV1c2UgdGhl
IHNhbWUgU29DIGFuZCBib2FyZCBiaW5kaW5ncyBmb3IgQ0E3IGFuZCBBUk05IGFuZCBvbmx5IGRp
ZmZlciBmb3IgSVAgYmxvY2tzIHdoZXJlIG5lZWRlZC4NCg0KTXkgaW5xdWlyeSB0byBTdW5wbHVz
IGFib3V0IHRoZWlyIEdJQyAoYW50aWNpcGF0aW5nIGNvbXBsYWludHMgZnJvbSBNYXJjKSByZW1h
aW5lZCB1bmFuc3dlcmVkLCBzbyBJJ3ZlIGFkZGVkIHRoZSB0d28gZXh0cmEgcmVnaW9ucyBhbmQg
aXJxIG15c2VsZiwgd2l0aG91dCBiZWluZyBhYmxlIHRvIHRlc3QgS1ZNIGR1ZSB0byBCU1AgVS1C
b290IG5vdCBib290aW5nIGluIEhZUCBtb2RlLg0KQWNjb3JkaW5nIHRvIFN1bnBsdXMgdGhlIG1v
ZGUgY2FuIGJlIGNoYW5nZWQgaW4gVS1Cb290IChidXQgd2hlcmUvaG93PykuDQoNClNpbWlsYXJs
eSwgdGhlIGFyY2hpdGVjdHVyYWwgdGltZXIgaXMgbm90IHByb3Blcmx5IGluaXRpYWxpemVkIGlu
IEJTUCBVLUJvb3QsIHNvIHRoYXQgSSBjdXJyZW50bHkgaGF2ZSBhIG1hY2gtIGhhY2sgaW4gbXkg
dHJlZSBiZWxvdy4gVW5saWtlIFJURDExOTUsIHdlIGRvIGhhdmUgVS1Cb290IHNvdXJjZXMgKHYy
MDE5LjA0IGJhc2VkKSwgc28gc2hvdWxkIGJlIGFibGUgdG8gZml4IHRoaXMgaW4gdGhlIGJvb3Rs
b2FkZXIgcmF0aGVyIHRoYW4gaW4gdGhlIGtlcm5lbCwgdGh1cyBub3QgaW5jbHVkZWQgYXMgcGF0
Y2ggaGVyZS4NCg0KQmFzZWQgb24gU29DIG9ubGluZSBtYW51YWwgWzFdIGFuZCBkb3duc3RyZWFt
IEJQSS1GMlMgQlNQIHRyZWUgWzJdIGFzIHdlbGwgYXMgbXkgcHJldmlvdXMgQWN0aW9ucyBzZXJp
YWwgYW5kIFJlYWx0ZWsgaXJxY2hpcCBkcml2ZXJzIGFuZCBEVHMuDQoNCk1vcmUgZGV0YWlscyBh
dDoNCmh0dHBzOi8vZW4ub3BlbnN1c2Uub3JnL0hDTDpCYW5hbmFQaV9GMlMNCg0KTGF0ZXN0IGV4
cGVyaW1lbnRhbCBwYXRjaGVzIGF0Og0KaHR0cHM6Ly9naXRodWIuY29tL2FmYWVyYmVyL2xpbnV4
L2NvbW1pdHMvZjJzLW5leHQNCg0KSGF2ZSBhIGxvdCBvZiBmdW4hDQoNCkNoZWVycywNCkFuZHJl
YXMNCg0KWzFdIGh0dHBzOi8vc3VucGx1cy10aWJiby5hdGxhc3NpYW4ubmV0L3dpa2kvc3BhY2Vz
L2RvYy9wYWdlcy80NzA0NTAyNTIvU1A3MDIxK1RlY2huaWNhbCtNYW51YWwNClsyXSBodHRwczov
L2dpdGh1Yi5jb20vQlBJLVNJTk9WT0lQL0JQSS1GMlMtYnNwDQoNCkNjOiBkZXZpY2V0cmVlQHZn
ZXIua2VybmVsLm9yZw0KQ2M6IFJvYiBIZXJyaW5nIDxyb2JoK2R0QGtlcm5lbC5vcmc+DQpDYzog
R3JlZyBLcm9haC1IYXJ0bWFuIDxncmVna2hAbGludXhmb3VuZGF0aW9uLm9yZz4NCkNjOiBsaW51
eC1zZXJpYWxAdmdlci5rZXJuZWwub3JnDQpDYzogVGhvbWFzIEdsZWl4bmVyIDx0Z2x4QGxpbnV0
cm9uaXguZGU+DQpDYzogSmFzb24gQ29vcGVyIDxqYXNvbkBsYWtlZGFlbW9uLm5ldD4NCkNjOiBN
YXJjIFp5bmdpZXIgPG1hekBrZXJuZWwub3JnPg0KQ2M6IFdlbGxzIEx1IOWRguiKs+mosCA8d2Vs
bHMubHVAc3VucGx1cy5jb20+DQpDYzogRHZvcmtpbiBEbWl0cnkgPGR2b3JraW5AdGliYm8uY29t
Pg0KDQpBbmRyZWFzIEbDpHJiZXIgKDExKToNCiAgZHQtYmluZGluZ3M6IHZlbmRvci1wcmVmaXhl
czogQWRkIFN1bnBsdXMNCiAgZHQtYmluZGluZ3M6IGFybTogQWRkIFN1bnBsdXMgU1A3MDIxIGFu
ZCBCYW5hbmEgUGkgQlBJLUYyUw0KICBBUk06IFByZXBhcmUgU3VucGx1cyBQbHVzMSBTb0MgZmFt
aWx5DQogIGR0LWJpbmRpbmdzOiBpbnRlcnJ1cHQtY29udHJvbGxlcjogQWRkIFN1bnBsdXMgU1A3
MDIxIG11eA0KICBkdC1iaW5kaW5nczogc2VyaWFsOiBBZGQgU3VucGx1cyBTUDcwMjEgVUFSVA0K
ICB0dHk6IHNlcmlhbDogQWRkIFN1bnBsdXMgUGx1czEgVUFSVCBlYXJseWNvbg0KICBBUk06IGR0
czogQWRkIFN1bnBsdXMgUGx1czEgU1A3MDIxIGFuZCBCYW5hbmEgUGkgRjJTDQogIHR0eTogc2Vy
aWFsOiBzdW5wbHVzOiBJbXBsZW1lbnQgZnVsbCBVQVJUIGRyaXZlcg0KICBpcnFjaGlwOiBBZGQg
U3VucGx1cyBTUDcwMjEgaW50ZXJydXB0IChtdXgpIGNvbnRyb2xsZXINCiAgQVJNOiBkdHM6IHNw
NzAyMS1jcHU6IEFkZCBpbnRlcnJ1cHQgY29udHJvbGxlciBub2RlDQogIEFSTTogZHRzOiBzcDcw
MjEtY3B1OiBBZGQgZHVtbXkgVUFSVDAgY2xvY2sgYW5kIGludGVycnVwdA0KDQogRG9jdW1lbnRh
dGlvbi9kZXZpY2V0cmVlL2JpbmRpbmdzL2FybS9zdW5wbHVzLnlhbWwgfCAgMjIgKw0KIC4uLi9z
dW5wbHVzLHBlbnRhZ3JhbS1pbnRjLnlhbWwgICAgICAgICAgICAgICAgICAgIHwgIDUwICsrDQog
Li4uL2JpbmRpbmdzL3NlcmlhbC9zdW5wbHVzLHBlbnRhZ3JhbS11YXJ0LnlhbWwgICAgfCAgMjQg
Kw0KIC4uLi9kZXZpY2V0cmVlL2JpbmRpbmdzL3ZlbmRvci1wcmVmaXhlcy55YW1sICAgICAgIHwg
ICAyICsNCiBhcmNoL2FybS9LY29uZmlnICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICB8ICAgMiArDQogYXJjaC9hcm0vTWFrZWZpbGUgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgfCAgIDEgKw0KIGFyY2gvYXJtL2Jvb3QvZHRzL01ha2VmaWxlICAgICAgICAgICAgICAg
ICAgICAgICAgIHwgICAyICsNCiBhcmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3MDIxLWJw
aS1mMnMuZHRzICAgICB8ICAyOSArDQogYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAy
MS1jcHUuZHRzaSAgICAgICAgfCAgOTMgKysrDQogYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFt
LXNwNzAyMS5kdHNpICAgICAgICAgICAgfCAgNjEgKysNCiBhcmNoL2FybS9tYWNoLXN1bnBsdXMv
S2NvbmZpZyAgICAgICAgICAgICAgICAgICAgICB8ICAxMCArDQogZHJpdmVycy9pcnFjaGlwL01h
a2VmaWxlICAgICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKw0KIGRyaXZlcnMvaXJxY2hp
cC9pcnEtc3A3MDIxLmMgICAgICAgICAgICAgICAgICAgICAgIHwgMjg1ICsrKysrKysrDQogZHJp
dmVycy90dHkvc2VyaWFsL0tjb25maWcgICAgICAgICAgICAgICAgICAgICAgICAgfCAgMTkgKw0K
IGRyaXZlcnMvdHR5L3NlcmlhbC9NYWtlZmlsZSAgICAgICAgICAgICAgICAgICAgICAgIHwgICAx
ICsNCiBkcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMgICAgICAgICAgICAgICAgICB8
IDc3MCArKysrKysrKysrKysrKysrKysrKysNCiBpbmNsdWRlL3VhcGkvbGludXgvc2VyaWFsX2Nv
cmUuaCAgICAgICAgICAgICAgICAgICB8ICAgMyArDQogMTcgZmlsZXMgY2hhbmdlZCwgMTM3NSBp
bnNlcnRpb25zKCspDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50YXRpb24vZGV2aWNldHJl
ZS9iaW5kaW5ncy9hcm0vc3VucGx1cy55YW1sDQogY3JlYXRlIG1vZGUgMTAwNjQ0IERvY3VtZW50
YXRpb24vZGV2aWNldHJlZS9iaW5kaW5ncy9pbnRlcnJ1cHQtY29udHJvbGxlci9zdW5wbHVzLHBl
bnRhZ3JhbS1pbnRjLnlhbWwNCiBjcmVhdGUgbW9kZSAxMDA2NDQgRG9jdW1lbnRhdGlvbi9kZXZp
Y2V0cmVlL2JpbmRpbmdzL3NlcmlhbC9zdW5wbHVzLHBlbnRhZ3JhbS11YXJ0LnlhbWwNCiBjcmVh
dGUgbW9kZSAxMDA2NDQgYXJjaC9hcm0vYm9vdC9kdHMvcGVudGFncmFtLXNwNzAyMS1icGktZjJz
LmR0cw0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9ib290L2R0cy9wZW50YWdyYW0tc3A3
MDIxLWNwdS5kdHNpDQogY3JlYXRlIG1vZGUgMTAwNjQ0IGFyY2gvYXJtL2Jvb3QvZHRzL3BlbnRh
Z3JhbS1zcDcwMjEuZHRzaQ0KIGNyZWF0ZSBtb2RlIDEwMDY0NCBhcmNoL2FybS9tYWNoLXN1bnBs
dXMvS2NvbmZpZyAgY3JlYXRlIG1vZGUgMTAwNjQ0IGRyaXZlcnMvaXJxY2hpcC9pcnEtc3A3MDIx
LmMgIGNyZWF0ZSBtb2RlIDEwMDY0NCBkcml2ZXJzL3R0eS9zZXJpYWwvc3VucGx1cy11YXJ0LmMN
Cg0KLS0NCjIuMTYuNA0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxp
c3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0
aW5mby9saW51eC1hcm0ta2VybmVsCg==
