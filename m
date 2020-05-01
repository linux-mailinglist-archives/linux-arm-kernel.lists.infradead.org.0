Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A47021C18D7
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  1 May 2020 17:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=9FjmDRohaYC3fLcRwe4+fzR4PHdrbvv7DjuYXz5wdr8=; b=Ri3zI/tqqEJMmK
	GooEVKYWwbZy0efM8nGkZfifatBSl2X0GJchhSGPHRFECi5JtwAvuK5ZOayXcBZ+GKsXZsvpm5GtW
	v6KXf3jrUUSq928t2hk1as4SOQXgQjdSN7Dg9nJL0HzSYcUWdxr1jeJ5tFEEujrL2jc0kJQ6PgcOs
	Z+1Tm4oWRmpDf8i5EmcWMz0oI06f0ta4uU6xpv6ii/wPZnzEvqvYzoPHw21MKKVcSYi73694tXogu
	ByBXzk5e2uM2h1GZm8csEFl4l0wxT/md4DKQJ1cqOS4Ox9zIpmvIAutalB742fOyw71EUZ9Iort+m
	jIO4oTKVHqsbCl4ZBoWg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jUX8u-0008Ef-Aq; Fri, 01 May 2020 14:59:56 +0000
Received: from bhuna.collabora.co.uk ([2a00:1098:0:82:1000:25:2eeb:e3e3])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jUX8l-0008C3-K4; Fri, 01 May 2020 14:59:50 +0000
Received: from [127.0.0.1] (localhost [127.0.0.1])
 (Authenticated sender: eballetbo) with ESMTPSA id 3C1082A30D9
Subject: Re: [PATCH v3 7/7] drm/mediatek: mtk_dsi: Create connector for bridges
To: Chun-Kuang Hu <chunkuang.hu@kernel.org>
References: <20200417150614.2631786-1-enric.balletbo@collabora.com>
 <20200417150614.2631786-8-enric.balletbo@collabora.com>
 <CAAOTY_8uWP80ZMO5ZQGLJ5YLFZcmGjZwc33Hi_oXsCPj5Yr89A@mail.gmail.com>
