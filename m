Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D7B155D4C
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Jun 2019 03:18:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Date:From:Message-ID:MIME-Version:
	Subject:To:References:In-Reply-To:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7XfujTpt+yB2YqgOLvjga3FJq34+7kakc0FxWza5azU=; b=UTSwcot1HE5+uv
	mB5SEoo3hhQEE+JGkR0MJ+8lgm4jNNDaG49QX6NWIGPO2lXQ2k/OFFeS+1hB1Jxk0O/dFYPavJcr7
	tJHEO6YNQTTW8gMzbEp9k8tJEhpVmhCGiKLg3SzwbPe9a213JJF1w9KSKiXMgUnMHHJb64rqiPDHR
	rWxAn/9IRE40oD+I9j/uKBZkPzskPMKC7KUGcrq0f4cGUBh5Eeid/W/i1Pi1SmGD6NYlTJqSnEtaS
	PRE/9xZuNat6GKLzznaBpTsDrDndnZgv/PSrOW1UC/kJpuEAvb4xTcTfe2F2uYmhC9WT36NdGyXiA
	Dnx+dIk1qg/6Rd9s9z0w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfwZP-0008AM-9j; Wed, 26 Jun 2019 01:17:55 +0000
Received: from twhmllg3.macronix.com ([122.147.135.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfwYQ-0007vk-0A; Wed, 26 Jun 2019 01:16:56 +0000
Received: from twhfmlp1.macronix.com (twhfm1p1.macronix.com [172.17.20.91])
 by TWHMLLG3.macronix.com with ESMTP id x5Q1GSee000377;
 Wed, 26 Jun 2019 09:16:28 +0800 (GMT-8)
 (envelope-from masonccyang@mxic.com.tw)
Received: from MXML06C.mxic.com.tw (mxml06c.mxic.com.tw [172.17.14.55])
 by Forcepoint Email with ESMTP id B568EF73B32CCA634DCC;
 Wed, 26 Jun 2019 09:16:28 +0800 (CST)
In-Reply-To: <20190620172250.9102-4-vigneshr@ti.com>
References: <20190620172250.9102-1-vigneshr@ti.com>
 <20190620172250.9102-4-vigneshr@ti.com>
To: "Vignesh Raghavendra" <vigneshr@ti.com>
Subject: Re: [PATCH v7 3/5] mtd: Add support for HyperBus memory devices
MIME-Version: 1.0
X-KeepSent: 97D41CEB:1200A9E4-48258425:0006AA42;
 type=4; name=$KeepSent
X-Mailer: Lotus Notes Release 8.5.3FP4 SHF90 June 10, 2013
Message-ID: <OF97D41CEB.1200A9E4-ON48258425.0006AA42-48258425.000700E5@mxic.com.tw>
From: masonccyang@mxic.com.tw
Date: Wed, 26 Jun 2019 09:16:29 +0800
X-MIMETrack: Serialize by Router on MXML06C/TAIWAN/MXIC(Release 9.0.1FP10
 HF265|July 25, 2018) at 2019/06/26 AM 09:16:28,
 Serialize complete at 2019/06/26 AM 09:16:28
X-MAIL: TWHMLLG3.macronix.com x5Q1GSee000377
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190625_181654_506655_0595E01C 
X-CRM114-Status: GOOD (  12.83  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [122.147.135.201 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, Vignesh Raghavendra <vigneshr@ti.com>,
 Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>,
 Boris Brezillon <bbrezillon@kernel.org>, Richard Weinberger <richard@nod.at>,
 linux-kernel@vger.kernel.org, Marek Vasut <marek.vasut@gmail.com>,
 Rob Herring <robh+dt@kernel.org>, linux-mtd@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgVmlnbmVzaCwNCg0KPiANCj4gU3ViamVjdA0KPiANCj4gW1BBVENIIHY3IDMvNV0gbXRkOiBB
ZGQgc3VwcG9ydCBmb3IgSHlwZXJCdXMgbWVtb3J5IGRldmljZXMNCj4gDQo+IEN5cHJlc3MnIEh5
cGVyQnVzIGlzIExvdyBTaWduYWwgQ291bnQsIEhpZ2ggUGVyZm9ybWFuY2UgRG91YmxlIERhdGEg
UmF0ZQ0KPiBCdXMgaW50ZXJmYWNlIGJldHdlZW4gYSBob3N0IHN5c3RlbSBtYXN0ZXIgYW5kIG9u
ZSBvciBtb3JlIHNsYXZlDQo+IGludGVyZmFjZXMuIEh5cGVyQnVzIGlzIHVzZWQgdG8gY29ubmVj
dCBtaWNyb3Byb2Nlc3NvciwgbWljcm9jb250cm9sbGVyLA0KPiBvciBBU0lDIGRldmljZXMgd2l0
aCByYW5kb20gYWNjZXNzIE5PUiBmbGFzaCBtZW1vcnkgKGNhbGxlZCBIeXBlckZsYXNoKQ0KPiBv
ciBzZWxmIHJlZnJlc2ggRFJBTSAoY2FsbGVkIEh5cGVyUkFNKS4NCj4gDQo+IEl0cyBhIDgtYml0
IGRhdGEgYnVzIChEUVs3OjBdKSB3aXRoICBSZWFkLVdyaXRlIERhdGEgU3Ryb2JlIChSV0RTKQ0K
PiBzaWduYWwgYW5kIGVpdGhlciBTaW5nbGUtZW5kZWQgY2xvY2soMy4wViBwYXJ0cykgb3IgRGlm
ZmVyZW50aWFsIGNsb2NrDQo+ICgxLjhWIHBhcnRzKS4gSXQgdXNlcyBDaGlwU2VsZWN0IGxpbmVz
IHRvIHNlbGVjdCBiL3cgbXVsdGlwbGUgc2xhdmVzLg0KPiBBdCBidXMgbGV2ZWwsIGl0IGZvbGxv
d3MgYSBzZXBhcmF0ZSBwcm90b2NvbCBkZXNjcmliZWQgaW4gSHlwZXJCdXMNCj4gc3BlY2lmaWNh
dGlvblsxXS4NCj4gDQo+IEh5cGVyRmxhc2ggZm9sbG93cyBDRkkgQU1EL0Z1aml0c3UgRXh0ZW5k
ZWQgQ29tbWFuZCBTZXQgKDB4MDAwMikgc2ltaWxhcg0KPiB0byB0aGF0IG9mIGV4aXN0aW5nIHBh
cmFsbGVsIE5PUnMuIFNpbmNlIEh5cGVyQnVzIGlzIHg4IEREUiBidXMsDQo+IGl0cyBlcXVpdmFs
ZW50IHRvIHgxNiBwYXJhbGxlbCBOT1IgZmxhc2ggd3J0IGJpdHMgcGVyIGNsb2NrIGN5Y2xlLiBC
dXQNCj4gSHlwZXJCdXMgb3BlcmF0ZXMgYXQgPjE2Nk1IeiBmcmVxdWVuY2llcy4NCj4gSHlwZXJS
QU0gcHJvdmlkZXMgZGlyZWN0IHJhbmRvbSByZWFkL3dyaXRlIGFjY2VzcyB0byBmbGFzaCBtZW1v
cnkNCj4gYXJyYXkuDQo+IA0KPiBCdXQsIEh5cGVyQnVzIG1lbW9yeSBjb250cm9sbGVycyBzZWVt
IHRvIGFic3RyYWN0IGltcGxlbWVudGF0aW9uIGRldGFpbHMNCj4gYW5kIGV4cG9zZSBhIHNpbXBs
ZSBNTUlPIGludGVyZmFjZSB0byBhY2Nlc3MgY29ubmVjdGVkIGZsYXNoLg0KPiANCj4gQWRkIHN1
cHBvcnQgZm9yIHJlZ2lzdGVyaW5nIEh5cGVyRmxhc2ggZGV2aWNlcyB3aXRoIE1URCBmcmFtZXdv
cmsuIE1URA0KPiBtYXBzIGZyYW1ld29yayBhbG9uZyB3aXRoIENGSSBjaGlwIHN1cHBvcnQgZnJh
bWV3b3JrIGFyZSB1c2VkIHRvIHN1cHBvcnQNCj4gY29tbXVuaWNhdGluZyB3aXRoIGZsYXNoLg0K
PiANCj4gRnJhbWV3b3JrIGlzIG1vZGVsbGVkIGFsb25nIHRoZSBsaW5lcyBvZiBzcGktbm9yIGZy
YW1ld29yay4gSHlwZXJCdXMNCj4gbWVtb3J5IGNvbnRyb2xsZXIgKEhCTUMpIGRyaXZlcnMgY2Fs
bHMgaHlwZXJidXNfcmVnaXN0ZXJfZGV2aWNlKCkgdG8NCj4gcmVnaXN0ZXIgYSBzaW5nbGUgSHlw
ZXJGbGFzaCBkZXZpY2UuIEh5cGVyRmxhc2ggY29yZSBwYXJzZXMgTU1JTyBhY2Nlc3MNCj4gaW5m
b3JtYXRpb24gZnJvbSBEVCwgc2V0cyB1cCB0aGUgbWFwX2luZm8gc3RydWN0LCBwcm9iZXMgQ0ZJ
IGZsYXNoIGFuZA0KPiByZWdpc3RlcnMgaXQgd2l0aCBNVEQgZnJhbWV3b3JrLg0KPiANCj4gU29t
ZSBIQk1DIG1hc3RlcnMgbmVlZCBjYWxpYnJhdGlvbi90cmFpbmluZyBzZXF1ZW5jZVszXSB0byBi
ZSBjYXJyaWVkDQo+IG91dCwgaW4gb3JkZXIgZm9yIERMTCBpbnNpZGUgdGhlIGNvbnRyb2xsZXIg
dG8gbG9jaywgYnkgcmVhZGluZyBhIGtub3duDQo+IHN0cmluZy9wYXR0ZXJuLiBUaGlzIGlzIGRv
bmUgYnkgcmVwZWF0ZWRseSByZWFkaW5nIENGSSBRdWVyeQ0KPiBJZGVudGlmaWNhdGlvbiBTdHJp
bmcuIENhbGlicmF0aW9uIG5lZWRzIHRvIGJlIGRvbmUgYmVmb3JlIHRyeWluZyB0byANCmRldGVj
dA0KPiBmbGFzaCBhcyBwYXJ0IG9mIENGSSBmbGFzaCBwcm9iZS4NCj4gDQo+IEh5cGVyUkFNIGlz
IG5vdCBzdXBwb3J0ZWQgYXQgdGhlIG1vbWVudC4NCj4gDQo+IEh5cGVyQnVzIHNwZWNpZmljYXRp
b24gY2FuIGJlIGZvdW5kIGF0WzFdDQo+IEh5cGVyRmxhc2ggZGF0YXNoZWV0IGNhbiBiZSBmb3Vu
ZCBhdFsyXQ0KPiANCj4gWzFdIGh0dHBzOi8vd3d3LmN5cHJlc3MuY29tL2ZpbGUvMjEzMzU2L2Rv
d25sb2FkDQo+IFsyXSBodHRwczovL3d3dy5jeXByZXNzLmNvbS9maWxlLzIxMzM0Ni9kb3dubG9h
ZA0KPiBbM10gaHR0cDovL3d3dy50aS5jb20vbGl0L3VnL3NwcnVpZDdiL3NwcnVpZDdiLnBkZg0K
PiAgICAgVGFibGUgMTItNTc0MS4gSHlwZXJGbGFzaCBBY2Nlc3MgU2VxdWVuY2UNCj4gDQo+IFNp
Z25lZC1vZmYtYnk6IFZpZ25lc2ggUmFnaGF2ZW5kcmEgPHZpZ25lc2hyQHRpLmNvbT4NCg0KQ3lw
cmVzcyBoYXMgYW5ub3VuY2VkIHRoZSBpbmNsdXNpb24gb2YgQ3lwcmVzc+KAmSBoaWdoLWJhbmR3
aWR0aCANCkh5cGVyQnVz4oSiIDgtYml0IHNlcmlhbCBtZW1vcnkgaW50ZXJmYWNlIGludG8gdGhl
IG5ldyBlWHBhbmRlZCBTUEkgKHhTUEkpIA0KZWxlY3RyaWNhbCBpbnRlcmZhY2Ugc3RhbmRhcmQg
ZnJvbSB0aGUgSkVERUMgU29saWQgU3RhdGUgVGVjaG5vbG9neSANCkFzc29jaWF0aW9uIA0KDQpm
b3IgZGV0YWlsLCBwbGVhc2UgZ29lcyB0bw0KaHR0cHM6Ly93d3cuY3lwcmVzcy5jb20vbmV3cy9j
eXByZXNzLWh5cGVyYnVzLW1lbW9yeS1pbnRlcmZhY2UtaW5zdGFudC1hcHBsaWNhdGlvbnMtaW5j
b3Jwb3JhdGVkLWplZGVjLXhzcGktZWxlY3RyaWNhbCANCg0KDQpGWUksDQoNCnRoYW5rcyAmIGJl
c3QgcmVnYXJkcywNCk1hc29uDQoNCg0KDQpDT05GSURFTlRJQUxJVFkgTk9URToNCg0KVGhpcyBl
LW1haWwgYW5kIGFueSBhdHRhY2htZW50cyBtYXkgY29udGFpbiBjb25maWRlbnRpYWwgaW5mb3Jt
YXRpb24gDQphbmQvb3IgcGVyc29uYWwgZGF0YSwgd2hpY2ggaXMgcHJvdGVjdGVkIGJ5IGFwcGxp
Y2FibGUgbGF3cy4gUGxlYXNlIGJlIA0KcmVtaW5kZWQgdGhhdCBkdXBsaWNhdGlvbiwgZGlzY2xv
c3VyZSwgZGlzdHJpYnV0aW9uLCBvciB1c2Ugb2YgdGhpcyBlLW1haWwgDQooYW5kL29yIGl0cyBh
dHRhY2htZW50cykgb3IgYW55IHBhcnQgdGhlcmVvZiBpcyBwcm9oaWJpdGVkLiBJZiB5b3UgcmVj
ZWl2ZSANCnRoaXMgZS1tYWlsIGluIGVycm9yLCBwbGVhc2Ugbm90aWZ5IHVzIGltbWVkaWF0ZWx5
IGFuZCBkZWxldGUgdGhpcyBtYWlsIGFzIA0Kd2VsbCBhcyBpdHMgYXR0YWNobWVudChzKSBmcm9t
IHlvdXIgc3lzdGVtLiBJbiBhZGRpdGlvbiwgcGxlYXNlIGJlIA0KaW5mb3JtZWQgdGhhdCBjb2xs
ZWN0aW9uLCBwcm9jZXNzaW5nLCBhbmQvb3IgdXNlIG9mIHBlcnNvbmFsIGRhdGEgaXMgDQpwcm9o
aWJpdGVkIHVubGVzcyBleHByZXNzbHkgcGVybWl0dGVkIGJ5IHBlcnNvbmFsIGRhdGEgcHJvdGVj
dGlvbiBsYXdzLiANClRoYW5rIHlvdSBmb3IgeW91ciBhdHRlbnRpb24gYW5kIGNvb3BlcmF0aW9u
Lg0KDQpNYWNyb25peCBJbnRlcm5hdGlvbmFsIENvLiwgTHRkLg0KDQo9PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCg0K
DQoNCj09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT0NCg0KQ09ORklERU5USUFMSVRZIE5PVEU6DQoNClRoaXMg
ZS1tYWlsIGFuZCBhbnkgYXR0YWNobWVudHMgbWF5IGNvbnRhaW4gY29uZmlkZW50aWFsIGluZm9y
bWF0aW9uIGFuZC9vciBwZXJzb25hbCBkYXRhLCB3aGljaCBpcyBwcm90ZWN0ZWQgYnkgYXBwbGlj
YWJsZSBsYXdzLiBQbGVhc2UgYmUgcmVtaW5kZWQgdGhhdCBkdXBsaWNhdGlvbiwgZGlzY2xvc3Vy
ZSwgZGlzdHJpYnV0aW9uLCBvciB1c2Ugb2YgdGhpcyBlLW1haWwgKGFuZC9vciBpdHMgYXR0YWNo
bWVudHMpIG9yIGFueSBwYXJ0IHRoZXJlb2YgaXMgcHJvaGliaXRlZC4gSWYgeW91IHJlY2VpdmUg
dGhpcyBlLW1haWwgaW4gZXJyb3IsIHBsZWFzZSBub3RpZnkgdXMgaW1tZWRpYXRlbHkgYW5kIGRl
bGV0ZSB0aGlzIG1haWwgYXMgd2VsbCBhcyBpdHMgYXR0YWNobWVudChzKSBmcm9tIHlvdXIgc3lz
dGVtLiBJbiBhZGRpdGlvbiwgcGxlYXNlIGJlIGluZm9ybWVkIHRoYXQgY29sbGVjdGlvbiwgcHJv
Y2Vzc2luZywgYW5kL29yIHVzZSBvZiBwZXJzb25hbCBkYXRhIGlzIHByb2hpYml0ZWQgdW5sZXNz
IGV4cHJlc3NseSBwZXJtaXR0ZWQgYnkgcGVyc29uYWwgZGF0YSBwcm90ZWN0aW9uIGxhd3MuIFRo
YW5rIHlvdSBmb3IgeW91ciBhdHRlbnRpb24gYW5kIGNvb3BlcmF0aW9uLg0KDQpNYWNyb25peCBJ
bnRlcm5hdGlvbmFsIENvLiwgTHRkLg0KDQo9PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09
PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT09PT0NCl9fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBs
aXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5m
cmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
