Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3BB1F8C3C
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 04:13:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bg49sI1tCeJsk9tXvtJ2+qv0TO0hBs3O4oati1ZXG8g=; b=Z+BpKsw2Z77GQu
	9HeM9lWCohxL9IpFkH0NeDKN2oks9+Z806EiS5/VqB8CNnRTzkUCMvkG7PIzJTqwkLALG30anwQOd
	/4aV62XUX6xPOxi5q2bqxM+pAN0DJQ2OZhcZ6BewVQGCZFglnLw3eoYumz3unrPUYYk+8hSK9ALrf
	fQk0q9xeyjga+WHaqrcS7y98CG+WkOlUtCY2e1DLXAaRCGezMoNm5nQze/4XbhuDJEoQP+PGxxsqJ
	VF4nOplWWvBccVriajeKSKuvJev8ApXvAHtYsjNJnUU81i1m5Yu2mXHltHNxjQHWN1/3SAxMOCiHk
	AdHvZU+K/X22KTIAuXlA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkece-00014V-Ie; Mon, 15 Jun 2020 02:13:16 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkecT-00013L-Ih; Mon, 15 Jun 2020 02:13:07 +0000
X-UUID: 5aedb2f7f29846e595b898b84f94c9a5-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=Fvc+fkRNwbSozTKxjSC5R50RqwrOETtrM9MsGb8se4I=; 
 b=cDUIO9JiikPAgXYv6EgP+7LXn6X6Bg/mXrKJJnTXPK2+nKasMwbuWXtKkDMuTixF76wGLg3e/Ad9BXgjIgHbmQ0PGvCoVXSYh45ttlxP5l6XMOGiefydNFbW2Y3sA3Ob4VvnycLoZxbFxiva96rjlSuuDEHyJ8rMQgvisI8Wf/s=;
X-UUID: 5aedb2f7f29846e595b898b84f94c9a5-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1930818992; Sun, 14 Jun 2020 18:12:57 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 19:12:56 -0700
Received: from mtkcas07.mediatek.inc (172.21.101.84) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 10:12:48 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas07.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 10:12:42 +0800
Message-ID: <1592187167.18525.3.camel@mtkswgap22>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
From: Neal Liu <neal.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 15 Jun 2020 10:12:47 +0800
In-Reply-To: <CAAOTY__zXZvv1gcKgxnbpv2RjDLyuQ1NEz8Nr+dtn4GKE1cvMA@mail.gmail.com>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY__g3Fnwsoqx=x_tgdMii5K_L9TmF_9048XbAOSJwb-Cxg@mail.gmail.com>
 <1591867563.27949.9.camel@mtkswgap22>
 <CAAOTY_8gOjr9nBUVA6oNu0v+D0Rc0AbhJ41wBCvDpMme+kuHmA@mail.gmail.com>
 <1591931042.32738.26.camel@mtkswgap22>
 <CAAOTY__zXZvv1gcKgxnbpv2RjDLyuQ1NEz8Nr+dtn4GKE1cvMA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 4E316D16DA2B6E11B1D56A33408E80F3A733487E7613467A421F38EE6A4634C82000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_191305_626808_8669A19F 
