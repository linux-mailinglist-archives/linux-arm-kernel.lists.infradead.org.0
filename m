Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id DD7A51D356A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 17:42:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=C/dPW7iZZ8zRt5+6OMXf5/hDE7U68SLzTDtFm//ae0Q=; b=RtjUQ04EVOF0Nw
	2KVcgQhjTPks5eZx0voqAqMGwHzcSeuzUYnVYLEd+mGp7GogU5hzFM4WAtsWfdVNVzzy3bk6xakPh
	mRftsNa9xLNm7huZbhZyrZ1ll4vWTruZPS3PxJpSuWVHGyzIx3Ci7IKOQS16LESAUkjOyI2paNjvC
	Db1l/kSe7pgw9ICz+a/demvWf2naz8WkyPrzY7du+zQBYuXZUe4PdpZPlNJZ4eA+djVookRDKaVWw
	bsySTolBBOVdojY+mJAbAD6Izi3W1d99ERWmVgZvaIKfWcYxdFRHzR9gy9lBvgn2pI6sVYKKoG7LS
	Ng+qlxqW6XzO89m4S9OQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZG0X-0005sZ-HA; Thu, 14 May 2020 15:42:49 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZG05-0005jZ-F7; Thu, 14 May 2020 15:42:25 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id E7DE12A2F7B
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Enric Balletbo Serra <eballetbo@gmail.com>
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
Date: Thu, 14 May 2020 17:42:15 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_084221_768073_4EE06D69 
X-CRM114-Status: GOOD (  26.18  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [46.235.227.227 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Nicolas Boichat <drinkcat@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Philipp Zabel <p.zabel@pengutronix.de>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>, Sam Ravnborg <sam@ravnborg.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywKCk9uIDE0LzUvMjAgMTY6MjgsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4g
SGksIEVucmljOgo+IAo+IEVucmljIEJhbGxldGJvIFNlcnJhIDxlYmFsbGV0Ym9AZ21haWwuY29t
PiDmlrwgMjAyMOW5tDXmnIgxNOaXpSDpgLHlm5sg5LiK5Y2IMTI6NDHlr6vpgZPvvJoKPj4KPj4g
SGkgQ2h1bi1LdWFuZywKPj4KPj4gTWlzc2F0Z2UgZGUgRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8
ZW5yaWMuYmFsbGV0Ym9AY29sbGFib3JhLmNvbT4gZGVsCj4+IGRpYSBkdi4sIDEgZGUgbWFpZyAy
MDIwIGEgbGVzIDE3OjI1Ogo+Pj4KPj4+IFVzZSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3IgaGVs
cGVyIHRvIGNyZWF0ZSBhIGNvbm5lY3RvciBmb3IgcGlwZWxpbmVzCj4+PiB0aGF0IHVzZSBkcm1f
YnJpZGdlLiBUaGlzIGFsbG93cyBzcGxpdHRpbmcgY29ubmVjdG9yIG9wZXJhdGlvbnMgYWNyb3Nz
Cj4+PiBtdWx0aXBsZSBicmlkZ2VzIHdoZW4gbmVjZXNzYXJ5LCBpbnN0ZWFkIG9mIGhhdmluZyB0
aGUgbGFzdCBicmlkZ2UgaW4KPj4+IHRoZSBjaGFpbiBjcmVhdGluZyB0aGUgY29ubmVjdG9yIGFu
ZCBoYW5kbGluZyBhbGwgY29ubmVjdG9yIG9wZXJhdGlvbnMKPj4+IGludGVybmFsbHkuCj4+Pgo+
Pj4gU2lnbmVkLW9mZi1ieTogRW5yaWMgQmFsbGV0Ym8gaSBTZXJyYSA8ZW5yaWMuYmFsbGV0Ym9A
Y29sbGFib3JhLmNvbT4KPj4+IEFja2VkLWJ5OiBTYW0gUmF2bmJvcmcgPHNhbUByYXZuYm9yZy5v
cmc+Cj4+Cj4+IEEgZ2VudGxlIHBpbmcgb24gdGhpcywgSSB0aGluayB0aGF0IHRoaXMgb25lIGlz
IHRoZSBvbmx5IG9uZSB0aGF0Cj4+IHN0aWxsIG5lZWRzIGEgcmV2aWV3IGluIHRoZSBzZXJpZXMu
Cj4gCj4gVGhpcyBpcyB3aGF0IEkgcmVwbHkgaW4gcGF0Y2ggdjM6Cj4gCgpTb3JyeSBmb3IgbWlz
c2luZyB0aGlzLgoKPiBJIHRoaW5rIHRoZSBwYW5lbCBpcyB3cmFwcGVkIGludG8gbmV4dF9icmlk
Z2UgaGVyZSwKPiAKClllcywgeW91IGNhbiBoYXZlIGZvciBleGFtcGxlOgoKMS4gZHJtX2JyaWRn
ZSAobXRrX2RzaSkgLT4gZHJtX2JyaWRnZSAocHM4NjQwIC0gZHNpLXRvLWVkcCkgLT4gZHJtX3Bh
bmVsX2JyaWRnZQooZWRwIHBhbmVsKQoKb3IgYQoKMi4gZHJtX2JyaWRnZSAobXRrX2RzaSktPiBk
cm1fcGFuZWxfYnJpZGdlIChkc2kgcGFuZWwpCgpUaGUgX2ZpcnN0XyBvbmUgaXMgbXkgdXNlIGNh
c2UKCj4gaWYgKHBhbmVsKSB7CgpUaGlzIGhhbmRsZXMgdGhlIHNlY29uZCBjYXNlLCB3aGVyZSB5
b3UgYXR0YWNoIGEgZHNpIHBhbmVsLgoKPiAgICAgZHNpLT5uZXh0X2JyaWRnZSA9IGRldm1fZHJt
X3BhbmVsX2JyaWRnZV9hZGQoZGV2LCBwYW5lbCk7Cj4gCj4gc28gdGhlIG5leHRfYnJpZGdlIGlz
IGEgcGFuZWxfYnJpZGdlLCBpbiBpdHMgYXR0YWNoIGZ1bmN0aW9uCj4gcGFuZWxfYnJpZGdlX2F0
dGFjaCgpLAo+IGFjY29yZGluZyB0byB0aGUgZmxhZyBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05O
RUNUT1IsIGlmIG5vdCBleGlzdCwKPiBpdCB3b3VsZCBjcmVhdGUgY29ubmVjdG9yIGFuZCBhdHRh
Y2ggY29ubmVjdG9yIHRvIHBhbmVsLgo+IAo+IEknbSBub3Qgc3VyZSB0aGlzIGZsYWcgd291bGQg
ZXhpc3Qgb3Igbm90LCBidXQgZm9yIGJvdGggY2FzZSwgaXQncyBzdHJhbmdlLgo+IElmIGV4aXN0
LCB5b3UgY3JlYXRlIGNvbm5lY3RvciBpbiB0aGlzIHBhdGNoIGJ1dCBubyB3aGVyZSB0byBhdHRh
Y2gKPiBjb25uZWN0b3IgdG8gcGFuZWwuCgpZZXMsIGluIGZhY3QsIHRoaXMgaXMgdHJhbnNpdGlv
bmFsIHBhdGNoIG5lZWRlZCwgYXMgb25jZSBJIGNvbnZlcnRlZCBtdGtfZHBpLAptdGtfZHNpIGFu
ZCBtdGtfaGRtaSB0byB0aGUgbmV3IGRybV9icmlkZ2UgQVBJIHRoZSBkcm1fYnJpZGdlX2Nvbm5l
Y3Rvcl9pbml0KCkKd2lsbCBiZSBkb25lIGluIG10a19kcm1fZHJ2LiBXZSB3aWxsIG5lZWQgdG8g
Y2FsbCBkcm1fYnJpZGdlX2Nvbm5lY3Rvcl9pbml0IGZvcgpkcGkgYW5kIGRzaSBwaXBlcyBhbmQg
cmVtb3ZlIHRoYXQgY2FsbCBmcm9tIG10a19kc2kgYW5kIG10a19kcGkgZHJpdmVycy4gVGhlCmdy
YXBoaWMgY29udHJvbGxlciBkcml2ZXIgc2hvdWxkIGNyZWF0ZSBjb25uZWN0b3JzIGFuZCBDUlRD
cywgYXMgZXhhbXBsZSB5b3UgY2FuCnRha2UgYSBsb29rIGF0IGRyaXZlcnMvZ3B1L2RybS9vbWFw
ZHJtL29tYXBfZHJ2LmMKCj4gSWYgbm90IGV4aXN0LCB0aGUgbmV4dF9icmlnZSB3b3VsZCBjcmVh
dGUgb25lIGNvbm5lY3RvciBhbmQgdGhpcyBicmlnZQo+IHdvdWxkIGNyZWF0ZSBhbm90aGVyIGNv
bm5lY3Rvci4KPiAKPiBJIHRoaW5rIGluIHlvdXIgY2FzZSwgbXRrX2RzaSBkb2VzIG5vdCBkaXJl
Y3RseSBjb25uZWN0IHRvIGEgcGFuZWwsIHNvCgpFeGFjdGx5Cgo+IEkgbmVlZCBhIGV4YWN0IGV4
cGxhaW4uIE9yIHNvbWVvbmUgY291bGQgdGVzdCB0aGlzIG9uIGEKPiBkaXJlY3RseS1jb25uZWN0
LXBhbmVsIHBsYXRmb3JtLgoKSSBkb24ndCB0aGluayBJIGFtIGJyZWFraW5nIHRoaXMgdXNlIGNh
c2UgYnV0IEFGQUlDUyB0aGVyZSBpcyBubyB1c2VycyBpbgptYWlubGluZSB0aGF0IGRpcmVjdGx5
IGNvbm5lY3QgYSBwYW5lbCB1c2luZyB0aGUgbWVkaWF0ZWsgZHJpdmVyLiBBcyBJIHNhaWQgbXkK
dXNlIGNhc2UgaXMgdGhlIG90aGVyIHNvIEkgY2FuJ3QgcmVhbGx5IHRlc3QuIERvIHlvdSBrbm93
IGFueW9uZSB0aGF0IGNhbiB0ZXN0IHRoaXM/CgpUaGFua3MsCiBFbnJpYwoKPiAKPiBSZWdhcmRz
LAo+IENodW4tS3VhbmcuCj4gCj4+Cj4+IFRoYW5rcywKPj4gIEVucmljCj4+Cj4+PiAtLS0KPj4+
Cj4+PiBDaGFuZ2VzIGluIHY0OiBOb25lCj4+PiBDaGFuZ2VzIGluIHYzOgo+Pj4gLSBNb3ZlIHRo
ZSBicmlkZ2UudHlwZSBsaW5lIHRvIHRoZSBwYXRjaCB0aGF0IGFkZHMgZHJtX2JyaWRnZSBzdXBw
b3J0LiAoTGF1cmVudCBQaW5jaGFydCkKPj4+Cj4+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4+Pgo+
Pj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgfCAxMyArKysrKysrKysrKyst
Cj4+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4+
Cj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYyBiL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPj4+IGluZGV4IDRmM2JkMDk1YzFlZS4u
NDcxZmNhZmRmMzQ4IDEwMDY0NAo+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19kc2kuYwo+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210a19kc2kuYwo+Pj4g
QEAgLTE3LDYgKzE3LDcgQEAKPj4+Cj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBl
ci5oPgo+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgo+Pj4gKyNpbmNsdWRlIDxkcm0v
ZHJtX2JyaWRnZV9jb25uZWN0b3IuaD4KPj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9taXBpX2RzaS5o
Pgo+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX29mLmg+Cj4+PiAgI2luY2x1ZGUgPGRybS9kcm1fcGFu
ZWwuaD4KPj4+IEBAIC0xODMsNiArMTg0LDcgQEAgc3RydWN0IG10a19kc2kgewo+Pj4gICAgICAg
ICBzdHJ1Y3QgZHJtX2VuY29kZXIgZW5jb2RlcjsKPj4+ICAgICAgICAgc3RydWN0IGRybV9icmlk
Z2UgYnJpZGdlOwo+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4dF9icmlkZ2U7Cj4+
PiArICAgICAgIHN0cnVjdCBkcm1fY29ubmVjdG9yICpjb25uZWN0b3I7Cj4+PiAgICAgICAgIHN0
cnVjdCBwaHkgKnBoeTsKPj4+Cj4+PiAgICAgICAgIHZvaWQgX19pb21lbSAqcmVnczsKPj4+IEBA
IC05NzcsMTAgKzk3OSwxOSBAQCBzdGF0aWMgaW50IG10a19kc2lfZW5jb2Rlcl9pbml0KHN0cnVj
dCBkcm1fZGV2aWNlICpkcm0sIHN0cnVjdCBtdGtfZHNpICpkc2kpCj4+PiAgICAgICAgICAqLwo+
Pj4gICAgICAgICBkc2ktPmVuY29kZXIucG9zc2libGVfY3J0Y3MgPSAxOwo+Pj4KPj4+IC0gICAg
ICAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJpZGdlLCBO
VUxMLCAwKTsKPj4+ICsgICAgICAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2Rl
ciwgJmRzaS0+YnJpZGdlLCBOVUxMLAo+Pj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBEUk1fQlJJREdFX0FUVEFDSF9OT19DT05ORUNUT1IpOwo+Pj4gICAgICAgICBpZiAocmV0KQo+
Pj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2NsZWFudXBfZW5jb2RlcjsKPj4+Cj4+PiArICAg
ICAgIGRzaS0+Y29ubmVjdG9yID0gZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdChkcm0sICZkc2kt
PmVuY29kZXIpOwo+Pj4gKyAgICAgICBpZiAoSVNfRVJSKGRzaS0+Y29ubmVjdG9yKSkgewo+Pj4g
KyAgICAgICAgICAgICAgIERSTV9FUlJPUigiVW5hYmxlIHRvIGNyZWF0ZSBicmlkZ2UgY29ubmVj
dG9yXG4iKTsKPj4+ICsgICAgICAgICAgICAgICByZXQgPSBQVFJfRVJSKGRzaS0+Y29ubmVjdG9y
KTsKPj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVwX2VuY29kZXI7Cj4+PiArICAg
ICAgIH0KPj4+ICsgICAgICAgZHJtX2Nvbm5lY3Rvcl9hdHRhY2hfZW5jb2Rlcihkc2ktPmNvbm5l
Y3RvciwgJmRzaS0+ZW5jb2Rlcik7Cj4+PiArCj4+PiAgICAgICAgIHJldHVybiAwOwo+Pj4KPj4+
ICBlcnJfY2xlYW51cF9lbmNvZGVyOgo+Pj4gLS0KPj4+IDIuMjYuMgo+Pj4KPj4+Cj4+PiBfX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4gTGludXgtbWVk
aWF0ZWsgbWFpbGluZyBsaXN0Cj4+PiBMaW51eC1tZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3Jn
Cj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LW1l
ZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
