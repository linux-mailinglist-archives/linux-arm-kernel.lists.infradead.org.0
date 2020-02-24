Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D235A16B107
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Feb 2020 21:38:12 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0ZXwp8/fqlq/YtrDGfA4WbFBFS9uU8E4g/fENB3vulU=; b=iBOB/qVJk76veR
	6v7k6et5wBv1cPbUvw4hwutVpAHk4v8hElAJmRWYq4KtbUeFvlJC5LPohhPIEYRl8LorPn6QgguNR
	wBSM/BY/h/F/IPfy12GLf6GMSHAZCbzFgBbubNasgUS0CLPy+QdBLdcK0s1Fa9t9A31MhrQ/ptel7
	qO9jVMcm3CsLn5mHy4ctzmIjJQGCH3PQZ2V7AEXd43lKnQsAF3L2LuDlFIXSWGqTYfkym2kpSH8Du
	oxKcwk96ieqy7Gc2a5HIOxMu259ja5nzmBQm+2jhITyF/g8/Zyf9Jp4BlEU84gc4CsfTFLs7iFjlw
	rxiLNy4JNL1sZvZQn6jw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6KUT-0005WI-Hj; Mon, 24 Feb 2020 20:38:09 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6KUK-0005VR-9c
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Feb 2020 20:38:02 +0000
Received: by mail-ot1-x343.google.com with SMTP id g64so9949363otb.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 24 Feb 2020 12:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ffwll.ch; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=OSGfReulS4+Bw2VYTkoxHFdUTjzGTxKnlfFvbA85ceI=;
 b=epUGqJ3b7pZ6HB36VJwV3zmmeid+UTyimQBQA5F2muCV/AwP1m6OcxxbkSKzCTSjoL
 Kal9eedlfE9CGaKq6su+iOlY2e1BCT5JMXzOPALgDa7dteuW4ceqRAuzK7s3guDUldsN
 FPHo6p5bqJkZVqLNRCBIOPOzy0LxptNFjHoDQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=OSGfReulS4+Bw2VYTkoxHFdUTjzGTxKnlfFvbA85ceI=;
 b=O5JKmd6JqtFxv/aqq5H443sHGl/tNby9bACp7XncBr86Ljzq9e6MhI1uQRHxvFlxvV
 fBhitE9CWlSw/tsbG2QzskwEOXj+/BTPFvKINtggUpoeAG9Jj6EYVe23/zxHlS+o3l5o
 BK7saJPtFl7VqeTGBIcRvZSJp/Qzg+Ee3cIhhEFlosNcNf5K+yV838qf+iNNXBKv7SoK
 MDP8xH4pU0yGImthUt6ym4XNwOntHkc4qamIRRKTAd2SNJX6YPaC7Q1fOQf1AacAyXN9
 7yN6nF9G+IsSug1/Jtazek7oDNOTymYNOlfSHKWQMasdUWYma5yLQ7uR9tLPGeZHJBPR
 yU/g==
X-Gm-Message-State: APjAAAU7JNnwnq3wMl6a0Fm8sZal8HBUiObnJH5zuvZ1r+OfnYuWTpOs
 fAEVlvHE/3enrlNsw2v7F93uJ7ttCr+Oem+j9w8Gqa21
X-Google-Smtp-Source: APXvYqxLScAzgMhpe7t7qdM+yAKxKNMK8fWmZ/Tcb72urXjBdGyxkB/huKT3+n8VmMxY+TRaUh72qaPNcUgVmaqK4v4=
X-Received: by 2002:a05:6830:18f1:: with SMTP id
 d17mr41080515otf.303.1582576677686; 
 Mon, 24 Feb 2020 12:37:57 -0800 (PST)
MIME-Version: 1.0
References: <20200221210319.2245170-1-daniel.vetter@ffwll.ch>
 <20200221210319.2245170-38-daniel.vetter@ffwll.ch>
 <CAOau3s8hWzD6xc6grZJr+yjtXuW1g=E_8tPigOUk-cJEQ8-JfQ@mail.gmail.com>
