Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FE4B22018
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 18 May 2019 00:08:45 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2oX+vXEZi/TdiZECEOY2VNv/RCsDrM8L+G+XFNx9Nrg=; b=nLi0EWEkkc554g
	71CVaNe9CQ/pcL51A2usT55WEgsQK+xPwn78nJhPyG4lYMEqiKP3ZGjFcQ7bVI+xa7gcwwxwQ/gDn
	igCsVgCW6Gp/svi/LXi394UZ+PZUcZRHgwNav82bahnWrAui3fxsLYIkgXIYwpPdJlpC2omOUYxRZ
	rV0W5nkRsirEjQfAQU5G+JcarOWa0q+0+xp/bmMz4phN0DVHlVJnACj9ioKzN2OwXHeo9O/scQEhI
	UkTCdgm8t1nPJixHlYl9tfgHQPHB5zQ/jIsSN2nJUdIqHhSxmd/3K4iI1VLj1oKmNakxY69/q+Lb4
	/Sf+LQa8l2fXf+qv4pOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRl1u-0007Hn-LE; Fri, 17 May 2019 22:08:42 +0000
Received: from mail-yw1-xc43.google.com ([2607:f8b0:4864:20::c43])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRl1n-0007HO-Iq
 for linux-arm-kernel@lists.infradead.org; Fri, 17 May 2019 22:08:36 +0000
Received: by mail-yw1-xc43.google.com with SMTP id w18so3298780ywa.12
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 17 May 2019 15:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=jft35/5eu7LfpLWAoZ01uRn8po613JLoj7AyHoG1GXA=;
 b=NYUgiQf/XO3wfHvPfBK9JqBrKKj3Wmowkwt6/vjOgQkCDK/v6jvW0oo1OZnPmZfOd6
 gXIM2YU1dxM65gHmFxomQBCOUKQV3zVEh6vSfVBe+5Nw1XhNUuyzAv724hOrXXhgW8Cn
 VQkWNIdZVzet1VOC/zC6hyJHTH5bUEGREk5GN72T5tLuAz7M2PAc55Z2kxM6tQ5SMraJ
 VZtkn8qK6YLUjTu/4tr0kcNDMPH4zIjSprh5Iy1oYW+ZozjdEZzHGQPDCltQ3I55Bt0/
 elMkVF9psPDUj7MHeBzCfsRcjwvVTi/HiUpy5OLdflq0g+ead+zvm2UIv6NzBHoYmvym
 E5XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=jft35/5eu7LfpLWAoZ01uRn8po613JLoj7AyHoG1GXA=;
 b=APsgkAeqQ8JX/xZXj++USW84Ul6SVVVpMjK8D67KpdRTiKOTNAjFtitJZ1vBD+j2XM
 3PRvaKPq7Sm0gpAYiMRvKxl2Xb4jOzXgNzQg5FTXEQ6uwTHbvkthyOEUkFURsyje5PDj
 NgGq44cmqfc+6lfDYRzATIJa6AnfqrpI8YTvrGHKGlJG8eTiQPZhTxUv0IhyMsG4tbtB
 t0s//fDL4C9tHdwUWr0UoR/bbDW6FDJ923iYUUf6tXiwM4h+T2eYNcREGVV5ESvni+Fn
 Ouvl4Sto0tALVkkSJuW9noA/UvT0UH8khe1DfM8Dg9r8J4RaAlTftxGOG/ODje41G6ZJ
 m7Qw==
X-Gm-Message-State: APjAAAUg3yUmCJclMQL5CRTdJ84H0/FVEmjmsYHKcbD3l/dbsQ+fNaA6
 WfL5hXmspC75fjhMZ8RpfJoDvhM4Y78OJ0WV52g=
X-Google-Smtp-Source: APXvYqxcSNmzU/oyHvSUYVr+deObwpxqKqFM5P2fsb0esZnQS0M5F0CXJpjeTYUlAVM4uj0CwId57+uwvLalM45wrhw=
X-Received: by 2002:a81:9a4b:: with SMTP id r72mr5190935ywg.422.1558130914303; 
 Fri, 17 May 2019 15:08:34 -0700 (PDT)
MIME-Version: 1.0
References: <20190517184659.18828-1-peron.clem@gmail.com>
 <20190517184659.18828-2-peron.clem@gmail.com>
 <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
