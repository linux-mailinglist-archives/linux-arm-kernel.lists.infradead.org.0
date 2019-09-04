Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A721A7F02
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:14:39 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=k2qOGIIb9A8fz3yuuf+VOYfE1FI3AQulpFNbQK20ca0=; b=dkHcriwEz/MvP+
	gNaNAzlcMenpfuRsjES4jddqFAdjIEuVR9uSKSEN0MhMrBNT1bk+ueuyZnovnwgenlypeuz2opVCo
	xp9YzAm2cfFcLNZK1y0ofkqIqXCqr68HuKCJ1O78dWjSi2ZZLIn0b1ZYFswMFlRPoLvNVqyUdRYhA
	BfDiEaFwKepQFR/9GLeeyYP4YdY3V6znx1IBbb5LFNPPjhYJftwyzWVIeJzZgTNIE3SmrMlXgUvbD
	tNsbzUrKriXmMmQfuXcdIClWy0iCsBHa9SMfn/anAjHduXM/62kvvbJtEXJPXirpXvvmM6bOKoMVW
	uhmCxPjQBT50DmS3t99Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RN0-0006y3-FW; Wed, 04 Sep 2019 09:14:30 +0000
Received: from mail-vs1-xe42.google.com ([2607:f8b0:4864:20::e42])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RMk-0006wW-0f
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:14:16 +0000
Received: by mail-vs1-xe42.google.com with SMTP id m62so13286349vsc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:14:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=MN0b6OvKnXZr8uGhWjmCrGTXb1h5H1L7qagdNg+S1sg=;
 b=U+b4Fp2al576XCFXnzNH1lWT0u9Rlzbc5/BCXDYtfPEfL1w+DTyq4kDUJXYVvy2RMv
 5IUy877oizgwz2GMU72ADTgzpmexHkRBrQ9l0hZ3GsdV/Fpue2ESv+qkSnf9pJXNV8u3
 MJ1eRzLaZcdq5uLHh0A+1OJ77a4mqchZ12yKI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=MN0b6OvKnXZr8uGhWjmCrGTXb1h5H1L7qagdNg+S1sg=;
 b=LHBj4YReKAE2+6FOUrz8R8W/AVR6/9WjdnISDruYJpMYsscxlKxvZhoKTOIS44Zyr0
 Vp4bf8Q6ztYziXf6DV9ydV2E2AWq9qKIJfNRJRve94XIyG0mDAPnijzpL7b+DgFdHS5p
 2cQIGp6xAYdEm/mEnvLRW8/3Lg+SNBu+Ix9iWrYmGdZM2FOtWsBo3TYbTxfFtikxQC/O
 vtftg3h7A56MRi8MhN9qJvFiT908Y//DqZlgDMXVw9qO8zvQuxruaG2HRi0skEc1K9cA
 5Bq/tVyXMqs/C41evVT9zLwvA5s4cll4uoSL7IaXXlm8L4xN1yeUyH+H2kc3b4zOK59M
 utAw==
X-Gm-Message-State: APjAAAUJQkXf3RyMfDt3cv71WDQwNyuYnEQcP7qL3vmYvTKb1AGD99O2
 g/qIxQcML2mdkUHTp7A+ENQ63i1mWsad2YqW5vXySQ==
X-Google-Smtp-Source: APXvYqykSGETqss+CbHmnsZe1fTUP4pEHpX6xPKY5VZ2TjYX0n59XRPduBG0rpnAbraIcYajXzkHkvwwXMNo38IzQGQ=
X-Received: by 2002:a05:6102:7d5:: with SMTP id
 y21mr21284524vsg.9.1567588451598; 
 Wed, 04 Sep 2019 02:14:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
