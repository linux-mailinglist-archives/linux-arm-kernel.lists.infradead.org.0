Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E13C1F8C4B
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 15 Jun 2020 04:43:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=No8r3fDpsmh+ZuVTMhCGbMC8SBD1E21oRAHGoLbeWbU=; b=khN7o9xoaLcWUJ
	pnPYjUhcFcGoHIzAZFVDKydcF65Ij9aADgBrLtyl1K/J8sWBPxaVhP3j68/+k3QWypPxJtgWjwIMX
	6jKfLJ3zwNogmpS15dGQ9PDdhDEm6hRS30sr1lT1ehcL/LpRPiHjHvjZfiiBdo9f0YwYZeh5+fkdD
	9Xpls5BQClLmpB0CJ/vCU79/bDe+ui9B9K+LRgDRxfQ8IxsQ89xSIRT1iKmNmSnx1ZDBOMlmB/Yf5
	GVEtzJDrqd9zzhbe5njeVU1yKbC9T9n9rfJH4Us2BX+wylakcQCT9Y1v8UYUYVNR5aIUN1b6rJ0i0
	a+2lthAU9fDkBktrLNKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkf66-0001Km-B2; Mon, 15 Jun 2020 02:43:42 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkf5x-0001K6-VG; Mon, 15 Jun 2020 02:43:35 +0000
X-UUID: 408774323685471c8f139a0800550665-20200614
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=F81eFxwFaFjhxzulTpnf9IEFb7H1uEklfRGWWB3UhNo=; 
 b=Wb+HHzhknebGQQNkilN06LNfCNQ6vAwd5fuLirWpr1VlrcmpOBOBDN9wgqfuXIGmlUSRLyqlH6yBogDg0mZ1vcq55NCJw1mfeJLA3Sox4B/LgOmF8Rh5m26ji5dFfj4vRpQWLZY+o44479Ye0AUFU3Gp/4br7qmm4LySWJ1ZUa8=;
X-UUID: 408774323685471c8f139a0800550665-20200614
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <neal.liu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 911669244; Sun, 14 Jun 2020 18:43:30 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N2.mediatek.inc (172.29.193.42) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Sun, 14 Jun 2020 19:43:28 -0700
Received: from mtkcas08.mediatek.inc (172.21.101.126) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Mon, 15 Jun 2020 10:43:15 +0800
Received: from [172.21.77.33] (172.21.77.33) by mtkcas08.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Mon, 15 Jun 2020 10:43:09 +0800
Message-ID: <1592188994.18525.11.camel@mtkswgap22>
Subject: Re: [PATCH 2/2] soc: mediatek: devapc: add devapc-mt6873 driver
From: Neal Liu <neal.liu@mediatek.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Mon, 15 Jun 2020 10:43:14 +0800
In-Reply-To: <CAAOTY_8W7FLrjKbNt+WHXjsBzgn_E7n5stKjv94RBnF7ktVuiA@mail.gmail.com>
References: <1591698261-22639-1-git-send-email-neal.liu@mediatek.com>
 <1591698261-22639-3-git-send-email-neal.liu@mediatek.com>
 <CAAOTY_8W7FLrjKbNt+WHXjsBzgn_E7n5stKjv94RBnF7ktVuiA@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: DC43965F8A5AED62EECDB05CF2C54323DC68131BA3F83EBF4170213E1C0F41562000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200614_194334_013274_728F2E41 
X-CRM114-Status: GOOD (  19.48  )
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
Cc: devicetree@vger.kernel.org, wsd_upstream <wsd_upstream@mediatek.com>,
 linux-kernel <linux-kernel@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Neal Liu <neal.liu@mediatek.com>, Matthias Brugger <matthias.bgg@gmail.com>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywNCg0KDQpPbiBTdW4sIDIwMjAtMDYtMTQgYXQgMTE6MjYgKzA4MDAsIENo