In-Reply-To: <CAL_JsqKPazGn+g1zS4NMwvQZ_6GcAm0tgcOTqyQA0dz0+2dp3g@mail.gmail.com>
From: =?UTF-8?B?Q2zDqW1lbnQgUMOpcm9u?= <peron.clem@gmail.com>
Date: Sat, 18 May 2019 00:08:22 +0200
Message-ID: <CAJiuCcdMxXAXYk=QpRwsvBUW0tvBVMqXvgx0Y7fAKP=ouyBnKQ@mail.gmail.com>
Subject: Re: [PATCH v5 1/6] drm: panfrost: add optional bus_clock
To: Rob Herring <robh+dt@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190517_150835_623944_C33EA8CC 
X-CRM114-Status: GOOD (  17.78  )
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:c43 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (peron.clem[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 0.1 FROM_EXCESS_BASE64     From: base64 encoded unnecessarily
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>,
 Tomeu Vizoso <tomeu.vizoso@collabora.com>,
 Neil Armstrong <narmstrong@baylibre.com>, David Airlie <airlied@linux.ie>,
 Joerg Roedel <joro@8bytes.org>, Will Deacon <will.deacon@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>,
 Steven Price <steven.price@arm.com>, Maxime Ripard <maxime.ripard@bootlin.com>,
 Chen-Yu Tsai <wens@csie.org>, Linux IOMMU <iommu@lists.linux-foundation.org>,
 Daniel Vetter <daniel@ffwll.ch>, Robin Murphy <robin.murphy@arm.com>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgUm9iLAoKT24gRnJpLCAxNyBNYXkgMjAxOSBhdCAyMjowNywgUm9iIEhlcnJpbmcgPHJvYmgr
ZHRAa2VybmVsLm9yZz4gd3JvdGU6Cj4KPiBPbiBGcmksIE1heSAxNywgMjAxOSBhdCAxOjQ3IFBN
IENsw6ltZW50IFDDqXJvbiA8cGVyb24uY2xlbUBnbWFpbC5jb20+IHdyb3RlOgo+ID4KPiA+IEFs
bHdpbm5lciBINiBoYXMgYW4gQVJNIE1hbGktVDcyMCBNUDIgd2hpY2ggcmVxdWlyZWQgYSBidXNf
Y2xvY2suCj4gPgo+ID4gQWRkIGFuIG9wdGlvbmFsIGJ1c19jbG9jayBhdCB0aGUgaW5pdCBvZiB0
aGUgcGFuZnJvc3QgZHJpdmVyLgo+ID4KPiA+IFNpZ25lZC1vZmYtYnk6IENsw6ltZW50IFDDqXJv
biA8cGVyb24uY2xlbUBnbWFpbC5jb20+Cj4gPiAtLS0KPiA+ICBkcml2ZXJzL2dwdS9kcm0vcGFu
ZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgfCAyNSArKysrKysrKysrKysrKysrKysrKystCj4gPiAg
ZHJpdmVycy9ncHUvZHJtL3BhbmZyb3N0L3BhbmZyb3N0X2RldmljZS5oIHwgIDEgKwo+ID4gIDIg
ZmlsZXMgY2hhbmdlZCwgMjUgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQo+ID4KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMgYi9k
cml2ZXJzL2dwdS9kcm0vcGFuZnJvc3QvcGFuZnJvc3RfZGV2aWNlLmMKPiA+IGluZGV4IDNiMmJj
ZWQxYjAxNS4uOGRhNmU2MTJkMzg0IDEwMDY0NAo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL3Bh
bmZyb3N0L3BhbmZyb3N0X2RldmljZS5jCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vcGFuZnJv
c3QvcGFuZnJvc3RfZGV2aWNlLmMKPiA+IEBAIC00NCw3ICs0NCw4IEBAIHN0YXRpYyBpbnQgcGFu
ZnJvc3RfY2xrX2luaXQoc3RydWN0IHBhbmZyb3N0X2RldmljZSAqcGZkZXYpCj4gPgo+ID4gICAg
ICAgICBwZmRldi0+Y2xvY2sgPSBkZXZtX2Nsa19nZXQocGZkZXYtPmRldiwgTlVMTCk7Cj4gPiAg
ICAgICAgIGlmIChJU19FUlIocGZkZXYtPmNsb2NrKSkgewo+ID4gLSAgICAgICAgICAgICAgIGRl
dl9lcnIocGZkZXYtPmRldiwgImdldCBjbG9jayBmYWlsZWQgJWxkXG4iLCBQVFJfRVJSKHBmZGV2
LT5jbG9jaykpOwo+ID4gKyAgICAgICAgICAgICAgIGRldl9lcnIocGZkZXYtPmRldiwgImdldCBj
bG9jayBmYWlsZWQgJWxkXG4iLAo+ID4gKyAgICAgICAgICAgICAgICAgICAgICAgUFRSX0VSUihw
ZmRldi0+Y2xvY2spKTsKPgo+IFBsZWFzZSBkcm9wIHRoaXMgd2hpdGVzcGFjZSBjaGFuZ2UuCgpT
b3JyeSwgSSB0aG91Z2h0IGl0IHdhcyBvbmx5IGEgbWlzdGFrZSBoZXJlLCBJIHdpbGwgZHJvcCBp
dC4KV2h5IGFyZSB0aGV5IHNvIG1hbnkgbGluZXMgb3ZlciA4MCBjaGFyYWN0ZXJzPwpJcyB0aGVy
ZSBhIHNwZWNpZmljIGNvZGluZyBzdHlsZSB0byBmb2xsb3cgPwoKVGhhbmtzLApDbGVtZW50Cgo+
Cj4gPiAgICAgICAgICAgICAgICAgcmV0dXJuIFBUUl9FUlIocGZkZXYtPmNsb2NrKTsKPiA+ICAg
ICAgICAgfQo+ID4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMu
aW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZv
L2xpbnV4LWFybS1rZXJuZWwK
