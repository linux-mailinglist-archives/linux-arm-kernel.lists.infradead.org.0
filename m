Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1CF91D3867
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:36:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:References:To:From:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6+RNpneCaAYIa4kP+Cv7ErP/tiiD51iQFwA+Yh8gDto=; b=HAZWKsR6AQ1r2B
	ss2+mCYuGcxzdseevDkbYUV26zqu6KG/E0AdS203JsiBPr/fboNyKqnV1PB3o1DdVUIzHli3EkNLT
	LkYLn2uWeh+BsjqPbSAKyuGSsdRch2PWY212ILPal4Hbqk9Iy9v/50ZgzIinEg2H79qp3O2iSDxU4
	pIcPcJLV6/VTFyaXO9KLzl6Sc/n8G76jslRaVWP93RV1wNrJ3GPOH6Su/cQwkK5LASFjFM1fQntUO
	u7kTIJK5H2Je0YgyoLkCV9+kdfqJ8l1/Pm542K9JsjCNipvrtm2CQ4VlOjrZ7wibx2oLFCIVeuBGr
	It7Wk7KCxvSRCM0OqUOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHlx-0008NK-4h; Thu, 14 May 2020 17:35:53 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHlk-0008Mk-Bx; Thu, 14 May 2020 17:35:45 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id BC1342A2FBF
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
 <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
Message-ID: <e1ac7d75-c46a-445a-5fcf-5253548f2707@collabora.com>
Date: Thu, 14 May 2020 19:35:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_103540_676845_12960FB3 
X-CRM114-Status: GOOD (  25.19  )
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
 Enric Balletbo Serra <eballetbo@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, David Airlie <airlied@linux.ie>,
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