In-Reply-To: <CAOau3s8hWzD6xc6grZJr+yjtXuW1g=E_8tPigOUk-cJEQ8-JfQ@mail.gmail.com>
From: Daniel Vetter <daniel.vetter@ffwll.ch>
Date: Mon, 24 Feb 2020 21:37:45 +0100
Message-ID: <CAKMK7uE_kkfcWciSY8V-kjRD=GYwOrJy0w8OYHXx1u+Ytx2CPA@mail.gmail.com>
Subject: Re: [PATCH 37/51] drm/rockchip: Drop explicit drm_mode_config_cleanup
 call
To: Francesco Lavra <francescolavra.fl@gmail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200224_123800_396332_FD7210B2 
X-CRM114-Status: GOOD (  22.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>,
 Intel Graphics Development <intel-gfx@lists.freedesktop.org>,
 Sandy Huang <hjc@rock-chips.com>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel.vetter@intel.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gTW9uLCBGZWIgMjQsIDIwMjAgYXQgODoxMyBQTSBGcmFuY2VzY28gTGF2cmEKPGZyYW5jZXNj
b2xhdnJhLmZsQGdtYWlsLmNvbT4gd3JvdGU6Cj4KPiBPbiBGcmksIEZlYiAyMSwgMjAyMCBhdCAx
MDowNCBQTSBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGZmd2xsLmNoPiB3cm90ZToKPiA+
Cj4gPiBJdCdzIChhbG1vc3QsIHRoZXJlJ3Mgc29tZSBpb21tdSBzdHVmZiB3aXRob3V0IHNpZ25p
ZmljYW5jZSkgcmlnaHQKPiA+IGFib3ZlIHRoZSBkcm1fZGV2X3B1dCgpLgo+ID4KPiA+IFRoaXMg
aXMgbWFkZSBwb3NzaWJsZSBieSBhIHByZWNlZWRpbmcgcGF0Y2ggd2hpY2ggYWRkZWQgYSBkcm1t
Xwo+ID4gY2xlYW51cCBhY3Rpb24gdG8gZHJtX21vZGVfY29uZmlnX2luaXQoKSwgaGVuY2UgYWxs
IHdlIG5lZWQgdG8gZG8gdG8KPiA+IGVuc3VyZSB0aGF0IGRybV9tb2RlX2NvbmZpZ19jbGVhbnVw
KCkgaXMgcnVuIG9uIGZpbmFsIGRybV9kZXZpY2UKPiA+IGNsZWFudXAgaXMgY2hlY2sgdGhlIG5l
dyBlcnJvciBjb2RlIGZvciBfaW5pdCgpLgo+ID4KPiA+IEFzaWRlOiBBbm90aGVyIGRyaXZlciB3
aXRoIGEgYml0IG11Y2ggZGV2bV9remFsbG9jLCB3aGljaCBzaG91bGQKPiA+IHByb2JhYmx5IHVz
ZSBkcm1tX2t6YWxsb2MgaW5zdGVhZCAuLi4KPiA+Cj4gPiB2MjogRXhwbGFpbiB3aHkgdGhpcyBj
bGVhbnVwIGlzIHBvc3NpYmxlIChMYXVyZW50KS4KPiA+Cj4gPiBDYzogTGF1cmVudCBQaW5jaGFy
dCA8bGF1cmVudC5waW5jaGFydEBpZGVhc29uYm9hcmQuY29tPgo+ID4gU2lnbmVkLW9mZi1ieTog
RGFuaWVsIFZldHRlciA8ZGFuaWVsLnZldHRlckBpbnRlbC5jb20+Cj4gPiBDYzogU2FuZHkgSHVh
bmcgPGhqY0Byb2NrLWNoaXBzLmNvbT4KPiA+IENjOiAiSGVpa28gU3TDvGJuZXIiIDxoZWlrb0Bz
bnRlY2guZGU+Cj4gPiBDYzogbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCj4g
PiBDYzogbGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+ID4gLS0tCj4gPiAgZHJp
dmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYyB8IDEwICsrKy0tLS0tLS0K
PiA+ICAxIGZpbGUgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCA3IGRlbGV0aW9ucygtKQo+ID4K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Ry
di5jIGIvZHJpdmVycy9ncHUvZHJtL3JvY2tjaGlwL3JvY2tjaGlwX2RybV9kcnYuYwo+ID4gaW5k
ZXggMjBlY2IxNTA4YTIyLi5kMGViYTIxZWViYzkgMTAwNjQ0Cj4gPiAtLS0gYS9kcml2ZXJzL2dw
dS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vcm9ja2NoaXAvcm9ja2NoaXBfZHJtX2Rydi5jCj4gPiBAQCAtMTM1LDcgKzEzNSw5IEBAIHN0
YXRpYyBpbnQgcm9ja2NoaXBfZHJtX2JpbmQoc3RydWN0IGRldmljZSAqZGV2KQo+ID4gICAgICAg
ICBpZiAocmV0KQo+ID4gICAgICAgICAgICAgICAgIGdvdG8gZXJyX2ZyZWU7Cj4gPgo+ID4gLSAg
ICAgICBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+ICsgICAgICAgcmV0ID0gZHJt
X21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gPiArICAgICAgIGlmIChyZXQpCj4gPiArICAg
ICAgICAgICAgICAgZ290byBlcnJfZnJlZTsKPgo+IFNob3VsZG4ndCB0aGUgZ290byBsYWJlbCBi
ZSBlcnJfbW9kZV9jb25maWdfY2xlYW51cCBoZXJlPyBPdGhlcndpc2UKPiB0aGlzIGVycm9yIHBh
dGggbWlzc2VzIHRoZSBjYWxsIHRvIHJvY2tjaGlwX2lvbW11X2NsZWFudXAoKS4KCkluZGVlZC4g
SSdsbCBhbHNvIHJlbmFtZSB0aGUgbGFiZWwgdG8gaGF2ZSBhIG1vcmUgbWVhbmluZ2Z1bCBuYW1l
IHdoaWxlIGF0IGl0LgotRGFuaWVsCgo+Cj4gPgo+ID4gICAgICAgICByb2NrY2hpcF9kcm1fbW9k
ZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+Cj4gPiBAQCAtMTc0LDExICsxNzYsOCBAQCBzdGF0
aWMgaW50IHJvY2tjaGlwX2RybV9iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+ICBlcnJfdW5i
aW5kX2FsbDoKPiA+ICAgICAgICAgY29tcG9uZW50X3VuYmluZF9hbGwoZGV2LCBkcm1fZGV2KTsK
PiA+ICBlcnJfbW9kZV9jb25maWdfY2xlYW51cDoKPiA+IC0gICAgICAgZHJtX21vZGVfY29uZmln
X2NsZWFudXAoZHJtX2Rldik7Cj4gPiAgICAgICAgIHJvY2tjaGlwX2lvbW11X2NsZWFudXAoZHJt
X2Rldik7Cj4gPiAgZXJyX2ZyZWU6Cj4gPiAtICAgICAgIGRybV9kZXYtPmRldl9wcml2YXRlID0g
TlVMTDsKPiA+IC0gICAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgTlVMTCk7Cj4gPiAgICAgICAg
IGRybV9kZXZfcHV0KGRybV9kZXYpOwo+ID4gICAgICAgICByZXR1cm4gcmV0Owo+ID4gIH0KPgo+
IE9uIEZyaSwgRmViIDIxLCAyMDIwIGF0IDEwOjA0IFBNIERhbmllbCBWZXR0ZXIgPGRhbmllbC52
ZXR0ZXJAZmZ3bGwuY2g+IHdyb3RlOgo+ID4KPiA+IEl0J3MgKGFsbW9zdCwgdGhlcmUncyBzb21l
IGlvbW11IHN0dWZmIHdpdGhvdXQgc2lnbmlmaWNhbmNlKSByaWdodAo+ID4gYWJvdmUgdGhlIGRy
bV9kZXZfcHV0KCkuCj4gPgo+ID4gVGhpcyBpcyBtYWRlIHBvc3NpYmxlIGJ5IGEgcHJlY2VlZGlu
ZyBwYXRjaCB3aGljaCBhZGRlZCBhIGRybW1fCj4gPiBjbGVhbnVwIGFjdGlvbiB0byBkcm1fbW9k
ZV9jb25maWdfaW5pdCgpLCBoZW5jZSBhbGwgd2UgbmVlZCB0byBkbyB0bwo+ID4gZW5zdXJlIHRo
YXQgZHJtX21vZGVfY29uZmlnX2NsZWFudXAoKSBpcyBydW4gb24gZmluYWwgZHJtX2RldmljZQo+
ID4gY2xlYW51cCBpcyBjaGVjayB0aGUgbmV3IGVycm9yIGNvZGUgZm9yIF9pbml0KCkuCj4gPgo+
ID4gQXNpZGU6IEFub3RoZXIgZHJpdmVyIHdpdGggYSBiaXQgbXVjaCBkZXZtX2t6YWxsb2MsIHdo
aWNoIHNob3VsZAo+ID4gcHJvYmFibHkgdXNlIGRybW1fa3phbGxvYyBpbnN0ZWFkIC4uLgo+ID4K
PiA+IHYyOiBFeHBsYWluIHdoeSB0aGlzIGNsZWFudXAgaXMgcG9zc2libGUgKExhdXJlbnQpLgo+
ID4KPiA+IENjOiBMYXVyZW50IFBpbmNoYXJ0IDxsYXVyZW50LnBpbmNoYXJ0QGlkZWFzb25ib2Fy
ZC5jb20+Cj4gPiBTaWduZWQtb2ZmLWJ5OiBEYW5pZWwgVmV0dGVyIDxkYW5pZWwudmV0dGVyQGlu
dGVsLmNvbT4KPiA+IENjOiBTYW5keSBIdWFuZyA8aGpjQHJvY2stY2hpcHMuY29tPgo+ID4gQ2M6
ICJIZWlrbyBTdMO8Ym5lciIgPGhlaWtvQHNudGVjaC5kZT4KPiA+IENjOiBsaW51eC1hcm0ta2Vy
bmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKPiA+IENjOiBsaW51eC1yb2NrY2hpcEBsaXN0cy5pbmZy
YWRlYWQub3JnCj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAvcm9ja2NoaXBf
ZHJtX2Rydi5jIHwgMTAgKysrLS0tLS0tLQo+ID4gIDEgZmlsZSBjaGFuZ2VkLCAzIGluc2VydGlv
bnMoKyksIDcgZGVsZXRpb25zKC0pCj4gPgo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2Ry
bS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMgYi9kcml2ZXJzL2dwdS9kcm0vcm9ja2NoaXAv
cm9ja2NoaXBfZHJtX2Rydi5jCj4gPiBpbmRleCAyMGVjYjE1MDhhMjIuLmQwZWJhMjFlZWJjOSAx
MDA2NDQKPiA+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2
LmMKPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9yb2NrY2hpcC9yb2NrY2hpcF9kcm1fZHJ2LmMK
PiA+IEBAIC0xMzUsNyArMTM1LDkgQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiAgICAgICAgIGlmIChyZXQpCj4gPiAgICAgICAgICAgICAgICAg
Z290byBlcnJfZnJlZTsKPiA+Cj4gPiAtICAgICAgIGRybV9tb2RlX2NvbmZpZ19pbml0KGRybV9k
ZXYpOwo+ID4gKyAgICAgICByZXQgPSBkcm1fbW9kZV9jb25maWdfaW5pdChkcm1fZGV2KTsKPiA+
ICsgICAgICAgaWYgKHJldCkKPiA+ICsgICAgICAgICAgICAgICBnb3RvIGVycl9mcmVlOwo+ID4K
PiA+ICAgICAgICAgcm9ja2NoaXBfZHJtX21vZGVfY29uZmlnX2luaXQoZHJtX2Rldik7Cj4gPgo+
ID4gQEAgLTE3NCwxMSArMTc2LDggQEAgc3RhdGljIGludCByb2NrY2hpcF9kcm1fYmluZChzdHJ1
Y3QgZGV2aWNlICpkZXYpCj4gPiAgZXJyX3VuYmluZF9hbGw6Cj4gPiAgICAgICAgIGNvbXBvbmVu
dF91bmJpbmRfYWxsKGRldiwgZHJtX2Rldik7Cj4gPiAgZXJyX21vZGVfY29uZmlnX2NsZWFudXA6
Cj4gPiAtICAgICAgIGRybV9tb2RlX2NvbmZpZ19jbGVhbnVwKGRybV9kZXYpOwo+ID4gICAgICAg
ICByb2NrY2hpcF9pb21tdV9jbGVhbnVwKGRybV9kZXYpOwo+ID4gIGVycl9mcmVlOgo+ID4gLSAg
ICAgICBkcm1fZGV2LT5kZXZfcHJpdmF0ZSA9IE5VTEw7Cj4gPiAtICAgICAgIGRldl9zZXRfZHJ2
ZGF0YShkZXYsIE5VTEwpOwo+ID4gICAgICAgICBkcm1fZGV2X3B1dChkcm1fZGV2KTsKPiA+ICAg
ICAgICAgcmV0dXJuIHJldDsKPiA+ICB9Cj4gPiBAQCAtMTk0LDExICsxOTMsOCBAQCBzdGF0aWMg
dm9pZCByb2NrY2hpcF9kcm1fdW5iaW5kKHN0cnVjdCBkZXZpY2UgKmRldikKPiA+Cj4gPiAgICAg
ICAgIGRybV9hdG9taWNfaGVscGVyX3NodXRkb3duKGRybV9kZXYpOwo+ID4gICAgICAgICBjb21w
b25lbnRfdW5iaW5kX2FsbChkZXYsIGRybV9kZXYpOwo+ID4gLSAgICAgICBkcm1fbW9kZV9jb25m
aWdfY2xlYW51cChkcm1fZGV2KTsKPiA+ICAgICAgICAgcm9ja2NoaXBfaW9tbXVfY2xlYW51cChk
cm1fZGV2KTsKPiA+Cj4gPiAtICAgICAgIGRybV9kZXYtPmRldl9wcml2YXRlID0gTlVMTDsKPiA+
IC0gICAgICAgZGV2X3NldF9kcnZkYXRhKGRldiwgTlVMTCk7Cj4gPiAgICAgICAgIGRybV9kZXZf
cHV0KGRybV9kZXYpOwo+ID4gIH0KPiA+Cj4gPiAtLQo+ID4gMi4yNC4xCj4gPgo+ID4KPiA+IF9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gPiBMaW51eC1y
b2NrY2hpcCBtYWlsaW5nIGxpc3QKPiA+IExpbnV4LXJvY2tjaGlwQGxpc3RzLmluZnJhZGVhZC5v
cmcKPiA+IGh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgt
cm9ja2NoaXAKCgoKLS0gCkRhbmllbCBWZXR0ZXIKU29mdHdhcmUgRW5naW5lZXIsIEludGVsIENv
cnBvcmF0aW9uCis0MSAoMCkgNzkgMzY1IDU3IDQ4IC0gaHR0cDovL2Jsb2cuZmZ3bGwuY2gKCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
