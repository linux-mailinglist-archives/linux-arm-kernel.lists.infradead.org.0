Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BC15B19D2
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 13 Sep 2019 10:47:02 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1Plx/lkSi7RRW6TFZ7K4xE8WiqMMPGJ+/CqC6XubEH4=; b=KvBq+fqRPjagXf
	8HQ0LE689y8ycEZ6UYM4+3yEGTcXIcgRcjyr4wsCw1plYW5BqtBmWHTfN17eq35CCUDTaX3Ppd8eg
	Hhq1oVaGM7/275JbhACQseV7Q4jlk9BBYvRpmIKp1WBYyjShgh5zaGmp8vna+koUA+Hh1qO0elQzS
	gsK6Q8nj9Gm09mZnyRW08B/4DgsTvrny2N/2wMAffCAaGZh4yrrv07w8DkPkqcNrARzUASNLd4Otk
	MogmYCXj20MWqUNCRCwzt0L3bc8QNpZAhWFcvx6C0ZQSyTe3uWcZjiJzVeKPqXHwvHKaLS/Hu6OtT
	4FQ1iR9FcsjFv9ahkIcw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8hEB-0002Pr-71; Fri, 13 Sep 2019 08:46:51 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8hDc-0002NU-KM
 for linux-arm-kernel@lists.infradead.org; Fri, 13 Sep 2019 08:46:19 +0000
Received: by mail-wr1-x444.google.com with SMTP id r3so1093365wrj.6
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 13 Sep 2019 01:46:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:openpgp:autocrypt:organization
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GzIH6oiBi70p/v479m1IVvyZsoprTy/n2kolGjI6PJ0=;
 b=usywg2vtWrZ3CrJygqz+cMxJ2GJfW/aKureTUYjWcVrLQM68WGD4li+WbML7/zP8fz
 H40NRgA455aa7v/qheQUrHVYvSDOPZv5Q2CH0i5Z/Gfs0o4C/PnuUQ5JqEUawUFpMRKv
 JwxVk8BB5qZ7UBELb5sf0YAY4f+BIC8smvYIAwF4p4CtXP/bR6orQOZqbKUflty6ZNG2
 Uojv/Dea+fFB3Xt/aFKzj7UXHcu0ht4ZIk6ZSDRq9naEclpxZsMmoQaPOgHWvlVXQA1I
 2+oGHR9s7oddt0Yg25NOOwuUpROl2xZPBW0Oo6XRuSqu9ghE5bXarvfN5IRLnwieORvt
 EIoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
 :organization:message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=GzIH6oiBi70p/v479m1IVvyZsoprTy/n2kolGjI6PJ0=;
 b=A7kF+IyYFVfNw3A8QVNNaDxP6Hey683l3CDWpxVRNUJFREk0dCd5HaDu38sYHadBsM
 aixTjSxqhDGZ3C4FgArXRXRhCDTSKn9pV99+ik8P9aA64DJALJSVtp9RMXGEm3c/V746
 cp6B40ap5N3OwHOwGxd8JgL0WgcUo4cWwsCsSupgITbYAltUlxEuIThp7nmFnIEFKPPm
 9fbJSoPP99FjPGc3qdMof8wLdyQHEE3aT7jYlsp1EPkGTlyTAx9TZ7o82PFmdq7ahjZo
 Z1VJjhmAvumnHiu/jLQIzYyk76X+qqSSPKLNXehH9ntbks7bFkVb2ZQV3OHaL6aRTwUR
 ILbQ==
X-Gm-Message-State: APjAAAXUyfs5Cf5pBZV7qM7DpSSKDCkYG5WRCjwKZo2pi4A+k0RCz38f
 9d3yflzF1LkioOJ2GUa66RIyjQ==
X-Google-Smtp-Source: APXvYqxVYGDhAUAwh7E8NpBq7VN5JG7K5VF+vuH6zorXtEY/Q3wuVryYjx0GGDplWdj2bi67MkpnLg==
X-Received: by 2002:a5d:4444:: with SMTP id x4mr37232191wrr.11.1568364374507; 
 Fri, 13 Sep 2019 01:46:14 -0700 (PDT)
