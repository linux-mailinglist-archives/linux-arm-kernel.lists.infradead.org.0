Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DC57B0255
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Sep 2019 19:03:27 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qu4b/n+VXsX0fZqVaOzfN/X8lJ+6Kv9NaoCL8dm2TLc=; b=FD+m6fdoFWF3CJ
	sEhWpyLgwpSqLfzLA/JWI7t0LN+L7wjOYK5d8DaIAWMun+kKuPbRNVROVFGQKBrG6HFBpP7/D28kt
	Etqc0KdNEmkvMOWIBVsFFimHUX+3UVSgzZaN3YJxSSu5NFHOmLcrzTCs5PHSlV1KpAVb7tXRMgI1v
	XcE9bNoIivMtq+mnkMxx1smr8miX1tjiIQnGSsImsnxZ+NCwH938UxjRcz5cWJwOaAEEoXPDPxwKG
	BY3HwLpYTejZdC4jVUQGBQAHIeq39qzSutZkP6+Esb4X1QPyXXgRS0rRaqm0yXAMpGMJA/0TGT4Ti
	MXpt+JUdVz/PUJD076Jg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i861d-0007rn-Em; Wed, 11 Sep 2019 17:03:25 +0000
Received: from mail-ua1-x942.google.com ([2607:f8b0:4864:20::942])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i861R-0007qV-40
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Sep 2019 17:03:14 +0000
Received: by mail-ua1-x942.google.com with SMTP id z8so7011351uaq.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Sep 2019 10:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=buUqc8ERVmqHmMW6WwjRVMJPzy7dr7EKMl9vRpwJpZM=;
 b=Z+nLvmJsUyDmb3Z8llyNwlmD2jVrnXGV2ode7JUJ0CBsoLN0QQqjF/H/3gDTLg6VDJ
 jXit3LAhfojKsULrELXKF1wwGBp8vNz5EVM7DcARGt0ByQSpvOJ48NQVf6fQWh/Zujp+
 cBblUSKAe177/psfJfCGsbkuJOHDOsO5Qb/yg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=buUqc8ERVmqHmMW6WwjRVMJPzy7dr7EKMl9vRpwJpZM=;
 b=TWIA/vWLEf2d8nFJRf+4o8ginOqEtglRtzPriUChadIR7EtUY52T3AhfD1mPv3uLPb
 yDyUrOaTgQaiPjSwZIP+uKim91vL/kTfJGIZAgVPB0zVKHod+aZAM4LOEVhDv5sIWAuR
 O0Tw+1GROwOoIE/lUk/1wCN9Z6eJJ7SSf/wYkfkhgPSHbkGKE3JO9f5F3mJ71ELuCAam
 JIr3xEs8rCXjB6qXL1/BiNLBeGohZ44BtZuPzALsalXwsLICyS63pxqVh4IIrzru5UAL
 kLDgyqtZx2FOJf66KxzMg7JV60lwRwLIL9F03CkszQiemITfwdiNSSF8613isK9yOuD2
 cONw==
X-Gm-Message-State: APjAAAVwJGgR3ky61HPjmbY25HZzvkvz/EFyf+eFJSu/E6MZA8Wu8EU1
 2aIqBBbrOtlkcCtYwYJvVlO8gmSsrbdd7MdbR0riFw==
X-Google-Smtp-Source: APXvYqyHbuhYljIhllMZZXCEGHUZOYmQOMAogOruLFfO7e3oALf2ZphzQ2tT6Oy4Xky7aPF4tOyye2GIxWQClO2dXQ0=
X-Received: by 2002:ab0:604a:: with SMTP id o10mr4566868ual.105.1568221385686; 
 Wed, 11 Sep 2019 10:03:05 -0700 (PDT)
MIME-Version: 1.0
References: <20190911082646.134347-1-cychiang@chromium.org>
 <1e2ec69d-e42d-4e1b-7ce9-d1620cfbb4c9@baylibre.com>
 <10668907.r1TyVuJQb1@jernej-laptop>
