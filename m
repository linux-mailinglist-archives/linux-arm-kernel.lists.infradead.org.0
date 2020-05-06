Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CB01C6A7D
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 09:53:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vELnuSfW8LcoX9hpR2j7mMZ/EczXT069QlXRKglnH5Y=; b=VmoH/QTQ54Nx+T
	Jrpo9ozyexqcwjVV2owcnX4XoT+mSSOqFVbnJmI5nLO+DiIVkkxs/osa/USrKVkqRmwNPOgx0fmrR
	HSfI2S6CJ0mj8Av2qXjTrDU9wEwxSqamT7SjqDTbcFF6sBuYAiTCMtr431qqZkVCfOKQMw5cPho9R
	9dRjVP1IKyx8eLTDBPLtYVu2gxsOa1mM9/mxRnXWukanBqXkNfW5bQ/YVDImPgWJa0c8HGup3ee2P
	peU4cP6EhpBDTMjpH/Oub3uIHd86UStpron5s/bbgXyaQ9IOh0pdcIMlW/ArfjdBfEmDeDsv7PHMn
	o82l9pI/zYtQslBDCq8A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWErl-00087U-Pk; Wed, 06 May 2020 07:53:18 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWEr1-0007eH-BQ; Wed, 06 May 2020 07:52:33 +0000
X-UUID: 7b0088c81bca4dd49def3a5185b0c25b-20200505
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=0wpkMCndWErEEL60irBIuIsR5TVHJ1Ka70h9+EaJgU0=; 
 b=Kdi3Kes3FCsYrQMjlHCyJyRSPnl9tv74J9I/ADu5FFFD72C5N27v17VZBiOk4t55SG+6BwFCJOaBHWcOih0l0QgK6d9dlsxvtKXuMQ7eymnecVB31q3Y4Sc3+czeDjf9ZBYYuWHRE2RwncAkLV4VTP2UF+SH2gTITr6iXZkUxZU=;
X-UUID: 7b0088c81bca4dd49def3a5185b0c25b-20200505
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <weiyi.lu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 759937830; Tue, 05 May 2020 23:52:23 -0800
Received: from MTKMBS02N1.mediatek.inc (172.21.101.77) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 00:42:25 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs02n1.mediatek.inc (172.21.101.77) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 15:42:25 +0800
Received: from [172.21.77.4] (172.21.77.4) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 15:42:21 +0800
Message-ID: <1588750946.3262.28.camel@mtksdaap41>
Subject: Re: [PATCH v13 06/11] soc: mediatek: Add subsys clock control for
 bus protection
From: Weiyi Lu <weiyi.lu@mediatek.com>
To: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Wed, 6 May 2020 15:42:26 +0800
In-Reply-To: <CAFqH_50KjArK4hCeO88jGoaHgybOOkwTXx2vemO6LdxFqHAeXw@mail.gmail.com>
References: <1584689540-5227-1-git-send-email-weiyi.lu@mediatek.com>
 <1584689540-5227-7-git-send-email-weiyi.lu@mediatek.com>
 <CAFqH_50KjArK4hCeO88jGoaHgybOOkwTXx2vemO6LdxFqHAeXw@mail.gmail.com>
