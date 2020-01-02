Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 05EAC12E8C8
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  2 Jan 2020 17:36:56 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ryyXnAuHY3x4PDCslkP8VrTbnuwhxdR1rrx0p29ML0g=; b=p5teawcQhmaX+W
	dN+Is6/6SZ+1IkOWN3kcun0U2yvzR127KrcaewTfO55t++ltpSBipZm54UY/GkVVF+WtM/kAjcfAM
	KrNkz1chYbkJQBzGEZv29ifqeoOuTi4R6+PeZOMn875tSn9KqoX14KCNGIos6+QXLwFqBjlM5WHHn
	yo/M+9ZZi9eryYAdbOZUC5tsOXAQeUEOdF6jYLJc/6bijIP73c5JA0WLO5bRuc9HfOMhpimTaeeRU
	wPsTCwtH2I9xvf/oPhOtYnDiiH8edk0KGG9rfyBs/Cd7ovbEYoUzbZRHl6R+DvvCSYeIsC4tqF8ry
	+kaGZViXh89H7GoOfuFQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1in3Su-0007AF-II; Thu, 02 Jan 2020 16:36:52 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1in3Sk-00079n-SY
 for linux-arm-kernel@lists.infradead.org; Thu, 02 Jan 2020 16:36:44 +0000
Received: by mail-ed1-x544.google.com with SMTP id l8so39581084edw.1
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 02 Jan 2020 08:36:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=globallogic.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=eHGrpF5r5X0Jxgz+QRMxzVI+2gznTMrz/RrPo1FYHwY=;
 b=j/vKUvhdn5XJ70A8irM+VowUtg3lci4TfgSpdnbPdGeqIG+VbVhown3ELyQUEVfqvl
 nGz277Az/xc6Dd5udcl25DKNAtCoSU28DW04Och07dVa7uTp8symwuh+WKRHoyYccmDB
 on6Z0FfMij7uYp1vWe9mmYDIDAC11PtQA8ruuXs8lGn3ts1mmQdwISZ/F0pf55XsItxV
 3XHM3kAxSOhDMJ1M6OIooaBIWpw9o+7rtWHXVPPa8zwwbXdbFiPArrxZdadfWgkzIhx5
 pB2hXHiy8ZBh+LQ0/PPoSyzi/zxnlD52Rc/YiuOprgtcSVUs41cCpzng2PmtmzNNY2Pn
 aigw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=eHGrpF5r5X0Jxgz+QRMxzVI+2gznTMrz/RrPo1FYHwY=;
 b=eGZAEV6jHn+aiSM8cFjME5tOAOvG4kXI21RbW5Jifq687sXuzkLjbq0FhG1aS7T+CV
 p6srWVnXkPP0EQ09zRDHGLFhWFB0vPfgtGvVbFxgwSs2LvXEUKUSMTA7H8qONJhPqeIR
 7DxfTGM8Xo1O3vIKstv5qYRaXvlSj+rEpNDkrJb+Qtdc00smn+ZU8fN+o/h7QMhl7HZv
 tsuUwUxyZaya4l2I7tmOvELXsu2so4uopmjjv1mUTdr9cmjLugAlcJ6vVRncUN1Dka/z
 LpYRiA1uHmugZ/bUWAEGPx18zWcGwFS1GuBOebURwA/i/9D9BD1+4gN1DCLdypXv6n+w
 Okog==
X-Gm-Message-State: APjAAAVioE9FS0xRopLVxX0tMjaGf5vlYS1rRPcgf2xYsOcVm5TtzPOd
 4Gz/v2NtNwqUxbYpln7DeEWHVGzgJn9cuRPGy93slA==
X-Google-Smtp-Source: APXvYqyq/HLt8Y/l1d0gQ3r9ZA4FlgrukTV32rofiXVRw0xjeZdmo/udny3w7kdTXl4ToNDdW9vKVj0jm/EBkvx3G5g=
X-Received: by 2002:a17:906:ff01:: with SMTP id
 zn1mr88611764ejb.323.1577983000391; 
 Thu, 02 Jan 2020 08:36:40 -0800 (PST)
MIME-Version: 1.0
References: <20200101204750.50541-1-roman.stratiienko@globallogic.com>
 <20200101204750.50541-2-roman.stratiienko@globallogic.com>
 <2989265.aV6nBDHxoP@jernej-laptop>
