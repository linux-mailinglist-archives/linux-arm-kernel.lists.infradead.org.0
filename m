Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AFFA9A7F48
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:25:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rq/zspYbGW/cFunlWL03oC6Wd1+srzM6rciKCclrBag=; b=R0U8gqtv98Q69B
	P9AFgIfS8QDZEzbqVyiLf5u+6PtTX7M7gZn2ZdekKLqLXUXYLOSA9Gv96CkKcVzdnBLXwYq5/dyp3
	F91kIgaiymejuv2FvISqWn6nE8kamTxI71W5pIbsx98dWkCcR7sHRKiY6iJ2zCCmrKkGRQQijPlt3
	LMjvgqfcR8bCDOmX2vMGFfWxmlBJs7ItjAm9NWujUGMEPTGXBXyMTaJ05TSfslMoO2v9J6DQ4eT43
	Vw6YsAlGBL+XOY6Yl0l5qTkFrQ0hWy1p1etc1De80TT9kYvRQAGX12I/UD93XtLc3dRVFY2T0Jstl
	0QJM2B6Yma1fk/wgj1ZA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RXB-0002GG-F9; Wed, 04 Sep 2019 09:25:01 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RWz-0002FG-K0
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:24:51 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b11so7783366vsq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:24:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jafiBYGwM4ZpiVyiImKYEGoUTNpyYFF+6GOJwwQNQm8=;
 b=CjyrQ9P3jLwBmMBduhMR1Im9+0sVs2k0x3LG9sPH7PV2iraxbIL4wSgJzf5Ui6dQ8O
 fv2HFsO8YNBKAEzlfFSuvWYLeDLKqRYuUoRV7BsvSFHTI7ZKmVCLuKsOlT8i2mZTjMxQ
 +wG/cDKCegVAirNtPZ0qfPdof9NG6cJbSV+HU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jafiBYGwM4ZpiVyiImKYEGoUTNpyYFF+6GOJwwQNQm8=;
 b=YlsnOkDLlgyTtzJmFTHgmhcnUJhBG+8ZoyCe+fgfI+8u6mxjoFFvaOHPgrPvf3J46e
 DDd6jTaxlqcpXG9xRhCroGHmZ8jzfRJ2sJ3ZjwVwIACUmFtVo8jjqjfQ71+gF+BGvG1Y
 41gM2nguMy7oARuHqabQ7SIK0FDgvfeZMiwgA3fzk+YIYmCUPGd9UdZrIhrNEi+O/Vgp
 6brl4ANbDf0PKEwSyUOxlk2B3iLsPCanyeH3xmwDQEFizCbVk0te5RyjdGH12OSG++S3
 0o8DfjW46uDPgcNrp9JN6QbUg3O5LKbw5TnSZ0YhxUDR8ZDa4OZ4KOgeCii4u0oX3cza
 4rfg==
X-Gm-Message-State: APjAAAUv0p5soJ7PRLqUCOY4jysBjcGp8Ik0rncEcgD+ozQ4lgOPp+VB
 MOCtL9Mq9fV7VnLh7a0Cpi5zUvhk3X497uTxA9H/Qg==
X-Google-Smtp-Source: APXvYqyjUagoP5sjzYe4wVlxQk6HCxLNQaSRVAfGo+ZV/F58pA6/Ea0JKIZ32T+BqMSOR6ClZP9P3BH3CnLiqCaCmsc=
X-Received: by 2002:a05:6102:7d5:: with SMTP id
 y21mr21302586vsg.9.1567589087107; 
 Wed, 04 Sep 2019 02:24:47 -0700 (PDT)
MIME-Version: 1.0
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
 <19353031.SdOy5F5fmg@jernej-laptop>
In-Reply-To: <19353031.SdOy5F5fmg@jernej-laptop>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 4 Sep 2019 17:24:20 +0800
Message-ID: <CAFv8NwK=DFaEjPgz-BuhQRiYxDPuFmHOmRtPRFOihAja2WyjTg@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_022449_687914_8D2EA9C8 
X-CRM114-Status: GOOD (  22.53  )
X-Spam-Score: -7.4 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:e43 listed in]
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
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 dri-devel@lists.freedesktop.org, Doug Anderson <dianders@chromium.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, sam@ravnborg.org,
 cain.cai@rock-chips.com, Xing Zheng <zhengxing@rock-chips.com>,
 linux-rockchip@lists.infradead.org, Dylan Reid <dgreid@chromium.org>,
 tzungbi@chromium.org, Jonas Karlman <jonas@kwiboo.se>,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgNCwgMjAxOSBhdCAyOjA4IEFNIEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNr
