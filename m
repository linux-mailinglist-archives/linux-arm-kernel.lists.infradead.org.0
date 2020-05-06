Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B23841C6FD7
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  6 May 2020 14:02:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Date:To:From:Subject:Message-ID:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tk/++OxiB2+ObQfvGEEFxC9vvu5hfoqHRFpBukCbB+w=; b=nRlJ7LM12Hzsi0
	1/MsapwXs+fT8vcxuatfeTwi3a3bBi6VYAOJFAAw1nRiDJzmZE5CKrsmBe30s7w5IRqy79HXyVPlQ
	Wxsz6aryk8P5ka2MeMc5vf/pDyD5NzmVwOVH+ET9bkFW77YriPGo6gPi+eaaavy21/3cT4NkZVucX
	S3W0O0UbevJyOBiCKBrVbvmunZhBO26bqsIwbUiMOITDRqPVyTdxQHkoEtQothaqycR+oEUWmFC+I
	vbWl0vxY+HSSnF/HDUKHQTmVcpj8M0ij/7NqhmucMP2CyRuealaNtBWv22oXzUJYCAPUiZLtSyW6Q
	1rUSb5ur2R8sHzeet8aA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jWIkj-00040E-FE; Wed, 06 May 2020 12:02:17 +0000
Received: from mailgw02.mediatek.com ([216.200.240.185])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWIkV-0003xf-FJ; Wed, 06 May 2020 12:02:05 +0000
X-UUID: 3096e96049ed4c978fb14eebeaac9f73-20200506
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=mediatek.com;
 s=dk; 
 h=Content-Transfer-Encoding:MIME-Version:Content-Type:References:In-Reply-To:Date:CC:To:From:Subject:Message-ID;
 bh=QP0Z6ozRv4E9IF9IdA2oNzT3UIfPRWDRnB6r6crxAtE=; 
 b=Y75XY7JOMzvEsHeZjpRbmpdoOfrJDGCN4IGBkJs9816ZfkX/5DUwsAaSDw0vzWpb2gvFWJPudC2H6v3M64k/YXkEOTHi7TNrw6Wd0xkOfr3WRq0xAiw4TrxVFc+Ta2oOjBYC11ZLodReAipcIaGMPYFowAbOWMtfRz0hJGo+jWI=;
X-UUID: 3096e96049ed4c978fb14eebeaac9f73-20200506
Received: from mtkcas66.mediatek.inc [(172.29.193.44)] by mailgw02.mediatek.com
 (envelope-from <walter-zh.wu@mediatek.com>)
 (musrelay.mediatek.com ESMTP with TLS)
 with ESMTP id 1628449697; Wed, 06 May 2020 04:01:53 -0800
Received: from MTKMBS01N2.mediatek.inc (172.21.101.79) by
 MTKMBS62N1.mediatek.inc (172.29.193.41) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 05:01:50 -0700
Received: from MTKCAS06.mediatek.inc (172.21.101.30) by
 mtkmbs01n2.mediatek.inc (172.21.101.79) with Microsoft SMTP Server (TLS) id
 15.0.1497.2; Wed, 6 May 2020 20:01:47 +0800
Received: from [172.21.84.99] (172.21.84.99) by MTKCAS06.mediatek.inc
 (172.21.101.73) with Microsoft SMTP Server id 15.0.1497.2 via Frontend
 Transport; Wed, 6 May 2020 20:01:47 +0800
Message-ID: <1588766510.23664.31.camel@mtksdccf07>
Subject: Re: [PATCH 0/3] kasan: memorize and print call_rcu stack
From: Walter Wu <walter-zh.wu@mediatek.com>
To: Dmitry Vyukov <dvyukov@google.com>
Date: Wed, 6 May 2020 20:01:50 +0800
In-Reply-To: <CACT4Y+atTS6p4b23AH+G9LM-k2gU=kMdkKQdARSboxc-H8CLTQ@mail.gmail.com>
References: <20200506051853.14380-1-walter-zh.wu@mediatek.com>
 <2BF68E83-4611-48B2-A57F-196236399219@lca.pw>
 <1588746219.16219.10.camel@mtksdccf07>
 <CACT4Y+atTS6p4b23AH+G9LM-k2gU=kMdkKQdARSboxc-H8CLTQ@mail.gmail.com>