SGkgYWdhaW4sCgpPbiAxNC81LzIwIDE5OjEyLCBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIHdyb3Rl
Ogo+IEhpIENodW4tS3VhbmcsCj4gCj4gT24gMTQvNS8yMCAxODo0NCwgQ2h1bi1LdWFuZyBIdSB3
cm90ZToKPj4gSGksIEVucmljOgo+Pgo+PiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5i
YWxsZXRib0Bjb2xsYWJvcmEuY29tPiDmlrwgMjAyMOW5tDXmnIgxNOaXpSDpgLHlm5sg5LiL5Y2I
MTE6NDLlr6vpgZPvvJoKPj4+Cj4+PiBIaSBDaHVuLUt1YW5nLAo+Pj4KPj4+IE9uIDE0LzUvMjAg
MTY6MjgsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4+Pj4gSGksIEVucmljOgo+Pj4+Cj4+Pj4gRW5y
aWMgQmFsbGV0Ym8gU2VycmEgPGViYWxsZXRib0BnbWFpbC5jb20+IOaWvCAyMDIw5bm0NeaciDE0
5pelIOmAseWbmyDkuIrljYgxMjo0MeWvq+mBk++8mgo+Pj4+Pgo+Pj4+PiBIaSBDaHVuLUt1YW5n
LAo+Pj4+Pgo+Pj4+PiBNaXNzYXRnZSBkZSBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5i
YWxsZXRib0Bjb2xsYWJvcmEuY29tPiBkZWwKPj4+Pj4gZGlhIGR2LiwgMSBkZSBtYWlnIDIwMjAg
YSBsZXMgMTc6MjU6Cj4+Pj4+Pgo+Pj4+Pj4gVXNlIHRoZSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBo
ZWxwZXIgdG8gY3JlYXRlIGEgY29ubmVjdG9yIGZvciBwaXBlbGluZXMKPj4+Pj4+IHRoYXQgdXNl
IGRybV9icmlkZ2UuIFRoaXMgYWxsb3dzIHNwbGl0dGluZyBjb25uZWN0b3Igb3BlcmF0aW9ucyBh
Y3Jvc3MKPj4+Pj4+IG11bHRpcGxlIGJyaWRnZXMgd2hlbiBuZWNlc3NhcnksIGluc3RlYWQgb2Yg
aGF2aW5nIHRoZSBsYXN0IGJyaWRnZSBpbgo+Pj4+Pj4gdGhlIGNoYWluIGNyZWF0aW5nIHRoZSBj
b25uZWN0b3IgYW5kIGhhbmRsaW5nIGFsbCBjb25uZWN0b3Igb3BlcmF0aW9ucwo+Pj4+Pj4gaW50
ZXJuYWxseS4KPj4+Pj4+Cj4+Pj4+PiBTaWduZWQtb2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNl
cnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29tPgo+Pj4+Pj4gQWNrZWQtYnk6IFNhbSBS
YXZuYm9yZyA8c2FtQHJhdm5ib3JnLm9yZz4KPj4+Pj4KPj4+Pj4gQSBnZW50bGUgcGluZyBvbiB0
aGlzLCBJIHRoaW5rIHRoYXQgdGhpcyBvbmUgaXMgdGhlIG9ubHkgb25lIHRoYXQKPj4+Pj4gc3Rp
bGwgbmVlZHMgYSByZXZpZXcgaW4gdGhlIHNlcmllcy4KPj4+Pgo+Pj4+IFRoaXMgaXMgd2hhdCBJ
IHJlcGx5IGluIHBhdGNoIHYzOgo+Pj4+Cj4+Pgo+Pj4gU29ycnkgZm9yIG1pc3NpbmcgdGhpcy4K
Pj4+Cj4+Pj4gSSB0aGluayB0aGUgcGFuZWwgaXMgd3JhcHBlZCBpbnRvIG5leHRfYnJpZGdlIGhl
cmUsCj4+Pj4KPj4+Cj4+PiBZZXMsIHlvdSBjYW4gaGF2ZSBmb3IgZXhhbXBsZToKPj4+Cj4+PiAx
LiBkcm1fYnJpZGdlIChtdGtfZHNpKSAtPiBkcm1fYnJpZGdlIChwczg2NDAgLSBkc2ktdG8tZWRw
KSAtPiBkcm1fcGFuZWxfYnJpZGdlCj4+PiAoZWRwIHBhbmVsKQo+Pj4KPj4+IG9yIGEKPj4+Cj4+
PiAyLiBkcm1fYnJpZGdlIChtdGtfZHNpKS0+IGRybV9wYW5lbF9icmlkZ2UgKGRzaSBwYW5lbCkK
Pj4+Cj4+PiBUaGUgX2ZpcnN0XyBvbmUgaXMgbXkgdXNlIGNhc2UKPj4+Cj4+Pj4gaWYgKHBhbmVs
KSB7Cj4+Pgo+Pj4gVGhpcyBoYW5kbGVzIHRoZSBzZWNvbmQgY2FzZSwgd2hlcmUgeW91IGF0dGFj
aCBhIGRzaSBwYW5lbC4KPj4+Cj4+Pj4gICAgIGRzaS0+bmV4dF9icmlkZ2UgPSBkZXZtX2RybV9w
YW5lbF9icmlkZ2VfYWRkKGRldiwgcGFuZWwpOwo+Pj4+Cj4+Pj4gc28gdGhlIG5leHRfYnJpZGdl
IGlzIGEgcGFuZWxfYnJpZGdlLCBpbiBpdHMgYXR0YWNoIGZ1bmN0aW9uCj4+Pj4gcGFuZWxfYnJp
ZGdlX2F0dGFjaCgpLAo+Pj4+IGFjY29yZGluZyB0byB0aGUgZmxhZyBEUk1fQlJJREdFX0FUVEFD
SF9OT19DT05ORUNUT1IsIGlmIG5vdCBleGlzdCwKPj4+PiBpdCB3b3VsZCBjcmVhdGUgY29ubmVj
dG9yIGFuZCBhdHRhY2ggY29ubmVjdG9yIHRvIHBhbmVsLgo+Pj4+Cj4+Pj4gSSdtIG5vdCBzdXJl
IHRoaXMgZmxhZyB3b3VsZCBleGlzdCBvciBub3QsIGJ1dCBmb3IgYm90aCBjYXNlLCBpdCdzIHN0
cmFuZ2UuCj4+Pj4gSWYgZXhpc3QsIHlvdSBjcmVhdGUgY29ubmVjdG9yIGluIHRoaXMgcGF0Y2gg
YnV0IG5vIHdoZXJlIHRvIGF0dGFjaAo+Pj4+IGNvbm5lY3RvciB0byBwYW5lbC4KPj4+Cj4+PiBZ
ZXMsIGluIGZhY3QsIHRoaXMgaXMgdHJhbnNpdGlvbmFsIHBhdGNoIG5lZWRlZCwgYXMgb25jZSBJ
IGNvbnZlcnRlZCBtdGtfZHBpLAo+Pj4gbXRrX2RzaSBhbmQgbXRrX2hkbWkgdG8gdGhlIG5ldyBk
cm1fYnJpZGdlIEFQSSB0aGUgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpCj4+PiB3aWxsIGJl
IGRvbmUgaW4gbXRrX2RybV9kcnYuIFdlIHdpbGwgbmVlZCB0byBjYWxsIGRybV9icmlkZ2VfY29u
bmVjdG9yX2luaXQgZm9yCj4+PiBkcGkgYW5kIGRzaSBwaXBlcyBhbmQgcmVtb3ZlIHRoYXQgY2Fs
bCBmcm9tIG10a19kc2kgYW5kIG10a19kcGkgZHJpdmVycy4gVGhlCj4+PiBncmFwaGljIGNvbnRy
b2xsZXIgZHJpdmVyIHNob3VsZCBjcmVhdGUgY29ubmVjdG9ycyBhbmQgQ1JUQ3MsIGFzIGV4YW1w
bGUgeW91IGNhbgo+Pj4gdGFrZSBhIGxvb2sgYXQgZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21h
cF9kcnYuYwo+Pj4KPj4KPj4gSSBoYXZlIHN1Y2ggcXVlc3Rpb24gYmVjYXVzZSBJJ3ZlIHJldmll
d2VkIG9tYXAncyBkcml2ZXIuIEluIG9tYXAncwo+PiBkcml2ZXIsIGFmdGVyIGl0IGNhbGwgZHJt
X2JyaWRnZV9jb25uZWN0b3JfaW5pdCgpLCBpdCBkb2VzIHRoaXM6Cj4+Cj4+IGlmIChwaXBlLT5v
dXRwdXQtPnBhbmVsKSB7Cj4+IHJldCA9IGRybV9wYW5lbF9hdHRhY2gocGlwZS0+b3V0cHV0LT5w
YW5lbCwKPj4gICAgICAgcGlwZS0+Y29ubmVjdG9yKTsKPj4gaWYgKHJldCA8IDApCj4+IHJldHVy
biByZXQ7Cj4+IH0KPj4KPj4gSW4gdGhpcyBwYXRjaCwgeW91IGRvZXMgbm90IGRvIHRoaXMuCj4+
Cj4gCj4gSSBzZWUsIHNvIHllcywgSSBhbSBwcm9iYWJseSBtaXNzaW5nIGNhbGwgZHJtX3BhbmVs
X2F0dGFjaCBpbiBjYXNlIHRoZXJlIGlzIGEKPiBkaXJlY3QgcGFuZWwgYXR0YWNoZWQuIFRoYW5r
cyBmb3IgcG9pbnRpbmcgaXQuCj4gCj4gSSdsbCBzZW5kIGEgbmV3IHZlcnNpb24gYWRkaW5nIHRo
ZSBkcm1fcGFuZWxfYXR0YWNoIGNhbGwuCj4gCgpXYWl0LCBzaG91bGRuJ3QgcGFuZWwgYmUgYXR0
YWNoZWQgb24gdGhlIGNhbGwgb2YgbXRrX2RzaV9icmlkZ2VfYXR0YWNoIGFzCm5leHRfYnJpZGdl
IHBvaW50cyB0byBhIGJyaWRnZSBvciBhIHBhbmVsPwoKc3RhdGljIGludCBtdGtfZHNpX2JyaWRn
ZV9hdHRhY2goc3RydWN0IGRybV9icmlkZ2UgKmJyaWRnZSwKCQkJCSBlbnVtIGRybV9icmlkZ2Vf
YXR0YWNoX2ZsYWdzIGZsYWdzKQp7CglzdHJ1Y3QgbXRrX2RzaSAqZHNpID0gYnJpZGdlX3RvX2Rz
aShicmlkZ2UpOwoKCS8qIEF0dGFjaCB0aGUgcGFuZWwgb3IgYnJpZGdlIHRvIHRoZSBkc2kgYnJp
ZGdlICovCglyZXR1cm4gZHJtX2JyaWRnZV9hdHRhY2goYnJpZGdlLT5lbmNvZGVyLCBkc2ktPm5l
eHRfYnJpZGdlLAoJCQkJICZkc2ktPmJyaWRnZSwgZmxhZ3MpOwp9CgpPciBJIGFtIGNvbnRpbnVp
bmcgbWlzdW5kZXJzdGFuZGluZyBhbGwgdGhpcz8KCj4+Pj4gSWYgbm90IGV4aXN0LCB0aGUgbmV4
dF9icmlnZSB3b3VsZCBjcmVhdGUgb25lIGNvbm5lY3RvciBhbmQgdGhpcyBicmlnZQo+Pj4+IHdv
dWxkIGNyZWF0ZSBhbm90aGVyIGNvbm5lY3Rvci4KPj4+Pgo+Pj4+IEkgdGhpbmsgaW4geW91ciBj
YXNlLCBtdGtfZHNpIGRvZXMgbm90IGRpcmVjdGx5IGNvbm5lY3QgdG8gYSBwYW5lbCwgc28KPj4+
Cj4+PiBFeGFjdGx5Cj4+Pgo+Pj4+IEkgbmVlZCBhIGV4YWN0IGV4cGxhaW4uIE9yIHNvbWVvbmUg
Y291bGQgdGVzdCB0aGlzIG9uIGEKPj4+PiBkaXJlY3RseS1jb25uZWN0LXBhbmVsIHBsYXRmb3Jt
Lgo+Pj4KPj4+IEkgZG9uJ3QgdGhpbmsgSSBhbSBicmVha2luZyB0aGlzIHVzZSBjYXNlIGJ1dCBB
RkFJQ1MgdGhlcmUgaXMgbm8gdXNlcnMgaW4KPj4+IG1haW5saW5lIHRoYXQgZGlyZWN0bHkgY29u
bmVjdCBhIHBhbmVsIHVzaW5nIHRoZSBtZWRpYXRlayBkcml2ZXIuIEFzIEkgc2FpZCBteQo+Pj4g
dXNlIGNhc2UgaXMgdGhlIG90aGVyIHNvIEkgY2FuJ3QgcmVhbGx5IHRlc3QuIERvIHlvdSBrbm93
IGFueW9uZSB0aGF0IGNhbiB0ZXN0IHRoaXM/Cj4+Cj4+IEknbSBub3Qgc3VyZSB3aG8gY2FuIHRl
c3QgdGhpcywgYnV0IFsxXSwgd2hpY2ggaXMgc2VudCBieSBZVCBTaGVuIGluIGEKPj4gc2VyaWVz
LCBpcyBhIHBhdGNoIHRvIHN1cHBvcnQgZHNpIGNvbW1hbmQgbW9kZSBzbyBkc2kgY291bGQgZGly
ZWN0bHkKPj4gY29ubmVjdCB0byBwYW5lbC4KPj4KPj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5v
cmcvcHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvZHJp
dmVycy9ncHUvZHJtL21lZGlhdGVrP2g9djUuNy1yYzUmaWQ9MjE4OTg4MTY4MzFmYzYwYzkyZGQ2
MzRhYjQzMTZhMjRkYTdlYjRhZgo+Pgo+PiBJdCdzIGJldHRlciB0aGF0IHNvbWVvbmUgY291bGQg
dGVzdCB0aGlzIGNhc2UsIGJ1dCBpZiBubyBvbmUgd291bGQKPj4gdGVzdCB0aGlzLCBJIGNvdWxk
IGFsc28gYWNjZXB0IGEgZ29vZC1sb29rIHBhdGNoLgo+Pgo+PiBSZWdhcmRzLAo+PiBDaHVuLUt1
YW5nLgo+Pgo+Pj4KPj4+IFRoYW5rcywKPj4+ICBFbnJpYwo+Pj4KPj4+Pgo+Pj4+IFJlZ2FyZHMs
Cj4+Pj4gQ2h1bi1LdWFuZy4KPj4+Pgo+Pj4+Pgo+Pj4+PiBUaGFua3MsCj4+Pj4+ICBFbnJpYwo+
Pj4+Pgo+Pj4+Pj4gLS0tCj4+Pj4+Pgo+Pj4+Pj4gQ2hhbmdlcyBpbiB2NDogTm9uZQo+Pj4+Pj4g
Q2hhbmdlcyBpbiB2MzoKPj4+Pj4+IC0gTW92ZSB0aGUgYnJpZGdlLnR5cGUgbGluZSB0byB0aGUg
cGF0Y2ggdGhhdCBhZGRzIGRybV9icmlkZ2Ugc3VwcG9ydC4gKExhdXJlbnQgUGluY2hhcnQpCj4+
Pj4+Pgo+Pj4+Pj4gQ2hhbmdlcyBpbiB2MjogTm9uZQo+Pj4+Pj4KPj4+Pj4+ICBkcml2ZXJzL2dw
dS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgMTMgKysrKysrKysrKysrLQo+Pj4+Pj4gIDEgZmls
ZSBjaGFuZ2VkLCAxMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pCj4+Pj4+Pgo+Pj4+Pj4g
ZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2ZXJz
L2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4+Pj4+PiBpbmRleCA0ZjNiZDA5NWMxZWUuLjQ3
MWZjYWZkZjM0OCAxMDA2NDQKPj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9t
dGtfZHNpLmMKPj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMK
Pj4+Pj4+IEBAIC0xNyw2ICsxNyw3IEBACj4+Pj4+Pgo+Pj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJt
X2F0b21pY19oZWxwZXIuaD4KPj4+Pj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2UuaD4KPj4+
Pj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2VfY29ubmVjdG9yLmg+Cj4+Pj4+PiAgI2luY2x1
ZGUgPGRybS9kcm1fbWlwaV9kc2kuaD4KPj4+Pj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9vZi5oPgo+
Pj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX3BhbmVsLmg+Cj4+Pj4+PiBAQCAtMTgzLDYgKzE4NCw3
IEBAIHN0cnVjdCBtdGtfZHNpIHsKPj4+Pj4+ICAgICAgICAgc3RydWN0IGRybV9lbmNvZGVyIGVu
Y29kZXI7Cj4+Pj4+PiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlIGJyaWRnZTsKPj4+Pj4+ICAg
ICAgICAgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+Pj4+Pj4gKyAgICAgICBzdHJ1
Y3QgZHJtX2Nvbm5lY3RvciAqY29ubmVjdG9yOwo+Pj4+Pj4gICAgICAgICBzdHJ1Y3QgcGh5ICpw
aHk7Cj4+Pj4+Pgo+Pj4+Pj4gICAgICAgICB2b2lkIF9faW9tZW0gKnJlZ3M7Cj4+Pj4+PiBAQCAt
OTc3LDEwICs5NzksMTkgQEAgc3RhdGljIGludCBtdGtfZHNpX2VuY29kZXJfaW5pdChzdHJ1Y3Qg
ZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgbXRrX2RzaSAqZHNpKQo+Pj4+Pj4gICAgICAgICAgKi8K
Pj4+Pj4+ICAgICAgICAgZHNpLT5lbmNvZGVyLnBvc3NpYmxlX2NydGNzID0gMTsKPj4+Pj4+Cj4+
Pj4+PiAtICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNoKCZkc2ktPmVuY29kZXIsICZkc2kt
PmJyaWRnZSwgTlVMTCwgMCk7Cj4+Pj4+PiArICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNo
KCZkc2ktPmVuY29kZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwKPj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SKTsKPj4+Pj4+
ICAgICAgICAgaWYgKHJldCkKPj4+Pj4+ICAgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVhbnVw
X2VuY29kZXI7Cj4+Pj4+Pgo+Pj4+Pj4gKyAgICAgICBkc2ktPmNvbm5lY3RvciA9IGRybV9icmlk
Z2VfY29ubmVjdG9yX2luaXQoZHJtLCAmZHNpLT5lbmNvZGVyKTsKPj4+Pj4+ICsgICAgICAgaWYg
KElTX0VSUihkc2ktPmNvbm5lY3RvcikpIHsKPj4+Pj4+ICsgICAgICAgICAgICAgICBEUk1fRVJS
T1IoIlVuYWJsZSB0byBjcmVhdGUgYnJpZGdlIGNvbm5lY3RvclxuIik7Cj4+Pj4+PiArICAgICAg
ICAgICAgICAgcmV0ID0gUFRSX0VSUihkc2ktPmNvbm5lY3Rvcik7Cj4+Pj4+PiArICAgICAgICAg
ICAgICAgZ290byBlcnJfY2xlYW51cF9lbmNvZGVyOwo+Pj4+Pj4gKyAgICAgICB9Cj4+Pj4+PiAr
ICAgICAgIGRybV9jb25uZWN0b3JfYXR0YWNoX2VuY29kZXIoZHNpLT5jb25uZWN0b3IsICZkc2kt
PmVuY29kZXIpOwo+Pj4+Pj4gKwo+Pj4+Pj4gICAgICAgICByZXR1cm4gMDsKPj4+Pj4+Cj4+Pj4+
PiAgZXJyX2NsZWFudXBfZW5jb2RlcjoKPj4+Pj4+IC0tCj4+Pj4+PiAyLjI2LjIKPj4+Pj4+Cj4+
Pj4+Pgo+Pj4+Pj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X18KPj4+Pj4+IExpbnV4LW1lZGlhdGVrIG1haWxpbmcgbGlzdAo+Pj4+Pj4gTGludXgtbWVkaWF0
ZWtAbGlzdHMuaW5mcmFkZWFkLm9yZwo+Pj4+Pj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawo+IAoKX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QK
bGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRl
YWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