In-Reply-To: <10668907.r1TyVuJQb1@jernej-laptop>
From: Cheng-yi Chiang <cychiang@chromium.org>
Date: Thu, 12 Sep 2019 01:02:38 +0800
Message-ID: <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
Subject: Re: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190911_100313_164495_62E82EC7 
X-CRM114-Status: GOOD (  27.59  )
X-Spam-Score: -7.6 (-------)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-7.6 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:942 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -7.5 USER_IN_DEF_SPF_WL     From: address is in the default SPF
 white-list
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
 <alsa-devel@alsa-project.org>, Doug Anderson <dianders@chromium.org>,
 kuninori.morimoto.gx@renesas.com, Neil Armstrong <narmstrong@baylibre.com>,
 David Airlie <airlied@linux.ie>, dri-devel@lists.freedesktop.org,
 cain.cai@rock-chips.com, Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Yakir Yang <ykk@rock-chips.com>, sam@ravnborg.org,
 Jerome Brunet <jbrunet@baylibre.com>, Xing Zheng <zhengxing@rock-chips.com>,
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

T24gVGh1LCBTZXAgMTIsIDIwMTkgYXQgMTI6NTQgQU0gSmVybmVqIMWga3JhYmVjIDxqZXJuZWou
c2tyYWJlY0BzaW9sLm5ldD4gd3JvdGU6Cj4KPiBEbmUgc3JlZGEsIDExLiBzZXB0ZW1iZXIgMjAx
OSBvYiAxODoyMzo1OSBDRVNUIGplIE5laWwgQXJtc3Ryb25nIG5hcGlzYWwoYSk6Cj4gPiBPbiAx
MS8wOS8yMDE5IDEwOjI2LCBDaGVuZy1ZaSBDaGlhbmcgd3JvdGU6Cj4gPiA+IEZyb206IFlha2ly
IFlhbmcgPHlra0Byb2NrLWNoaXBzLmNvbT4KPiA+ID4KPiA+ID4gV2hlbiB0cmFuc21pdHRpbmcg
SUVDNjA5ODUgbGluZWFyIFBDTSBhdWRpbywgd2UgY29uZmlndXJlIHRoZQo+ID4gPiBBZHVpbyBT
YW1wbGUgQ2hhbm5lbCBTdGF0dXMgaW5mb3JtYXRpb24gaW4gdGhlIElFQzYwOTU4IGZyYW1lLgo+
ID4gPiBUaGUgc3RhdHVzIGJpdCBpcyBhbHJlYWR5IGF2YWlsYWJsZSBpbiBpZWMuc3RhdHVzIG9m
IGhkbWlfY29kZWNfcGFyYW1zLgo+ID4gPgo+ID4gPiBUaGlzIGZpeCB0aGUgaXNzdWUgdGhhdCBh
dWRpbyBkb2VzIG5vdCBjb21lIG91dCBvbiBzb21lIG1vbml0b3JzCj4gPiA+IChlLmcuIExHIDIy
Q1YyNDEpCj4gPiA+Cj4gPiA+IE5vdGUgdGhhdCB0aGVzZSByZWdpc3RlcnMgYXJlIG9ubHkgZm9y
IGludGVyZmFjZXM6Cj4gPiA+IEkyUyBhdWRpbyBpbnRlcmZhY2UsIEdlbmVyYWwgUHVycG9zZSBB
dWRpbyAoR1BBKSwgb3IgQUhCIGF1ZGlvIERNQQo+ID4gPiAoQUhCQVVERE1BKS4KPiA+ID4gRm9y
IFMvUERJRiBpbnRlcmZhY2UgdGhpcyBpbmZvcm1hdGlvbiBjb21lcyBmcm9tIHRoZSBzdHJlYW0u
Cj4gPiA+Cj4gPiA+IEN1cnJlbnRseSB0aGlzIGZ1bmN0aW9uIGR3X2hkbWlfc2V0X2NoYW5uZWxf
c3RhdHVzIGlzIG9ubHkgY2FsbGVkCj4gPiA+IGZyb20gZHctaGRtaS1pMnMtYXVkaW8gaW4gSTJT
IHNldHVwLgo+ID4gPgo+ID4gPiBTaWduZWQtb2ZmLWJ5OiBZYWtpciBZYW5nIDx5a2tAcm9jay1j
aGlwcy5jb20+Cj4gPiA+IFNpZ25lZC1vZmYtYnk6IENoZW5nLVlpIENoaWFuZyA8Y3ljaGlhbmdA
Y2hyb21pdW0ub3JnPgo+ID4gPiAtLS0KPiA+ID4KPiA+ID4gQ2hhbmdlIGZyb20gdjIgdG8gdjM6
Cj4gPiA+IDEuIFJldXNlIHdoYXQgaXMgYWxyZWFkeSBzZXQgaW4gaWVjLnN0YXR1cyBpbiBod19w
YXJhbS4KPiA+ID4gMi4gUmVtb3ZlIGFsbCB1c2VsZXNzIGRlZmluaXRpb24gb2YgcmVnaXN0ZXJz
IGFuZCB2YWx1ZXMuCj4gPiA+IDMuIE5vdGUgdGhhdCB0aGUgb3JpZ2luYWwgc2FtcGxpbmcgZnJl
cXVlbmN5IGlzIG5vdCB3cml0dGVuIHRvCj4gPiA+Cj4gPiA+ICAgIHRoZSBjaGFubmVsIHN0YXR1
cyBhcyB3ZSByZXVzZSBjcmVhdGVfaWVjOTU4X2NvbnN1bWVyIGluIHBjbV9pZWM5NTguYy4KPiA+
ID4gICAgV2l0aG91dCB0aGF0IGl0IGNhbiBzdGlsbCBwbGF5IGF1ZGlvIGZpbmUuCj4gPiA+Cj4g
PiA+ICAuLi4vZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWkycy1hdWRpby5jICAgfCAgMSAr
Cj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAgfCAy
MCArKysrKysrKysrKysrKysrKysrCj4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWkuaCAgICAgfCAgMiArKwo+ID4gPiAgaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hk
bWkuaCAgICAgICAgICAgICAgICAgIHwgIDEgKwo+ID4gPiAgNCBmaWxlcyBjaGFuZ2VkLCAyNCBp
bnNlcnRpb25zKCspCj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vYnJp
ZGdlL3N5bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMKPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0v
YnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMgaW5kZXgKPiA+ID4gMzRkOGU4Mzc1
NTVmLi4yMGY0ZjkyZGQ4NjYgMTAwNjQ0Cj4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlk
Z2Uvc3lub3BzeXMvZHctaGRtaS1pMnMtYXVkaW8uYwo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWktaTJzLWF1ZGlvLmMKPiA+ID4gQEAgLTEwMiw2ICsx
MDIsNyBAQCBzdGF0aWMgaW50IGR3X2hkbWlfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QgZGV2aWNlICpk
ZXYsCj4gPiA+IHZvaWQgKmRhdGEsPgo+ID4gPiAgICAgfQo+ID4gPgo+ID4gPiAgICAgZHdfaGRt
aV9zZXRfc2FtcGxlX3JhdGUoaGRtaSwgaHBhcm1zLT5zYW1wbGVfcmF0ZSk7Cj4gPiA+Cj4gPiA+
ICsgICBkd19oZG1pX3NldF9jaGFubmVsX3N0YXR1cyhoZG1pLCBocGFybXMtPmllYy5zdGF0dXMp
Owo+ID4gPgo+ID4gPiAgICAgZHdfaGRtaV9zZXRfY2hhbm5lbF9jb3VudChoZG1pLCBocGFybXMt
PmNoYW5uZWxzKTsKPiA+ID4gICAgIGR3X2hkbWlfc2V0X2NoYW5uZWxfYWxsb2NhdGlvbihoZG1p
LCBocGFybXMtCj4gPmNlYS5jaGFubmVsX2FsbG9jYXRpb24pOwo+ID4gPgo+ID4gPiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPiA+ID4gYi9k
cml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyBpbmRleAo+ID4gPiBiZDY1
ZDA0Nzk2ODMuLmFhN2VmZDRkYTFjOCAxMDA2NDQKPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJt
L2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2Jy
aWRnZS9zeW5vcHN5cy9kdy1oZG1pLmMKPiA+ID4gQEAgLTU4Miw2ICs1ODIsMjYgQEAgc3RhdGlj
IHVuc2lnbmVkIGludCBoZG1pX2NvbXB1dGVfbih1bnNpZ25lZCBpbnQgZnJlcSwKPiA+ID4gdW5z
aWduZWQgbG9uZyBwaXhlbF9jbGspPgo+ID4gPiAgICAgcmV0dXJuIG47Cj4gPiA+Cj4gPiA+ICB9
Cj4gPiA+Cj4gPiA+ICsvKgo+ID4gPiArICogV2hlbiB0cmFuc21pdHRpbmcgSUVDNjA5NTggbGlu
ZWFyIFBDTSBhdWRpbywgdGhlc2UgcmVnaXN0ZXJzIGFsbG93IHRvCj4gPiA+ICsgKiBjb25maWd1
cmUgdGhlIGNoYW5uZWwgc3RhdHVzIGluZm9ybWF0aW9uIG9mIGFsbCB0aGUgY2hhbm5lbCBzdGF0
dXMKPiA+ID4gKyAqIGJpdHMgaW4gdGhlIElFQzYwOTU4IGZyYW1lLiBGb3IgdGhlIG1vbWVudCB0
aGlzIGNvbmZpZ3VyYXRpb24gaXMgb25seQo+ID4gPiArICogdXNlZCB3aGVuIHRoZSBJMlMgYXVk
aW8gaW50ZXJmYWNlLCBHZW5lcmFsIFB1cnBvc2UgQXVkaW8gKEdQQSksCj4gPiA+ICsgKiBvciBB
SEIgYXVkaW8gRE1BIChBSEJBVURETUEpIGludGVyZmFjZSBpcyBhY3RpdmUKPiA+ID4gKyAqIChm
b3IgUy9QRElGIGludGVyZmFjZSB0aGlzIGluZm9ybWF0aW9uIGNvbWVzIGZyb20gdGhlIHN0cmVh
bSkuCj4gPiA+ICsgKi8KPiA+ID4gK3ZvaWQgZHdfaGRtaV9zZXRfY2hhbm5lbF9zdGF0dXMoc3Ry
dWN0IGR3X2hkbWkgKmhkbWksCj4gPiA+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICB1OCAq
Y2hhbm5lbF9zdGF0dXMpCj4gPiA+ICt7Cj4gPiA+ICsgICAvKgo+ID4gPiArICAgICogU2V0IGNo
YW5uZWwgc3RhdHVzIHJlZ2lzdGVyIGZvciBmcmVxdWVuY3kgYW5kIHdvcmQgbGVuZ3RoLgo+ID4g
PiArICAgICogVXNlIGRlZmF1bHQgdmFsdWVzIGZvciBvdGhlciByZWdpc3RlcnMuCj4gPiA+ICsg
ICAgKi8KPiA+ID4gKyAgIGhkbWlfd3JpdGViKGhkbWksIGNoYW5uZWxfc3RhdHVzWzNdLCBIRE1J
X0ZDX0FVRFNDSE5MUzcpOwo+ID4gPiArICAgaGRtaV93cml0ZWIoaGRtaSwgY2hhbm5lbF9zdGF0
dXNbNF0sIEhETUlfRkNfQVVEU0NITkxTOCk7Cj4gPiA+ICt9Cj4gPiA+ICtFWFBPUlRfU1lNQk9M
X0dQTChkd19oZG1pX3NldF9jaGFubmVsX3N0YXR1cyk7Cj4gPiA+ICsKPiA+ID4KPiA+ID4gIHN0
YXRpYyB2b2lkIGhkbWlfc2V0X2Nsa19yZWdlbmVyYXRvcihzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwK
PiA+ID4KPiA+ID4gICAgIHVuc2lnbmVkIGxvbmcgcGl4ZWxfY2xrLCB1bnNpZ25lZCBpbnQgc2Ft
cGxlX3JhdGUpCj4gPiA+Cj4gPiA+ICB7Cj4gPiA+Cj4gPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJz
L2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuaAo+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oIGluZGV4Cj4gPiA+IDY5ODhmMTJkODlkOS4uZmNm
ZjUwNTlkYjI0IDEwMDY0NAo+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWkuaAo+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lz
L2R3LWhkbWkuaAo+ID4gPiBAQCAtMTU4LDYgKzE1OCw4IEBACj4gPiA+Cj4gPiA+ICAjZGVmaW5l
IEhETUlfRkNfU1BEREVWSUNFSU5GICAgICAgICAgICAgICAgICAgICAweDEwNjIKPiA+ID4gICNk
ZWZpbmUgSERNSV9GQ19BVURTQ09ORiAgICAgICAgICAgICAgICAgICAgICAgIDB4MTA2Mwo+ID4g
PiAgI2RlZmluZSBIRE1JX0ZDX0FVRFNTVEFUICAgICAgICAgICAgICAgICAgICAgICAgMHgxMDY0
Cj4gPiA+Cj4gPiA+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTNyAgICAgICAgICAgICAgICAg
ICAgICAweDEwNmUKPiA+ID4gKyNkZWZpbmUgSERNSV9GQ19BVURTQ0hOTFM4ICAgICAgICAgICAg
ICAgICAgICAgIDB4MTA2Zgo+ID4gPgo+ID4gPiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFDSDBGSUxM
ICAgICAgICAgICAgICAgICAgICAgMHgxMDcwCj4gPiA+ICAjZGVmaW5lIEhETUlfRkNfREFUQUNI
MUZJTEwgICAgICAgICAgICAgICAgICAgICAweDEwNzEKPiA+ID4gICNkZWZpbmUgSERNSV9GQ19E
QVRBQ0gyRklMTCAgICAgICAgICAgICAgICAgICAgIDB4MTA3Mgo+ID4gPgo+ID4gPiBkaWZmIC0t
Z2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaCBiL2luY2x1ZGUvZHJtL2JyaWRnZS9k
d19oZG1pLmgKPiA+ID4gaW5kZXggY2Y1MjhjMjg5ODU3Li40YjNlODYzYzRmOGEgMTAwNjQ0Cj4g
PiA+IC0tLSBhL2luY2x1ZGUvZHJtL2JyaWRnZS9kd19oZG1pLmgKPiA+ID4gKysrIGIvaW5jbHVk
ZS9kcm0vYnJpZGdlL2R3X2hkbWkuaAo+ID4gPiBAQCAtMTU2LDYgKzE1Niw3IEBAIHZvaWQgZHdf
aGRtaV9zZXR1cF9yeF9zZW5zZShzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwgYm9vbAo+ID4gPiBocGQs
IGJvb2wgcnhfc2Vuc2UpOz4KPiA+ID4gIHZvaWQgZHdfaGRtaV9zZXRfc2FtcGxlX3JhdGUoc3Ry
dWN0IGR3X2hkbWkgKmhkbWksIHVuc2lnbmVkIGludCByYXRlKTsKPiA+ID4gIHZvaWQgZHdfaGRt
aV9zZXRfY2hhbm5lbF9jb3VudChzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwgdW5zaWduZWQgaW50IGNu
dCk7Cj4gPiA+Cj4gPiA+ICt2b2lkIGR3X2hkbWlfc2V0X2NoYW5uZWxfc3RhdHVzKHN0cnVjdCBk
d19oZG1pICpoZG1pLCB1OAo+ID4gPiAqY2hhbm5lbF9zdGF0dXMpOwo+ID4gPgo+ID4gPiAgdm9p
ZCBkd19oZG1pX3NldF9jaGFubmVsX2FsbG9jYXRpb24oc3RydWN0IGR3X2hkbWkgKmhkbWksIHVu
c2lnbmVkIGludAo+ID4gPiAgY2EpOwo+ID4gPiAgdm9pZCBkd19oZG1pX2F1ZGlvX2VuYWJsZShz
dHJ1Y3QgZHdfaGRtaSAqaGRtaSk7Cj4gPiA+ICB2b2lkIGR3X2hkbWlfYXVkaW9fZGlzYWJsZShz
dHJ1Y3QgZHdfaGRtaSAqaGRtaSk7Cj4gPgo+ID4gTG9va3MgZmluZSBmb3IgbWU6Cj4gPiBSZXZp
ZXdlZC1ieTogTmVpbCBBcm1zdHJvbmcgPG5hcm1zdHJvbmdAYmF5bGlicmUuY29tPgo+ID4KPiA+
IEpvbmFzID8gSmVybmVqID8gUnVzc2VsbCA/Cj4KPiBQYXRjaCBpdHNlbGYgaXMgZmluZSwgSSdt
IGp1c3Qgd29uZGVyaW5nIGlmIG1vcmUgaW5mb3JtYXRpb24gc2hvdWxkIGJlIGNvcGllZAo+IGZy
b20gc3RhdHVzIGFycmF5IHRvIHJlZ2lzdGVycy4gQnV0IEkgdGhpbmsgdGhleSBhcmUgbm90IDE6
MSBtYXBwaW5nIHNvIHNvbWUKPiBtb3JlIHdvcmsgd291bGQgYmUgbmVlZGVkLiBBbnl3YXksIHBh
dGNoIGlzOgoKSGkgSmVybmVqLApZZXMgeW91IGFyZSByaWdodC4gSSB3YXMgdGhpbmtpbmcgYWJv
dXQgdGhlIHNhbWUgdGhpbmcuCkJ1dCB0aGVyZSBhcmUgYWxzbyBzb21lIGZpZWxkcyBpbiB0aGUg
SUVDNjA5NTggc3BlYyBub3QgbWFwcGVkIHRvIHRoZQpyZWdpc3RlcnMgb24gZHctaGRtaS4KU28g
SSBlbmRlZCB1cCBqdXN0IHdyaXRpbmcgdGhlIHR3byByZWdpc3RlcnMgaW4gdGhlIG9yaWdpbmFs
IHlraydzCnBhdGNoLCBhbmQgaWdub3JpbmcgIm9yaWdpbmFsIHNhbXBsaW5nIGZyZXF1ZW5jeSIg
bGlrZSBwY21faWVjOTU4LgpJdCB0dXJucyBvdXQgdGhhdCBhdWRpbyBwbGF5cyBmaW5lIG9uIG15
IExHIG1vbml0b3IuIFNvIEkgc3VnZ2VzdCB3ZQpjYW4ga2VlcCB0aGlzIHBhdGNoIGFzIHNpbXBs
ZSBhcyBpdCBpcywgYW5kIGFkZCBtb3JlIHJlZ2lzdGVyIHNldHRpbmcKaWYgd2UgZmluZCBpc3N1
ZS4KVGhhbmtzIQoKPgo+Cj4gUmV2aWV3ZWQtYnk6IEplcm5laiBTa3JhYmVjIDxqZXJuZWouc2ty
YWJlY0BzaW9sLm5ldD4KPgo+IEJlc3QgcmVnYXJkcywKPiBKZXJuZWoKPgo+ID4KPiA+IElmIGl0
J3Mgb2sgZm9yIHlvdSBJJ2xsIGFwcGx5IGl0Lgo+ID4KPiA+IE5laWwKPgo+Cj4KPgoKX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5l
bCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6
Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