X-Mailer: Evolution 3.2.3-0ubuntu6 
MIME-Version: 1.0
X-TM-SNTS-SMTP: 3E77E78FC4A39AC2C8C02C3404C5BF8283AFF9FF6F48C546033B172E256C57172000:8
X-MTK: N
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200506_050203_515898_76F88A9D 
X-CRM114-Status: GOOD (  27.12  )
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
Cc: Qian Cai <cai@lca.pw>, wsd_upstream <wsd_upstream@mediatek.com>,
 "Paul E . McKenney" <paulmck@kernel.org>, Linux-MM <linux-mm@kvack.org>,
 Lai Jiangshan <jiangshanlai@gmail.com>, Josh
 Triplett <josh@joshtriplett.org>, kasan-dev <kasan-dev@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>, Joel Fernandes <joel@joelfernandes.org>,
 linux-mediatek@lists.infradead.org, Alexander Potapenko <glider@google.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Andrey Ryabinin <aryabinin@virtuozzo.com>,
 Andrew Morton <akpm@linux-foundation.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Mathieu Desnoyers <mathieu.desnoyers@efficios.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCAyMDIwLTA1LTA2IGF0IDExOjM3ICswMjAwLCAnRG1pdHJ5IFZ5dWtvdicgdmlhIGth