dW4tS3VhbmcgSHUgd3JvdGU6DQo+IEhpLCBOZWFsOg0KPiANCj4gTmVhbCBMaXUgPG5lYWwubGl1
QG1lZGlhdGVrLmNvbT4g5pa8IDIwMjDlubQ25pyIOeaXpSDpgLHkuowg5LiL5Y2INjoyNeWvq+mB
k++8mg0KPiA+DQo+ID4gTVQ2ODczIGJ1cyBmcmFicmljIHByb3ZpZGVzIFRydXN0Wm9uZSBzZWN1
cml0eSBzdXBwb3J0IGFuZCBkYXRhDQo+ID4gcHJvdGVjdGlvbiB0byBwcmV2ZW50IHNsYXZlcyBm
cm9tIGJlaW5nIGFjY2Vzc2VkIGJ5IHVuZXhwZWN0ZWQNCj4gPiBtYXN0ZXJzLg0KPiA+IFRoZSBz
ZWN1cml0eSB2aW9sYXRpb25zIGFyZSBsb2dnZWQgYW5kIHNlbnQgdG8gdGhlIHByb2Nlc3NvciBm
b3INCj4gPiBmdXJ0aGVyIGFuYWx5c2lzIG9yIGNvdW50ZXJtZWFzdXJlcy4NCj4gPg0KPiA+IEFu
eSBvY2N1cnJlbmNlIG9mIHNlY3VyaXR5IHZpb2xhdGlvbiB3b3VsZCByYWlzZSBhbiBpbnRlcnJ1
cHQsIGFuZA0KPiA+IGl0IHdpbGwgYmUgaGFuZGxlZCBieSBkZXZhcGMtbXQ2ODczIGRyaXZlci4g
VGhlIHZpb2xhdGlvbg0KPiA+IGluZm9ybWF0aW9uIGlzIHByaW50ZWQgaW4gb3JkZXIgdG8gZmlu
ZCB0aGUgbXVyZGVyZXIuDQo+ID4NCj4gPiBTaWduZWQtb2ZmLWJ5OiBOZWFsIExpdSA8bmVhbC5s
aXVAbWVkaWF0ZWsuY29tPg0KPiA+IC0tLQ0KPiANCj4gW3NuaXBdDQo+IA0KPiA+ICsNCj4gPiAr
ICAgICAgIC8qIDUwICovDQo+ID4gKyAgICAgICB7LTEsIC0xLCA1MCwgIk9PQl93YXlfZW4iLCB0
cnVlfSwNCj4gPiArICAgICAgIHstMSwgLTEsIDUxLCAiT09CX3dheV9lbiIsIHRydWV9LA0KPiA+
ICsgICAgICAgey0xLCAtMSwgNTIsICJPT0Jfd2F5X2VuIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7
LTEsIC0xLCA1MywgIk9PQl93YXlfZW4iLCB0cnVlfSwNCj4gPiArICAgICAgIHstMSwgLTEsIDU0
LCAiT09CX3dheV9lbiIsIHRydWV9LA0KPiA+ICsgICAgICAgey0xLCAtMSwgNTUsICJPT0Jfd2F5
X2VuIiwgdHJ1ZX0sDQo+ID4gKyAgICAgICB7LTEsIC0xLCA1NiwgIkRlY29kZV9lcnJvciIsIHRy
dWV9LA0KPiA+ICsgICAgICAgey0xLCAtMSwgNTcsICJEZWNvZGVfZXJyb3IiLCB0cnVlfSwNCj4g
PiArICAgICAgIHstMSwgLTEsIDU4LCAiRElTUF9QV00iLCBmYWxzZX0sDQo+ID4gKyAgICAgICB7
LTEsIC0xLCA1OSwgIklNUF9JSUNfV1JBUCIsIGZhbHNlfSwNCj4gPiArDQo+ID4gKyAgICAgICAv
KiA2MCAqLw0KPiA+ICsgICAgICAgey0xLCAtMSwgNjAsICJERVZJQ0VfQVBDX1BFUklfUEFSX19B
TyIsIGZhbHNlfSwNCj4gPiArICAgICAgIHstMSwgLTEsIDYxLCAiREVWSUNFX0FQQ19QRVJJX1BB
Ul9QRE4iLCBmYWxzZX0sDQo+IA0KPiBZb3UgZG9lcyBub3QgcHJvY2VzcyB0aGUgaXRlbSB3aG9z
ZSBlbmFibGVfdmlvX2lycSBpcyBmYWxzZSwgc28gSQ0KPiB0aGluayB5b3Ugc2hvdWxkIHJlbW92
ZSB0aGVzZSBpdGVtcyBhbmQgcmVtb3ZlIGVuYWJsZV92aW9faXJxIGJlY2F1c2UNCj4gdGhlIHJl
c3QgaXRlbSdzIGVuYWJsZV92aW9faXJxIHdvdWxkIGFsd2F5cyBiZSB0cnVlLg0KDQpJbiBzb21l
IHVzZXJzLCB0aGV5IGNhbiBkZWNpZGUgd2hpY2ggc2xhdmVzIHRoZXkgd2FudCB0byBlbmFibGUg
b3INCmRpc2FibGUgdmlvbGF0aW9uIGlycSBpbiBkaWZmZXJlbnQgcHJvZHVjdC4gV2UgcmVtYWlu
IHRoaXMgcHJvcGVydHkgZm9yDQpjb21wYXRpYmlsaXR5Lg0KDQo+IA0KPiA+ICt9Ow0KPiA+ICsN
Cj4gPiArc3RhdGljIHN0cnVjdCBtdGtfZGV2aWNlX251bSBtdGs2ODczX2RldmljZXNfbnVtW10g
PSB7DQo+ID4gKyAgICAgICB7U0xBVkVfVFlQRV9JTkZSQSwgVklPX1NMQVZFX05VTV9JTkZSQX0s
DQo+ID4gKyAgICAgICB7U0xBVkVfVFlQRV9QRVJJLCBWSU9fU0xBVkVfTlVNX1BFUkl9LA0KPiA+
ICsgICAgICAge1NMQVZFX1RZUEVfUEVSSTIsIFZJT19TTEFWRV9OVU1fUEVSSTJ9LA0KPiA+ICsg
ICAgICAge1NMQVZFX1RZUEVfUEVSSV9QQVIsIFZJT19TTEFWRV9OVU1fUEVSSV9QQVJ9LA0KPiA+
ICt9Ow0KPiA+ICsNCj4gPiArc3RhdGljIHN0cnVjdCBQRVJJQVhJX0lEX0lORk8gcGVyaV9taV9p
ZF90b19tYXN0ZXJbXSA9IHsNCj4gPiArICAgICAgIHsiVEhFUk0yIiwgICAgICAgeyAwLCAwLCAw
IH0gfSwNCj4gPiArICAgICAgIHsiU1BNIiwgICAgICAgICAgeyAwLCAxLCAwIH0gfSwNCj4gPiAr
ICAgICAgIHsiQ0NVIiwgICAgICAgICAgeyAwLCAwLCAxIH0gfSwNCj4gPiArICAgICAgIHsiVEhF
Uk0iLCAgICAgICAgeyAwLCAxLCAxIH0gfSwNCj4gPiArICAgICAgIHsiU1BNX0RSQU1DIiwgICAg
eyAxLCAxLCAwIH0gfSwNCj4gDQo+IFRoZSBiaXRzIHsgMSwgMSwgMCB9IGVxdWFsIHRvIGEgbnVt
YmVyIDB4MywgSSB0aGlpbmsgeW91IHNob3VsZCB1c2UgYQ0KPiBudW1iZXIgaW5zdGVhZCBvZiBi
aXRzIGFuZCBldmVyeXRoaW5nIHdvdWxkIGJlIG1vcmUgZWFzeS4NCg0KV2Ugd291bGQgbGlrZSB0
byBrZWVwIGl0IGJlY2F1c2UgdGhlIGJpdCB2YWx1ZSBjb250YWlucyBtb3JlIHRoYW4gMC8xLA0K
aXQgbWlnaHQgYmUgJzInIGluIHNvbWUgY2FzZXMuICcyJyBtZWFucyBpdCBjYW4gYmUgMCBvciAx
LiBUaGlzIHRvdGFsbHkNCmJ5IGhhcmR3YXJlIGRlc2lnbiAmIGltcGxlbWVudGF0aW9uLg0KDQo+
ID4gK307DQo+ID4gKw0KPiANCj4gW3NuaXBdDQo+IA0KPiA+ICsNCj4gPiArLyoNCj4gPiArICog
bXRrX2RldmFwY192aW9fY2hlY2sgLSBjaGVjayB2aW9sYXRpb24gc2hpZnQgc3RhdHVzIGlzIHJh
aXNlZCBvciBub3QuDQo+ID4gKyAqDQo+ID4gKyAqIFJldHVybnMgdGhlIHZhbHVlIG9mIHZpb2xh
dGlvbiBzaGlmdCBzdGF0dXMgcmVnDQo+ID4gKyAqLw0KPiA+ICtzdGF0aWMgdm9pZCBtdGtfZGV2
YXBjX3Zpb19jaGVjayhpbnQgc2xhdmVfdHlwZSwgaW50ICpzaGlmdF9iaXQpDQo+ID4gK3sNCj4g
PiArICAgICAgIHUzMiBzbGF2ZV90eXBlX251bSA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnNsYXZl
X3R5cGVfbnVtOw0KPiA+ICsgICAgICAgc3RydWN0IG10a19kZXZhcGNfdmlvX2luZm8gKnZpb19p
bmZvOw0KPiA+ICsgICAgICAgdTMyIHZpb19zaGlmdF9zdGE7DQo+ID4gKyAgICAgICBpbnQgaTsN
Cj4gPiArDQo+ID4gKyAgICAgICBpZiAoc2xhdmVfdHlwZSA+PSBzbGF2ZV90eXBlX251bSkgew0K
PiANCj4gVGhpcyBuZXZlciBoYXBwZW4sIHNvIHJlbW92ZSBpdC4NCg0KSW5kZWVkLCB0aGFua3MN
Cg0KPiANCj4gPiArICAgICAgICAgICAgICAgcHJfZXJyKFBGWCAiJXM6IHBhcmFtIGNoZWNrIGZh
aWxlZCwgJXM6MHgleFxuIiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgIF9fZnVuY19fLCAi
c2xhdmVfdHlwZSIsIHNsYXZlX3R5cGUpOw0KPiA+ICsgICAgICAgICAgICAgICByZXR1cm47DQo+
ID4gKyAgICAgICB9DQo+ID4gKw0KPiA+ICsgICAgICAgdmlvX2luZm8gPSBtdGtfZGV2YXBjX2N0
eC0+c29jLT52aW9faW5mbzsNCj4gPiArICAgICAgIHZpb19zaGlmdF9zdGEgPSByZWFkbChtdGtf
ZGV2YXBjX3BkX2dldChzbGF2ZV90eXBlLCBWSU9fU0hJRlRfU1RBLCAwKSk7DQo+ID4gKw0KPiA+
ICsgICAgICAgaWYgKCF2aW9fc2hpZnRfc3RhKSB7DQo+ID4gKyAgICAgICAgICAgICAgIHByX2lu
Zm8oUEZYICJ2aW9sYXRpb24gaXMgdHJpZ2dlcmVkIGJlZm9yZS4gJXM6MHgleFxuIiwNCj4gPiAr
ICAgICAgICAgICAgICAgICAgICAgICAic2hpZnRfYml0IiwgKnNoaWZ0X2JpdCk7DQo+ID4gKw0K
PiA+ICsgICAgICAgfSBlbHNlIGlmICh2aW9fc2hpZnRfc3RhICYgKDB4MVVMIDw8ICpzaGlmdF9i
aXQpKSB7DQo+ID4gKyAgICAgICAgICAgICAgIHByX2RlYnVnKFBGWCAiJXM6IDB4JXggaXMgbWF0
Y2hlZCB3aXRoICVzOiVkXG4iLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAidmlvX3No
aWZ0X3N0YSIsIHZpb19zaGlmdF9zdGEsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICJz
aGlmdF9iaXQiLCAqc2hpZnRfYml0KTsNCj4gPiArDQo+ID4gKyAgICAgICB9IGVsc2Ugew0KPiA+
ICsgICAgICAgICAgICAgICBwcl9pbmZvKFBGWCAiJXM6IDB4JXggaXMgbm90IG1hdGNoZWQgd2l0
aCAlczolZFxuIiwNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAidmlvX3NoaWZ0X3N0YSIs
IHZpb19zaGlmdF9zdGEsDQo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgInNoaWZ0X2JpdCIs
ICpzaGlmdF9iaXQpOw0KPiA+ICsNCj4gPiArICAgICAgICAgICAgICAgZm9yIChpID0gMDsgaSA8
IE1PRF9OT19JTl8xX0RFVkFQQyAqIDI7IGkrKykgew0KPiA+ICsgICAgICAgICAgICAgICAgICAg
ICAgIGlmICh2aW9fc2hpZnRfc3RhICYgKDB4MSA8PCBpKSkgew0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgKnNoaWZ0X2JpdCA9IGk7DQo+ID4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICBicmVhazsNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICB9DQo+ID4g
KyAgICAgICAgICAgICAgIH0NCj4gPiArICAgICAgIH0NCj4gPiArDQo+ID4gKyAgICAgICB2aW9f
aW5mby0+c2hpZnRfc3RhX2JpdCA9ICpzaGlmdF9iaXQ7DQo+ID4gK30NCj4gPiArDQo+ID4gK3N0
YXRpYyB2b2lkIGRldmFwY19leHRyYWN0X3Zpb19kYmcoaW50IHNsYXZlX3R5cGUpDQo+ID4gK3sN
Cj4gPiArICAgICAgIHUzMiBzbGF2ZV90eXBlX251bSA9IG10a19kZXZhcGNfY3R4LT5zb2MtPnNs
YXZlX3R5cGVfbnVtOw0KPiA+ICsgICAgICAgdm9pZCBfX2lvbWVtICp2aW9fZGJnMF9yZWcsICp2
aW9fZGJnMV9yZWcsICp2aW9fZGJnMl9yZWc7DQo+ID4gKyAgICAgICBjb25zdCBzdHJ1Y3QgbXRr
X2luZnJhX3Zpb19kYmdfZGVzYyAqdmlvX2RiZ3M7DQo+ID4gKyAgICAgICBzdHJ1Y3QgbXRrX2Rl
dmFwY192aW9faW5mbyAqdmlvX2luZm87DQo+ID4gKyAgICAgICB1MzIgZGJnMDsNCj4gPiArDQo+
ID4gKyAgICAgICBpZiAoc2xhdmVfdHlwZSA+PSBzbGF2ZV90eXBlX251bSkgew0KPiANCj4gRGl0
dG8uDQoNCkluZGVlZCwgdGhhbmtzDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IENodW4tS3VhbmcuDQo+
IA0KPiA+ICsgICAgICAgICAgICAgICBwcl9lcnIoUEZYICIlczogcGFyYW0gY2hlY2sgZmFpbGVk
LCAlczoweCV4XG4iLA0KPiA+ICsgICAgICAgICAgICAgICAgICAgICAgX19mdW5jX18sICJzbGF2
ZV90eXBlIiwgc2xhdmVfdHlwZSk7DQo+ID4gKyAgICAgICAgICAgICAgIHJldHVybjsNCj4gPiAr
ICAgICAgIH0NCj4gPiArDQo+ID4gKyAgICAgICB2aW9fZGJnMF9yZWcgPSBtdGtfZGV2YXBjX3Bk
X2dldChzbGF2ZV90eXBlLCBWSU9fREJHMCwgMCk7DQo+ID4gKyAgICAgICB2aW9fZGJnMV9yZWcg
PSBtdGtfZGV2YXBjX3BkX2dldChzbGF2ZV90eXBlLCBWSU9fREJHMSwgMCk7DQo+ID4gKyAgICAg
ICB2aW9fZGJnMl9yZWcgPSBtdGtfZGV2YXBjX3BkX2dldChzbGF2ZV90eXBlLCBWSU9fREJHMiwg
MCk7DQo+ID4gKw0KPiA+ICsgICAgICAgdmlvX2RiZ3MgPSBtdGtfZGV2YXBjX2N0eC0+c29jLT52
aW9fZGJnczsNCj4gPiArICAgICAgIHZpb19pbmZvID0gbXRrX2RldmFwY19jdHgtPnNvYy0+dmlv
X2luZm87DQo+ID4gKw0KPiA+ICsgICAgICAgLyogRXh0cmFjdCB2aW9sYXRpb24gaW5mb3JtYXRp
b24gKi8NCj4gPiArICAgICAgIGRiZzAgPSByZWFkbCh2aW9fZGJnMF9yZWcpOw0KPiA+ICsgICAg
ICAgdmlvX2luZm8tPm1hc3Rlcl9pZCA9IHJlYWRsKHZpb19kYmcxX3JlZyk7DQo+ID4gKyAgICAg
ICB2aW9faW5mby0+dmlvX2FkZHIgPSByZWFkbCh2aW9fZGJnMl9yZWcpOw0KPiA+ICsNCj4gPiAr
ICAgICAgIHZpb19pbmZvLT5kb21haW5faWQgPSAoZGJnMCAmIHZpb19kYmdzLT52aW9fZGJnX2Rt
bmlkKQ0KPiA+ICsgICAgICAgICAgICAgICA+PiB2aW9fZGJncy0+dmlvX2RiZ19kbW5pZF9zdGFy
dF9iaXQ7DQo+ID4gKyAgICAgICB2aW9faW5mby0+d3JpdGUgPSAoKGRiZzAgJiB2aW9fZGJncy0+
dmlvX2RiZ193X3ZpbykNCj4gPiArICAgICAgICAgICAgICAgICAgICAgICA+PiB2aW9fZGJncy0+
dmlvX2RiZ193X3Zpb19zdGFydF9iaXQpID09IDE7DQo+ID4gKyAgICAgICB2aW9faW5mby0+cmVh
ZCA9ICgoZGJnMCAmIHZpb19kYmdzLT52aW9fZGJnX3JfdmlvKQ0KPiA+ICsgICAgICAgICAgICAg
ICAgICAgICAgID4+IHZpb19kYmdzLT52aW9fZGJnX3JfdmlvX3N0YXJ0X2JpdCkgPT0gMTsNCj4g
PiArICAgICAgIHZpb19pbmZvLT52aW9fYWRkcl9oaWdoID0gKGRiZzAgJiB2aW9fZGJncy0+dmlv
X2FkZHJfaGlnaCkNCj4gPiArICAgICAgICAgICAgICAgPj4gdmlvX2RiZ3MtPnZpb19hZGRyX2hp
Z2hfc3RhcnRfYml0Ow0KPiA+ICsNCj4gPiArICAgICAgIGRldmFwY192aW9faW5mb19wcmludCgp
Ow0KPiA+ICt9DQo+ID4gKw0KPiA+ICsvKg0KDQpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
