Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2421A1D37B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 19:13:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+P6b4PZPhNH8YXYciAV27zAslwr3/ikmkRlXNm1NPRU=; b=r9djg9h4ceHY04
	ZHL0YJo2ja1JEzdZI83d4a2/+XX56vW2QUawo51aRGsS8DqV3zJfUNTEuMojR4Cud1d5iElSPaNw/
	AJG+PbECntrB7U5wW0ZA+/iON6cYch6yY/VtYc+vFijd0mJ+HT9ViF2WlkzVgO73nlLwkg/slS1Qf
	ajokFYcvQAkrD96oFKXbMlA4DniiG+sAjhOcWp1Z1y+nKdWrV/fGNQntZ5lcWLd/QogqnXXDANBks
	c+byI7I8tiWZ96y3PZLoHuodH05ECX9UG4wNkE+YyVDamdg4zT4tctPVasPKKUKhJAefFgBd6dIGq
	PfU42p0NgkHTxdWbtaZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZHQ8-00013M-HC; Thu, 14 May 2020 17:13:20 +0000
Received: from bhuna.collabora.co.uk ([46.235.227.227])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZHPq-00012B-3o; Thu, 14 May 2020 17:13:06 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id C4CCA2A2FB5
Subject: Re: [PATCH v4 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20200501152335.1805790-1-enric.balletbo@collabora.com>
 <20200501152335.1805790-8-enric.balletbo@collabora.com>
 <CAFqH_53h=3OXzwLnw1XT3rHYkMPOPNFBdQdPeFmNubN9qq_Twg@mail.gmail.com>
 <CAAOTY_-pOUuM7LQ1jm6gqpg8acMqDWOHxGucY5XOjq0ctGUkzA@mail.gmail.com>
 <53683f2d-23c7-57ab-2056-520c50795ffe@collabora.com>
 <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <37191700-5832-2931-5764-7f7fddd023b9@collabora.com>
Date: Thu, 14 May 2020 19:12:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY__b6V12fS2xTKGjB1fQTfRjX7AQyBqDPXzshfhkjjSkeQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_101302_418558_29824723 
X-CRM114-Status: GOOD (  28.05  )
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

SGkgQ2h1bi1LdWFuZywKCk9uIDE0LzUvMjAgMTg6NDQsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4g
SGksIEVucmljOgo+IAo+IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNv
bGxhYm9yYS5jb20+IOaWvCAyMDIw5bm0NeaciDE05pelIOmAseWbmyDkuIvljYgxMTo0MuWvq+mB
k++8mgo+Pgo+PiBIaSBDaHVuLUt1YW5nLAo+Pgo+PiBPbiAxNC81LzIwIDE2OjI4LCBDaHVuLUt1
YW5nIEh1IHdyb3RlOgo+Pj4gSGksIEVucmljOgo+Pj4KPj4+IEVucmljIEJhbGxldGJvIFNlcnJh
IDxlYmFsbGV0Ym9AZ21haWwuY29tPiDmlrwgMjAyMOW5tDXmnIgxNOaXpSDpgLHlm5sg5LiK5Y2I
MTI6NDHlr6vpgZPvvJoKPj4+Pgo+Pj4+IEhpIENodW4tS3VhbmcsCj4+Pj4KPj4+PiBNaXNzYXRn
ZSBkZSBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEuY29t
PiBkZWwKPj4+PiBkaWEgZHYuLCAxIGRlIG1haWcgMjAyMCBhIGxlcyAxNzoyNToKPj4+Pj4KPj4+
Pj4gVXNlIHRoZSBkcm1fYnJpZGdlX2Nvbm5lY3RvciBoZWxwZXIgdG8gY3JlYXRlIGEgY29ubmVj
dG9yIGZvciBwaXBlbGluZXMKPj4+Pj4gdGhhdCB1c2UgZHJtX2JyaWRnZS4gVGhpcyBhbGxvd3Mg
c3BsaXR0aW5nIGNvbm5lY3RvciBvcGVyYXRpb25zIGFjcm9zcwo+Pj4+PiBtdWx0aXBsZSBicmlk
Z2VzIHdoZW4gbmVjZXNzYXJ5LCBpbnN0ZWFkIG9mIGhhdmluZyB0aGUgbGFzdCBicmlkZ2UgaW4K
Pj4+Pj4gdGhlIGNoYWluIGNyZWF0aW5nIHRoZSBjb25uZWN0b3IgYW5kIGhhbmRsaW5nIGFsbCBj
b25uZWN0b3Igb3BlcmF0aW9ucwo+Pj4+PiBpbnRlcm5hbGx5Lgo+Pj4+Pgo+Pj4+PiBTaWduZWQt
b2ZmLWJ5OiBFbnJpYyBCYWxsZXRibyBpIFNlcnJhIDxlbnJpYy5iYWxsZXRib0Bjb2xsYWJvcmEu
Y29tPgo+Pj4+PiBBY2tlZC1ieTogU2FtIFJhdm5ib3JnIDxzYW1AcmF2bmJvcmcub3JnPgo+Pj4+
Cj4+Pj4gQSBnZW50bGUgcGluZyBvbiB0aGlzLCBJIHRoaW5rIHRoYXQgdGhpcyBvbmUgaXMgdGhl
IG9ubHkgb25lIHRoYXQKPj4+PiBzdGlsbCBuZWVkcyBhIHJldmlldyBpbiB0aGUgc2VyaWVzLgo+
Pj4KPj4+IFRoaXMgaXMgd2hhdCBJIHJlcGx5IGluIHBhdGNoIHYzOgo+Pj4KPj4KPj4gU29ycnkg
Zm9yIG1pc3NpbmcgdGhpcy4KPj4KPj4+IEkgdGhpbmsgdGhlIHBhbmVsIGlzIHdyYXBwZWQgaW50
byBuZXh0X2JyaWRnZSBoZXJlLAo+Pj4KPj4KPj4gWWVzLCB5b3UgY2FuIGhhdmUgZm9yIGV4YW1w
bGU6Cj4+Cj4+IDEuIGRybV9icmlkZ2UgKG10a19kc2kpIC0+IGRybV9icmlkZ2UgKHBzODY0MCAt
IGRzaS10by1lZHApIC0+IGRybV9wYW5lbF9icmlkZ2UKPj4gKGVkcCBwYW5lbCkKPj4KPj4gb3Ig
YQo+Pgo+PiAyLiBkcm1fYnJpZGdlIChtdGtfZHNpKS0+IGRybV9wYW5lbF9icmlkZ2UgKGRzaSBw
YW5lbCkKPj4KPj4gVGhlIF9maXJzdF8gb25lIGlzIG15IHVzZSBjYXNlCj4+Cj4+PiBpZiAocGFu
ZWwpIHsKPj4KPj4gVGhpcyBoYW5kbGVzIHRoZSBzZWNvbmQgY2FzZSwgd2hlcmUgeW91IGF0dGFj
aCBhIGRzaSBwYW5lbC4KPj4KPj4+ICAgICBkc2ktPm5leHRfYnJpZGdlID0gZGV2bV9kcm1fcGFu
ZWxfYnJpZGdlX2FkZChkZXYsIHBhbmVsKTsKPj4+Cj4+PiBzbyB0aGUgbmV4dF9icmlkZ2UgaXMg
YSBwYW5lbF9icmlkZ2UsIGluIGl0cyBhdHRhY2ggZnVuY3Rpb24KPj4+IHBhbmVsX2JyaWRnZV9h
dHRhY2goKSwKPj4+IGFjY29yZGluZyB0byB0aGUgZmxhZyBEUk1fQlJJREdFX0FUVEFDSF9OT19D
T05ORUNUT1IsIGlmIG5vdCBleGlzdCwKPj4+IGl0IHdvdWxkIGNyZWF0ZSBjb25uZWN0b3IgYW5k
IGF0dGFjaCBjb25uZWN0b3IgdG8gcGFuZWwuCj4+Pgo+Pj4gSSdtIG5vdCBzdXJlIHRoaXMgZmxh
ZyB3b3VsZCBleGlzdCBvciBub3QsIGJ1dCBmb3IgYm90aCBjYXNlLCBpdCdzIHN0cmFuZ2UuCj4+
PiBJZiBleGlzdCwgeW91IGNyZWF0ZSBjb25uZWN0b3IgaW4gdGhpcyBwYXRjaCBidXQgbm8gd2hl
cmUgdG8gYXR0YWNoCj4+PiBjb25uZWN0b3IgdG8gcGFuZWwuCj4+Cj4+IFllcywgaW4gZmFjdCwg
dGhpcyBpcyB0cmFuc2l0aW9uYWwgcGF0Y2ggbmVlZGVkLCBhcyBvbmNlIEkgY29udmVydGVkIG10
a19kcGksCj4+IG10a19kc2kgYW5kIG10a19oZG1pIHRvIHRoZSBuZXcgZHJtX2JyaWRnZSBBUEkg
dGhlIGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQoKQo+PiB3aWxsIGJlIGRvbmUgaW4gbXRrX2Ry
bV9kcnYuIFdlIHdpbGwgbmVlZCB0byBjYWxsIGRybV9icmlkZ2VfY29ubmVjdG9yX2luaXQgZm9y
Cj4+IGRwaSBhbmQgZHNpIHBpcGVzIGFuZCByZW1vdmUgdGhhdCBjYWxsIGZyb20gbXRrX2RzaSBh
bmQgbXRrX2RwaSBkcml2ZXJzLiBUaGUKPj4gZ3JhcGhpYyBjb250cm9sbGVyIGRyaXZlciBzaG91
bGQgY3JlYXRlIGNvbm5lY3RvcnMgYW5kIENSVENzLCBhcyBleGFtcGxlIHlvdSBjYW4KPj4gdGFr
ZSBhIGxvb2sgYXQgZHJpdmVycy9ncHUvZHJtL29tYXBkcm0vb21hcF9kcnYuYwo+Pgo+IAo+IEkg
aGF2ZSBzdWNoIHF1ZXN0aW9uIGJlY2F1c2UgSSd2ZSByZXZpZXdlZCBvbWFwJ3MgZHJpdmVyLiBJ
biBvbWFwJ3MKPiBkcml2ZXIsIGFmdGVyIGl0IGNhbGwgZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5p
dCgpLCBpdCBkb2VzIHRoaXM6Cj4gCj4gaWYgKHBpcGUtPm91dHB1dC0+cGFuZWwpIHsKPiByZXQg
PSBkcm1fcGFuZWxfYXR0YWNoKHBpcGUtPm91dHB1dC0+cGFuZWwsCj4gICAgICAgcGlwZS0+Y29u
bmVjdG9yKTsKPiBpZiAocmV0IDwgMCkKPiByZXR1cm4gcmV0Owo+IH0KPiAKPiBJbiB0aGlzIHBh
dGNoLCB5b3UgZG9lcyBub3QgZG8gdGhpcy4KPiAKCkkgc2VlLCBzbyB5ZXMsIEkgYW0gcHJvYmFi
bHkgbWlzc2luZyBjYWxsIGRybV9wYW5lbF9hdHRhY2ggaW4gY2FzZSB0aGVyZSBpcyBhCmRpcmVj
dCBwYW5lbCBhdHRhY2hlZC4gVGhhbmtzIGZvciBwb2ludGluZyBpdC4KCkknbGwgc2VuZCBhIG5l
dyB2ZXJzaW9uIGFkZGluZyB0aGUgZHJtX3BhbmVsX2F0dGFjaCBjYWxsLgoKPj4+IElmIG5vdCBl
eGlzdCwgdGhlIG5leHRfYnJpZ2Ugd291bGQgY3JlYXRlIG9uZSBjb25uZWN0b3IgYW5kIHRoaXMg
YnJpZ2UKPj4+IHdvdWxkIGNyZWF0ZSBhbm90aGVyIGNvbm5lY3Rvci4KPj4+Cj4+PiBJIHRoaW5r
IGluIHlvdXIgY2FzZSwgbXRrX2RzaSBkb2VzIG5vdCBkaXJlY3RseSBjb25uZWN0IHRvIGEgcGFu
ZWwsIHNvCj4+Cj4+IEV4YWN0bHkKPj4KPj4+IEkgbmVlZCBhIGV4YWN0IGV4cGxhaW4uIE9yIHNv
bWVvbmUgY291bGQgdGVzdCB0aGlzIG9uIGEKPj4+IGRpcmVjdGx5LWNvbm5lY3QtcGFuZWwgcGxh
dGZvcm0uCj4+Cj4+IEkgZG9uJ3QgdGhpbmsgSSBhbSBicmVha2luZyB0aGlzIHVzZSBjYXNlIGJ1
dCBBRkFJQ1MgdGhlcmUgaXMgbm8gdXNlcnMgaW4KPj4gbWFpbmxpbmUgdGhhdCBkaXJlY3RseSBj
b25uZWN0IGEgcGFuZWwgdXNpbmcgdGhlIG1lZGlhdGVrIGRyaXZlci4gQXMgSSBzYWlkIG15Cj4+
IHVzZSBjYXNlIGlzIHRoZSBvdGhlciBzbyBJIGNhbid0IHJlYWxseSB0ZXN0LiBEbyB5b3Uga25v
dyBhbnlvbmUgdGhhdCBjYW4gdGVzdCB0aGlzPwo+IAo+IEknbSBub3Qgc3VyZSB3aG8gY2FuIHRl
c3QgdGhpcywgYnV0IFsxXSwgd2hpY2ggaXMgc2VudCBieSBZVCBTaGVuIGluIGEKPiBzZXJpZXMs
IGlzIGEgcGF0Y2ggdG8gc3VwcG9ydCBkc2kgY29tbWFuZCBtb2RlIHNvIGRzaSBjb3VsZCBkaXJl
Y3RseQo+IGNvbm5lY3QgdG8gcGFuZWwuCj4gCj4gWzFdIGh0dHBzOi8vZ2l0Lmtlcm5lbC5vcmcv
cHViL3NjbS9saW51eC9rZXJuZWwvZ2l0L3RvcnZhbGRzL2xpbnV4LmdpdC9jb21taXQvZHJpdmVy
cy9ncHUvZHJtL21lZGlhdGVrP2g9djUuNy1yYzUmaWQ9MjE4OTg4MTY4MzFmYzYwYzkyZGQ2MzRh
YjQzMTZhMjRkYTdlYjRhZgo+IAo+IEl0J3MgYmV0dGVyIHRoYXQgc29tZW9uZSBjb3VsZCB0ZXN0
IHRoaXMgY2FzZSwgYnV0IGlmIG5vIG9uZSB3b3VsZAo+IHRlc3QgdGhpcywgSSBjb3VsZCBhbHNv
IGFjY2VwdCBhIGdvb2QtbG9vayBwYXRjaC4KPiAKPiBSZWdhcmRzLAo+IENodW4tS3VhbmcuCj4g
Cj4+Cj4+IFRoYW5rcywKPj4gIEVucmljCj4+Cj4+Pgo+Pj4gUmVnYXJkcywKPj4+IENodW4tS3Vh
bmcuCj4+Pgo+Pj4+Cj4+Pj4gVGhhbmtzLAo+Pj4+ICBFbnJpYwo+Pj4+Cj4+Pj4+IC0tLQo+Pj4+
Pgo+Pj4+PiBDaGFuZ2VzIGluIHY0OiBOb25lCj4+Pj4+IENoYW5nZXMgaW4gdjM6Cj4+Pj4+IC0g
TW92ZSB0aGUgYnJpZGdlLnR5cGUgbGluZSB0byB0aGUgcGF0Y2ggdGhhdCBhZGRzIGRybV9icmlk
Z2Ugc3VwcG9ydC4gKExhdXJlbnQgUGluY2hhcnQpCj4+Pj4+Cj4+Pj4+IENoYW5nZXMgaW4gdjI6
IE5vbmUKPj4+Pj4KPj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgfCAx
MyArKysrKysrKysrKystCj4+Pj4+ICAxIGZpbGUgY2hhbmdlZCwgMTIgaW5zZXJ0aW9ucygrKSwg
MSBkZWxldGlvbigtKQo+Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21l
ZGlhdGVrL210a19kc2kuYyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPj4+
Pj4gaW5kZXggNGYzYmQwOTVjMWVlLi40NzFmY2FmZGYzNDggMTAwNjQ0Cj4+Pj4+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPj4+Pj4gKysrIGIvZHJpdmVycy9ncHUv
ZHJtL21lZGlhdGVrL210a19kc2kuYwo+Pj4+PiBAQCAtMTcsNiArMTcsNyBAQAo+Pj4+Pgo+Pj4+
PiAgI2luY2x1ZGUgPGRybS9kcm1fYXRvbWljX2hlbHBlci5oPgo+Pj4+PiAgI2luY2x1ZGUgPGRy
bS9kcm1fYnJpZGdlLmg+Cj4+Pj4+ICsjaW5jbHVkZSA8ZHJtL2RybV9icmlkZ2VfY29ubmVjdG9y
Lmg+Cj4+Pj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9taXBpX2RzaS5oPgo+Pj4+PiAgI2luY2x1ZGUg
PGRybS9kcm1fb2YuaD4KPj4+Pj4gICNpbmNsdWRlIDxkcm0vZHJtX3BhbmVsLmg+Cj4+Pj4+IEBA
IC0xODMsNiArMTg0LDcgQEAgc3RydWN0IG10a19kc2kgewo+Pj4+PiAgICAgICAgIHN0cnVjdCBk
cm1fZW5jb2RlciBlbmNvZGVyOwo+Pj4+PiAgICAgICAgIHN0cnVjdCBkcm1fYnJpZGdlIGJyaWRn
ZTsKPj4+Pj4gICAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSAqbmV4dF9icmlkZ2U7Cj4+Pj4+ICsg
ICAgICAgc3RydWN0IGRybV9jb25uZWN0b3IgKmNvbm5lY3RvcjsKPj4+Pj4gICAgICAgICBzdHJ1
Y3QgcGh5ICpwaHk7Cj4+Pj4+Cj4+Pj4+ICAgICAgICAgdm9pZCBfX2lvbWVtICpyZWdzOwo+Pj4+
PiBAQCAtOTc3LDEwICs5NzksMTkgQEAgc3RhdGljIGludCBtdGtfZHNpX2VuY29kZXJfaW5pdChz
dHJ1Y3QgZHJtX2RldmljZSAqZHJtLCBzdHJ1Y3QgbXRrX2RzaSAqZHNpKQo+Pj4+PiAgICAgICAg
ICAqLwo+Pj4+PiAgICAgICAgIGRzaS0+ZW5jb2Rlci5wb3NzaWJsZV9jcnRjcyA9IDE7Cj4+Pj4+
Cj4+Pj4+IC0gICAgICAgcmV0ID0gZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRz
aS0+YnJpZGdlLCBOVUxMLCAwKTsKPj4+Pj4gKyAgICAgICByZXQgPSBkcm1fYnJpZGdlX2F0dGFj
aCgmZHNpLT5lbmNvZGVyLCAmZHNpLT5icmlkZ2UsIE5VTEwsCj4+Pj4+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgRFJNX0JSSURHRV9BVFRBQ0hfTk9fQ09OTkVDVE9SKTsKPj4+Pj4g
ICAgICAgICBpZiAocmV0KQo+Pj4+PiAgICAgICAgICAgICAgICAgZ290byBlcnJfY2xlYW51cF9l
bmNvZGVyOwo+Pj4+Pgo+Pj4+PiArICAgICAgIGRzaS0+Y29ubmVjdG9yID0gZHJtX2JyaWRnZV9j
b25uZWN0b3JfaW5pdChkcm0sICZkc2ktPmVuY29kZXIpOwo+Pj4+PiArICAgICAgIGlmIChJU19F
UlIoZHNpLT5jb25uZWN0b3IpKSB7Cj4+Pj4+ICsgICAgICAgICAgICAgICBEUk1fRVJST1IoIlVu
YWJsZSB0byBjcmVhdGUgYnJpZGdlIGNvbm5lY3RvclxuIik7Cj4+Pj4+ICsgICAgICAgICAgICAg
ICByZXQgPSBQVFJfRVJSKGRzaS0+Y29ubmVjdG9yKTsKPj4+Pj4gKyAgICAgICAgICAgICAgIGdv
dG8gZXJyX2NsZWFudXBfZW5jb2RlcjsKPj4+Pj4gKyAgICAgICB9Cj4+Pj4+ICsgICAgICAgZHJt
X2Nvbm5lY3Rvcl9hdHRhY2hfZW5jb2Rlcihkc2ktPmNvbm5lY3RvciwgJmRzaS0+ZW5jb2Rlcik7
Cj4+Pj4+ICsKPj4+Pj4gICAgICAgICByZXR1cm4gMDsKPj4+Pj4KPj4+Pj4gIGVycl9jbGVhbnVw
X2VuY29kZXI6Cj4+Pj4+IC0tCj4+Pj4+IDIuMjYuMgo+Pj4+Pgo+Pj4+Pgo+Pj4+PiBfX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwo+Pj4+PiBMaW51eC1tZWRp
YXRlayBtYWlsaW5nIGxpc3QKPj4+Pj4gTGludXgtbWVkaWF0ZWtAbGlzdHMuaW5mcmFkZWFkLm9y
Zwo+Pj4+PiBodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4
LW1lZGlhdGVrCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
XwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmlu
ZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9s
aW51eC1hcm0ta2VybmVsCg==