In-Reply-To: <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 4 Sep 2019 17:13:45 +0800
Message-ID: <CAFv8NwJz9gbdjqcNNxBzvzoOWGu4MeFjp=OKcfH=wCPksQc8Zw@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Neil Armstrong <narmstrong@baylibre.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_021414_066843_14C8DFBA 
X-CRM114-Status: GOOD (  22.57  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e42 listed in]
 [list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..."
 <alsa-devel@alsa-project.org>, kuninori.morimoto.gx@renesas.com,
 cain.cai@rock-chips.com, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, linux-kernel <linux-kernel@vger.kernel.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, sam@ravnborg.org,
 Xing Zheng <zhengxing@rock-chips.com>, linux-rockchip@lists.infradead.org,
 Dylan Reid <dgreid@chromium.org>, tzungbi@chromium.org,
 Jonas Karlman <jonas@kwiboo.se>, Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org, Jernej Skrabec <jernej.skrabec@siol.net>,
 Doug Anderson <dianders@chromium.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgNCwgMjAxOSBhdCAyOjAwIEFNIE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25n
QGJheWxpYnJlLmNvbT4gd3JvdGU6Cj4KPiBIaSwKPgo+IExlIDAzLzA5LzIwMTkgw6AgMTE6NTMs
IE5laWwgQXJtc3Ryb25nIGEgw6ljcml0IDoKPiA+IEhpLAo+ID4KPiA+IE9uIDAzLzA5LzIwMTkg
MDc6NTEsIENoZW5nLVlpIENoaWFuZyB3cm90ZToKPiA+PiBGcm9tOiBZYWtpciBZYW5nIDx5a2tA
cm9jay1jaGlwcy5jb20+Cj4gPj4KPiA+PiBXaGVuIHRyYW5zbWl0dGluZyBJRUM2MDk4NSBsaW5l
YXIgUENNIGF1ZGlvLCB3ZSBjb25maWd1cmUgdGhlCj4gPj4gQXVkaW8gU2FtcGxlIENoYW5uZWwg
U3RhdHVzIGluZm9ybWF0aW9uIG9mIGFsbCB0aGUgY2hhbm5lbAo+ID4+IHN0YXR1cyBiaXRzIGlu
IHRoZSBJRUM2MDk1OCBmcmFtZS4KPiA+PiBSZWZlciB0byA2MDk1OC0zIHBhZ2UgMTAgZm9yIGZy
ZXF1ZW5jeSwgb3JpZ2luYWwgZnJlcXVlbmN5LCBhbmQKPiA+PiB3b3JkbGVuZ3RoIHNldHRpbmcu
Cj4gPj4KPiA+PiBUaGlzIGZpeCB0aGUgaXNzdWUgdGhhdCBhdWRpbyBkb2VzIG5vdCBjb21lIG91
dCBvbiBzb21lIG1vbml0b3JzCj4gPj4gKGUuZy4gTEcgMjJDVjI0MSkKPiA+Pgo+ID4+IFNpZ25l
ZC1vZmYtYnk6IFlha2lyIFlhbmcgPHlra0Byb2NrLWNoaXBzLmNvbT4KPiA+PiBTaWduZWQtb2Zm
LWJ5OiBDaGVuZy1ZaSBDaGlhbmcgPGN5Y2hpYW5nQGNocm9taXVtLm9yZz4KPiA+PiAtLS0KPiA+
PiAgZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMgfCA1OSArKysrKysr
KysrKysrKysrKysrKysrKwo+ID4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3
LWhkbWkuaCB8IDIwICsrKysrKysrCj4gPj4gIDIgZmlsZXMgY2hhbmdlZCwgNzkgaW5zZXJ0aW9u
cygrKQo+ID4+Cj4gPj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3Bz
eXMvZHctaGRtaS5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMK
PiA+PiBpbmRleCBiZDY1ZDA0Nzk2ODMuLjM0ZDQ2ZTI1ZDYxMCAxMDA2NDQKPiA+PiAtLS0gYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYwo+ID4+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jCj4gPj4gQEAgLTU4Miw2ICs1ODIs
NjMgQEAgc3RhdGljIHVuc2lnbmVkIGludCBoZG1pX2NvbXB1dGVfbih1bnNpZ25lZCBpbnQgZnJl
cSwgdW5zaWduZWQgbG9uZyBwaXhlbF9jbGspCj4gPj4gICAgICByZXR1cm4gbjsKPiA+PiAgfQo+
ID4+Cj4gPj4gK3N0YXRpYyB2b2lkIGhkbWlfc2V0X3NjaG5sKHN0cnVjdCBkd19oZG1pICpoZG1p
KQo+ID4+ICt7Cj4gPj4gKyAgICB1OCBhdWRfc2Nobmxfc2FtcGxlcmF0ZTsKPiA+PiArICAgIHU4
IGF1ZF9zY2hubF84Owo+ID4+ICsKPiA+PiArICAgIC8qIFRoZXNlIHJlZ2lzdGVycyBhcmUgb24g
UkszMjg4IHVzaW5nIHZlcnNpb24gMi4wYS4gKi8KPiA+PiArICAgIGlmIChoZG1pLT52ZXJzaW9u
ICE9IDB4MjAwYSkKPiA+PiArICAgICAgICAgICAgcmV0dXJuOwo+ID4KPiA+IEFyZSB0aGVzZSBs
aW1pdGVkIHRvIHRoZSAyLjBhIHZlcnNpb24gKmluKiBSSzMyODgsIG9yIDIuMGEgdmVyc2lvbiBv
biBhbGwKPiA+IFNvQ3MgPwo+Cj4gQWZ0ZXIgaW52ZXN0aWdhdGlvbnMsIEFtbG9naWMgc2V0cyB0
aGVzZSByZWdpc3RlcnMgb24gdGhlaXIgMi4wYSB2ZXJzaW9uCj4gYXN3ZWxsLCBhbmQgSmVybmVq
IChhZGRlZCBpbiBDYykgcmVwb3J0ZWQgbWUgQWxsd2lubmVyIHNldHMgdGhlbSBvbiB0aGVpcgo+
IDwgMi4wYSBhbmQgPiAyLjBhIElQcyB2ZXJzaW9ucy4KPgo+IENhbiB5b3UgY2hlY2sgb24gdGhl
IFJvY2tjaGlwIElQIHZlcnNpb25zIGluIFJLMzM5OSA/Cj4KU29ycnksIHRoZSBSSzMzOTkgYm9h
cmQgSSBhbSB1c2luZyBpcyB1c2luZyBEUCwgbm90IEhETUkuCkJ1dCBJIGZvdW5kIHRoYXQgb24g
cm9ja2NoaXAncyB0cmVlIGF0CgpodHRwczovL2dpdGh1Yi5jb20vcm9ja2NoaXAtbGludXgva2Vy
bmVsL2NvbW1pdC85MjRmNDgwMzgzYzk4MmRhOTkwOGZiOTZkNmJiYjU4MGIyNTU0NWE1I2RpZmYt
Zjc0YjRjZmIyMzQzNmExMzdhOTMzOGE1YWYzZmJiM2RSMTcyCgpUaGVyZSBpcyBzdWNoIHJlZ2lz
dGVyIHNldHRpbmcsIHNvIEkgdGhpbmsgUkszMzk5IHNob3VsZCBoYXZlIHRoZSBzYW1lIHJlZ2lz
dGVyLgoKCj4gRm9yIHJlZmVyZW5jZSwgdGhlIEhETUkgMS40YSBJUCB2ZXJzaW9uIGFsbHdpbm5l
ciBzZXR1cHMgaXM6Cj4gaHR0cHM6Ly9naXRodWIuY29tL0FsbHdpbm5lci1Ib21sZXQvSDMtQlNQ
NC40LWxpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZW8vZmJkZXYvc3VueGkvZGlzcDIvaGRt
aS9oZG1pX2JzcF9zdW44aXc3LmMjTDUzMS1MNTM5Cj4gKHJlZ2lzdGVycyBhICJzY3JhbWJsZWQi
IGJ1dCBhIGN1c3RvbSBiaXQgY2FuIHJlc2V0IHRvIHRoZSBvcmlnaW5hbCBtYXBwaW5nLAo+IDB4
MTA2NiAuLi4gMHgxMDZmKQoKSSBzZWUuLiBzbyAxLjQgaGFzIHRoaXMgcmVnaXN0ZXIuCkkgY2Fu
IG1vZGlmeSB0aGUgY2hlY2sgdG8gYmUgPj0gMS40IHRoZW4uCldpbGwgZml4IGluIHYyLgoKVGhh
bmtzIQoKPgo+IE5laWwKPgo+ID4KPiA+PiArCj4gPj4gKyAgICBzd2l0Y2ggKGhkbWktPnNhbXBs
ZV9yYXRlKSB7Cj4gPj4gKyAgICBjYXNlIDMyMDAwOgo+ID4+ICsgICAgICAgICAgICBhdWRfc2No
bmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzMySzsKPiA+PiArICAg
ICAgICAgICAgYnJlYWs7Cj4gPj4gKyAgICBjYXNlIDQ0MTAwOgo+ID4+ICsgICAgICAgICAgICBh
dWRfc2Nobmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzQ0SzE7Cj4g
Pj4gKyAgICAgICAgICAgIGJyZWFrOwo+ID4+ICsgICAgY2FzZSA0ODAwMDoKPiA+PiArICAgICAg
ICAgICAgYXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV80
OEs7Cj4gPj4gKyAgICAgICAgICAgIGJyZWFrOwo+ID4+ICsgICAgY2FzZSA4ODIwMDoKPiA+PiAr
ICAgICAgICAgICAgYXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01Q
UkFURV84OEsyOwo+ID4+ICsgICAgICAgICAgICBicmVhazsKPiA+PiArICAgIGNhc2UgOTYwMDA6
Cj4gPj4gKyAgICAgICAgICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0gSERNSV9GQ19BVURTQ0hO
TFM3X1NNUFJBVEVfOTZLOwo+ID4+ICsgICAgICAgICAgICBicmVhazsKPiA+PiArICAgIGNhc2Ug
MTc2NDAwOgo+ID4+ICsgICAgICAgICAgICBhdWRfc2Nobmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNf
QVVEU0NITkxTN19TTVBSQVRFXzE3Nks0Owo+ID4+ICsgICAgICAgICAgICBicmVhazsKPiA+PiAr
ICAgIGNhc2UgMTkyMDAwOgo+ID4+ICsgICAgICAgICAgICBhdWRfc2Nobmxfc2FtcGxlcmF0ZSA9
IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzE5Mks7Cj4gPj4gKyAgICAgICAgICAgIGJyZWFr
Owo+ID4+ICsgICAgY2FzZSA3NjgwMDA6Cj4gPj4gKyAgICAgICAgICAgIGF1ZF9zY2hubF9zYW1w
bGVyYXRlID0gSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfNzY4SzsKPiA+PiArICAgICAgICAg
ICAgYnJlYWs7Cj4gPj4gKyAgICBkZWZhdWx0Ogo+ID4+ICsgICAgICAgICAgICBkZXZfd2Fybiho
ZG1pLT5kZXYsICJVbnN1cHBvcnRlZCBhdWRpbyBzYW1wbGUgcmF0ZSAoJXUpXG4iLAo+ID4+ICsg
ICAgICAgICAgICAgICAgICAgICBoZG1pLT5zYW1wbGVfcmF0ZSk7Cj4gPj4gKyAgICAgICAgICAg
IHJldHVybjsKPiA+PiArICAgIH0KPiA+PiArCj4gPj4gKyAgICAvKiBzZXQgY2hhbm5lbCBzdGF0
dXMgcmVnaXN0ZXIgKi8KPiA+PiArICAgIGhkbWlfbW9kYihoZG1pLCBhdWRfc2Nobmxfc2FtcGxl
cmF0ZSwgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfTUFTSywKPiA+PiArICAgICAgICAgICAg
ICBIRE1JX0ZDX0FVRFNDSE5MUzcpOwo+ID4+ICsKPiA+PiArICAgIC8qCj4gPj4gKyAgICAgKiBT
ZXQgb3JpZ2luYWwgZnJlcXVlbmN5IHRvIGJlIHRoZSBzYW1lIGFzIGZyZXF1ZW5jeS4KPiA+PiAr
ICAgICAqIFVzZSBvbmUtY29tcGxlbWVudCB2YWx1ZSBhcyBzdGF0ZWQgaW4gSUVDNjA5NTgtMyBw
YWdlIDEzLgo+ID4+ICsgICAgICovCj4gPj4gKyAgICBhdWRfc2NobmxfOCA9ICh+YXVkX3NjaG5s
X3NhbXBsZXJhdGUpIDw8Cj4gPj4gKyAgICAgICAgICAgICAgICAgICAgSERNSV9GQ19BVURTQ0hO
TFM4X09SSUdTQU1QRlJFUV9PRkZTRVQ7Cj4gPj4gKwo+ID4+ICsgICAgLyogVGhpcyBtZWFucyB3
b3JkIGxlbmd0aCBpcyAxNiBiaXQuIFJlZmVyIHRvIElFQzYwOTU4LTMgcGFnZSAxMi4gKi8KPiA+
PiArICAgIGF1ZF9zY2hubF84IHw9IDIgPDwgSERNSV9GQ19BVURTQ0hOTFM4X1dPUkRMRUdOVEhf
T0ZGU0VUOwo+ID4+ICsKPiA+PiArICAgIGhkbWlfd3JpdGViKGhkbWksIGF1ZF9zY2hubF84LCBI
RE1JX0ZDX0FVRFNDSE5MUzgpOwo+ID4+ICt9Cj4gPj4gKwo+ID4+ICBzdGF0aWMgdm9pZCBoZG1p
X3NldF9jbGtfcmVnZW5lcmF0b3Ioc3RydWN0IGR3X2hkbWkgKmhkbWksCj4gPj4gICAgICB1bnNp
Z25lZCBsb25nIHBpeGVsX2NsaywgdW5zaWduZWQgaW50IHNhbXBsZV9yYXRlKQo+ID4+ICB7Cj4g
Pj4gQEAgLTYyMCw2ICs2NzcsOCBAQCBzdGF0aWMgdm9pZCBoZG1pX3NldF9jbGtfcmVnZW5lcmF0
b3Ioc3RydWN0IGR3X2hkbWkgKmhkbWksCj4gPj4gICAgICBoZG1pLT5hdWRpb19jdHMgPSBjdHM7
Cj4gPj4gICAgICBoZG1pX3NldF9jdHNfbihoZG1pLCBjdHMsIGhkbWktPmF1ZGlvX2VuYWJsZSA/
IG4gOiAwKTsKPiA+PiAgICAgIHNwaW5fdW5sb2NrX2lycSgmaGRtaS0+YXVkaW9fbG9jayk7Cj4g
Pj4gKwo+ID4+ICsgICAgaGRtaV9zZXRfc2NobmwoaGRtaSk7Cj4gPj4gIH0KPiA+Pgo+ID4+ICBz
dGF0aWMgdm9pZCBoZG1pX2luaXRfY2xrX3JlZ2VuZXJhdG9yKHN0cnVjdCBkd19oZG1pICpoZG1p
KQo+ID4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuaCBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oCj4gPj4gaW5k
ZXggNjk4OGYxMmQ4OWQ5Li42MTllYmMxYzgzNTQgMTAwNjQ0Cj4gPj4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmgKPiA+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuaAo+ID4+IEBAIC0xNTgsNiArMTU4LDE3IEBACj4g
Pj4gICNkZWZpbmUgSERNSV9GQ19TUERERVZJQ0VJTkYgICAgICAgICAgICAgICAgICAgIDB4MTA2
Mgo+ID4+ICAjZGVmaW5lIEhETUlfRkNfQVVEU0NPTkYgICAgICAgICAgICAgICAgICAgICAgICAw
eDEwNjMKPiA+PiAgI2RlZmluZSBIRE1JX0ZDX0FVRFNTVEFUICAgICAgICAgICAgICAgICAgICAg
ICAgMHgxMDY0Cj4gPj4gKyNkZWZpbmUgSERNSV9GQ19BVURTViAgICAgICAgICAgICAgICAgICAg
ICAgICAgIDB4MTA2NQo+ID4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU1UgICAgICAgICAgICAgICAg
ICAgICAgICAgICAweDEwNjYKPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzAgICAgICAg
ICAgICAgICAgICAgICAgMHgxMDY3Cj4gPj4gKyNkZWZpbmUgSERNSV9GQ19BVURTQ0hOTFMxICAg
ICAgICAgICAgICAgICAgICAgIDB4MTA2OAo+ID4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxT
MiAgICAgICAgICAgICAgICAgICAgICAweDEwNjkKPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFND
SE5MUzMgICAgICAgICAgICAgICAgICAgICAgMHgxMDZhCj4gPj4gKyNkZWZpbmUgSERNSV9GQ19B
VURTQ0hOTFM0ICAgICAgICAgICAgICAgICAgICAgIDB4MTA2Ygo+ID4+ICsjZGVmaW5lIEhETUlf
RkNfQVVEU0NITkxTNSAgICAgICAgICAgICAgICAgICAgICAweDEwNmMKPiA+PiArI2RlZmluZSBI
RE1JX0ZDX0FVRFNDSE5MUzYgICAgICAgICAgICAgICAgICAgICAgMHgxMDZkCj4gPj4gKyNkZWZp
bmUgSERNSV9GQ19BVURTQ0hOTFM3ICAgICAgICAgICAgICAgICAgICAgIDB4MTA2ZQo+ID4+ICsj
ZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTOCAgICAgICAgICAgICAgICAgICAgICAweDEwNmYKPiA+
PiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFDSDBGSUxMICAgICAgICAgICAgICAgICAgICAgMHgxMDcw
Cj4gPj4gICNkZWZpbmUgSERNSV9GQ19EQVRBQ0gxRklMTCAgICAgICAgICAgICAgICAgICAgIDB4
MTA3MQo+ID4+ICAjZGVmaW5lIEhETUlfRkNfREFUQUNIMkZJTEwgICAgICAgICAgICAgICAgICAg
ICAweDEwNzIKPiA+PiBAQCAtNzA2LDYgKzcxNywxNSBAQCBlbnVtIHsKPiA+PiAgLyogSERNSV9G
Q19BVURTQ0hOTFM3IGZpZWxkIHZhbHVlcyAqLwo+ID4+ICAgICAgSERNSV9GQ19BVURTQ0hOTFM3
X0FDQ1VSQUNZX09GRlNFVCA9IDQsCj4gPj4gICAgICBIRE1JX0ZDX0FVRFNDSE5MUzdfQUNDVVJB
Q1lfTUFTSyA9IDB4MzAsCj4gPj4gKyAgICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV9NQVNL
ID0gMHgwZiwKPiA+PiArICAgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzE5MksgPSAweGUs
Cj4gPj4gKyAgICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8xNzZLNCA9IDB4YywKPiA+PiAr
ICAgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzk2SyA9IDB4YSwKPiA+PiArICAgIEhETUlf
RkNfQVVEU0NITkxTN19TTVBSQVRFXzc2OEsgPSAweDksCj4gPj4gKyAgICBIRE1JX0ZDX0FVRFND
SE5MUzdfU01QUkFURV84OEsyID0gMHg4LAo+ID4+ICsgICAgSERNSV9GQ19BVURTQ0hOTFM3X1NN
UFJBVEVfMzJLID0gMHgzLAo+ID4+ICsgICAgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfNDhL
ID0gMHgyLAo+ID4+ICsgICAgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfNDRLMSA9IDB4MCwK
PiA+Pgo+ID4+ICAvKiBIRE1JX0ZDX0FVRFNDSE5MUzggZmllbGQgdmFsdWVzICovCj4gPj4gICAg
ICBIRE1JX0ZDX0FVRFNDSE5MUzhfT1JJR1NBTVBGUkVRX01BU0sgPSAweGYwLAo+ID4+Cj4gPgoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