From: Enric Balletbo i Serra <enric.balletbo@collabora.com>
Message-ID: <0584a198-02f2-a8a3-676e-74365a697bd4@collabora.com>
Date: Fri, 1 May 2020 16:59:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAAOTY_8uWP80ZMO5ZQGLJ5YLFZcmGjZwc33Hi_oXsCPj5Yr89A@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200501_075947_791159_3C5FF97A 
X-CRM114-Status: GOOD (  18.12  )
X-Spam-Score: -0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
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
Cc: Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, David Airlie <airlied@linux.ie>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, Hsin-Yi Wang <hsinyi@chromium.org>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Collabora Kernel ML <kernel@collabora.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgQ2h1bi1LdWFuZywKClRoYW5rIHlvdSBmb3IgeW91ciByZXZpZXcuCgpPbiAxLzUvMjAgMTY6
MjYsIENodW4tS3VhbmcgSHUgd3JvdGU6Cj4gSGksIEVucmljOgo+IAo+IEVucmljIEJhbGxldGJv
IGkgU2VycmEgPGVucmljLmJhbGxldGJvQGNvbGxhYm9yYS5jb20+IOaWvCAyMDIw5bm0NOaciDE3
5pelIOmAseS6lCDkuIvljYgxMTowNuWvq+mBk++8mgo+Pgo+PiBVc2UgdGhlIGRybV9icmlkZ2Vf
Y29ubmVjdG9yIGhlbHBlciB0byBjcmVhdGUgYSBjb25uZWN0b3IgZm9yIHBpcGVsaW5lcwo+PiB0
aGF0IHVzZSBkcm1fYnJpZGdlLiBUaGlzIGFsbG93cyBzcGxpdHRpbmcgY29ubmVjdG9yIG9wZXJh
dGlvbnMgYWNyb3NzCj4+IG11bHRpcGxlIGJyaWRnZXMgd2hlbiBuZWNlc3NhcnksIGluc3RlYWQg
b2YgaGF2aW5nIHRoZSBsYXN0IGJyaWRnZSBpbgo+PiB0aGUgY2hhaW4gY3JlYXRpbmcgdGhlIGNv
bm5lY3RvciBhbmQgaGFuZGxpbmcgYWxsIGNvbm5lY3RvciBvcGVyYXRpb25zCj4+IGludGVybmFs
bHkuCj4+Cj4+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJh
bGxldGJvQGNvbGxhYm9yYS5jb20+Cj4+IC0tLQo+Pgo+PiBDaGFuZ2VzIGluIHYzOgo+PiAtIE1v
dmUgdGhlIGJyaWRnZS50eXBlIGxpbmUgdG8gdGhlIHBhdGNoIHRoYXQgYWRkcyBkcm1fYnJpZGdl
IHN1cHBvcnQuIChMYXVyZW50IFBpbmNoYXJ0KQo+Pgo+PiBDaGFuZ2VzIGluIHYyOiBOb25lCj4+
Cj4+ICBkcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jIHwgMTMgKysrKysrKysrKysr
LQo+PiAgMSBmaWxlIGNoYW5nZWQsIDEyIGluc2VydGlvbnMoKyksIDEgZGVsZXRpb24oLSkKPj4K
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMgYi9kcml2
ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2RzaS5jCj4+IGluZGV4IDE1NzA5N2M2M2IyMy4uODVm
NzZiMDFhZTRkIDEwMDY0NAo+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2Rz
aS5jCj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfZHNpLmMKPj4gQEAgLTE3
LDYgKzE3LDcgQEAKPj4KPj4gICNpbmNsdWRlIDxkcm0vZHJtX2F0b21pY19oZWxwZXIuaD4KPj4g
ICNpbmNsdWRlIDxkcm0vZHJtX2JyaWRnZS5oPgo+PiArI2luY2x1ZGUgPGRybS9kcm1fYnJpZGdl
X2Nvbm5lY3Rvci5oPgo+PiAgI2luY2x1ZGUgPGRybS9kcm1fbWlwaV9kc2kuaD4KPj4gICNpbmNs
dWRlIDxkcm0vZHJtX29mLmg+Cj4+ICAjaW5jbHVkZSA8ZHJtL2RybV9wYW5lbC5oPgo+PiBAQCAt
MTgzLDYgKzE4NCw3IEBAIHN0cnVjdCBtdGtfZHNpIHsKPj4gICAgICAgICBzdHJ1Y3QgZHJtX2Vu
Y29kZXIgZW5jb2RlcjsKPj4gICAgICAgICBzdHJ1Y3QgZHJtX2JyaWRnZSBicmlkZ2U7Cj4+ICAg
ICAgICAgc3RydWN0IGRybV9icmlkZ2UgKm5leHRfYnJpZGdlOwo+PiArICAgICAgIHN0cnVjdCBk
cm1fY29ubmVjdG9yICpjb25uZWN0b3I7Cj4+ICAgICAgICAgc3RydWN0IHBoeSAqcGh5Owo+Pgo+
PiAgICAgICAgIHZvaWQgX19pb21lbSAqcmVnczsKPj4gQEAgLTk3NywxMCArOTc5LDE5IEBAIHN0
YXRpYyBpbnQgbXRrX2RzaV9lbmNvZGVyX2luaXQoc3RydWN0IGRybV9kZXZpY2UgKmRybSwgc3Ry
dWN0IG10a19kc2kgKmRzaSkKPj4gICAgICAgICAgKi8KPj4gICAgICAgICBkc2ktPmVuY29kZXIu
cG9zc2libGVfY3J0Y3MgPSAxOwo+Pgo+PiAtICAgICAgIHJldCA9IGRybV9icmlkZ2VfYXR0YWNo
KCZkc2ktPmVuY29kZXIsICZkc2ktPmJyaWRnZSwgTlVMTCwgMCk7Cj4+ICsgICAgICAgcmV0ID0g
ZHJtX2JyaWRnZV9hdHRhY2goJmRzaS0+ZW5jb2RlciwgJmRzaS0+YnJpZGdlLCBOVUxMLAo+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIERSTV9CUklER0VfQVRUQUNIX05PX0NPTk5F
Q1RPUik7Cj4+ICAgICAgICAgaWYgKHJldCkKPj4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2Ns
ZWFudXBfZW5jb2RlcjsKPj4KPj4gKyAgICAgICBkc2ktPmNvbm5lY3RvciA9IGRybV9icmlkZ2Vf
Y29ubmVjdG9yX2luaXQoZHJtLCAmZHNpLT5lbmNvZGVyKTsKPj4gKyAgICAgICBpZiAoSVNfRVJS
KGRzaS0+Y29ubmVjdG9yKSkgewo+PiArICAgICAgICAgICAgICAgRFJNX0VSUk9SKCJVbmFibGUg
dG8gY3JlYXRlIGJyaWRnZSBjb25uZWN0b3JcbiIpOwo+PiArICAgICAgICAgICAgICAgcmV0ID0g
UFRSX0VSUihkc2ktPmNvbm5lY3Rvcik7Cj4+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9jbGVh
bnVwX2VuY29kZXI7Cj4+ICsgICAgICAgfQo+PiArICAgICAgIGRybV9jb25uZWN0b3JfYXR0YWNo
X2VuY29kZXIoZHNpLT5jb25uZWN0b3IsICZkc2ktPmVuY29kZXIpOwo+PiArCj4gCj4gSSdtIG5v
dCB2ZXJ5IGNsZWFyIGFib3V0IGhvdyBicmlnZS1jb25uZWN0b3Igd29ya3MsIGJ1dCB3aHkgY29u
bmVjdG9yCj4gZG9lcyBub3QgYXR0YWNoIHRvIHBhbmVsPwo+IAoKTGF1cmVudCBvciBvdGhlciBk
cm0gbWFpbnRhaW5lcnMgbWlnaHQgaGF2ZSBtb3JlIGRldGFpbHMgdGhhbiBtZSwgYnV0LCBBRkFJ
SyB0aGUKZHJtX2JyaWRnZV9jb25uZWN0b3JfaW5pdCBpbml0aWFsaXplcyBhIGNvbm5lY3RvciBm
b3IgYSBjaGFpbiBvZiBicmlkZ2VzIHRoYXQKc3RhcnRzIGF0IHRoZSBAZW5jb2Rlci4gQXQgdGhp
cyBwb2ludCB5b3UgZG9uJ3Qga25vdyB3aGljaCBicmlkZ2UgaXMgY29ubmVjdGVkCnRvIHRoZSBw
YW5lbCBwaHlzaWNhbGx5IGJ1dCBkb2Vzbid0IHJlYWxseSBtYXR0ZXIgYXMgd2hhdCB5b3Uga25v
dyBpcyB0aGF0IHdpbGwKYmUgb25seSBvbmUgY29ubmVjdG9yIGluIHRoZSAgY2hhaW4uCgpUaGFu
a3MsCiBFbnJpYwoKPiBSZWdhcmRzLAo+IENodW4tS3VhbmcuCj4gCj4+ICAgICAgICAgcmV0dXJu
IDA7Cj4+Cj4+ICBlcnJfY2xlYW51cF9lbmNvZGVyOgo+PiAtLQo+PiAyLjI1LjEKPj4KCl9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJu
ZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRw
Oi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