c2FuLWRldiB3cm90ZToNCj4gT24gV2VkLCBNYXkgNiwgMjAyMCBhdCA4OjIzIEFNIFdhbHRlciBX
dSA8d2FsdGVyLXpoLnd1QG1lZGlhdGVrLmNvbT4gd3JvdGU6DQo+ID4gPiA+IFRoaXMgcGF0Y2hz
ZXQgaW1wcm92ZXMgS0FTQU4gcmVwb3J0cyBieSBtYWtpbmcgdGhlbSB0byBoYXZlDQo+ID4gPiA+
IGNhbGxfcmN1KCkgY2FsbCBzdGFjayBpbmZvcm1hdGlvbi4gSXQgaXMgaGVscGZ1bCBmb3IgcHJv
Z3JhbW1lcnMNCj4gPiA+ID4gdG8gc29sdmUgdXNlLWFmdGVyLWZyZWUgb3IgZG91YmxlLWZyZWUg
bWVtb3J5IGlzc3VlLg0KPiA+ID4gPg0KPiA+ID4gPiBUaGUgS0FTQU4gcmVwb3J0IHdhcyBhcyBm
b2xsb3dzKGNsZWFuZWQgdXAgc2xpZ2h0bHkpOg0KPiA+ID4gPg0KPiA+ID4gPiBCVUc6IEtBU0FO
OiB1c2UtYWZ0ZXItZnJlZSBpbiBrYXNhbl9yY3VfcmVjbGFpbSsweDU4LzB4NjANCj4gPiA+ID4N
Cj4gPiA+ID4gRnJlZWQgYnkgdGFzayAwOg0KPiA+ID4gPiBzYXZlX3N0YWNrKzB4MjQvMHg1MA0K
PiA+ID4gPiBfX2thc2FuX3NsYWJfZnJlZSsweDExMC8weDE3OA0KPiA+ID4gPiBrYXNhbl9zbGFi
X2ZyZWUrMHgxMC8weDE4DQo+ID4gPiA+IGtmcmVlKzB4OTgvMHgyNzANCj4gPiA+ID4ga2FzYW5f
cmN1X3JlY2xhaW0rMHgxYy8weDYwDQo+ID4gPiA+IHJjdV9jb3JlKzB4OGI0LzB4MTBmOA0KPiA+
ID4gPiByY3VfY29yZV9zaSsweGMvMHgxOA0KPiA+ID4gPiBlZmlfaGVhZGVyX2VuZCsweDIzOC8w
eGE2Yw0KPiA+ID4gPg0KPiA+ID4gPiBGaXJzdCBjYWxsX3JjdSgpIGNhbGwgc3RhY2s6DQo+ID4g
PiA+IHNhdmVfc3RhY2srMHgyNC8weDUwDQo+ID4gPiA+IGthc2FuX3JlY29yZF9jYWxscmN1KzB4
YzgvMHhkOA0KPiA+ID4gPiBjYWxsX3JjdSsweDE5MC8weDU4MA0KPiA+ID4gPiBrYXNhbl9yY3Vf
dWFmKzB4MWQ4LzB4Mjc4DQo+ID4gPiA+DQo+ID4gPiA+IExhc3QgY2FsbF9yY3UoKSBjYWxsIHN0
YWNrOg0KPiA+ID4gPiAoc3RhY2sgaXMgbm90IGF2YWlsYWJsZSkNCj4gPiA+ID4NCj4gPiA+ID4N
Cj4gPiA+ID4gQWRkIG5ldyBDT05GSUcgb3B0aW9uIHRvIHJlY29yZCBmaXJzdCBhbmQgbGFzdCBj
YWxsX3JjdSgpIGNhbGwgc3RhY2sNCj4gPiA+ID4gYW5kIEtBU0FOIHJlcG9ydCBwcmludHMgdHdv
IGNhbGxfcmN1KCkgY2FsbCBzdGFjay4NCj4gPiA+ID4NCj4gPiA+ID4gVGhpcyBvcHRpb24gZG9l
c24ndCBpbmNyZWFzZSB0aGUgY29zdCBvZiBtZW1vcnkgY29uc3VtcHRpb24uIEl0IGlzDQo+ID4g
PiA+IG9ubHkgc3VpdGFibGUgZm9yIGdlbmVyaWMgS0FTQU4uDQo+ID4gPg0KPiA+ID4gSSBkb27i
gJl0IHVuZGVyc3RhbmQgd2h5IHRoaXMgbmVlZHMgdG8gYmUgYSBLY29uZmlnIG9wdGlvbiBhdCBh
bGwuIElmIGNhbGxfcmN1KCkgc3RhY2tzIGFyZSB1c2VmdWwgaW4gZ2VuZXJhbCwgdGhlbiBqdXN0
IGFsd2F5cyBnYXRoZXIgdGhvc2UgaW5mb3JtYXRpb24uIEhvdyBkbyBkZXZlbG9wZXJzIGp1ZGdl
IGlmIHRoZXkgbmVlZCB0byBzZWxlY3QgdGhpcyBvcHRpb24gb3Igbm90Pw0KPiA+DQo+ID4gQmVj
YXVzZSB3ZSBkb24ndCB3YW50IHRvIGluY3JlYXNlIHNsdWIgbWV0YS1kYXRhIHNpemUsIHNvIGVu
YWJsaW5nIHRoaXMNCj4gPiBvcHRpb24gY2FuIHByaW50IGNhbGxfcmN1KCkgc3RhY2tzLCBidXQg
dGhlIGluLXVzZSBzbHViIG9iamVjdCBkb2Vzbid0DQo+ID4gcHJpbnQgZnJlZSBzdGFjay4gU28g
aWYgaGF2ZSBvdXQtb2YtYm91bmQgaXNzdWUsIHRoZW4gaXQgd2lsbCBub3QgcHJpbnQNCj4gPiBm
cmVlIHN0YWNrLiBJdCBpcyBhIHRyYWRlLW9mZiwgc2VlIFsxXS4NCj4gPg0KPiA+IFsxXSBodHRw
czovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dpP2lkPTE5ODQzNw0KPiANCj4gSGkg
V2FsdGVyLA0KPiANCj4gR3JlYXQgeW91IGFyZSB0YWNrbGluZyB0aGlzIQ0KPiANCj4gSSBoYXZl
IHRoZSBzYW1lIGdlbmVyYWwgc2VudGltZW50IGFzIFFpYW4uIEkgd291bGQgZW5hYmxlIHRoaXMN
Cj4gdW5jb25kaXRpb25hbGx5IGJlY2F1c2U6DQo+IA0KPiAxLiBXZSBzdGlsbCBjYW4ndCBnZXQg
Ym90aCByY3Ugc3RhY2sgYW5kIGZyZWUgc3RhY2suIEkgd291bGQgYXNzdW1lDQo+IG1vc3Qga2Vy
bmVsIHRlc3Rpbmcgc3lzdGVtcyBuZWVkIHRvIGVuYWJsZSB0aGlzICh3ZSBkZWZpbml0ZWx5IGVu
YWJsZQ0KPiBvbiBzeXpib3QpLiBUaGlzIG1lYW5zIHdlIGRvIG5vdCBoYXZlIGZyZWUgc3RhY2sg
Zm9yIGFsbG9jYXRpb24NCj4gb2JqZWN0cyBpbiBhbnkgcmVwb3J0cyBjb21pbmcgZnJvbSB0ZXN0
aW5nIHN5c3RlbXMuIFdoaWNoIGdyZWF0bHkNCj4gZGltaW5pc2hlcyB0aGUgdmFsdWUgb2YgdGhl
IG90aGVyIG1vZGUuDQo+IA0KPiAyLiBLZXJuZWwgaXMgdW5kZXJ0ZXN0ZWQuIEludHJvZHVjaW5n
IGFueSBhZGRpdGlvbmFsIGNvbmZpZ3VyYXRpb24NCj4gb3B0aW9ucyBpcyBhIHByb2JsZW0gaW4g
c3VjaCBjb250ZXh0LiBDaGFuY2VzIGFyZSB0aGF0IHNvbWUgb2YgdGhlDQo+IG1vZGVzIGFyZSBu
b3Qgd29ya2luZyBvciB3aWxsIGJyZWFrIGluIGZ1dHVyZS4NCj4gDQo+IDMuIFRoYXQgZnJlZSBz
dGFjayBhY3R1YWxseSBjYXVzZXMgbG90cyBvZiBjb25mdXNpb24gYW5kIEkgbmV2ZXIgZm91bmQN
Cj4gaXQgdXNlZnVsOg0KPiBodHRwczovL2J1Z3ppbGxhLmtlcm5lbC5vcmcvc2hvd19idWcuY2dp
P2lkPTE5ODQyNQ0KPiBJZiBpdCdzIGEgdmVyeSBkZWxheWVkIFVBRiwgZWl0aGVyIG9uZSBtYXkg
Z2V0IGFub3RoZXIgcmVwb3J0IGZvciB0aGUNCj4gc2FtZSBidWcgd2l0aCBub3Qgc28gZGVsYXll
ZCBVQUYsIG9yIGlmIGl0J3Mgd2F5IHRvbyBkZWxheWVkLCB0aGVuIHRoZQ0KPiBwcmV2aW91cyBm
cmVlIHN0YWNrIGlzIHdyb25nIGFzIHdlbGwuDQo+IA0KPiA0LiBNb3N0IHVzZXJzIGRvbid0IGNh
cmUgdGhhdCBtdWNoIGFib3V0IGRlYnVnZ2luZyB0b29scyB0byBsZWFybg0KPiBldmVyeSBiaXQg
b2YgZXZlcnkgZGVidWdnaW5nIHRvb2wgYW5kIHNwZW5kIHRpbWUgZmluZS10dW5pbmcgaXQgZm9y
DQo+IHRoZWlyIGNvbnRleHQuIE1vc3QgS0FTQU4gdXNlcnMgd29uJ3QgZXZlbiBiZSBhd2FyZSBv
ZiB0aGlzIGNob2ljZSwNCj4gYW5kIHRoZXkgd2lsbCBqdXN0IHVzZSB3aGF0ZXZlciBpcyB0aGUg
ZGVmYXVsdC4NCj4gDQo+IDUuIEVhY2ggY29uZmlndXJhdGlvbiBvcHRpb24gaW5jcmVhc2VzIGlt
cGxlbWVudGF0aW9uIGNvbXBsZXhpdHkuDQo+IA0KPiBXaGF0IHdvdWxkIGhhdmUgdmFsdWUgaXMg
aWYgd2UgZmlndXJlIG91dCBob3cgdG8gbWFrZSBib3RoIG9mIHRoZW0NCj4gd29yayBhdCB0aGUg
c2FtZSB0aW1lIHdpdGhvdXQgaW5jcmVhc2luZyBtZW1vcnkgY29uc3VtcHRpb24uIEJ1dCBJDQo+
IGRvbid0IHNlZSBhbnkgd2F5IHRvIGRvIHRoaXMuDQo+IA0KPiBJIHByb3Bvc2UgdG8gbWFrZSB0
aGlzIHRoZSBvbmx5IG1vZGUuIEkgYW0gc3VyZSBsb3RzIG9mIHVzZXJzIHdpbGwNCj4gZmluZCB0
aGlzIGFkZGl0aW9uYWwgc3RhY2sgdXNlZnVsLCB3aGVyZWFzIHRoZSBmcmVlIHN0YWNrIGlzIGV2
ZW4NCj4gZnJlcXVlbnRseSBjb25mdXNpbmcuDQo+IA0KDQpPay4NCklmIHdlIHdhbnQgdG8gaGF2
ZSBhIGRlZmF1bHQgZW5hYmxpbmcgaXQsIGJ1dCBpdCBzaG91bGQgb25seSB3b3JrIGluDQpnZW5l
cmljIEtBU0FOLCBiZWNhdXNlIHdlIG5lZWQgdG8gZ2V0IG9iamVjdCBzdGF0dXMoYWxsb2NhdGlv
biBvcg0KZnJlZWluZykgZnJvbSBzaGFkb3cgbWVtb3J5LCB0YWctYmFzZWQgS0FTQU4gY2FuJ3Qg
ZG8gaXQuIFNvIHdlIHNob3VsZA0KaGF2ZSBhIGRlZmF1bHQgZW5hYmxpbmcgaXQgaW4gZ2VuZXJp
YyBLQVNBTj8NCg0KX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5p
bmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8v
bGludXgtYXJtLWtlcm5lbAo=
