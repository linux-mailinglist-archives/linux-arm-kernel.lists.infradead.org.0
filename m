Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 117EAA7F83
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Sep 2019 11:36:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nrhtyAAGTAL/RynhH4Y7o2M2ZtDHC8AFmwbnE5d95Do=; b=fHC1blMYzBDYPj
	3MbHdON4pB1LF+rWzITTFYYCWW4I3Q470St20gC7epzM3zM1sfudpAjkCxjY+2bhIXfsViQk+Xhd4
	6adnpskyCnn5C0yoI5horSjq2H4UA4vLLzD6AVtGmYMr72BD8aBsaS/tJpnxBTMhf8lPp8FmTg2Tq
	ozvZibKdxGKKaaEJQDuYwkmb4WU/BEyK0YMpM0LPF9I8RA3pBpmb7LWQh2ZgsoOV5qxtsGi3XXDUj
	uiWZF5xutmqhIofHT3fKN3qtHCtLqOdiSh8lpBnTTjcWKsNZBPlIAQX3K7FgMUF2obgMWMyS9v1U/
	IqfwCxPPO3nzAUjr09cQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i5RiU-0008Eu-Jv; Wed, 04 Sep 2019 09:36:42 +0000
Received: from mail-vs1-xe43.google.com ([2607:f8b0:4864:20::e43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i5RiF-0008DD-Aw
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Sep 2019 09:36:29 +0000
Received: by mail-vs1-xe43.google.com with SMTP id b11so7802476vsq.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Sep 2019 02:36:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=+o+ErCjuT5qX6PyUMFETCMRQPrMpr1ayP1BJFKFPXQY=;
 b=RUqHkSmy9lAe6HlMGvJ2AeO7vvfTM/8ipY2yHVIo0GAAHyrGu1dtp2hncgfldaDL19
 0HgFoiRdCBjS33NXxSzdy9Igs4pUaLthBfVUFDpkYJTVRuQjYcc3oPcrvfUkCnx2TpO7
 Hyv+CTguGHsymOnLw2Vy2oDEPaCwxDbVwVANA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=+o+ErCjuT5qX6PyUMFETCMRQPrMpr1ayP1BJFKFPXQY=;
 b=PdP4/ngVf7/QX28Budlf2yRps7GoG5VlQmT6t5H26kDKkdxlIhLQ4ASbEClw9afxhF
 9gc3Gmbvaf/+KOfDAvkOHrIBKFXLiXQH1eTYG/tBxa+219I00/FOHX+Xlmn9Eb/1tOva
 q1Gr3wbeB+LcRiP3/sdqedcCqfm9oW98T7UNCXViab4RG6ipm2QdvP3r+iY9u4Gp+kP1
 lEZn2CFG+YiA3f4G2SDmwoV6oAGDG1DEc0lXufClz/mSgiYk85utrT1CzS6D8A5PGfA6
 8lYSgnxqHPfL9D9QJcvbuFb4gNF8ZAnFRs3Z4DZR8alXlEqUSCEh32CsFf336yOqkRiy
 0ygg==
X-Gm-Message-State: APjAAAW80O5PXEVoK3nl2usEV3BB1O3uBIWNZJYEJwOUwnLxhTC1Frnd
 YTNOM6zhOnQgUFULA7KzU2B7h9wUcuQn+HtNYBdKTQ==
X-Google-Smtp-Source: APXvYqz7zQLlv7fkn9VJhICKcEdJo5UbgsU5W16+fLJAaZnX0P6LdvN3fnQs0PNd8MeWH4ar/6qO0Hc/ewmG8+HR4UE=
X-Received: by 2002:a67:ab0b:: with SMTP id u11mr5576460vse.163.1567589782809; 
 Wed, 04 Sep 2019 02:36:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190903055103.134764-1-cychiang@chromium.org>
 <e1c3483c-baa6-c726-e547-fadf40d259f4@baylibre.com>
 <d8a80ba5-dd2b-f84d-bbfc-9dd5ccbc26e9@baylibre.com>
 <19353031.SdOy5F5fmg@jernej-laptop>
 <HE1PR06MB40112AD52DAF0E837F23B441ACB90@HE1PR06MB4011.eurprd06.prod.outlook.com>
In-Reply-To: <HE1PR06MB40112AD52DAF0E837F23B441ACB90@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Wed, 4 Sep 2019 17:35:56 +0800
Message-ID: <CAFv8NwJptZfdqOqtpw4ZrCDwAYT1Rz_Z1wTAybMF_M6Uj4NF2A@mail.gmail.com>
Subject: Re: [PATCH] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Jonas Karlman <jonas@kwiboo.se>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190904_023627_948264_31339CE5 
X-CRM114-Status: GOOD (  26.83  )
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
Cc: "alsa-devel@alsa-project.org" <alsa-devel@alsa-project.org>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 Neil Armstrong <narmstrong@baylibre.com>,
 "airlied@linux.ie" <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "a.hajda@samsung.com" <a.hajda@samsung.com>,
 "Laurent.pinchart@ideasonboard.com" <Laurent.pinchart@ideasonboard.com>,
 "sam@ravnborg.org" <sam@ravnborg.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 "zhengxing@rock-chips.com" <zhengxing@rock-chips.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 "dgreid@chromium.org" <dgreid@chromium.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 "jeffy.chen@rock-chips.com" <jeffy.chen@rock-chips.com>,
 "eddie.cai@rock-chips.com" <eddie.cai@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>,
 "dianders@chromium.org" <dianders@chromium.org>,
 "daniel@ffwll.ch" <daniel@ffwll.ch>,
 "enric.balletbo@collabora.com" <enric.balletbo@collabora.com>,
 "kuankuan.y@gmail.com" <kuankuan.y@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gV2VkLCBTZXAgNCwgMjAxOSBhdCA0OjMzIEFNIEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3aWJv
by5zZT4gd3JvdGU6Cj4KPiBPbiAyMDE5LTA5LTAzIDIwOjA4LCBKZXJuZWogxaBrcmFiZWMgd3Jv
dGU6Cj4gPiBIaSEKPiA+Cj4gPiBEbmUgdG9yZWssIDAzLiBzZXB0ZW1iZXIgMjAxOSBvYiAyMDow
MDozMyBDRVNUIGplIE5laWwgQXJtc3Ryb25nIG5hcGlzYWwoYSk6Cj4gPj4gSGksCj4gPj4KPiA+
PiBMZSAwMy8wOS8yMDE5IMOgIDExOjUzLCBOZWlsIEFybXN0cm9uZyBhIMOpY3JpdCA6Cj4gPj4+
IEhpLAo+ID4+Pgo+ID4+PiBPbiAwMy8wOS8yMDE5IDA3OjUxLCBDaGVuZy1ZaSBDaGlhbmcgd3Jv
dGU6Cj4gPj4+PiBGcm9tOiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5jb20+Cj4gPj4+Pgo+
ID4+Pj4gV2hlbiB0cmFuc21pdHRpbmcgSUVDNjA5ODUgbGluZWFyIFBDTSBhdWRpbywgd2UgY29u
ZmlndXJlIHRoZQo+ID4+Pj4gQXVkaW8gU2FtcGxlIENoYW5uZWwgU3RhdHVzIGluZm9ybWF0aW9u
IG9mIGFsbCB0aGUgY2hhbm5lbAo+ID4+Pj4gc3RhdHVzIGJpdHMgaW4gdGhlIElFQzYwOTU4IGZy
YW1lLgo+ID4+Pj4gUmVmZXIgdG8gNjA5NTgtMyBwYWdlIDEwIGZvciBmcmVxdWVuY3ksIG9yaWdp
bmFsIGZyZXF1ZW5jeSwgYW5kCj4gPj4+PiB3b3JkbGVuZ3RoIHNldHRpbmcuCj4gPj4+Pgo+ID4+
Pj4gVGhpcyBmaXggdGhlIGlzc3VlIHRoYXQgYXVkaW8gZG9lcyBub3QgY29tZSBvdXQgb24gc29t
ZSBtb25pdG9ycwo+ID4+Pj4gKGUuZy4gTEcgMjJDVjI0MSkKPiA+Pj4+Cj4gPj4+PiBTaWduZWQt
b2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2tAcm9jay1jaGlwcy5jb20+Cj4gPj4+PiBTaWduZWQtb2Zm
LWJ5OiBDaGVuZy1ZaSBDaGlhbmcgPGN5Y2hpYW5nQGNocm9taXVtLm9yZz4KPiA+Pj4+IC0tLQo+
ID4+Pj4KPiA+Pj4+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyB8
IDU5ICsrKysrKysrKysrKysrKysrKysrKysrCj4gPj4+PiAgZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1oZG1pLmggfCAyMCArKysrKysrKwo+ID4+Pj4gIDIgZmlsZXMgY2hhbmdl
ZCwgNzkgaW5zZXJ0aW9ucygrKQo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dw
dS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYwo+ID4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyBpbmRleAo+ID4+Pj4gYmQ2NWQwNDc5NjgzLi4zNGQ0
NmUyNWQ2MTAgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWkuYwo+ID4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5
cy9kdy1oZG1pLmMKPiA+Pj4+IEBAIC01ODIsNiArNTgyLDYzIEBAIHN0YXRpYyB1bnNpZ25lZCBp
bnQgaGRtaV9jb21wdXRlX24odW5zaWduZWQgaW50Cj4gPj4+PiBmcmVxLCB1bnNpZ25lZCBsb25n
IHBpeGVsX2Nsayk+Pgo+ID4+Pj4gICAgcmV0dXJuIG47Cj4gPj4+Pgo+ID4+Pj4gIH0KPiA+Pj4+
Cj4gPj4+PiArc3RhdGljIHZvaWQgaGRtaV9zZXRfc2Nobmwoc3RydWN0IGR3X2hkbWkgKmhkbWkp
Cj4gPj4+PiArewo+ID4+Pj4gKyAgdTggYXVkX3NjaG5sX3NhbXBsZXJhdGU7Cj4gPj4+PiArICB1
OCBhdWRfc2NobmxfODsKPiA+Pj4+ICsKPiA+Pj4+ICsgIC8qIFRoZXNlIHJlZ2lzdGVycyBhcmUg
b24gUkszMjg4IHVzaW5nIHZlcnNpb24gMi4wYS4gKi8KPiA+Pj4+ICsgIGlmIChoZG1pLT52ZXJz
aW9uICE9IDB4MjAwYSkKPiA+Pj4+ICsgICAgICAgICAgcmV0dXJuOwo+ID4+PiBBcmUgdGhlc2Ug
bGltaXRlZCB0byB0aGUgMi4wYSB2ZXJzaW9uICppbiogUkszMjg4LCBvciAyLjBhIHZlcnNpb24g
b24gYWxsCj4gPj4+IFNvQ3MgPwo+ID4+IEFmdGVyIGludmVzdGlnYXRpb25zLCBBbWxvZ2ljIHNl
dHMgdGhlc2UgcmVnaXN0ZXJzIG9uIHRoZWlyIDIuMGEgdmVyc2lvbgo+ID4+IGFzd2VsbCwgYW5k
IEplcm5laiAoYWRkZWQgaW4gQ2MpIHJlcG9ydGVkIG1lIEFsbHdpbm5lciBzZXRzIHRoZW0gb24g
dGhlaXIKPiA+PiA8IDIuMGEgYW5kID4gMi4wYSBJUHMgdmVyc2lvbnMuCj4gPj4KPiA+PiBDYW4g
eW91IGNoZWNrIG9uIHRoZSBSb2NrY2hpcCBJUCB2ZXJzaW9ucyBpbiBSSzMzOTkgPwo+ID4+Cj4g
Pj4gRm9yIHJlZmVyZW5jZSwgdGhlIEhETUkgMS40YSBJUCB2ZXJzaW9uIGFsbHdpbm5lciBzZXR1
cHMgaXM6Cj4gPj4gaHR0cHM6Ly9naXRodWIuY29tL0FsbHdpbm5lci1Ib21sZXQvSDMtQlNQNC40
LWxpbnV4L2Jsb2IvbWFzdGVyL2RyaXZlcnMvdmlkZQo+ID4+IG8vZmJkZXYvc3VueGkvZGlzcDIv
aGRtaS9oZG1pX2JzcF9zdW44aXc3LmMjTDUzMS1MNTM5IChyZWdpc3RlcnMgYQo+ID4+ICJzY3Jh
bWJsZWQiIGJ1dCBhIGN1c3RvbSBiaXQgY2FuIHJlc2V0IHRvIHRoZSBvcmlnaW5hbCBtYXBwaW5n
LCAweDEwNjYgLi4uCj4gPj4gMHgxMDZmKQo+ID4gRm9yIGVhc2llciByZWFkaW5nLCBoZXJlIGlz
IHNpbWlsYXIsIGJ1dCBhbm5vdGF0ZWQgdmVyc2lvbjogaHR0cDovL2l4LmlvLzFVYjYKPiA+IENo
ZWNrIGZ1bmN0aW9uIGJzcF9oZG1pX2F1ZGlvKCkuCj4gPgo+ID4gVW5sZXNzIHRoZXJlIGlzIGEg
c3BlY2lhbCByZWFzb24sIHlvdSBjYW4ganVzdCByZW1vdmUgdGhhdCBjaGVjay4KPgo+IEFncmVl
LCB0aGlzIGNoZWNrIHNob3VsZCBub3QgYmUgbmVlZGVkLCBBVURTQ0hOTFM3IHVzZWQgdG8gYmUg
Y29uZmlndXJlZCBpbiBteSBvbGQKPiBtdWx0aS1jaGFubmVsIHBhdGNoZXMgdGhhdCBoYXZlIHNl
ZW4gbG90IG9mIHRlc3Rpbmcgb24gQW1sb2dpYywgQWxsd2lubmVyIGFuZCBSb2NrY2hpcCBTb0Nz
Lgo+CgpBcyBzdGF0ZWQgaW4gcHJldmlvdXMgbWFpbCwgSSB3aWxsIG1vZGlmeSB0aGUgY2hlY2sg
Zm9yIHZlcnNpb24gPj0xLjQKc2luY2UgSSBrbm93IHRoYXQgMS4zIGRvZXMgbm90IGhhdmUgc3Vj
aCByZWdpc3RlciwgYXQgbGVhc3Qgb24gaU1YNi4KCj4gPgo+ID4gQmVzdCByZWdhcmRzLAo+ID4g
SmVybmVqCj4gPgo+ID4+IE5laWwKPiA+Pgo+ID4+Pj4gKwo+ID4+Pj4gKyAgc3dpdGNoIChoZG1p
LT5zYW1wbGVfcmF0ZSkgewo+ID4+Pj4gKyAgY2FzZSAzMjAwMDoKPiA+Pj4+ICsgICAgICAgICAg
YXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8zMks7Cj4g
Pj4+PiArICAgICAgICAgIGJyZWFrOwo+ID4+Pj4gKyAgY2FzZSA0NDEwMDoKPiA+Pj4+ICsgICAg
ICAgICAgYXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV80
NEsxOwo+ID4+Pj4gKyAgICAgICAgICBicmVhazsKPiA+Pj4+ICsgIGNhc2UgNDgwMDA6Cj4gPj4+
PiArICAgICAgICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0gSERNSV9GQ19BVURTQ0hOTFM3X1NN
UFJBVEVfNDhLOwo+ID4+Pj4gKyAgICAgICAgICBicmVhazsKPiA+Pj4+ICsgIGNhc2UgODgyMDA6
Cj4gPj4+PiArICAgICAgICAgIGF1ZF9zY2hubF9zYW1wbGVyYXRlID0gSERNSV9GQ19BVURTQ0hO
TFM3X1NNUFJBVEVfODhLMjsKPiA+Pj4+ICsgICAgICAgICAgYnJlYWs7Cj4gPj4+PiArICBjYXNl
IDk2MDAwOgo+ID4+Pj4gKyAgICAgICAgICBhdWRfc2Nobmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNf
QVVEU0NITkxTN19TTVBSQVRFXzk2SzsKPiA+Pj4+ICsgICAgICAgICAgYnJlYWs7Cj4gPj4+PiAr
ICBjYXNlIDE3NjQwMDoKPiA+Pj4+ICsgICAgICAgICAgYXVkX3NjaG5sX3NhbXBsZXJhdGUgPSBI
RE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8xNzZLNDsKPiA+Pj4+ICsgICAgICAgICAgYnJlYWs7
Cj4gPj4+PiArICBjYXNlIDE5MjAwMDoKPiA+Pj4+ICsgICAgICAgICAgYXVkX3NjaG5sX3NhbXBs
ZXJhdGUgPSBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV8xOTJLOwo+ID4+Pj4gKyAgICAgICAg
ICBicmVhazsKPiA+Pj4+ICsgIGNhc2UgNzY4MDAwOgo+ID4+Pj4gKyAgICAgICAgICBhdWRfc2No
bmxfc2FtcGxlcmF0ZSA9IEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzc2OEs7Cj4gPj4+PiAr
ICAgICAgICAgIGJyZWFrOwo+ID4+Pj4gKyAgZGVmYXVsdDoKPiA+Pj4+ICsgICAgICAgICAgZGV2
X3dhcm4oaGRtaS0+ZGV2LCAiVW5zdXBwb3J0ZWQgYXVkaW8gc2FtcGxlIHJhdGUgKCV1KVxuIiwK
PiA+Pj4+ICsgICAgICAgICAgICAgICAgICAgaGRtaS0+c2FtcGxlX3JhdGUpOwo+ID4+Pj4gKyAg
ICAgICAgICByZXR1cm47Cj4gPj4+PiArICB9Cj4gPj4+PiArCj4gPj4+PiArICAvKiBzZXQgY2hh
bm5lbCBzdGF0dXMgcmVnaXN0ZXIgKi8KPiA+Pj4+ICsgIGhkbWlfbW9kYihoZG1pLCBhdWRfc2No
bmxfc2FtcGxlcmF0ZSwgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfTUFTSywKPiA+Pj4+ICsg
ICAgICAgICAgICBIRE1JX0ZDX0FVRFNDSE5MUzcpOwo+ID4+Pj4gKwo+ID4+Pj4gKyAgLyoKPiA+
Pj4+ICsgICAqIFNldCBvcmlnaW5hbCBmcmVxdWVuY3kgdG8gYmUgdGhlIHNhbWUgYXMgZnJlcXVl
bmN5Lgo+ID4+Pj4gKyAgICogVXNlIG9uZS1jb21wbGVtZW50IHZhbHVlIGFzIHN0YXRlZCBpbiBJ
RUM2MDk1OC0zIHBhZ2UgMTMuCj4gPj4+PiArICAgKi8KPiA+Pj4+ICsgIGF1ZF9zY2hubF84ID0g
KH5hdWRfc2Nobmxfc2FtcGxlcmF0ZSkgPDwKPiA+Pj4+ICsgICAgICAgICAgICAgICAgICBIRE1J
X0ZDX0FVRFNDSE5MUzhfT1JJR1NBTVBGUkVRX09GRlNFVDsKPiA+Pj4+ICsKPiA+Pj4+ICsgIC8q
IFRoaXMgbWVhbnMgd29yZCBsZW5ndGggaXMgMTYgYml0LiBSZWZlciB0byBJRUM2MDk1OC0zIHBh
Z2UgMTIuICovCj4gPj4+PiArICBhdWRfc2NobmxfOCB8PSAyIDw8IEhETUlfRkNfQVVEU0NITkxT
OF9XT1JETEVHTlRIX09GRlNFVDsKPgo+IFRoaXMgbG9va3Mgd3JvbmcsIHVzZXIgY2FuIHVzZSAx
NiBhbmQgMjQgYml0IHdpZGUgYXVkaW8gc3RyZWFtcy4KPgoKVGhhbmtzIGZvciBzcG90dGluZyB0
aGlzIGlzc3VlLgpJIHdpbGwgZml4IGl0IGluIHYyIChmb2xsb3dpbmcgaG93IGh0dHA6Ly9peC5p
by8xVWI2IHNldCBpdCBmb3IgMTYgYW5kIDI0IGJpdCkKCj4gPj4+PiArCj4gPj4+PiArICBoZG1p
X3dyaXRlYihoZG1pLCBhdWRfc2NobmxfOCwgSERNSV9GQ19BVURTQ0hOTFM4KTsKPiA+Pj4+ICt9
Cj4gPj4+PiArCj4gPj4+Pgo+ID4+Pj4gIHN0YXRpYyB2b2lkIGhkbWlfc2V0X2Nsa19yZWdlbmVy
YXRvcihzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwKPiA+Pj4+Cj4gPj4+PiAgICB1bnNpZ25lZCBsb25n
IHBpeGVsX2NsaywgdW5zaWduZWQgaW50IHNhbXBsZV9yYXRlKQo+ID4+Pj4KPiA+Pj4+ICB7Cj4g
Pj4+Pgo+ID4+Pj4gQEAgLTYyMCw2ICs2NzcsOCBAQCBzdGF0aWMgdm9pZCBoZG1pX3NldF9jbGtf
cmVnZW5lcmF0b3Ioc3RydWN0IGR3X2hkbWkKPiA+Pj4+ICpoZG1pLD4+Cj4gPj4+PiAgICBoZG1p
LT5hdWRpb19jdHMgPSBjdHM7Cj4gPj4+PiAgICBoZG1pX3NldF9jdHNfbihoZG1pLCBjdHMsIGhk
bWktPmF1ZGlvX2VuYWJsZSA/IG4gOiAwKTsKPiA+Pj4+ICAgIHNwaW5fdW5sb2NrX2lycSgmaGRt
aS0+YXVkaW9fbG9jayk7Cj4gPj4+Pgo+ID4+Pj4gKwo+ID4+Pj4gKyAgaGRtaV9zZXRfc2Nobmwo
aGRtaSk7Cj4KPiBJIHdpbGwgc3VnZ2VzdCB0aGlzIGZ1bmN0aW9uIGlzIGNhbGxlZCBmcm9tIG9y
IG1lcmdlZCB3aXRoIGR3X2hkbWlfc2V0X3NhbXBsZV9yYXRlKCkuCj4gU2ltaWxhciB0byBob3cg
QVVEU0NPTkYgYW5kIEFVRElDT05GMCBpcyBjb25maWd1cmVkIGZyb20gZHdfaGRtaV9zZXRfY2hh
bm5lbF9jb3VudCgpLgo+CgpJIHNlZS4gSSB0aGluayBpdCB3aWxsIG1ha2Ugc2Vuc2UgdG8gYWRk
IGEgZnVuY3Rpb24Kc2V0X2NoYW5uZWxfc3RhdHVzKCkgZm9yIGR3LWhkbWktaTJzLWF1ZGlvLmMg
dG8gY2FsbCwKc2luY2UgdGhpcyBmdW5jdGlvbiBpcyBtb3JlIHRoYW4ganVzdCBzZXR0aW5nIHJh
dGUuCldpbGwgZml4IGluIHYyLgoKVGhhbmtzIQoKPiBSZWdhcmRzLAo+IEpvbmFzCj4KPiA+Pj4+
Cj4gPj4+PiAgfQo+ID4+Pj4KPiA+Pj4+ICBzdGF0aWMgdm9pZCBoZG1pX2luaXRfY2xrX3JlZ2Vu
ZXJhdG9yKHN0cnVjdCBkd19oZG1pICpoZG1pKQo+ID4+Pj4KPiA+Pj4+IGRpZmYgLS1naXQgYS9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuaAo+ID4+Pj4gYi9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuaCBpbmRleAo+ID4+Pj4gNjk4OGYxMmQ4
OWQ5Li42MTllYmMxYzgzNTQgMTAwNjQ0Cj4gPj4+PiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LWhkbWkuaAo+ID4+Pj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zeW5vcHN5cy9kdy1oZG1pLmgKPiA+Pj4+IEBAIC0xNTgsNiArMTU4LDE3IEBACj4gPj4+Pgo+
ID4+Pj4gICNkZWZpbmUgSERNSV9GQ19TUERERVZJQ0VJTkYgICAgICAgICAgICAgICAgICAgIDB4
MTA2Mgo+ID4+Pj4gICNkZWZpbmUgSERNSV9GQ19BVURTQ09ORiAgICAgICAgICAgICAgICAgICAg
ICAgIDB4MTA2Mwo+ID4+Pj4gICNkZWZpbmUgSERNSV9GQ19BVURTU1RBVCAgICAgICAgICAgICAg
ICAgICAgICAgIDB4MTA2NAo+ID4+Pj4KPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU1YgICAg
ICAgICAgICAgICAgICAgICAgICAgICAweDEwNjUKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVE
U1UgICAgICAgICAgICAgICAgICAgICAgICAgICAweDEwNjYKPiA+Pj4+ICsjZGVmaW5lIEhETUlf
RkNfQVVEU0NITkxTMCAgICAgICAgICAgICAgICAgICAgICAweDEwNjcKPiA+Pj4+ICsjZGVmaW5l
IEhETUlfRkNfQVVEU0NITkxTMSAgICAgICAgICAgICAgICAgICAgICAweDEwNjgKPiA+Pj4+ICsj
ZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTMiAgICAgICAgICAgICAgICAgICAgICAweDEwNjkKPiA+
Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTMyAgICAgICAgICAgICAgICAgICAgICAweDEw
NmEKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTNCAgICAgICAgICAgICAgICAgICAg
ICAweDEwNmIKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTNSAgICAgICAgICAgICAg
ICAgICAgICAweDEwNmMKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTNiAgICAgICAg
ICAgICAgICAgICAgICAweDEwNmQKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTNyAg
ICAgICAgICAgICAgICAgICAgICAweDEwNmUKPiA+Pj4+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NI
TkxTOCAgICAgICAgICAgICAgICAgICAgICAweDEwNmYKPiA+Pj4+Cj4gPj4+PiAgI2RlZmluZSBI
RE1JX0ZDX0RBVEFDSDBGSUxMICAgICAgICAgICAgICAgICAgICAgMHgxMDcwCj4gPj4+PiAgI2Rl
ZmluZSBIRE1JX0ZDX0RBVEFDSDFGSUxMICAgICAgICAgICAgICAgICAgICAgMHgxMDcxCj4gPj4+
PiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFDSDJGSUxMICAgICAgICAgICAgICAgICAgICAgMHgxMDcy
Cj4gPj4+Pgo+ID4+Pj4gQEAgLTcwNiw2ICs3MTcsMTUgQEAgZW51bSB7Cj4gPj4+Pgo+ID4+Pj4g
IC8qIEhETUlfRkNfQVVEU0NITkxTNyBmaWVsZCB2YWx1ZXMgKi8KPiA+Pj4+Cj4gPj4+PiAgICBI
RE1JX0ZDX0FVRFNDSE5MUzdfQUNDVVJBQ1lfT0ZGU0VUID0gNCwKPiA+Pj4+ICAgIEhETUlfRkNf
QVVEU0NITkxTN19BQ0NVUkFDWV9NQVNLID0gMHgzMCwKPiA+Pj4+Cj4gPj4+PiArICBIRE1JX0ZD
X0FVRFNDSE5MUzdfU01QUkFURV9NQVNLID0gMHgwZiwKPiA+Pj4+ICsgIEhETUlfRkNfQVVEU0NI
TkxTN19TTVBSQVRFXzE5MksgPSAweGUsCj4gPj4+PiArICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01Q
UkFURV8xNzZLNCA9IDB4YywKPiA+Pj4+ICsgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzk2
SyA9IDB4YSwKPiA+Pj4+ICsgIEhETUlfRkNfQVVEU0NITkxTN19TTVBSQVRFXzc2OEsgPSAweDks
Cj4gPj4+PiArICBIRE1JX0ZDX0FVRFNDSE5MUzdfU01QUkFURV84OEsyID0gMHg4LAo+ID4+Pj4g
KyAgSERNSV9GQ19BVURTQ0hOTFM3X1NNUFJBVEVfMzJLID0gMHgzLAo+ID4+Pj4gKyAgSERNSV9G
Q19BVURTQ0hOTFM3X1NNUFJBVEVfNDhLID0gMHgyLAo+ID4+Pj4gKyAgSERNSV9GQ19BVURTQ0hO
TFM3X1NNUFJBVEVfNDRLMSA9IDB4MCwKPiA+Pj4+Cj4gPj4+PiAgLyogSERNSV9GQ19BVURTQ0hO
TFM4IGZpZWxkIHZhbHVlcyAqLwo+ID4+Pj4KPiA+Pj4+ICAgIEhETUlfRkNfQVVEU0NITkxTOF9P
UklHU0FNUEZSRVFfTUFTSyA9IDB4ZjAsCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