X-CRM114-Status: GOOD (  23.32  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywNCg0KDQpPbiBGcmksIDIwMjAtMDYtMTIgYXQgMjM6MjcgKzA4MDAsIENo
dW4tS3VhbmcgSHUgd3JvdGU6DQo+IEhpLCBOZWFsOg0KPiANCj4gTmVhbCBMaXUgPG5lYWwubGl1
QG1lZGlhdGVrLmNvbT4g5pa8IDIwMjDlubQ25pyIMTLml6Ug6YCx5LqUIOS4iuWNiDExOjA05a+r
6YGT77yaDQo+ID4NCj4gPiBIaSBDaHVuLUt1YW5nLA0KPiA+DQo+ID4gW3NuaXBdDQo+ID4gPiA+
ID4gPiArLyoNCj4gPiA+ID4gPiA+ICsgKiBkZXZhcGNfdmlvbGF0aW9uX2lycSAtIHRoZSBkZXZh
cGMgSW50ZXJydXB0IFNlcnZpY2UgUm91dGluZSAoSVNSKSB3aWxsIGR1bXANCj4gPiA+ID4gPiA+
ICsgKiAgICAgICAgICAgICAgICAgICAgICAgdmlvbGF0aW9uIGluZm9ybWF0aW9uIGluY2x1ZGlu
ZyB3aGljaCBtYXN0ZXIgdmlvbGF0ZXMNCj4gPiA+ID4gPiA+ICsgKiAgICAgICAgICAgICAgICAg
ICAgICAgYWNjZXNzIHNsYXZlLg0KPiA+ID4gPiA+ID4gKyAqLw0KPiA+ID4gPiA+ID4gK3N0YXRp
YyBpcnFyZXR1cm5fdCBkZXZhcGNfdmlvbGF0aW9uX2lycShpbnQgaXJxX251bWJlciwgdm9pZCAq
ZGV2X2lkKQ0KPiA+ID4gPiA+ID4gK3sNCj4gPiA+ID4gPiA+ICsgICAgICAgdTMyIHNsYXZlX3R5
cGVfbnVtID0gbXRrX2RldmFwY19jdHgtPnNvYy0+c2xhdmVfdHlwZV9udW07DQo+ID4gPiA+ID4g
PiArICAgICAgIGNvbnN0IHN0cnVjdCBtdGtfZGV2aWNlX2luZm8gKipkZXZpY2VfaW5mbzsNCj4g
PiA+ID4gPiA+ICsgICAgICAgc3RydWN0IG10a19kZXZhcGNfdmlvX2luZm8gKnZpb19pbmZvOw0K
PiA+ID4gPiA+ID4gKyAgICAgICBpbnQgc2xhdmVfdHlwZSwgdmlvX2lkeCwgaW5kZXg7DQo+ID4g
PiA+ID4gPiArICAgICAgIGNvbnN0IGNoYXIgKnZpb19tYXN0ZXI7DQo+ID4gPiA+ID4gPiArICAg
ICAgIHVuc2lnbmVkIGxvbmcgZmxhZ3M7DQo+ID4gPiA+ID4gPiArICAgICAgIGJvb2wgbm9ybWFs
Ow0KPiA+ID4gPiA+ID4gKyAgICAgICB1OCBwZXJtOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+
ID4gKyAgICAgICBzcGluX2xvY2tfaXJxc2F2ZSgmZGV2YXBjX2xvY2ssIGZsYWdzKTsNCj4gPiA+
ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsgICAgICAgZGV2aWNlX2luZm8gPSBtdGtfZGV2YXBjX2N0
eC0+c29jLT5kZXZpY2VfaW5mbzsNCj4gPiA+ID4gPiA+ICsgICAgICAgdmlvX2luZm8gPSBtdGtf
ZGV2YXBjX2N0eC0+c29jLT52aW9faW5mbzsNCj4gPiA+ID4gPiA+ICsgICAgICAgbm9ybWFsID0g
ZmFsc2U7DQo+ID4gPiA+ID4gPiArICAgICAgIHZpb19pZHggPSAtMTsNCj4gPiA+ID4gPiA+ICsg
ICAgICAgaW5kZXggPSAtMTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsgICAgICAgLyog
VGhlcmUgYXJlIG11bHRpcGxlIERFVkFQQ19QRCAqLw0KPiA+ID4gPiA+ID4gKyAgICAgICBmb3Ig
KHNsYXZlX3R5cGUgPSAwOyBzbGF2ZV90eXBlIDwgc2xhdmVfdHlwZV9udW07IHNsYXZlX3R5cGUr
Kykgew0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIGlmICghY2hlY2tfdHlwZTJfdmlvX3N0
YXR1cyhzbGF2ZV90eXBlLCAmdmlvX2lkeCwgJmluZGV4KSkNCj4gPiA+ID4gPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgIGlmICghbXRrX2RldmFwY19kdW1wX3Zpb19kYmcoc2xhdmVfdHlwZSwg
JnZpb19pZHgsDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICZpbmRleCkpDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgIGNvbnRpbnVlOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyAg
ICAgICAgICAgICAgIC8qIEVuc3VyZSB0aGF0IHZpb2xhdGlvbiBpbmZvIGFyZSB3cml0dGVuIGJl
Zm9yZQ0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAqIGZ1cnRoZXIgb3BlcmF0aW9ucw0K
PiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAqLw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAg
ICAgIHNtcF9tYigpOw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIG5vcm1hbCA9IHRydWU7
DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgbWFza19tb2R1bGVf
aXJxKHNsYXZlX3R5cGUsIHZpb19pZHgsIHRydWUpOw0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+
ID4gKyAgICAgICAgICAgICAgIGlmIChjbGVhcl92aW9fc3RhdHVzKHNsYXZlX3R5cGUsIHZpb19p
ZHgpKQ0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgcHJfd2FybihQRlggIiVz
LCAlczoweCV4LCAlczoweCV4XG4iLA0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAiY2xlYXIgdmlvIHN0YXR1cyBmYWlsZWQiLA0KPiA+ID4gPiA+ID4gKyAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAic2xhdmVfdHlwZSIsIHNsYXZlX3R5cGUsDQo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICJ2aW9faW5kZXgiLCB2aW9f
aWR4KTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICBwZXJtID0g
Z2V0X3Blcm1pc3Npb24oc2xhdmVfdHlwZSwgaW5kZXgsIHZpb19pbmZvLT5kb21haW5faWQpOw0K
PiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIHZpb19tYXN0ZXIgPSBt
dGtfZGV2YXBjX2N0eC0+c29jLT5tYXN0ZXJfZ2V0DQo+ID4gPiA+ID4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAodmlvX2luZm8tPm1hc3Rlcl9pZCwNCj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICB2aW9faW5mby0+dmlvX2FkZHIsDQo+ID4gPiA+ID4gPiArICAgICAgICAg
ICAgICAgICAgICAgICAgc2xhdmVfdHlwZSwNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAg
ICAgICAgICB2aW9faW5mby0+c2hpZnRfc3RhX2JpdCwNCj4gPiA+ID4gPiA+ICsgICAgICAgICAg
ICAgICAgICAgICAgICB2aW9faW5mby0+ZG9tYWluX2lkKTsNCj4gPiA+ID4gPg0KPiA+ID4gPiA+
IENhbGwgbXQ2ODczX2J1c19pZF90b19tYXN0ZXIoKSBkaXJlY3RseS4gRm9yIGZpcnN0IHBhdGNo
LCBtYWtlIHRoaW5ncw0KPiA+ID4gPiA+IGFzIHNpbXBsZSBhcyBwb3NzaWJsZS4NCj4gPiA+ID4N
Cj4gPiA+ID4gSW4gZGV2YXBjX3Zpb2xhdGlvbl9pcnEoKSBmdW5jdGlvbiwgd2UgdXNlIGNvbW1v
biBmbG93IHRvIGhhbmRsZSBlYWNoDQo+ID4gPiA+IGRldmFwYyB2aW9sYXRpb24gb24gZGlmZmVy
ZW50IHBsYXRmb3Jtcy4gVGhlIG1hc3Rlcl9nZXQoKSBoYXMgZGlmZmVyZW50DQo+ID4gPiA+IGlt
cGxlbWVudGF0aW9uIG9uIGRpZmZlcmVudCBwbGF0Zm9ybXMsIHRoYXQgd2h5IGl0IGNhbGxlZCBp
bmRpcmVjdGx5Lg0KPiA+ID4gPg0KPiA+ID4gPiBPbmNlIHdlIGhhdmUgbmV3IHBsYXRmb3JtLCB3
ZSBvbmx5IGhhdmUgdG8gdXBkYXRlIGRldmFwYy1tdHh4eHguYw0KPiA+ID4gPiBpbnN0ZWFkIG9m
IGNvbW1vbiBoYW5kbGVyIGZsb3cuDQo+ID4gPg0KPiA+ID4gWW91IGp1c3QgdXBzdHJlYW0gb25l
IFNvQyBub3csIHNvIEkgaGF2ZSBubyBpbmZvcm1hdGlvbiBvZiAybmQgU29DLg0KPiA+ID4gV2l0
aG91dCB0aGUgMm5kIFNvQywgaG93IGRvIHdlIGtub3cgd2hhdCBpcyBjb21tb24gYW5kIHdoYXQg
aXMgU29DIHNwZWNpYWw/DQo+ID4gPiBTbyB0aGUgZmlyc3QgcGF0Y2ggc2hvdWxkIG5vdCBjb25z
aWRlciB0aGUgdGhpbmdzIHdoaWNoIGRvZXMgbm90IGV4aXN0IHlldC4NCj4gPiA+DQo+ID4gPiBS
ZWdhcmRzLA0KPiA+ID4gQ2h1bi1LdWFuZy4NCj4gPiA+DQo+ID4NCj4gPiBJdCBoYXMgbG90cyBv
ZiByZWZhY3RvcmluZyB3b3JrIG5lZWQgdG8gZG8gaWYgeW91IHJlYWxseSB3YW50IG1ha2UgaXQN
Cj4gPiAic2ltcGxlIi4gQ291bGQgSSBleHBsYWluIG1vcmUgZGV0YWlscyBhbmQgbGV0IHlvdSBq
dWRnZSBpdCBpcyBzaW1wbGUNCj4gPiBlbm91Z2g/DQo+IA0KPiBNYWtpbmcgZHJpdmVyICJzaW1w
bGUiIGlzIHZlcnkgaW1wb3J0YW50LCBzbyBpdCB3b3J0aCB0byBzcGVuZCBlZmZvcnQNCj4gdG8g
bWFrZSB0aGluZ3Mgc2ltcGxlLiBFdmVyeWJvZHkgY291bGQgbW9kaWZ5IHRoaXMgZHJpdmVyLCBz
byBtYWtlDQo+IHRoaXMgZHJpdmVyIHNpbXBsZSBhbmQgZXZlcnlib2R5IHdvdWxkIGpvaW4gdGhp
cyBlYXNpbHkuDQo+IA0KPiA+IEZvciBtb3N0IE1lZGlhVGVrIERFVkFQQyBodywgdGhlIHZpb2xh
dGlvbiBpbnRlcnJ1cHQgaGFuZGxpbmcgc2VxdWVuY2UNCj4gPiBpcyBzaG93biBiZWxvdy4NCj4g
Pg0KPiA+IDEuIERvbWFpbiBwcm9jZXNzb3IgcmVjZWl2ZXMgYSBpbnRlcnJ1cHQgaXNzdWVkIGJ5
IERFVkFQQy4NCj4gPiAyLiBTb2Z0d2FyZSByZWFkIHRoZSB2aW9sYXRpb24gc3RhdHVzIGFuZCBp
ZGVudGlmeSBpdC4NCj4gPiAzLiBTb2Z0d2FyZSByZWFkIHRoZSBkZWJ1ZyBpbmZvcm1hdGlvbiB3
aGljaCBhcmUgc3RvcmVkIGluIGh3IHJlZ2lzdGVyLg0KPiA+ICAgICAgICAgYS4gZGVidWcgaW5m
b3JtYXRpb24gaW5jbHVkZXMgbWFzdGVyIElELCBkb21haW4gSUQsIHZpb2xhdGlvbg0KPiA+IGFk
ZHJlc3MsIC4uLg0KPiA+IDQuIFRyYW5zZmVyIGRlYnVnIGluZm9ybWF0aW9uIHRvIGh1bWFuIHJl
YWRhYmxlIHN0cmluZ3MuDQo+ID4gNS4gRXh0cmEgaGFuZGxlciB0byBkaXNwYXRjaCBvd25lciBk
aXJlY3RseS4NCj4gDQo+IEkgZG9uJ3Qga25vdyB3aHkgbmVlZCBleHRyYSBoYW5kbGVyPyBXaGF0
IGRvZXMgdGhpcyBleHRyYSBoYW5kbGVyIGNvdWxkIGRvPw0KPiBJZiBpbmRlZWQgbmVlZCBpdCwg
c2VwYXJhdGUgZXh0cmEgaGFuZGxlciBwYXJ0IHRvIGFuIGluZGVwZW5kZW50IHBhdGNoLg0KDQpZ
ZXMsIFlvdSBhcmUgcmlnaHQuIEknbGwgbWFrZSB0aGlzIGRyaXZlciBtb3JlIHNpbXBsZSBhbmQg
bGV0IGV2ZXJ5Ym9keQ0KY2FuIGpvaW4gaXQgZWFzaWx5LiBUaGlzIGV4dHJhIGhhbmRsZXIgbWF5
IG5vdCBiZSBuZWNlc3NhcnkgZm9yIHdob20gdHJ5DQp0byBlbmFibGUgdGhpcyBkcml2ZXIuDQoN
Cj4gPg0KPiA+IFdoYXQgd2UgcmVhbGx5IGNhcmUgaXMgd2hpY2ggbWFzdGVyIHZpb2xhdGVzIHRo
ZSBydWxlcywgYW5kIHdoaWNoIHNsYXZlDQo+ID4gaGFkIGJlZW4gYWNjZXNzZWQgdW5leHBlY3Rl
ZGx5Lg0KPiA+DQo+ID4gSGVyZSBhcmUgcGxhdGZvcm0gc3BlY2lmaWMgaW5mb3JtYXRpb246DQo+
ID4gMS4gU2xhdmVzIGxheW91dCAocGxhdGZvcm0gZGV2aWNlcykNCj4gPiAyLiBodyByZWdpc3Rl
ciBsYXlvdXQgd2hpY2ggYXJlIHN0b3JlZCB2aW9sYXRpb24gaW5mb3JtYXRpb24NCj4gPiAzLiBN
YXN0ZXIgSUQgbWFwcGluZyB0YWJsZQ0KPiA+IDQuIERvbWFpbiBJRCBtYXBwaW5nIHRhYmxlDQo+
ID4NCj4gPiBIb3BlIHRoZXNlIHN0ZXBzIGNvdWxkIGhlbHAgeW91IHVuZGVyc3RhbmQgd2hhdCBp
cyBjb21tb24gYW5kIHdoYXQgaXMNCj4gPiBTb0Mgc3BlY2lmaWMuIElmIHlvdSB3YW50IHRvIHNl
ZSB0aGUgMm5kIFNvQydzIGRyaXZlciwgSSBjYW4gYWxzbyBzZW5kDQo+ID4gaXQgZm9yIHlvdSB0
byB0YWtlIGEgbG9vay4NCj4gDQo+IFBsZWFzZSB1cHN0cmVhbSAybmQgU29DJ3MgZHJpdmVyLCBz
byBJIGNvdWxkIHJldmlldyBjb21tb24gcGFydCBhbmQNCj4gU29DIHNwZWNpZmljIHBhcnQuDQo+
IA0KPiBSZWdhcmRzLA0KPiBDaHVuLUt1YW5nLg0KPiANCj4gPg0KPiA+IFRoYW5rcywNCj4gPiBO
ZWFsDQo+ID4NCj4gPiA+ID4NCj4gPiA+ID4gPg0KPiA+ID4gPiA+ID4gKw0KPiA+ID4gPiA+ID4g
KyAgICAgICAgICAgICAgIGlmICghdmlvX21hc3Rlcikgew0KPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgcHJfd2FybihQRlggIm1hc3Rlcl9nZXQgZmFpbGVkXG4iKTsNCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIHZpb19tYXN0ZXIgPSAiVU5LTk9XTl9NQVNU
RVIiOw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIH0NCj4gPiA+ID4gPiA+ICsNCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAiJXMgLSAlczoweCV4LCAlczoweCV4
LCAlczoweCV4LCAlczoweCV4XG4iLA0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIlZpb2xhdGlvbiIsICJzbGF2ZV90eXBlIiwgc2xhdmVfdHlwZSwNCj4gPiA+ID4gPiA+ICsg
ICAgICAgICAgICAgICAgICAgICAgICJzeXNfaW5kZXgiLA0KPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgICAgICAgICAgZGV2aWNlX2luZm9bc2xhdmVfdHlwZV1baW5kZXhdLnN5c19pbmRleCwN
Cj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICJjdHJsX2luZGV4IiwNCj4gPiA+
ID4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgIGRldmljZV9pbmZvW3NsYXZlX3R5cGVdW2lu
ZGV4XS5jdHJsX2luZGV4LA0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgInZp
b19pbmRleCIsDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICBkZXZpY2VfaW5m
b1tzbGF2ZV90eXBlXVtpbmRleF0udmlvX2luZGV4KTsNCj4gPiA+ID4gPiA+ICsNCj4gPiA+ID4g
PiA+ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAiJXMgJXMgJXMgJXNcbiIsDQo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAiVmlvbGF0aW9uIC0gbWFzdGVyOiIsIHZpb19t
YXN0ZXIsDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgICAgICAgICAiYWNjZXNzIHZpb2xh
dGlvbiBzbGF2ZToiLA0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgZGV2aWNl
X2luZm9bc2xhdmVfdHlwZV1baW5kZXhdLmRldmljZSk7DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+
ID4gPiArICAgICAgICAgICAgICAgZGV2YXBjX3Zpb19yZWFzb24ocGVybSk7DQo+ID4gPiA+ID4g
PiArDQo+ID4gPiA+ID4gPiArICAgICAgICAgICAgICAgZGV2YXBjX2V4dHJhX2hhbmRsZXIoc2xh
dmVfdHlwZSwgdmlvX21hc3RlciwgdmlvX2lkeCwNCj4gPiA+ID4gPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICB2aW9faW5mby0+dmlvX2FkZHIpOw0KPiA+ID4gPiA+ID4g
Kw0KPiA+ID4gPiA+ID4gKyAgICAgICAgICAgICAgIG1hc2tfbW9kdWxlX2lycShzbGF2ZV90eXBl
LCB2aW9faWR4LCBmYWxzZSk7DQo+ID4gPiA+ID4gPiArICAgICAgIH0NCj4gPiA+ID4gPiA+ICsN
Cj4gPiA+ID4gPiA+ICsgICAgICAgaWYgKG5vcm1hbCkgew0KPiA+ID4gPiA+ID4gKyAgICAgICAg
ICAgICAgIHNwaW5fdW5sb2NrX2lycXJlc3RvcmUoJmRldmFwY19sb2NrLCBmbGFncyk7DQo+ID4g
PiA+ID4gPiArICAgICAgICAgICAgICAgcmV0dXJuIElSUV9IQU5ETEVEOw0KPiA+ID4gPiA+ID4g
KyAgICAgICB9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+ID4gPiArICAgICAgIHNwaW5fdW5sb2Nr
X2lycXJlc3RvcmUoJmRldmFwY19sb2NrLCBmbGFncyk7DQo+ID4gPiA+ID4gPiArICAgICAgIHJl
dHVybiBJUlFfSEFORExFRDsNCj4gPiA+ID4gPiA+ICt9DQo+ID4gPiA+ID4gPiArDQo+ID4gPiA+
DQo+ID4gPiA+IFtzbmlwXQ0KPiA+ID4gPg0KPiA+ID4gPg0KPiA+DQoNCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