Received: from [10.1.2.12] (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr.
 [90.63.244.31])
 by smtp.gmail.com with ESMTPSA id r18sm1990649wme.48.2019.09.13.01.46.12
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 13 Sep 2019 01:46:13 -0700 (PDT)
Subject: Re: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: Jonas Karlman <jonas@kwiboo.se>, Cheng-yi Chiang <cychiang@chromium.org>
References: <20190911082646.134347-1-cychiang@chromium.org>
 <1e2ec69d-e42d-4e1b-7ce9-d1620cfbb4c9@baylibre.com>
 <10668907.r1TyVuJQb1@jernej-laptop>
 <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
 <HE1PR06MB4011478532D8E127697565EDACB30@HE1PR06MB4011.eurprd06.prod.outlook.com>
From: Neil Armstrong <narmstrong@baylibre.com>
Openpgp: preference=signencrypt
Autocrypt: addr=narmstrong@baylibre.com; prefer-encrypt=mutual; keydata=
 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
 ZaTUOEkgIor5losDrePdPgE=
Organization: Baylibre
Message-ID: <5f8ec989-9f59-072f-20d4-4cb6ff76a5ac@baylibre.com>
Date: Fri, 13 Sep 2019 10:46:12 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <HE1PR06MB4011478532D8E127697565EDACB30@HE1PR06MB4011.eurprd06.prod.outlook.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190913_014616_738315_79CB717E 
X-CRM114-Status: GOOD (  20.57  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 <alsa-devel@alsa-project.org>, Doug Anderson <dianders@chromium.org>,
 "kuninori.morimoto.gx@renesas.com" <kuninori.morimoto.gx@renesas.com>,
 David Airlie <airlied@linux.ie>,
 "dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
 "cain.cai@rock-chips.com" <cain.cai@rock-chips.com>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, "sam@ravnborg.org" <sam@ravnborg.org>,
 Jerome Brunet <jbrunet@baylibre.com>, Xing Zheng <zhengxing@rock-chips.com>,
 "linux-rockchip@lists.infradead.org" <linux-rockchip@lists.infradead.org>,
 Dylan Reid <dgreid@chromium.org>,
 "tzungbi@chromium.org" <tzungbi@chromium.org>,
 Jeffy Chen <jeffy.chen@rock-chips.com>,
 =?UTF-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 =?UTF-8?Q?Jernej_=c5=a0krabec?= <jernej.skrabec@siol.net>,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 "kuankuan.y@gmail.com" <kuankuan.y@gmail.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMTMvMDkvMjAxOSAwODozNywgSm9uYXMgS2FybG1hbiB3cm90ZToKPiBPbiAyMDE5LTA5LTEx
IDE5OjAyLCBDaGVuZy15aSBDaGlhbmcgd3JvdGU6Cj4+IE9uIFRodSwgU2VwIDEyLCAyMDE5IGF0
IDEyOjU0IEFNIEplcm5laiDFoGtyYWJlYyA8amVybmVqLnNrcmFiZWNAc2lvbC5uZXQ+IHdyb3Rl
Ogo+Pj4gRG5lIHNyZWRhLCAxMS4gc2VwdGVtYmVyIDIwMTkgb2IgMTg6MjM6NTkgQ0VTVCBqZSBO
ZWlsIEFybXN0cm9uZyBuYXBpc2FsKGEpOgo+Pj4+IE9uIDExLzA5LzIwMTkgMTA6MjYsIENoZW5n
LVlpIENoaWFuZyB3cm90ZToKPj4+Pj4gRnJvbTogWWFraXIgWWFuZyA8eWtrQHJvY2stY2hpcHMu
Y29tPgo+Pj4+Pgo+Pj4+PiBXaGVuIHRyYW5zbWl0dGluZyBJRUM2MDk4NSBsaW5lYXIgUENNIGF1
ZGlvLCB3ZSBjb25maWd1cmUgdGhlCj4+Pj4+IEFkdWlvIFNhbXBsZSBDaGFubmVsIFN0YXR1cyBp
bmZvcm1hdGlvbiBpbiB0aGUgSUVDNjA5NTggZnJhbWUuCj4+Pj4+IFRoZSBzdGF0dXMgYml0IGlz
IGFscmVhZHkgYXZhaWxhYmxlIGluIGllYy5zdGF0dXMgb2YgaGRtaV9jb2RlY19wYXJhbXMuCj4+
Pj4+Cj4+Pj4+IFRoaXMgZml4IHRoZSBpc3N1ZSB0aGF0IGF1ZGlvIGRvZXMgbm90IGNvbWUgb3V0
IG9uIHNvbWUgbW9uaXRvcnMKPj4+Pj4gKGUuZy4gTEcgMjJDVjI0MSkKPj4+Pj4KPj4+Pj4gTm90
ZSB0aGF0IHRoZXNlIHJlZ2lzdGVycyBhcmUgb25seSBmb3IgaW50ZXJmYWNlczoKPj4+Pj4gSTJT
IGF1ZGlvIGludGVyZmFjZSwgR2VuZXJhbCBQdXJwb3NlIEF1ZGlvIChHUEEpLCBvciBBSEIgYXVk
aW8gRE1BCj4+Pj4+IChBSEJBVURETUEpLgo+Pj4+PiBGb3IgUy9QRElGIGludGVyZmFjZSB0aGlz
IGluZm9ybWF0aW9uIGNvbWVzIGZyb20gdGhlIHN0cmVhbS4KPj4+Pj4KPj4+Pj4gQ3VycmVudGx5
IHRoaXMgZnVuY3Rpb24gZHdfaGRtaV9zZXRfY2hhbm5lbF9zdGF0dXMgaXMgb25seSBjYWxsZWQK
Pj4+Pj4gZnJvbSBkdy1oZG1pLWkycy1hdWRpbyBpbiBJMlMgc2V0dXAuCj4+Pj4+Cj4+Pj4+IFNp
Z25lZC1vZmYtYnk6IFlha2lyIFlhbmcgPHlra0Byb2NrLWNoaXBzLmNvbT4KPj4+Pj4gU2lnbmVk
LW9mZi1ieTogQ2hlbmctWWkgQ2hpYW5nIDxjeWNoaWFuZ0BjaHJvbWl1bS5vcmc+Cj4+Pj4+IC0t
LQo+Pj4+Pgo+Pj4+PiBDaGFuZ2UgZnJvbSB2MiB0byB2MzoKPj4+Pj4gMS4gUmV1c2Ugd2hhdCBp
cyBhbHJlYWR5IHNldCBpbiBpZWMuc3RhdHVzIGluIGh3X3BhcmFtLgo+Pj4+PiAyLiBSZW1vdmUg
YWxsIHVzZWxlc3MgZGVmaW5pdGlvbiBvZiByZWdpc3RlcnMgYW5kIHZhbHVlcy4KPj4+Pj4gMy4g
Tm90ZSB0aGF0IHRoZSBvcmlnaW5hbCBzYW1wbGluZyBmcmVxdWVuY3kgaXMgbm90IHdyaXR0ZW4g
dG8KPj4+Pj4KPj4+Pj4gICAgdGhlIGNoYW5uZWwgc3RhdHVzIGFzIHdlIHJldXNlIGNyZWF0ZV9p
ZWM5NThfY29uc3VtZXIgaW4gcGNtX2llYzk1OC5jLgo+Pj4+PiAgICBXaXRob3V0IHRoYXQgaXQg
Y2FuIHN0aWxsIHBsYXkgYXVkaW8gZmluZS4KPj4+Pj4KPj4+Pj4gIC4uLi9kcm0vYnJpZGdlL3N5
bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMgICB8ICAxICsKPj4+Pj4gIGRyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jICAgICB8IDIwICsrKysrKysrKysrKysrKysrKysK
Pj4+Pj4gIGRyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oICAgICB8ICAy
ICsrCj4+Pj4+ICBpbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaS5oICAgICAgICAgICAgICAgICAg
fCAgMSArCj4+Pj4+ICA0IGZpbGVzIGNoYW5nZWQsIDI0IGluc2VydGlvbnMoKykKPj4+Pj4KPj4+
Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1p
MnMtYXVkaW8uYwo+Pj4+PiBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRt
aS1pMnMtYXVkaW8uYyBpbmRleAo+Pj4+PiAzNGQ4ZTgzNzU1NWYuLjIwZjRmOTJkZDg2NiAxMDA2
NDQKPj4+Pj4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWky
cy1hdWRpby5jCj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHct
aGRtaS1pMnMtYXVkaW8uYwo+Pj4+PiBAQCAtMTAyLDYgKzEwMiw3IEBAIHN0YXRpYyBpbnQgZHdf
aGRtaV9pMnNfaHdfcGFyYW1zKHN0cnVjdCBkZXZpY2UgKmRldiwKPj4+Pj4gdm9pZCAqZGF0YSw+
Cj4+Pj4+ICAgICB9Cj4+Pj4+Cj4+Pj4+ICAgICBkd19oZG1pX3NldF9zYW1wbGVfcmF0ZShoZG1p
LCBocGFybXMtPnNhbXBsZV9yYXRlKTsKPj4+Pj4KPj4+Pj4gKyAgIGR3X2hkbWlfc2V0X2NoYW5u
ZWxfc3RhdHVzKGhkbWksIGhwYXJtcy0+aWVjLnN0YXR1cyk7Cj4+Pj4+Cj4+Pj4+ICAgICBkd19o
ZG1pX3NldF9jaGFubmVsX2NvdW50KGhkbWksIGhwYXJtcy0+Y2hhbm5lbHMpOwo+Pj4+PiAgICAg
ZHdfaGRtaV9zZXRfY2hhbm5lbF9hbGxvY2F0aW9uKGhkbWksIGhwYXJtcy0KPj4+PiBjZWEuY2hh
bm5lbF9hbGxvY2F0aW9uKTsKPj4+Pj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2Uvc3lub3BzeXMvZHctaGRtaS5jCj4+Pj4+IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5v
cHN5cy9kdy1oZG1pLmMgaW5kZXgKPj4+Pj4gYmQ2NWQwNDc5NjgzLi5hYTdlZmQ0ZGExYzggMTAw
NjQ0Cj4+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5j
Cj4+Pj4+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5jCj4+
Pj4+IEBAIC01ODIsNiArNTgyLDI2IEBAIHN0YXRpYyB1bnNpZ25lZCBpbnQgaGRtaV9jb21wdXRl
X24odW5zaWduZWQgaW50IGZyZXEsCj4+Pj4+IHVuc2lnbmVkIGxvbmcgcGl4ZWxfY2xrKT4KPj4+
Pj4gICAgIHJldHVybiBuOwo+Pj4+Pgo+Pj4+PiAgfQo+Pj4+Pgo+Pj4+PiArLyoKPj4+Pj4gKyAq
IFdoZW4gdHJhbnNtaXR0aW5nIElFQzYwOTU4IGxpbmVhciBQQ00gYXVkaW8sIHRoZXNlIHJlZ2lz
dGVycyBhbGxvdyB0bwo+Pj4+PiArICogY29uZmlndXJlIHRoZSBjaGFubmVsIHN0YXR1cyBpbmZv
cm1hdGlvbiBvZiBhbGwgdGhlIGNoYW5uZWwgc3RhdHVzCj4+Pj4+ICsgKiBiaXRzIGluIHRoZSBJ
RUM2MDk1OCBmcmFtZS4gRm9yIHRoZSBtb21lbnQgdGhpcyBjb25maWd1cmF0aW9uIGlzIG9ubHkK
Pj4+Pj4gKyAqIHVzZWQgd2hlbiB0aGUgSTJTIGF1ZGlvIGludGVyZmFjZSwgR2VuZXJhbCBQdXJw
b3NlIEF1ZGlvIChHUEEpLAo+Pj4+PiArICogb3IgQUhCIGF1ZGlvIERNQSAoQUhCQVVERE1BKSBp
bnRlcmZhY2UgaXMgYWN0aXZlCj4+Pj4+ICsgKiAoZm9yIFMvUERJRiBpbnRlcmZhY2UgdGhpcyBp
bmZvcm1hdGlvbiBjb21lcyBmcm9tIHRoZSBzdHJlYW0pLgo+Pj4+PiArICovCj4+Pj4+ICt2b2lk
IGR3X2hkbWlfc2V0X2NoYW5uZWxfc3RhdHVzKHN0cnVjdCBkd19oZG1pICpoZG1pLAo+Pj4+PiAr
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdTggKmNoYW5uZWxfc3RhdHVzKQo+Pj4+PiArewo+
Pj4+PiArICAgLyoKPj4+Pj4gKyAgICAqIFNldCBjaGFubmVsIHN0YXR1cyByZWdpc3RlciBmb3Ig
ZnJlcXVlbmN5IGFuZCB3b3JkIGxlbmd0aC4KPj4+Pj4gKyAgICAqIFVzZSBkZWZhdWx0IHZhbHVl
cyBmb3Igb3RoZXIgcmVnaXN0ZXJzLgo+Pj4+PiArICAgICovCj4+Pj4+ICsgICBoZG1pX3dyaXRl
YihoZG1pLCBjaGFubmVsX3N0YXR1c1szXSwgSERNSV9GQ19BVURTQ0hOTFM3KTsKPj4+Pj4gKyAg
IGhkbWlfd3JpdGViKGhkbWksIGNoYW5uZWxfc3RhdHVzWzRdLCBIRE1JX0ZDX0FVRFNDSE5MUzgp
Owo+Pj4+PiArfQo+Pj4+PiArRVhQT1JUX1NZTUJPTF9HUEwoZHdfaGRtaV9zZXRfY2hhbm5lbF9z
dGF0dXMpOwo+Pj4+PiArCj4+Pj4+Cj4+Pj4+ICBzdGF0aWMgdm9pZCBoZG1pX3NldF9jbGtfcmVn
ZW5lcmF0b3Ioc3RydWN0IGR3X2hkbWkgKmhkbWksCj4+Pj4+Cj4+Pj4+ICAgICB1bnNpZ25lZCBs
b25nIHBpeGVsX2NsaywgdW5zaWduZWQgaW50IHNhbXBsZV9yYXRlKQo+Pj4+Pgo+Pj4+PiAgewo+
Pj4+Pgo+Pj4+PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9k
dy1oZG1pLmgKPj4+Pj4gYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWku
aCBpbmRleAo+Pj4+PiA2OTg4ZjEyZDg5ZDkuLmZjZmY1MDU5ZGIyNCAxMDA2NDQKPj4+Pj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmgKPj4+Pj4gKysrIGIv
ZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmgKPj4+Pj4gQEAgLTE1OCw2
ICsxNTgsOCBAQAo+Pj4+Pgo+Pj4+PiAgI2RlZmluZSBIRE1JX0ZDX1NQRERFVklDRUlORiAgICAg
ICAgICAgICAgICAgICAgMHgxMDYyCj4+Pj4+ICAjZGVmaW5lIEhETUlfRkNfQVVEU0NPTkYgICAg
ICAgICAgICAgICAgICAgICAgICAweDEwNjMKPj4+Pj4gICNkZWZpbmUgSERNSV9GQ19BVURTU1RB
VCAgICAgICAgICAgICAgICAgICAgICAgIDB4MTA2NAo+Pj4+Pgo+Pj4+PiArI2RlZmluZSBIRE1J
X0ZDX0FVRFNDSE5MUzcgICAgICAgICAgICAgICAgICAgICAgMHgxMDZlCj4+Pj4+ICsjZGVmaW5l
IEhETUlfRkNfQVVEU0NITkxTOCAgICAgICAgICAgICAgICAgICAgICAweDEwNmYKPj4+Pj4KPj4+
Pj4gICNkZWZpbmUgSERNSV9GQ19EQVRBQ0gwRklMTCAgICAgICAgICAgICAgICAgICAgIDB4MTA3
MAo+Pj4+PiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFDSDFGSUxMICAgICAgICAgICAgICAgICAgICAg
MHgxMDcxCj4+Pj4+ICAjZGVmaW5lIEhETUlfRkNfREFUQUNIMkZJTEwgICAgICAgICAgICAgICAg
ICAgICAweDEwNzIKPj4+Pj4KPj4+Pj4gZGlmZiAtLWdpdCBhL2luY2x1ZGUvZHJtL2JyaWRnZS9k
d19oZG1pLmggYi9pbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaS5oCj4+Pj4+IGluZGV4IGNmNTI4
YzI4OTg1Ny4uNGIzZTg2M2M0ZjhhIDEwMDY0NAo+Pj4+PiAtLS0gYS9pbmNsdWRlL2RybS9icmlk
Z2UvZHdfaGRtaS5oCj4+Pj4+ICsrKyBiL2luY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pLmgKPj4+
Pj4gQEAgLTE1Niw2ICsxNTYsNyBAQCB2b2lkIGR3X2hkbWlfc2V0dXBfcnhfc2Vuc2Uoc3RydWN0
IGR3X2hkbWkgKmhkbWksIGJvb2wKPj4+Pj4gaHBkLCBib29sIHJ4X3NlbnNlKTs+Cj4+Pj4+ICB2
b2lkIGR3X2hkbWlfc2V0X3NhbXBsZV9yYXRlKHN0cnVjdCBkd19oZG1pICpoZG1pLCB1bnNpZ25l
ZCBpbnQgcmF0ZSk7Cj4+Pj4+ICB2b2lkIGR3X2hkbWlfc2V0X2NoYW5uZWxfY291bnQoc3RydWN0
IGR3X2hkbWkgKmhkbWksIHVuc2lnbmVkIGludCBjbnQpOwo+Pj4+Pgo+Pj4+PiArdm9pZCBkd19o
ZG1pX3NldF9jaGFubmVsX3N0YXR1cyhzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwgdTgKPj4+Pj4gKmNo
YW5uZWxfc3RhdHVzKTsKPj4+Pj4KPj4+Pj4gIHZvaWQgZHdfaGRtaV9zZXRfY2hhbm5lbF9hbGxv
Y2F0aW9uKHN0cnVjdCBkd19oZG1pICpoZG1pLCB1bnNpZ25lZCBpbnQKPj4+Pj4gIGNhKTsKPj4+
Pj4gIHZvaWQgZHdfaGRtaV9hdWRpb19lbmFibGUoc3RydWN0IGR3X2hkbWkgKmhkbWkpOwo+Pj4+
PiAgdm9pZCBkd19oZG1pX2F1ZGlvX2Rpc2FibGUoc3RydWN0IGR3X2hkbWkgKmhkbWkpOwo+Pj4+
IExvb2tzIGZpbmUgZm9yIG1lOgo+Pj4+IFJldmlld2VkLWJ5OiBOZWlsIEFybXN0cm9uZyA8bmFy
bXN0cm9uZ0BiYXlsaWJyZS5jb20+Cj4+Pj4KPj4+PiBKb25hcyA/IEplcm5laiA/IFJ1c3NlbGwg
Pwo+Pj4gUGF0Y2ggaXRzZWxmIGlzIGZpbmUsIEknbSBqdXN0IHdvbmRlcmluZyBpZiBtb3JlIGlu
Zm9ybWF0aW9uIHNob3VsZCBiZSBjb3BpZWQKPj4+IGZyb20gc3RhdHVzIGFycmF5IHRvIHJlZ2lz
dGVycy4gQnV0IEkgdGhpbmsgdGhleSBhcmUgbm90IDE6MSBtYXBwaW5nIHNvIHNvbWUKPj4+IG1v
cmUgd29yayB3b3VsZCBiZSBuZWVkZWQuIEFueXdheSwgcGF0Y2ggaXM6Cj4+IEhpIEplcm5laiwK
Pj4gWWVzIHlvdSBhcmUgcmlnaHQuIEkgd2FzIHRoaW5raW5nIGFib3V0IHRoZSBzYW1lIHRoaW5n
Lgo+PiBCdXQgdGhlcmUgYXJlIGFsc28gc29tZSBmaWVsZHMgaW4gdGhlIElFQzYwOTU4IHNwZWMg
bm90IG1hcHBlZCB0byB0aGUKPj4gcmVnaXN0ZXJzIG9uIGR3LWhkbWkuCj4+IFNvIEkgZW5kZWQg
dXAganVzdCB3cml0aW5nIHRoZSB0d28gcmVnaXN0ZXJzIGluIHRoZSBvcmlnaW5hbCB5a2sncwo+
PiBwYXRjaCwgYW5kIGlnbm9yaW5nICJvcmlnaW5hbCBzYW1wbGluZyBmcmVxdWVuY3kiIGxpa2Ug
cGNtX2llYzk1OC4KPj4gSXQgdHVybnMgb3V0IHRoYXQgYXVkaW8gcGxheXMgZmluZSBvbiBteSBM
RyBtb25pdG9yLiBTbyBJIHN1Z2dlc3Qgd2UKPj4gY2FuIGtlZXAgdGhpcyBwYXRjaCBhcyBzaW1w
bGUgYXMgaXQgaXMsIGFuZCBhZGQgbW9yZSByZWdpc3RlciBzZXR0aW5nCj4+IGlmIHdlIGZpbmQg
aXNzdWUuCj4+IFRoYW5rcyEKPiAKPiBJbiBteSBvbGQgbXVsdGktY2hhbm5lbCBscGNtIHBhdGNo
IFsxXSBJIG9ubHkgd3JvdGUgc2FtcGxlIHJhdGUgdG8gRkNfQVVEU0NITkxTNy4KPiBUaGlzIGlz
IG11Y2ggY2xlYW5lciBhbmQgc2ltcGxlciwgYW5kIHNldHRpbmcgRkNfQVVEU0NITkxTOCBkb2Vz
IG5vdCBjYXVzZSBhbnkKPiBwcm9ibGVtcyB3aGVuIEkgdGVzdGVkIG9uIEFTVVMgVGlua2VyIEJv
YXJkIFMgKFJLMzI4OCkuCj4gCj4gUmV2aWV3ZWQtYnk6IEpvbmFzIEthcmxtYW4gPGpvbmFzQGt3
aWJvby5zZT4KPiAKPiAKPiBbMV0gaHR0cHM6Ly9naXRodWIuY29tL0t3aWJvby9saW51eC1yb2Nr
Y2hpcC9jb21taXQvNGFmOWViYzU2N2NjZjBhMDg1MWZhMjYwMDk3MDIxYzI3YWViYmI2YgoKVGhh
bmtzIEpvbmFzLCBKZXJuZWosCgpBcHBseWluZyBub3cuCgpOZWlsCgo+IAo+IFJlZ2FyZHMsCj4g
Sm9uYXMKPiAKPj4KPj4+Cj4+PiBSZXZpZXdlZC1ieTogSmVybmVqIFNrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0Pgo+Pj4KPj4+IEJlc3QgcmVnYXJkcywKPj4+IEplcm5lago+Pj4KPj4+
PiBJZiBpdCdzIG9rIGZvciB5b3UgSSdsbCBhcHBseSBpdC4KPj4+Pgo+Pj4+IE5laWwKPj4+PgoK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
