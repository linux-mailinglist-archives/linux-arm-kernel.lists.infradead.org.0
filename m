Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 83FB5B1215
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Sep 2019 17:25:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=nu0wBPo5mFJQqDysrj23ki7EyLVOzI7zr2bFoInTnKA=; b=FiDkmepbP9a94s
	L1DVSrIjTGQjv3tqeFdsN4ov/cMbY393CIIXUY75gql7TUbr7bhegeaEDNcteMVFoc4MGdlpoGqLN
	jt3gcIJ4ScPHo9Sz146Eq+7DVKafiY2tvX9Y4xLv8atcTsqh2Ov9Es0JR/EUY60udtyRVX4Imp6Jz
	GxYy2/3lJkdjUFt/c93B+M9fM8tJgILgHRcHa1xc96NJDeCE30ry8g752aGgMj00/xDlmCtLKo9XH
	cmsJG33eC1qpj0t8HFfKzk15HUws2Om7918xHVhl0jtJo29EYorWL2zMa5/ZenrV2l8gHcF0tXGPZ
	NrSAtt/qHvtXPR8cilcQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1i8Qyq-00049B-4D; Thu, 12 Sep 2019 15:25:56 +0000
Received: from mailoutvs28.siol.net ([185.57.226.219] helo=mail.siol.net)
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i8Qye-00048W-6Y; Thu, 12 Sep 2019 15:25:46 +0000
Received: from localhost (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTP id D8320522EF0;
 Thu, 12 Sep 2019 17:25:36 +0200 (CEST)
X-Virus-Scanned: amavisd-new at psrvmta10.zcs-production.pri
Received: from mail.siol.net ([127.0.0.1])
 by localhost (psrvmta10.zcs-production.pri [127.0.0.1]) (amavisd-new,
 port 10032)
 with ESMTP id kO6pjkeDLKrK; Thu, 12 Sep 2019 17:25:36 +0200 (CEST)
Received: from mail.siol.net (localhost [127.0.0.1])
 by mail.siol.net (Postfix) with ESMTPS id 22E5B5225B6;
 Thu, 12 Sep 2019 17:25:36 +0200 (CEST)
Received: from jernej-laptop.localnet (cpe-86-58-59-25.static.triera.net
 [86.58.59.25]) (Authenticated sender: jernej.skrabec@siol.net)
 by mail.siol.net (Postfix) with ESMTPA id CFDDB522EB1;
 Thu, 12 Sep 2019 17:25:33 +0200 (CEST)
From: Jernej =?utf-8?B?xaBrcmFiZWM=?= <jernej.skrabec@siol.net>
To: Cheng-yi Chiang <cychiang@chromium.org>
Subject: Re: [PATCH v3] drm: bridge/dw_hdmi: add audio sample channel status
 setting
Date: Thu, 12 Sep 2019 17:25:33 +0200
Message-ID: <7842247.f7rGGmobG6@jernej-laptop>
In-Reply-To: <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
References: <20190911082646.134347-1-cychiang@chromium.org>
 <10668907.r1TyVuJQb1@jernej-laptop>
 <CAFv8NwJGa0HXsnv2MvJhknpr9PxUL3jH2HZLSLiSD5s_nHiQhQ@mail.gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190912_082544_400961_001044EC 
X-CRM114-Status: GOOD (  29.33  )
X-Spam-Score: -0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [185.57.226.219 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
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
 =?utf-8?B?6JSh5p6r?= <eddie.cai@rock-chips.com>,
 linux-arm-kernel@lists.infradead.org,
 linux-kernel <linux-kernel@vger.kernel.org>, Daniel Vetter <daniel@ffwll.ch>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>, kuankuan.y@gmail.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

RG5lIHNyZWRhLCAxMS4gc2VwdGVtYmVyIDIwMTkgb2IgMTk6MDI6MzggQ0VTVCBqZSBDaGVuZy15
aSBDaGlhbmcgbmFwaXNhbChhKToKPiBPbiBUaHUsIFNlcCAxMiwgMjAxOSBhdCAxMjo1NCBBTSBK
ZXJuZWogxaBrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0PiAKd3JvdGU6Cj4gPiBEbmUg
c3JlZGEsIDExLiBzZXB0ZW1iZXIgMjAxOSBvYiAxODoyMzo1OSBDRVNUIGplIE5laWwgQXJtc3Ry
b25nIApuYXBpc2FsKGEpOgo+ID4gPiBPbiAxMS8wOS8yMDE5IDEwOjI2LCBDaGVuZy1ZaSBDaGlh
bmcgd3JvdGU6Cj4gPiA+ID4gRnJvbTogWWFraXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgo+
ID4gPiA+IAo+ID4gPiA+IFdoZW4gdHJhbnNtaXR0aW5nIElFQzYwOTg1IGxpbmVhciBQQ00gYXVk
aW8sIHdlIGNvbmZpZ3VyZSB0aGUKPiA+ID4gPiBBZHVpbyBTYW1wbGUgQ2hhbm5lbCBTdGF0dXMg
aW5mb3JtYXRpb24gaW4gdGhlIElFQzYwOTU4IGZyYW1lLgo+ID4gPiA+IFRoZSBzdGF0dXMgYml0
IGlzIGFscmVhZHkgYXZhaWxhYmxlIGluIGllYy5zdGF0dXMgb2YKPiA+ID4gPiBoZG1pX2NvZGVj
X3BhcmFtcy4KPiA+ID4gPiAKPiA+ID4gPiBUaGlzIGZpeCB0aGUgaXNzdWUgdGhhdCBhdWRpbyBk
b2VzIG5vdCBjb21lIG91dCBvbiBzb21lIG1vbml0b3JzCj4gPiA+ID4gKGUuZy4gTEcgMjJDVjI0
MSkKPiA+ID4gPiAKPiA+ID4gPiBOb3RlIHRoYXQgdGhlc2UgcmVnaXN0ZXJzIGFyZSBvbmx5IGZv
ciBpbnRlcmZhY2VzOgo+ID4gPiA+IEkyUyBhdWRpbyBpbnRlcmZhY2UsIEdlbmVyYWwgUHVycG9z
ZSBBdWRpbyAoR1BBKSwgb3IgQUhCIGF1ZGlvIERNQQo+ID4gPiA+IChBSEJBVURETUEpLgo+ID4g
PiA+IEZvciBTL1BESUYgaW50ZXJmYWNlIHRoaXMgaW5mb3JtYXRpb24gY29tZXMgZnJvbSB0aGUg
c3RyZWFtLgo+ID4gPiA+IAo+ID4gPiA+IEN1cnJlbnRseSB0aGlzIGZ1bmN0aW9uIGR3X2hkbWlf
c2V0X2NoYW5uZWxfc3RhdHVzIGlzIG9ubHkgY2FsbGVkCj4gPiA+ID4gZnJvbSBkdy1oZG1pLWky
cy1hdWRpbyBpbiBJMlMgc2V0dXAuCj4gPiA+ID4gCj4gPiA+ID4gU2lnbmVkLW9mZi1ieTogWWFr
aXIgWWFuZyA8eWtrQHJvY2stY2hpcHMuY29tPgo+ID4gPiA+IFNpZ25lZC1vZmYtYnk6IENoZW5n
LVlpIENoaWFuZyA8Y3ljaGlhbmdAY2hyb21pdW0ub3JnPgo+ID4gPiA+IC0tLQo+ID4gPiA+IAo+
ID4gPiA+IENoYW5nZSBmcm9tIHYyIHRvIHYzOgo+ID4gPiA+IDEuIFJldXNlIHdoYXQgaXMgYWxy
ZWFkeSBzZXQgaW4gaWVjLnN0YXR1cyBpbiBod19wYXJhbS4KPiA+ID4gPiAyLiBSZW1vdmUgYWxs
IHVzZWxlc3MgZGVmaW5pdGlvbiBvZiByZWdpc3RlcnMgYW5kIHZhbHVlcy4KPiA+ID4gPiAzLiBO
b3RlIHRoYXQgdGhlIG9yaWdpbmFsIHNhbXBsaW5nIGZyZXF1ZW5jeSBpcyBub3Qgd3JpdHRlbiB0
bwo+ID4gPiA+IAo+ID4gPiA+ICAgIHRoZSBjaGFubmVsIHN0YXR1cyBhcyB3ZSByZXVzZSBjcmVh
dGVfaWVjOTU4X2NvbnN1bWVyIGluCj4gPiA+ID4gICAgcGNtX2llYzk1OC5jLgo+ID4gPiA+ICAg
IFdpdGhvdXQgdGhhdCBpdCBjYW4gc3RpbGwgcGxheSBhdWRpbyBmaW5lLgo+ID4gPiA+ICAKPiA+
ID4gPiAgLi4uL2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1pMnMtYXVkaW8uYyAgIHwgIDEg
Kwo+ID4gPiA+ICBkcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhkbWkuYyAgICAg
fCAyMAo+ID4gPiA+ICArKysrKysrKysrKysrKysrKysrCj4gPiA+ID4gIGRyaXZlcnMvZ3B1L2Ry
bS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oICAgICB8ICAyICsrCj4gPiA+ID4gIGluY2x1ZGUv
ZHJtL2JyaWRnZS9kd19oZG1pLmggICAgICAgICAgICAgICAgICB8ICAxICsKPiA+ID4gPiAgNCBm
aWxlcyBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspCj4gPiA+ID4gCj4gPiA+ID4gZGlmZiAtLWdp
dCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS1pMnMtYXVkaW8uYwo+
ID4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWkycy1hdWRp
by5jIGluZGV4Cj4gPiA+ID4gMzRkOGU4Mzc1NTVmLi4yMGY0ZjkyZGQ4NjYgMTAwNjQ0Cj4gPiA+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLWkycy1hdWRp
by5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1p
LWkycy1hdWRpby5jCj4gPiA+ID4gQEAgLTEwMiw2ICsxMDIsNyBAQCBzdGF0aWMgaW50IGR3X2hk
bWlfaTJzX2h3X3BhcmFtcyhzdHJ1Y3QgZGV2aWNlCj4gPiA+ID4gKmRldiwKPiA+ID4gPiB2b2lk
ICpkYXRhLD4KPiA+ID4gPiAKPiA+ID4gPiAgICAgfQo+ID4gPiA+ICAgICAKPiA+ID4gPiAgICAg
ZHdfaGRtaV9zZXRfc2FtcGxlX3JhdGUoaGRtaSwgaHBhcm1zLT5zYW1wbGVfcmF0ZSk7Cj4gPiA+
ID4gCj4gPiA+ID4gKyAgIGR3X2hkbWlfc2V0X2NoYW5uZWxfc3RhdHVzKGhkbWksIGhwYXJtcy0+
aWVjLnN0YXR1cyk7Cj4gPiA+ID4gCj4gPiA+ID4gICAgIGR3X2hkbWlfc2V0X2NoYW5uZWxfY291
bnQoaGRtaSwgaHBhcm1zLT5jaGFubmVscyk7Cj4gPiA+ID4gICAgIGR3X2hkbWlfc2V0X2NoYW5u
ZWxfYWxsb2NhdGlvbihoZG1pLCBocGFybXMtCj4gPiA+Cj4gPiA+Y2VhLmNoYW5uZWxfYWxsb2Nh
dGlvbik7Cj4gPiA+Cj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uv
c3lub3BzeXMvZHctaGRtaS5jCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9w
c3lzL2R3LWhkbWkuYyBpbmRleAo+ID4gPiA+IGJkNjVkMDQ3OTY4My4uYWE3ZWZkNGRhMWM4IDEw
MDY0NAo+ID4gPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRt
aS5jCj4gPiA+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1p
LmMKPiA+ID4gPiBAQCAtNTgyLDYgKzU4MiwyNiBAQCBzdGF0aWMgdW5zaWduZWQgaW50IGhkbWlf
Y29tcHV0ZV9uKHVuc2lnbmVkIGludAo+ID4gPiA+IGZyZXEsCj4gPiA+ID4gdW5zaWduZWQgbG9u
ZyBwaXhlbF9jbGspPgo+ID4gPiA+IAo+ID4gPiA+ICAgICByZXR1cm4gbjsKPiA+ID4gPiAgCj4g
PiA+ID4gIH0KPiA+ID4gPiAKPiA+ID4gPiArLyoKPiA+ID4gPiArICogV2hlbiB0cmFuc21pdHRp
bmcgSUVDNjA5NTggbGluZWFyIFBDTSBhdWRpbywgdGhlc2UgcmVnaXN0ZXJzIGFsbG93Cj4gPiA+
ID4gdG8KPiA+ID4gPiArICogY29uZmlndXJlIHRoZSBjaGFubmVsIHN0YXR1cyBpbmZvcm1hdGlv
biBvZiBhbGwgdGhlIGNoYW5uZWwgc3RhdHVzCj4gPiA+ID4gKyAqIGJpdHMgaW4gdGhlIElFQzYw
OTU4IGZyYW1lLiBGb3IgdGhlIG1vbWVudCB0aGlzIGNvbmZpZ3VyYXRpb24gaXMKPiA+ID4gPiBv
bmx5Cj4gPiA+ID4gKyAqIHVzZWQgd2hlbiB0aGUgSTJTIGF1ZGlvIGludGVyZmFjZSwgR2VuZXJh
bCBQdXJwb3NlIEF1ZGlvIChHUEEpLAo+ID4gPiA+ICsgKiBvciBBSEIgYXVkaW8gRE1BIChBSEJB
VURETUEpIGludGVyZmFjZSBpcyBhY3RpdmUKPiA+ID4gPiArICogKGZvciBTL1BESUYgaW50ZXJm
YWNlIHRoaXMgaW5mb3JtYXRpb24gY29tZXMgZnJvbSB0aGUgc3RyZWFtKS4KPiA+ID4gPiArICov
Cj4gPiA+ID4gK3ZvaWQgZHdfaGRtaV9zZXRfY2hhbm5lbF9zdGF0dXMoc3RydWN0IGR3X2hkbWkg
KmhkbWksCj4gPiA+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgIHU4ICpjaGFubmVsX3N0
YXR1cykKPiA+ID4gPiArewo+ID4gPiA+ICsgICAvKgo+ID4gPiA+ICsgICAgKiBTZXQgY2hhbm5l
bCBzdGF0dXMgcmVnaXN0ZXIgZm9yIGZyZXF1ZW5jeSBhbmQgd29yZCBsZW5ndGguCj4gPiA+ID4g
KyAgICAqIFVzZSBkZWZhdWx0IHZhbHVlcyBmb3Igb3RoZXIgcmVnaXN0ZXJzLgo+ID4gPiA+ICsg
ICAgKi8KPiA+ID4gPiArICAgaGRtaV93cml0ZWIoaGRtaSwgY2hhbm5lbF9zdGF0dXNbM10sIEhE
TUlfRkNfQVVEU0NITkxTNyk7Cj4gPiA+ID4gKyAgIGhkbWlfd3JpdGViKGhkbWksIGNoYW5uZWxf
c3RhdHVzWzRdLCBIRE1JX0ZDX0FVRFNDSE5MUzgpOwo+ID4gPiA+ICt9Cj4gPiA+ID4gK0VYUE9S
VF9TWU1CT0xfR1BMKGR3X2hkbWlfc2V0X2NoYW5uZWxfc3RhdHVzKTsKPiA+ID4gPiArCj4gPiA+
ID4gCj4gPiA+ID4gIHN0YXRpYyB2b2lkIGhkbWlfc2V0X2Nsa19yZWdlbmVyYXRvcihzdHJ1Y3Qg
ZHdfaGRtaSAqaGRtaSwKPiA+ID4gPiAgCj4gPiA+ID4gICAgIHVuc2lnbmVkIGxvbmcgcGl4ZWxf
Y2xrLCB1bnNpZ25lZCBpbnQgc2FtcGxlX3JhdGUpCj4gPiA+ID4gIAo+ID4gPiA+ICB7Cj4gPiA+
ID4gCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMv
ZHctaGRtaS5oCj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vYnJpZGdlL3N5bm9wc3lzL2R3LWhk
bWkuaCBpbmRleAo+ID4gPiA+IDY5ODhmMTJkODlkOS4uZmNmZjUwNTlkYjI0IDEwMDY0NAo+ID4g
PiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc3lub3BzeXMvZHctaGRtaS5oCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zeW5vcHN5cy9kdy1oZG1pLmgKPiA+ID4g
PiBAQCAtMTU4LDYgKzE1OCw4IEBACj4gPiA+ID4gCj4gPiA+ID4gICNkZWZpbmUgSERNSV9GQ19T
UERERVZJQ0VJTkYgICAgICAgICAgICAgICAgICAgIDB4MTA2Mgo+ID4gPiA+ICAjZGVmaW5lIEhE
TUlfRkNfQVVEU0NPTkYgICAgICAgICAgICAgICAgICAgICAgICAweDEwNjMKPiA+ID4gPiAgI2Rl
ZmluZSBIRE1JX0ZDX0FVRFNTVEFUICAgICAgICAgICAgICAgICAgICAgICAgMHgxMDY0Cj4gPiA+
ID4gCj4gPiA+ID4gKyNkZWZpbmUgSERNSV9GQ19BVURTQ0hOTFM3ICAgICAgICAgICAgICAgICAg
ICAgIDB4MTA2ZQo+ID4gPiA+ICsjZGVmaW5lIEhETUlfRkNfQVVEU0NITkxTOCAgICAgICAgICAg
ICAgICAgICAgICAweDEwNmYKPiA+ID4gPiAKPiA+ID4gPiAgI2RlZmluZSBIRE1JX0ZDX0RBVEFD
SDBGSUxMICAgICAgICAgICAgICAgICAgICAgMHgxMDcwCj4gPiA+ID4gICNkZWZpbmUgSERNSV9G
Q19EQVRBQ0gxRklMTCAgICAgICAgICAgICAgICAgICAgIDB4MTA3MQo+ID4gPiA+ICAjZGVmaW5l
IEhETUlfRkNfREFUQUNIMkZJTEwgICAgICAgICAgICAgICAgICAgICAweDEwNzIKPiA+ID4gPiAK
PiA+ID4gPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaAo+ID4gPiA+
IGIvaW5jbHVkZS9kcm0vYnJpZGdlL2R3X2hkbWkuaAo+ID4gPiA+IGluZGV4IGNmNTI4YzI4OTg1
Ny4uNGIzZTg2M2M0ZjhhIDEwMDY0NAo+ID4gPiA+IC0tLSBhL2luY2x1ZGUvZHJtL2JyaWRnZS9k
d19oZG1pLmgKPiA+ID4gPiArKysgYi9pbmNsdWRlL2RybS9icmlkZ2UvZHdfaGRtaS5oCj4gPiA+
ID4gQEAgLTE1Niw2ICsxNTYsNyBAQCB2b2lkIGR3X2hkbWlfc2V0dXBfcnhfc2Vuc2Uoc3RydWN0
IGR3X2hkbWkgKmhkbWksCj4gPiA+ID4gYm9vbAo+ID4gPiA+IGhwZCwgYm9vbCByeF9zZW5zZSk7
Pgo+ID4gPiA+IAo+ID4gPiA+ICB2b2lkIGR3X2hkbWlfc2V0X3NhbXBsZV9yYXRlKHN0cnVjdCBk
d19oZG1pICpoZG1pLCB1bnNpZ25lZCBpbnQKPiA+ID4gPiAgcmF0ZSk7Cj4gPiA+ID4gIHZvaWQg
ZHdfaGRtaV9zZXRfY2hhbm5lbF9jb3VudChzdHJ1Y3QgZHdfaGRtaSAqaGRtaSwgdW5zaWduZWQg
aW50Cj4gPiA+ID4gIGNudCk7Cj4gPiA+ID4gCj4gPiA+ID4gK3ZvaWQgZHdfaGRtaV9zZXRfY2hh
bm5lbF9zdGF0dXMoc3RydWN0IGR3X2hkbWkgKmhkbWksIHU4Cj4gPiA+ID4gKmNoYW5uZWxfc3Rh
dHVzKTsKPiA+ID4gPiAKPiA+ID4gPiAgdm9pZCBkd19oZG1pX3NldF9jaGFubmVsX2FsbG9jYXRp
b24oc3RydWN0IGR3X2hkbWkgKmhkbWksIHVuc2lnbmVkCj4gPiA+ID4gIGludAo+ID4gPiA+ICBj
YSk7Cj4gPiA+ID4gIHZvaWQgZHdfaGRtaV9hdWRpb19lbmFibGUoc3RydWN0IGR3X2hkbWkgKmhk
bWkpOwo+ID4gPiA+ICB2b2lkIGR3X2hkbWlfYXVkaW9fZGlzYWJsZShzdHJ1Y3QgZHdfaGRtaSAq
aGRtaSk7Cj4gPiA+IAo+ID4gPiBMb29rcyBmaW5lIGZvciBtZToKPiA+ID4gUmV2aWV3ZWQtYnk6
IE5laWwgQXJtc3Ryb25nIDxuYXJtc3Ryb25nQGJheWxpYnJlLmNvbT4KPiA+ID4gCj4gPiA+IEpv
bmFzID8gSmVybmVqID8gUnVzc2VsbCA/Cj4gPiAKPiA+IFBhdGNoIGl0c2VsZiBpcyBmaW5lLCBJ
J20ganVzdCB3b25kZXJpbmcgaWYgbW9yZSBpbmZvcm1hdGlvbiBzaG91bGQgYmUKPiA+IGNvcGll
ZCBmcm9tIHN0YXR1cyBhcnJheSB0byByZWdpc3RlcnMuIEJ1dCBJIHRoaW5rIHRoZXkgYXJlIG5v
dCAxOjEKPiA+IG1hcHBpbmcgc28gc29tZQo+ID4gbW9yZSB3b3JrIHdvdWxkIGJlIG5lZWRlZC4g
QW55d2F5LCBwYXRjaCBpczoKPiBIaSBKZXJuZWosCj4gWWVzIHlvdSBhcmUgcmlnaHQuIEkgd2Fz
IHRoaW5raW5nIGFib3V0IHRoZSBzYW1lIHRoaW5nLgo+IEJ1dCB0aGVyZSBhcmUgYWxzbyBzb21l
IGZpZWxkcyBpbiB0aGUgSUVDNjA5NTggc3BlYyBub3QgbWFwcGVkIHRvIHRoZQo+IHJlZ2lzdGVy
cyBvbiBkdy1oZG1pLgo+IFNvIEkgZW5kZWQgdXAganVzdCB3cml0aW5nIHRoZSB0d28gcmVnaXN0
ZXJzIGluIHRoZSBvcmlnaW5hbCB5a2sncwo+IHBhdGNoLCBhbmQgaWdub3JpbmcgIm9yaWdpbmFs
IHNhbXBsaW5nIGZyZXF1ZW5jeSIgbGlrZSBwY21faWVjOTU4Lgo+IEl0IHR1cm5zIG91dCB0aGF0
IGF1ZGlvIHBsYXlzIGZpbmUgb24gbXkgTEcgbW9uaXRvci4gU28gSSBzdWdnZXN0IHdlCj4gY2Fu
IGtlZXAgdGhpcyBwYXRjaCBhcyBzaW1wbGUgYXMgaXQgaXMsIGFuZCBhZGQgbW9yZSByZWdpc3Rl
ciBzZXR0aW5nCj4gaWYgd2UgZmluZCBpc3N1ZS4KPiBUaGFua3MhCgpJIHRoaW5rIHRoYXQgZm9y
IHJlbGlhYmxlIGF1ZGlvIHBhc3N0aHJvdWdoIHN1cHBvcnQgdGhlc2UgcmVnaXN0ZXJzIHdpbGwg
aGF2ZSAKdG8gYmUgdXBkYXRlZCwgYnV0IGFzIEkgc2FpZCwgSSdtIGZpbmUgd2l0aCB0aGlzIHBh
dGNoIGFzLWlzLgoKQmVzdCByZWdhcmRzLApKZXJuZWoKCj4gCj4gPiBSZXZpZXdlZC1ieTogSmVy
bmVqIFNrcmFiZWMgPGplcm5lai5za3JhYmVjQHNpb2wubmV0Pgo+ID4gCj4gPiBCZXN0IHJlZ2Fy
ZHMsCj4gPiBKZXJuZWoKPiA+IAo+ID4gPiBJZiBpdCdzIG9rIGZvciB5b3UgSSdsbCBhcHBseSBp
dC4KPiA+ID4gCj4gPiA+IE5laWwKCgoKCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0t
a2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFp
bG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