In-Reply-To: <2989265.aV6nBDHxoP@jernej-laptop>
From: Roman Stratiienko <roman.stratiienko@globallogic.com>
Date: Thu, 2 Jan 2020 18:36:29 +0200
Message-ID: <CAODwZ7t3JB+KMqxpFdVE11zHvLh+OrT8MrhAZ7-kFOZDjae92w@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] drm/sun4i: Use CRTC size instead of PRIMARY plane
 size as mixer frame.
To: =?UTF-8?Q?Jernej_=C5=A0krabec?= <jernej.skrabec@siol.net>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200102_083642_926486_15EA0E46 
X-CRM114-Status: GOOD (  21.65  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-arm-kernel@lists.infradead.org, dri-devel@lists.freedesktop.org,
 Maxime Ripard <mripard@kernel.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

0YfRgiwgMiDRj9C90LIuIDIwMjAg0LMuLCAwOTo0MiBKZXJuZWogxaBrcmFiZWMgPGplcm5lai5z
a3JhYmVjQHNpb2wubmV0PjoKPgo+IEhpIQo+Cj4gRG5lIHNyZWRhLCAwMS4gamFudWFyIDIwMjAg
b2IgMjE6NDc6NTAgQ0VUIGplCj4gcm9tYW4uc3RyYXRpaWVua29AZ2xvYmFsbG9naWMuY29tIG5h
cGlzYWwoYSk6Cj4gPiBGcm9tOiBSb21hbiBTdHJhdGlpZW5rbyA8cm9tYW4uc3RyYXRpaWVua29A
Z2xvYmFsbG9naWMuY29tPgo+ID4KPiA+IEFjY29yZGluZyB0byBEUk0gZG9jdW1lbnRhdGlvbiB0
aGUgb25seSBkaWZmZXJlbmNlIGJldHdlZW4gUFJJTUFSWQo+ID4gYW5kIE9WRVJMQVkgcGxhbmUg
aXMgdGhhdCBlYWNoIENSVEMgbXVzdCBoYXZlIFBSSU1BUlkgcGxhbmUgYW5kCj4gPiBPVkVSTEFZ
IGFyZSBvcHRpb25hbC4KPiA+Cj4gPiBBbGxvdyBQUklNQVJZIHBsYW5lIHRvIGhhdmUgZGltZW5z
aW9uIGRpZmZlcmVudCBmcm9tIGZ1bGwtc2NyZWVuLgo+ID4KPiA+IEZpeGVzOiA1YmI1ZjVkYWZh
MWEgKCJkcm0vc3VuNGk6IFJlb3JnYW5pemUgVUkgbGF5ZXIgY29kZSBpbiBERTIiKQo+ID4gU2ln
bmVkLW9mZi1ieTogUm9tYW4gU3RyYXRpaWVua28gPHJvbWFuLnN0cmF0aWllbmtvQGdsb2JhbGxv
Z2ljLmNvbT4KPgo+IFRoaXMgbG9va3MgZ3JlYXQgbm93Lgo+Cj4gUmV2aWV3ZWQtYnk6IEplcm5l
aiBTa3JhYmVjIDxqZXJuZWouc2tyYWJlY0BzaW9sLm5ldD4KPgo+IFdoYXQgaGFwcGVuZWQgdG8g
b3RoZXIgcGF0Y2hlcyBpbiB0aGUgc2VyaWVzPyBJdCB3b3VsZCBiZSBuaWNlIHRvIGhhdmUgYSBj
b3Zlcgo+IGxldHRlciBmb3Igc3VjaCBjYXNlcywgd2hlcmUgeW91IGNhbiBleHBsYWluIHJlYXNv
bnMgZm9yIGRyb3BwZWQgcGF0Y2hlcy4KPgo+Cj4KPgoKVGhhbmtzIGFuZCBzb3JyeSBmb3IgYW55
IG1pc3Rha2VzIGluIHByb2NlZHVyZSwgSSdsbCB0cnkgdG8gZm9sbG93IHRoZQpydWxlcyBpbiB0
aGUgZnV0dXJlLi4KU29tZSBvZiBjb21taXRzIHJlcXVpcmVzIG1vcmUgdGltZSB0byB0ZXN0L2Rl
bGl2ZXIgdGhhbiBvdGhlcnMuICBTbwpzcGxpdHRpbmcgaXQgaW50byBzbWFsbGVyIGNodW5rcyBo
ZWxwcyB0byBkZWxpdmVyIHRoZW0gZWFybGllci4KCj4KPiBCZXN0IHJlZ2FyZHMsCj4gSmVybmVq
Cj4KPiA+IC0tLQo+ID4gdjI6Cj4gPiAtIFNwbGl0IGNvbW1pdCBpbiAyIHBhcnRzCj4gPiAtIEFk
ZCBGaXhlcyBsaW5lIHRvIHRoZSBjb21taXQgbWVzc2FnZQo+ID4KPiA+IHYzOgo+ID4gLSBBZGRy
ZXNzIHJldmlldyBjb21tZW50cyBvZiB2MiArIHJlbW92ZWQgMyBsb2NhbCB2YXJpYmxlcwo+ID4g
LSBDaGFuZ2UgJ0ZpeGVzJyBsaW5lCj4gPgo+ID4gU2luY2UgSSd2ZSBwdXQgbW9yZSBjaGFuZ2Vz
IGZyb20gbXkgc2lkZSwgcGxlYXNlIHJldmlldy9zaWduIGFnYWluLgo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMgICAgfCAyOCArKysrKysrKysrKysrKysr
KysrKysrKysKPiA+ICBkcml2ZXJzL2dwdS9kcm0vc3VuNGkvc3VuOGlfdWlfbGF5ZXIuYyB8IDMw
IC0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCj4gPiAgMiBmaWxlcyBjaGFuZ2VkLCAyOCBpbnNl
cnRpb25zKCspLCAzMCBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9n
cHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjhpX21peGVyLmMgaW5kZXggOGI4MDNlYjkwM2I4Li42NThjZjQ0MmMxMjEKPiA+IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX21peGVyLmMKPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV9taXhlci5jCj4gPiBAQCAtMjU3LDYgKzI1NywzMyBA
QCBjb25zdCBzdHJ1Y3QgZGUyX2ZtdF9pbmZvICpzdW44aV9taXhlcl9mb3JtYXRfaW5mbyh1MzIK
PiA+IGZvcm1hdCkgcmV0dXJuIE5VTEw7Cj4gPiAgfQo+ID4KPiA+ICtzdGF0aWMgdm9pZCBzdW44
aV9tb2RlX3NldChzdHJ1Y3Qgc3VueGlfZW5naW5lICplbmdpbmUsCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgc3RydWN0IGRybV9kaXNwbGF5X21vZGUgKm1vZGUpCj4gPiArewo+ID4gKyAg
ICAgdTMyIHNpemUgPSBTVU44SV9NSVhFUl9TSVpFKG1vZGUtPmNydGNfaGRpc3BsYXksIG1vZGUt
Cj4gPmNydGNfdmRpc3BsYXkpOwo+ID4gKyAgICAgc3RydWN0IHN1bjhpX21peGVyICptaXhlciA9
IGVuZ2luZV90b19zdW44aV9taXhlcihlbmdpbmUpOwo+ID4gKyAgICAgdTMyIGJsZF9iYXNlID0g
c3VuOGlfYmxlbmRlcl9iYXNlKG1peGVyKTsKPiA+ICsgICAgIHUzMiB2YWw7Cj4gPiArCj4gPiAr
ICAgICBEUk1fREVCVUdfRFJJVkVSKCJNb2RlIGNoYW5nZSwgdXBkYXRpbmcgZ2xvYmFsIHNpemUg
VzogJXUgSDogJXVcbiIsCj4gPiArICAgICAgICAgICAgICAgICAgICAgIG1vZGUtPmNydGNfaGRp
c3BsYXksIG1vZGUtPmNydGNfdmRpc3BsYXkpOwo+ID4gKyAgICAgcmVnbWFwX3dyaXRlKG1peGVy
LT5lbmdpbmUucmVncywgU1VOOElfTUlYRVJfR0xPQkFMX1NJWkUsIHNpemUpOwo+ID4gKyAgICAg
cmVnbWFwX3dyaXRlKG1peGVyLT5lbmdpbmUucmVncywKPiA+ICsgICAgICAgICAgICAgICAgICBT
VU44SV9NSVhFUl9CTEVORF9PVVRTSVpFKGJsZF9iYXNlKSwgc2l6ZSk7Cj4gPiArCj4gPiArICAg
ICBpZiAobW9kZS0+ZmxhZ3MgJiBEUk1fTU9ERV9GTEFHX0lOVEVSTEFDRSkKPiA+ICsgICAgICAg
ICAgICAgdmFsID0gU1VOOElfTUlYRVJfQkxFTkRfT1VUQ1RMX0lOVEVSTEFDRUQ7Cj4gPiArICAg
ICBlbHNlCj4gPiArICAgICAgICAgICAgIHZhbCA9IDA7Cj4gPiArCj4gPiArICAgICByZWdtYXBf
dXBkYXRlX2JpdHMobWl4ZXItPmVuZ2luZS5yZWdzLAo+ID4gKyAgICAgICAgICAgICAgICAgICAg
ICAgIFNVTjhJX01JWEVSX0JMRU5EX09VVENUTChibGRfYmFzZSksCj4gPiArICAgICAgICAgICAg
ICAgICAgICAgICAgU1VOOElfTUlYRVJfQkxFTkRfT1VUQ1RMX0lOVEVSTEFDRUQsCj4gPiArICAg
ICAgICAgICAgICAgICAgICAgICAgdmFsKTsKPiA+ICsgICAgIERSTV9ERUJVR19EUklWRVIoIlN3
aXRjaGluZyBkaXNwbGF5IG1peGVyIGludGVybGFjZWQgbW9kZSAlc1xuIiwKPiA+ICsgICAgICAg
ICAgICAgICAgICAgICAgdmFsID8gIm9uIiA6ICJvZmYiKTsKPiA+ICt9Cj4gPiArCj4gPiAgc3Rh
dGljIHZvaWQgc3VuOGlfbWl4ZXJfY29tbWl0KHN0cnVjdCBzdW54aV9lbmdpbmUgKmVuZ2luZSkK
PiA+ICB7Cj4gPiAgICAgICBEUk1fREVCVUdfRFJJVkVSKCJDb21taXR0aW5nIGNoYW5nZXNcbiIp
Owo+ID4gQEAgLTMxMCw2ICszMzcsNyBAQCBzdGF0aWMgc3RydWN0IGRybV9wbGFuZSAqKnN1bjhp
X2xheWVyc19pbml0KHN0cnVjdAo+ID4gZHJtX2RldmljZSAqZHJtLCBzdGF0aWMgY29uc3Qgc3Ry
dWN0IHN1bnhpX2VuZ2luZV9vcHMgc3VuOGlfZW5naW5lX29wcyA9IHsKPiA+ICAgICAgIC5jb21t
aXQgICAgICAgICA9IHN1bjhpX21peGVyX2NvbW1pdCwKPiA+ICAgICAgIC5sYXllcnNfaW5pdCAg
ICA9IHN1bjhpX2xheWVyc19pbml0LAo+ID4gKyAgICAgLm1vZGVfc2V0ICAgICAgID0gc3VuOGlf
bW9kZV9zZXQsCj4gPiAgfTsKPiA+Cj4gPiAgc3RhdGljIHN0cnVjdCByZWdtYXBfY29uZmlnIHN1
bjhpX21peGVyX3JlZ21hcF9jb25maWcgPSB7Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUv
ZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMKPiA+IGIvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1
bjhpX3VpX2xheWVyLmMgaW5kZXggNDM0M2VhOWY4Y2Y4Li5mMDFhYzU1MTkxZjEKPiA+IDEwMDY0
NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3N1bjRpL3N1bjhpX3VpX2xheWVyLmMKPiA+ICsr
KyBiL2RyaXZlcnMvZ3B1L2RybS9zdW40aS9zdW44aV91aV9sYXllci5jCj4gPiBAQCAtMTIwLDM2
ICsxMjAsNiBAQCBzdGF0aWMgaW50IHN1bjhpX3VpX2xheWVyX3VwZGF0ZV9jb29yZChzdHJ1Y3QK
PiA+IHN1bjhpX21peGVyICptaXhlciwgaW50IGNoYW5uZWwsIGluc2l6ZSA9IFNVTjhJX01JWEVS
X1NJWkUoc3JjX3csIHNyY19oKTsKPiA+ICAgICAgIG91dHNpemUgPSBTVU44SV9NSVhFUl9TSVpF
KGRzdF93LCBkc3RfaCk7Cj4gPgo+ID4gLSAgICAgaWYgKHBsYW5lLT50eXBlID09IERSTV9QTEFO
RV9UWVBFX1BSSU1BUlkpIHsKPiA+IC0gICAgICAgICAgICAgYm9vbCBpbnRlcmxhY2VkID0gZmFs
c2U7Cj4gPiAtICAgICAgICAgICAgIHUzMiB2YWw7Cj4gPiAtCj4gPiAtICAgICAgICAgICAgIERS
TV9ERUJVR19EUklWRVIoIlByaW1hcnkgbGF5ZXIsIHVwZGF0aW5nIGdsb2JhbCBzaXplCj4gVzog
JXUgSDogJXVcbiIsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgZHN0X3csIGRz
dF9oKTsKPiA+IC0gICAgICAgICAgICAgcmVnbWFwX3dyaXRlKG1peGVyLT5lbmdpbmUucmVncywK
PiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgIFNVTjhJX01JWEVSX0dMT0JBTF9TSVpFLAo+
ID4gLSAgICAgICAgICAgICAgICAgICAgICAgICAgb3V0c2l6ZSk7Cj4gPiAtICAgICAgICAgICAg
IHJlZ21hcF93cml0ZShtaXhlci0+ZW5naW5lLnJlZ3MsCj4gPiAtICAgICAgICAgICAgICAgICAg
ICAgICAgICBTVU44SV9NSVhFUl9CTEVORF9PVVRTSVpFKGJsZF9iYXNlKSwKPiBvdXRzaXplKTsK
PiA+IC0KPiA+IC0gICAgICAgICAgICAgaWYgKHN0YXRlLT5jcnRjKQo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgIGludGVybGFjZWQgPSBzdGF0ZS0+Y3J0Yy0+c3RhdGUtCj4gPmFkanVzdGVkX21v
ZGUuZmxhZ3MKPiA+IC0gICAgICAgICAgICAgICAgICAgICAgICAgICAgICYgRFJNX01PREVfRkxB
R19JTlRFUkxBQ0U7Cj4gPiAtCj4gPiAtICAgICAgICAgICAgIGlmIChpbnRlcmxhY2VkKQo+ID4g
LSAgICAgICAgICAgICAgICAgICAgIHZhbCA9IFNVTjhJX01JWEVSX0JMRU5EX09VVENUTF9JTlRF
UkxBQ0VEOwo+ID4gLSAgICAgICAgICAgICBlbHNlCj4gPiAtICAgICAgICAgICAgICAgICAgICAg
dmFsID0gMDsKPiA+IC0KPiA+IC0gICAgICAgICAgICAgcmVnbWFwX3VwZGF0ZV9iaXRzKG1peGVy
LT5lbmdpbmUucmVncywKPiA+IC0KPiBTVU44SV9NSVhFUl9CTEVORF9PVVRDVEwoYmxkX2Jhc2Up
LAo+ID4gLQo+IFNVTjhJX01JWEVSX0JMRU5EX09VVENUTF9JTlRFUkxBQ0VELAo+ID4gLSAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgdmFsKTsKPiA+IC0KPiA+IC0gICAgICAgICAgICAg
RFJNX0RFQlVHX0RSSVZFUigiU3dpdGNoaW5nIGRpc3BsYXkgbWl4ZXIgaW50ZXJsYWNlZAo+IG1v
ZGUgJXNcbiIsCj4gPiAtICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgaW50ZXJsYWNlZCA/
ICJvbiIgOiAib2ZmIik7Cj4gPiAtICAgICB9Cj4gPiAtCj4gPiAgICAgICAvKiBTZXQgaGVpZ2h0
IGFuZCB3aWR0aCAqLwo+ID4gICAgICAgRFJNX0RFQlVHX0RSSVZFUigiTGF5ZXIgc291cmNlIG9m
ZnNldCBYOiAlZCBZOiAlZFxuIiwKPiA+ICAgICAgICAgICAgICAgICAgICAgICAgc3RhdGUtPnNy
Yy54MSA+PiAxNiwgc3RhdGUtPnNyYy55MSA+PiAxNik7Cj4KPgo+Cj4KCl9fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGlu
ZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMu
aW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