cmFiZWNAc2lvbC5uZXQ+IHdyb3RlOgo+Cj4gSGkhCj4KPiBEbmUgdG9yZWssIDAzLiBzZXB0ZW1i
ZXIgMjAxOSBvYiAyMDowMDozMyBDRVNUIGplIE5laWwgQXJtc3Ryb25nIG5hcGlzYWwoYSk6Cj4g
PiBIaSwKPiA+Cj4gPiBMZSAwMy8wOS8yMDE5IMOgIDExOjUzLCBOZWlsIEFybXN0cm9uZyBhIMOp
Y3JpdCA6Cj4gPiA+IEhpLAo+ID4gPgo+ID4gPiBPbiAwMy8wOS8yMDE5IDA3OjUxLCBDaGVuZy1Z
aSBDaGlhbmcgd3JvdGU6Cj4gPiA+PiBGcm9tOiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5j
b20+Cj4gPiA+Pgo+ID4gPj4gV2hlbiB0cmFuc21pdHRpbmcgSUVDNjA5ODUgbGluZWFyIFBDTSBh
dWRpbywgd2UgY29uZmlndXJlIHRoZQo+ID4gPj4gQXVkaW8gU2FtcGxlIENoYW5uZWwgU3RhdHVz
IGluZm9ybWF0aW9uIG9mIGFsbCB0aGUgY2hhbm5lbAo+ID4gPj4gc3RhdHVzIGJpdHMgaW4gdGhl
IElFQzYwOTU4IGZyYW1lLgo+ID4gPj4gUmVmZXIgdG8gNjA5NTgtMyBwYWdlIDEwIGZvciBmcmVx
dWVuY3ksIG9yaWdpbmFsIGZyZXF1ZW5jeSwgYW5kCj4gPiA+PiB3b3JkbGVuZ3RoIHNldHRpbmcu
Cj4gPiA+Pgo+ID4gPj4gVGhpcyBmaXggdGhlIGlzc3VlIHRoYXQgYXVkaW8gZG9lcyBub3QgY29t
ZSBvdXQgb24gc29tZSBtb25pdG9ycwo+ID4gPj4gKGUuZy4gTEcgMjJDVjI0MSkKPiA+ID4+Cj4g
PiA+PiBTaWduZWQtb2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5jb20+Cj4gPiA+
PiBTaWduZWQtb2ZmLWJ5OiBDaGVuZy1ZaSBDaGlhbmcgPGN5Y2hpYW5nQGNocm9taXVtLm9yZz4K
PiA+ID4+IC0tLQo+ID4gPj4KPiA+ID4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LWhkbWkuYyB8IDU5ICsrKysrKysrKysrKysrKysrKysrKysrCj4gPiA+PiAgZHJpdmVycy9n
cHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmggfCAyMCArKysrKysrKwo+ID4gPj4gIDIg
ZmlsZXMgY2hhbmdlZCwgNzkgaW5zZXJ0aW9ucygrKQo+ID4gPj4KPiA+ID4+IGRpZmYgLS1naXQg
YS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYwo+ID4gPj4gYi9kcml2
ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyBpbmRleAo+ID4gPj4gYmQ2NWQw
NDc5NjgzLi4zNGQ0NmUyNWQ2MTAgMTAwNjQ0Cj4gPiA+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYwo+ID4gPj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPiA+ID4+IEBAIC01ODIsNiArNTgyLDYzIEBAIHN0YXRp
YyB1bnNpZ25lZCBpbnQgaGRtaV9jb21wdXRlX24odW5zaWduZWQgaW50Cj4gPiA+PiBmcmVxLCB1
bnNpZ25lZCBsb25nIHBpeGVsX2Nsayk+Pgo+ID4gPj4gICAgcmV0dXJuIG47Cj4gPiA+Pgo+ID4g
Pj4gIH0KPiA+ID4+Cj4gPiA+PiArc3RhdGljIHZvaWQgaGRtaV9zZXRfc2Nobmwoc3RydWN0IGR3
X2hkbWkgKmhkbWkpCj4gPiA+PiArewo+ID4gPj4gKyAgdTggYXVkX3NjaG5sX3NhbXBsZXJhdGU7
Cj4gPiA+PiArICB1OCBhdWRfc2NobmxfODsKPiA+ID4+ICsKPiA+ID4+ICsgIC8qIFRoZXNlIHJl
Z2lzdGVycyBhcmUgb24gUkszMjg4IHVzaW5nIHZlcnNpb24gMi4wYS4gKi8KPiA+ID4+ICsgIGlm
IChoZG1pLT52ZXJzaW9uICE9IDB4MjAwYSkKPiA+ID4+ICsgICAgICAgICAgcmV0dXJuOwo+ID4g
Pgo+ID4gPiBBcmUgdGhlc2UgbGltaXRlZCB0byB0aGUgMi4wYSB2ZXJzaW9uICppbiogUkszMjg4
LCBvciAyLjBhIHZlcnNpb24gb24gYWxsCj4gPiA+IFNvQ3MgPwo+ID4KPiA+IEFmdGVyIGludmVz
dGlnYXRpb25zLCBBbWxvZ2ljIHNldHMgdGhlc2UgcmVnaXN0ZXJzIG9uIHRoZWlyIDIuMGEgdmVy
c2lvbgo+ID4gYXN3ZWxsLCBhbmQgSmVybmVqIChhZGRlZCBpbiBDYykgcmVwb3J0ZWQgbWUgQWxs
d2lubmVyIHNldHMgdGhlbSBvbiB0aGVpcgo+ID4gPCAyLjBhIGFuZCA+IDIuMGEgSVBzIHZlcnNp
b25zLgo+ID4KPiA+IENhbiB5b3UgY2hlY2sgb24gdGhlIFJvY2tjaGlwIElQIHZlcnNpb25zIGlu
IFJLMzM5OSA/Cj4gPgo+ID4gRm9yIHJlZmVyZW5jZSwgdGhlIEhETUkgMS40YSBJUCB2ZXJzaW9u
IGFsbHdpbm5lciBzZXR1cHMgaXM6Cj4gPiBodHRwczovL2dpdGh1Yi5jb20vQWxsd2lubmVyLUhv
bWxldC9IMy1CU1A0LjQtbGludXgvYmxvYi9tYXN0ZXIvZHJpdmVycy92aWRlCj4gPiBvL2ZiZGV2
L3N1bnhpL2Rpc3AyL2hkbWkvaGRtaV9ic3Bfc3VuOGl3Ny5jI0w1MzEtTDUzOSAocmVnaXN0ZXJz
IGEKPiA+ICJzY3JhbWJsZWQiIGJ1dCBhIGN1c3RvbSBiaXQgY2FuIHJlc2V0IHRvIHRoZSBvcmln
aW5hbCBtYXBwaW5nLCAweDEwNjYgLi4uCj4gPiAweDEwNmYpCj4KPiBGb3IgZWFzaWVyIHJlYWRp
bmcsIGhlcmUgaXMgc2ltaWxhciwgYnV0IGFubm90YXRlZCB2ZXJzaW9uOiBodHRwOi8vaXguaW8v
MVViNgo+IENoZWNrIGZ1bmN0aW9uIGJzcF9oZG1pX2F1ZGlvKCkuCj4KPiBVbmxlc3MgdGhlcmUg
aXMgYSBzcGVjaWFsIHJlYXNvbiwgeW91IGNhbiBqdXN0IHJlbW92ZSB0aGF0IGNoZWNrLgo+CgpU
aGFua3MgZm9yIHRoZSBncmVhdCByZWZlcmVuY2UuCkkgYWxzbyBzZWUgdGhhdCBJIG5lZWQgdG8g
c2V0IHRoZSB3b3JkIGxlbmd0aCBhY2NvcmRpbmcgdG8gdGhlIGRlc2lyZWQKdmFsdWUgcGFzc2Vk
IGJ5IGR3X2hkbWlfaTJzX2h3X3BhcmFtcyBpbiBkdy1oZG1pLWkycy1hdWRpby5jLgpXaWxsIGZp
eCBpbiB2Mi4KCj4gQmVzdCByZWdhcmRzLAo+IEplcm5lago+Cj4gPgo+ID4gTmVpbAo+ID4KPiA+
ID4+ICsKPiA+ID4+ICsgIHN3aXRjaCAoaGRtaS0+c2FtcGxlX3JhdGUpIHsKPiA+ID4+ICsgIGNh
c2UgMzIwMDA6Cj4gPiA+PiArICAgICAgICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0gSERNSV9G
Q19BVURTQ0hOTFM3X1NNUFJBVEVfMzJLOwo+ID4gPj4gKyAgICAgICAgICBicmVhazsKPiA+ID4+
ICsgIGNhc2UgNDQxMDA6Cj4gPiA+PiArICAgICAgICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0g
SERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfNDRLMTsKPiA+ID4+ICsgICAgICAgICAgYnJlYWs7
Cj4gPiA+PiArICBjYXNlIDQ4MDAwOgo+ID4gPj4gKyAgICAgICAgICBhdWRfc2Nobmxfc2FtcGxl
cmF0ZSA9IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzQ4SzsKPiA+ID4+ICsgICAgICAgICAg
YnJlYWs7Cj4gPiA+PiArICBjYXNlIDg4MjAwOgo+ID4gPj4gKyAgICAgICAgICBhdWRfc2Nobmxf
c2FtcGxlcmF0ZSA9IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzg4SzI7Cj4gPiA+PiArICAg
ICAgICAgIGJyZWFrOwo+ID4gPj4gKyAgY2FzZSA5NjAwMDoKPiA+ID4+ICsgICAgICAgICAgYXVk
X3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV85Nks7Cj4gPiA+
PiArICAgICAgICAgIGJyZWFrOwo+ID4gPj4gKyAgY2FzZSAxNzY0MDA6Cj4gPiA+PiArICAgICAg
ICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0KPiBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8x
NzZLNDsKPiA+ID4+ICsgICAgICAgICAgYnJlYWs7Cj4gPiA+PiArICBjYXNlIDE5MjAwMDoKPiA+
ID4+ICsgICAgICAgICAgYXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdf
U01QUkFURV8xOTJLOwo+ID4gPj4gKyAgICAgICAgICBicmVhazsKPiA+ID4+ICsgIGNhc2UgNzY4
MDAwOgo+ID4gPj4gKyAgICAgICAgICBhdWRfc2Nobmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNfQVVE
U0NITkxTN19TTVBSQVRFXzc2OEs7Cj4gPiA+PiArICAgICAgICAgIGJyZWFrOwo+ID4gPj4gKyAg
ZGVmYXVsdDoKPiA+ID4+ICsgICAgICAgICAgZGV2X3dhcm4oaGRtaS0+ZGV2LCAiVW5zdXBwb3J0
ZWQgYXVkaW8gc2FtcGxlIHJhdGUgKCV1KQo+IFxuIiwKPiA+ID4+ICsgICAgICAgICAgICAgICAg
ICAgaGRtaS0+c2FtcGxlX3JhdGUpOwo+ID4gPj4gKyAgICAgICAgICByZXR1cm47Cj4gPiA+PiAr
ICB9Cj4gPiA+PiArCj4gPiA+PiArICAvKiBzZXQgY2hhbm5lbCBzdGF0dXMgcmVnaXN0ZXIgKi8K
PiA+ID4+ICsgIGhkbWlfbW9kYihoZG1pLCBhdWRfc2Nobmxfc2FtcGxlcmF0ZSwKPiBIRE1JX0ZD
X0FVRFNDSE5MUzdfU01QUkFURV9NQVNLLAo+ID4gPj4gKyAgICAgICAgICAgIEhETUlfRkNfQVVE
U0NITkxTNyk7Cj4gPiA+PiArCj4gPiA+PiArICAvKgo+ID4gPj4gKyAgICogU2V0IG9yaWdpbmFs
IGZyZXF1ZW5jeSB0byBiZSB0aGUgc2FtZSBhcyBmcmVxdWVuY3kuCj4gPiA+PiArICAgKiBVc2Ug
b25lLWNvbXBsZW1lbnQgdmFsdWUgYXMgc3RhdGVkIGluIElFQzYwOTU4LTMgcGFnZSAxMy4KPiA+
ID4+ICsgICAqLwo+ID4gPj4gKyAgYXVkX3NjaG5sXzggPSAofmF1ZF9zY2hubF9zYW1wbGVyYXRl
KSA8PAo+ID4gPj4gKyAgICAgICAgICAgICAgICAgIEhETUlfRkNfQVVEU0NITkxTOF9PUklHU0FN
UEZSRVFfT0ZGU0VUOwo+ID4gPj4gKwo+ID4gPj4gKyAgLyogVGhpcyBtZWFucyB3b3JkIGxlbmd0
aCBpcyAxNiBiaXQuIFJlZmVyIHRvIElFQzYwOTU4LTMgcGFnZSAxMi4KPiAqLwo+ID4gPj4gKyAg
YXVkX3NjaG5sXzggfD0gMiA8PCBIRE1JX0ZDX0FVRFNDSE5MUzhfV09SRExFR05USF9PRkZTRVQ7
Cj4gPiA+PiArCj4gPiA+PiArICBoZG1pX3dyaXRlYihoZG1pLCBhdWRfc2NobmxfOCwgSERNSV9G
Q19BVURTQ0hOTFM4KTsKPiA+ID4+ICt9Cj4gPiA+PiArCj4gPiA+Pgo+ID4gPj4gIHN0YXRpYyB2
b2lkIGhkbWlfc2V0X2Nsa19yZWdlbmVyYXRvcihzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwKPiA+ID4+
Cj4gPiA+PiAgICB1bnNpZ25lZCBsb25nIHBpeGVsX2NsaywgdW5zaWduZWQgaW50IHNhbXBsZV9y
YXRlKQo+ID4gPj4KPiA+ID4+ICB7Cj4gPiA+Pgo+ID4gPj4gQEAgLTYyMCw2ICs2NzcsOCBAQCBz
dGF0aWMgdm9pZCBoZG1pX3NldF9jbGtfcmVnZW5lcmF0b3Ioc3RydWN0IGR3X2hkbWkKPiA+ID4+
ICpoZG1pLD4+Cj4gPiA+PiAgICBoZG1pLT5hdWRpb19jdHMgPSBjdHM7Cj4gPiA+PiAgICBoZG1p
X3NldF9jdHNfbihoZG1pLCBjdHMsIGhkbWktPmF1ZGlvX2VuYWJsZSA/IG4gOiAwKTsKPiA+ID4+
ICAgIHNwaW5fdW5sb2NrX2lycSgmaGRtaS0+YXVkaW9fbG9jayk7Cj4gPiA+Pgo+ID4gPj4gKwo+
ID4gPj4gKyAgaGRtaV9zZXRfc2NobmwoaGRtaSk7Cj4gPiA+Pgo+ID4gPj4gIH0KPiA+ID4+Cj4g
PiA+PiAgc3RhdGljIHZvaWQgaGRtaV9pbml0X2Nsa19yZWdlbmVyYXRvcihzdHJ1Y3QgZHdfaGRt
aSAqaGRtaSkKPiA+ID4+Cj4gPiA+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1oZG1pLmgKPiA+ID4+IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLmggaW5kZXgKPiA+ID4+IDY5ODhmMTJkODlkOS4uNjE5ZWJjMWM4MzU0IDEw
MDY0NAo+ID4gPj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1p
LmgKPiA+ID4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5o
Cj4gPiA+PiBAQCAtMTU4LDYgKzE1OCwxNyBAQAo+ID4gPj4KPiA+ID4+ICAjZGVmaW5lIEhETUlf
RkNfU1BEREVWSUNFSU5GICAgICAgICAgICAgICAgICAgICAweDEwNjIKPiA+ID4+ICAjZGVmaW5l
IEhETUlfRkNfQVVEU0NPTkYgICAgICAgICAgICAgICAgICAgICAgICAweDEwNjMKPiA+ID4+ICAj
ZGVmaW5lIEhETUlfRkNfQVVEU1NUQVQgICAgICAgICAgICAgICAgICAgICAgICAweDEwNjQKPiA+
ID4+Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNWICAgICAgICAgICAgICAgICAgICAgICAg
ICAgMHgxMDY1Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNVICAgICAgICAgICAgICAgICAg
ICAgICAgICAgMHgxMDY2Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzAgICAgICAg
ICAgICAgICAgICAgICAgMHgxMDY3Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzEg
ICAgICAgICAgICAgICAgICAgICAgMHgxMDY4Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFND
SE5MUzIgICAgICAgICAgICAgICAgICAgICAgMHgxMDY5Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZD
X0FVRFNDSE5MUzMgICAgICAgICAgICAgICAgICAgICAgMHgxMDZhCj4gPiA+PiArI2RlZmluZSBI
RE1JX0ZDX0FVRFNDSE5MUzQgICAgICAgICAgICAgICAgICAgICAgMHgxMDZiCj4gPiA+PiArI2Rl
ZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzUgICAgICAgICAgICAgICAgICAgICAgMHgxMDZjCj4gPiA+
PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzYgICAgICAgICAgICAgICAgICAgICAgMHgxMDZk
Cj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzcgICAgICAgICAgICAgICAgICAgICAg
MHgxMDZlCj4gPiA+PiArI2RlZmluZSBIRE1JX0ZDX0FVRFNDSE5MUzggICAgICAgICAgICAgICAg
ICAgICAgMHgxMDZmCj4gPiA+Pgo+ID4gPj4gICNkZWZpbmUgSERNSV9GQ19EQVRBQ0gwRklMTCAg
ICAgICAgICAgICAgICAgICAgIDB4MTA3MAo+ID4gPj4gICNkZWZpbmUgSERNSV9GQ19EQVRBQ0gx
RklMTCAgICAgICAgICAgICAgICAgICAgIDB4MTA3MQo+ID4gPj4gICNkZWZpbmUgSERNSV9GQ19E
QVRBQ0gyRklMTCAgICAgICAgICAgICAgICAgICAgIDB4MTA3Mgo+ID4gPj4KPiA+ID4+IEBAIC03
MDYsNiArNzE3LDE1IEBAIGVudW0gewo+ID4gPj4KPiA+ID4+ICAvKiBIRE1JX0ZDX0FVRFNDSE5M
UzcgZmllbGQgdmFsdWVzICovCj4gPiA+Pgo+ID4gPj4gICAgSERNSV9GQ19BVURTQ0hOTFM3X0FD
Q1VSQUNZX09GRlNFVCA9IDQsCj4gPiA+PiAgICBIRE1JX0ZDX0FVRFNDSE5MUzdfQUNDVVJBQ1lf
TUFTSyA9IDB4MzAsCj4gPiA+Pgo+ID4gPj4gKyAgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVf
TUFTSyA9IDB4MGYsCj4gPiA+PiArICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8xOTJLID0g
MHhlLAo+ID4gPj4gKyAgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfMTc2SzQgPSAweGMsCj4g
PiA+PiArICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV85NksgPSAweGEsCj4gPiA+PiArICBI
RE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV83NjhLID0gMHg5LAo+ID4gPj4gKyAgSERNSV9GQ19B
VURTQ0hOTFM3X1NNUFJBVEVfODhLMiA9IDB4OCwKPiA+ID4+ICsgIEhETUlfRkNfQVVEU0NITkxT
N19TTVBSQVRFXzMySyA9IDB4MywKPiA+ID4+ICsgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRF
XzQ4SyA9IDB4MiwKPiA+ID4+ICsgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzQ0SzEgPSAw
eDAsCj4gPiA+Pgo+ID4gPj4gIC8qIEhETUlfRkNfQVVEU0NITkxTOCBmaWVsZCB2YWx1ZXMgKi8K
PiA+ID4+Cj4gPiA+PiAgICBIRE1JX0ZDX0FVRFNDSE5MUzhfT1JJR1NBTVBGUkVRX01BU0sgPSAw
eGYwLAo+Cj4KPgo+CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