X-Mailer: Evolution 3.10.4-0ubuntu2 
MIME-Version: 1.0
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_005231_439552_BE865C33 
X-CRM114-Status: GOOD (  24.59  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
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
Cc: Rob Herring <robh@kernel.org>, Nicolas Boichat <drinkcat@chromium.org>,
 srv_heupstream <srv_heupstream@mediatek.com>,
 JamesJJ Liao =?UTF-8?Q?=28=E5=BB=96=E5=BB=BA=E6=99=BA=29?=
 <jamesjj.liao@mediatek.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Fan Chen =?UTF-8?Q?=28=E9=99=B3=E5=87=A1=29?= <fan.chen@mediatek.com>,
 "moderated
 list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>, Sascha
 Hauer <kernel@pengutronix.de>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

DQpPbiBGcmksIDIwMjAtMDQtMjQgYXQgMDI6MTkgKzA4MDAsIEVucmljIEJhbGxldGJvIFNlcnJh
IHdyb3RlOg0KPiBIaSBXZWl5aSBMdSwNCj4gDQo+IFRoYW5rIHlvdSBmb3IgdGhlIHBhdGNoLg0K
PiANCj4gTWlzc2F0Z2UgZGUgV2VpeWkgTHUgPHdlaXlpLmx1QG1lZGlhdGVrLmNvbT4gZGVsIGRp
YSBkdi4sIDIwIGRlIG1hcsOnDQo+IDIwMjAgYSBsZXMgODozMzoNCj4gPg0KPiA+IEZvciB0aGUg
YnVzIHByb3RlY3Rpb24gb3BlcmF0aW9ucywgc29tZSBzdWJzeXMgY2xvY2tzIG5lZWQgdG8gYmUg
ZW5hYmxlZA0KPiA+IGJlZm9yZSByZWxlYXNpbmcgdGhlIHByb3RlY3Rpb24sIGFuZCB2aXNlIHZl
cnNhLg0KPiANCj4gdHlwbyBzL3Zpc2UvdmljZS8NCg0KVGhhbmtzLCBJJ2xsIGZpeCBpdC4NCg0K
PiANCj4gPiBCdXQgdGhvc2Ugc3Vic3lzIGNsb2NrcyBjb3VsZCBvbmx5IGJlIGNvbnRyb2xsZWQg
b25jZSBpdHMgY29ycmVzcG9uZGluZw0KPiA+IHBvd2VyIGRvbWFpbiBpcyB0dXJuZWQgb24gZmly
c3QuDQo+ID4gSW4gdGhpcyBwYXRjaCwgd2UgYWRkIHRoZSBzdWJzeXMgY2xvY2sgY29udHJvbCBp
bnRvIGl0cyByZWxhdmVudCBzdGVwcy4NCj4gDQo+IHR5cG8gcy9yZWxhdmVudC9yZWxldmFudC8N
Cj4gDQoNClRoYW5rcywgSSdsbCBmaXggaXQuDQoNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFdl
aXlpIEx1IDx3ZWl5aS5sdUBtZWRpYXRlay5jb20+DQo+ID4gLS0tDQo+ID4gIGRyaXZlcnMvc29j
L21lZGlhdGVrL210ay1zY3BzeXMuYyB8IDcxICsrKysrKysrKysrKysrKysrKysrKysrKysrKysr
KysrKysrKystLQ0KPiA+ICAxIGZpbGUgY2hhbmdlZCwgNjkgaW5zZXJ0aW9ucygrKSwgMiBkZWxl
dGlvbnMoLSkNCj4gPg0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGst
c2Nwc3lzLmMgYi9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMNCj4gPiBpbmRleCBh
NGZiMGIyMy4uMmE5NDc4ZiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL3NvYy9tZWRpYXRlay9t
dGstc2Nwc3lzLmMNCj4gPiArKysgYi9kcml2ZXJzL3NvYy9tZWRpYXRlay9tdGstc2Nwc3lzLmMN
Cj4gPiBAQCAtODAsNiArODAsNyBAQA0KPiA+ICAjZGVmaW5lIFBXUl9TVEFUVVNfV0IgICAgICAg
ICAgICAgICAgICBCSVQoMjcpIC8qIE1UNzYyMiAqLw0KPiA+DQo+ID4gICNkZWZpbmUgTUFYX0NM
S1MgICAgICAgMw0KPiA+ICsjZGVmaW5lIE1BWF9TVUJTWVNfQ0xLUyAxMA0KPiA+DQo+ID4gIC8q
Kg0KPiA+ICAgKiBzdHJ1Y3Qgc2NwX2RvbWFpbl9kYXRhIC0gc2NwIGRvbWFpbiBkYXRhIGZvciBw
b3dlciBvbi9vZmYgZmxvdw0KPiA+IEBAIC04OSw2ICs5MCw4IEBADQo+ID4gICAqIEBzcmFtX3Bk
bl9iaXRzOiBUaGUgbWFzayBmb3Igc3JhbSBwb3dlciBjb250cm9sIGJpdHMuDQo+ID4gICAqIEBz
cmFtX3Bkbl9hY2tfYml0czogVGhlIG1hc2sgZm9yIHNyYW0gcG93ZXIgY29udHJvbCBhY2tlZCBi
aXRzLg0KPiA+ICAgKiBAYmFzaWNfY2xrX25hbWU6IFRoZSBiYXNpYyBjbG9ja3MgcmVxdWlyZWQg
YnkgdGhpcyBwb3dlciBkb21haW4uDQo+ID4gKyAqIEBzdWJzeXNfY2xrX3ByZWZpeDogVGhlIHBy
ZWZpeCBuYW1lIG9mIHRoZSBjbG9ja3MgbmVlZCB0byBiZSBlbmFibGVkDQo+ID4gKyAqICAgICAg
ICAgICAgICAgICAgICAgYmVmb3JlIHJlbGVhc2luZyBidXMgcHJvdGVjdGlvbi4NCj4gPiAgICog
QGNhcHM6IFRoZSBmbGFnIGZvciBhY3RpdmUgd2FrZS11cCBhY3Rpb24uDQo+ID4gICAqIEBicF90
YWJsZTogVGhlIG1hc2sgdGFibGUgZm9yIG11bHRpcGxlIHN0ZXAgYnVzIHByb3RlY3Rpb24uDQo+
ID4gICAqLw0KPiA+IEBAIC05OSw2ICsxMDIsNyBAQCBzdHJ1Y3Qgc2NwX2RvbWFpbl9kYXRhIHsN
Cj4gPiAgICAgICAgIHUzMiBzcmFtX3Bkbl9iaXRzOw0KPiA+ICAgICAgICAgdTMyIHNyYW1fcGRu
X2Fja19iaXRzOw0KPiA+ICAgICAgICAgY29uc3QgY2hhciAqYmFzaWNfY2xrX25hbWVbTUFYX0NM
S1NdOw0KPiA+ICsgICAgICAgY29uc3QgY2hhciAqc3Vic3lzX2Nsa19wcmVmaXg7DQo+ID4gICAg
ICAgICB1OCBjYXBzOw0KPiA+ICAgICAgICAgc3RydWN0IGJ1c19wcm90IGJwX3RhYmxlW01BWF9T
VEVQU107DQo+ID4gIH07DQo+ID4gQEAgLTEwOSw2ICsxMTMsNyBAQCBzdHJ1Y3Qgc2NwX2RvbWFp
biB7DQo+ID4gICAgICAgICBzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gZ2VucGQ7DQo+ID4gICAg
ICAgICBzdHJ1Y3Qgc2NwICpzY3A7DQo+ID4gICAgICAgICBzdHJ1Y3QgY2xrICpjbGtbTUFYX0NM
S1NdOw0KPiA+ICsgICAgICAgc3RydWN0IGNsayAqc3Vic3lzX2Nsa1tNQVhfU1VCU1lTX0NMS1Nd
Ow0KPiA+ICAgICAgICAgY29uc3Qgc3RydWN0IHNjcF9kb21haW5fZGF0YSAqZGF0YTsNCj4gPiAg
ICAgICAgIHN0cnVjdCByZWd1bGF0b3IgKnN1cHBseTsNCj4gPiAgfTsNCj4gPiBAQCAtMzg0LDE2
ICszODksMjIgQEAgc3RhdGljIGludCBzY3BzeXNfcG93ZXJfb24oc3RydWN0IGdlbmVyaWNfcG1f
ZG9tYWluICpnZW5wZCkNCj4gPiAgICAgICAgIHZhbCB8PSBQV1JfUlNUX0JfQklUOw0KPiA+ICAg
ICAgICAgd3JpdGVsKHZhbCwgY3RsX2FkZHIpOw0KPiA+DQo+ID4gLSAgICAgICByZXQgPSBzY3Bz
eXNfc3JhbV9lbmFibGUoc2NwZCwgY3RsX2FkZHIpOw0KPiA+ICsgICAgICAgcmV0ID0gc2Nwc3lz
X2Nsa19lbmFibGUoc2NwZC0+c3Vic3lzX2NsaywgTUFYX1NVQlNZU19DTEtTKTsNCj4gPiAgICAg
ICAgIGlmIChyZXQgPCAwKQ0KPiA+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9wd3JfYWNrOw0K
PiA+DQo+ID4gKyAgICAgICByZXQgPSBzY3BzeXNfc3JhbV9lbmFibGUoc2NwZCwgY3RsX2FkZHIp
Ow0KPiA+ICsgICAgICAgaWYgKHJldCA8IDApDQo+ID4gKyAgICAgICAgICAgICAgIGdvdG8gZXJy
X3NyYW07DQo+ID4gKw0KPiA+ICAgICAgICAgcmV0ID0gc2Nwc3lzX2J1c19wcm90ZWN0X2Rpc2Fi
bGUoc2NwZCk7DQo+ID4gICAgICAgICBpZiAocmV0IDwgMCkNCj4gPiAtICAgICAgICAgICAgICAg
Z290byBlcnJfcHdyX2FjazsNCj4gPiArICAgICAgICAgICAgICAgZ290byBlcnJfc3JhbTsNCj4g
Pg0KPiA+ICAgICAgICAgcmV0dXJuIDA7DQo+ID4NCj4gPiArZXJyX3NyYW06DQo+ID4gKyAgICAg
ICBzY3BzeXNfY2xrX2Rpc2FibGUoc2NwZC0+c3Vic3lzX2NsaywgTUFYX1NVQlNZU19DTEtTKTsN
Cj4gPiAgZXJyX3B3cl9hY2s6DQo+ID4gICAgICAgICBzY3BzeXNfY2xrX2Rpc2FibGUoc2NwZC0+
Y2xrLCBNQVhfQ0xLUyk7DQo+ID4gIGVycl9jbGs6DQo+ID4gQEAgLTQyMCw2ICs0MzEsOCBAQCBz
dGF0aWMgaW50IHNjcHN5c19wb3dlcl9vZmYoc3RydWN0IGdlbmVyaWNfcG1fZG9tYWluICpnZW5w
ZCkNCj4gPiAgICAgICAgIGlmIChyZXQgPCAwKQ0KPiA+ICAgICAgICAgICAgICAgICBnb3RvIG91
dDsNCj4gPg0KPiA+ICsgICAgICAgc2Nwc3lzX2Nsa19kaXNhYmxlKHNjcGQtPnN1YnN5c19jbGss
IE1BWF9TVUJTWVNfQ0xLUyk7DQo+ID4gKw0KPiA+ICAgICAgICAgLyogc3Vic3lzIHBvd2VyIG9m
ZiAqLw0KPiA+ICAgICAgICAgdmFsID0gcmVhZGwoY3RsX2FkZHIpOw0KPiA+ICAgICAgICAgdmFs
IHw9IFBXUl9JU09fQklUOw0KPiA+IEBAIC00NTcsNiArNDcwLDQ4IEBAIHN0YXRpYyBpbnQgc2Nw
c3lzX3Bvd2VyX29mZihzdHJ1Y3QgZ2VuZXJpY19wbV9kb21haW4gKmdlbnBkKQ0KPiA+ICAgICAg
ICAgcmV0dXJuIHJldDsNCj4gPiAgfQ0KPiA+DQo+ID4gK3N0YXRpYyBpbnQgaW5pdF9zdWJzeXNf
Y2xrcyhzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2LA0KPiA+ICsgICAgICAgICAgICAgICBj
b25zdCBjaGFyICpwcmVmaXgsIHN0cnVjdCBjbGsgKipjbGspDQo+ID4gK3sNCj4gPiArICAgICAg
IHN0cnVjdCBkZXZpY2Vfbm9kZSAqbm9kZSA9IHBkZXYtPmRldi5vZl9ub2RlOw0KPiA+ICsgICAg
ICAgdTMyIHByZWZpeF9sZW4sIHN1Yl9jbGtfY250ID0gMDsNCj4gPiArICAgICAgIHN0cnVjdCBw
cm9wZXJ0eSAqcHJvcDsNCj4gPiArICAgICAgIGNvbnN0IGNoYXIgKmNsa19uYW1lOw0KPiA+ICsN
Cj4gPiArICAgICAgIGlmICghbm9kZSkgew0KPiANCj4gSXMgdGhpcyBwb3NzaWJsZT8gSSBzdXNw
ZWN0IHlvdSBjYW4gcmVtb3ZlIHRoaXMgY2hlY2suDQo+IA0KDQpZb3UncmUgcmlnaHQuIEl0IG5l
dmVyIGhhcHBlbnMsIEknbGwgcmVtb3ZlIGl0Lg0KDQo+ID4gKyAgICAgICAgICAgICAgIGRldl9l
cnIoJnBkZXYtPmRldiwgIkNhbm5vdCBmaW5kIHNjcHN5cyBub2RlOiAlbGRcbiIsDQo+ID4gKyAg
ICAgICAgICAgICAgICAgICAgICAgUFRSX0VSUihub2RlKSk7DQo+ID4gKyAgICAgICAgICAgICAg
IHJldHVybiBQVFJfRVJSKG5vZGUpOw0KPiA+ICsgICAgICAgfQ0KPiA+ICsNCj4gPiArICAgICAg
IHByZWZpeF9sZW4gPSBzdHJsZW4ocHJlZml4KTsNCj4gPiArDQo+ID4gKyAgICAgICBvZl9wcm9w
ZXJ0eV9mb3JfZWFjaF9zdHJpbmcobm9kZSwgImNsb2NrLW5hbWVzIiwgcHJvcCwgY2xrX25hbWUp
IHsNCj4gPiArICAgICAgICAgICAgICAgaWYgKCFzdHJuY21wKGNsa19uYW1lLCBwcmVmaXgsIHBy
ZWZpeF9sZW4pICYmDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAoY2xrX25h
bWVbcHJlZml4X2xlbl0gPT0gJy0nKSkgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlm
IChzdWJfY2xrX2NudCA+PSBNQVhfU1VCU1lTX0NMS1MpIHsNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGRldl9lcnIoJnBkZXYtPmRldiwNCj4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgInN1YnN5cyBjbGsgb3V0IG9mIHJhbmdlICVkXG4iLA0K
PiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBzdWJfY2xrX2NudCk7
DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gLUVJTlZBTDsNCj4g
PiArICAgICAgICAgICAgICAgICAgICAgICB9DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgIGNsa1tzdWJfY2xrX2NudF0gPSBkZXZtX2Nsa19nZXQoJnBkZXYtPmRldiwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbGtfbmFtZSk7
DQo+ID4gKw0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGlmIChJU19FUlIoY2xrW3N1Yl9j
bGtfY250XSkpIHsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIGRldl9lcnIo
JnBkZXYtPmRldiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IlN1YnN5cyBjbGsgZ2V0IGZhaWwgJWxkXG4iLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICBQVFJfRVJSKGNsa1tzdWJfY2xrX2NudF0pKTsNCj4gDQo+IFRoaXMg
ZGV2X2VyciBpcyByZWR1bmRhbnQsIGRldm1fY2xrX2dldCBhbHJlYWR5IHByaW50cyBpdCBpZiB0
aGUgY2xvY2sNCj4gaXMgbm90IGZvdW5kLg0KPiANCg0KR290IGl0Lg0KDQo+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gUFRSX0VSUihjbGtbc3ViX2Nsa19jbnRdKTsN
Cj4gPiArICAgICAgICAgICAgICAgICAgICAgICB9DQo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgc3ViX2Nsa19jbnQrKzsNCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICsgICAgICAgfQ0K
PiA+ICsNCj4gPiArICAgICAgIHJldHVybiBzdWJfY2xrX2NudDsNCj4gPiArfQ0KPiA+ICsNCj4g
PiAgc3RhdGljIGludCBpbml0X2Jhc2ljX2Nsa3Moc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRl
diwgc3RydWN0IGNsayAqKmNsaywNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBjb25zdCBj
aGFyICogY29uc3QgKm5hbWUpDQo+ID4gIHsNCj4gPiBAQCAtNTU5LDYgKzYxNCwxOCBAQCBzdGF0
aWMgc3RydWN0IHNjcCAqaW5pdF9zY3Aoc3RydWN0IHBsYXRmb3JtX2RldmljZSAqcGRldiwNCj4g
PiAgICAgICAgICAgICAgICAgaWYgKHJldCkNCj4gPiAgICAgICAgICAgICAgICAgICAgICAgICBy
ZXR1cm4gRVJSX1BUUihyZXQpOw0KPiA+DQo+ID4gKyAgICAgICAgICAgICAgIGlmIChkYXRhLT5z
dWJzeXNfY2xrX3ByZWZpeCkgew0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHJldCA9IGlu
aXRfc3Vic3lzX2Nsa3MocGRldiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgZGF0YS0+c3Vic3lzX2Nsa19wcmVmaXgsDQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgIHNjcGQtPnN1YnN5c19jbGspOw0KPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgIGlmIChyZXQgPCAwKSB7DQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICBkZXZfZXJyKCZwZGV2LT5kZXYsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICIlczogc3Vic3lzIGNsayB1bmF2YWlsYWJsZVxuIiwNCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZGF0YS0+bmFtZSk7DQo+IA0KPiBB
bmQgdGhpcyBwcmludCBpcyBhbHNvIHJlZHVuZGFudC4NCj4gDQoNCkdvdCBpdC4NCj4gDQo+ID4g
KyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZXR1cm4gRVJSX1BUUihyZXQpOw0KPiA+
ICsgICAgICAgICAgICAgICAgICAgICAgIH0NCj4gPiArICAgICAgICAgICAgICAgfQ0KPiA+ICsN
Cj4gPiAgICAgICAgICAgICAgICAgZ2VucGQtPm5hbWUgPSBkYXRhLT5uYW1lOw0KPiA+ICAgICAg
ICAgICAgICAgICBnZW5wZC0+cG93ZXJfb2ZmID0gc2Nwc3lzX3Bvd2VyX29mZjsNCj4gPiAgICAg
ICAgICAgICAgICAgZ2VucGQtPnBvd2VyX29uID0gc2Nwc3lzX3Bvd2VyX29uOw0KPiA+IC0tDQo+
ID4gMS44LjEuMS5kaXJ0eQ0KPiA+IF9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fDQo+ID4gTGludXgtbWVkaWF0ZWsgbWFpbGluZyBsaXN0DQo+ID4gTGludXgt
bWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZw0KPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsNCj4gDQo+IF9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fDQo+IExpbnV4LW1lZGlhdGVrIG1haWxp
bmcgbGlzdA0KPiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnDQo+IGh0dHA6Ly9s
aXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtbWVkaWF0ZWsNCg0KDQpf
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0t
a2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcK
aHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2Vy
bmVsCg==
