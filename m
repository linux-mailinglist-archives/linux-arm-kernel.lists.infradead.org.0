Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A2335D020F
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  8 Oct 2019 22:22:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/xUEh+bBeslVn0ntUDWtNfW/d+DXfgSbT3KRYA6WV4g=; b=imi89SEXqPETir
	dvfLYg1/5s45goAxRXExQywtoyo2gtn8xMolVWvhgV5nzj20YcLB1RNTTX4GmPZgLAVPLqeI0iXEN
	IgemtJcMEz87U3NZsoWwR7eCiMtEDsTIga5CdCtFfFMcuWQoVU4rwkPgPJ+3E6AZl0t4hdfuRMXzu
	BjehY3SJcgLlvSVo4LiQzaQ+AasvKJlXFFqKzP49zzCWe8atzOp46j2gp6lKNjIU16MsEwfjIYo7K
	XLNHZ2uzsFFHH463GMwoOTz0llqCPHTTc+cBa4OZCmKZGKlrfznD53EWdNm32J1Rhg20XWzRbFLba
	0NU8hAa3MmxIoOF9ie0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHvzc-0004ph-Vb; Tue, 08 Oct 2019 20:22:00 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHvzT-0004oi-PE; Tue, 08 Oct 2019 20:21:53 +0000
Received: by mail-qk1-x741.google.com with SMTP id u22so55167qkk.11;
 Tue, 08 Oct 2019 13:21:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=Lb2Je/FVvSIp4JAjesvlduQNxjeyTsmsHcBjn2d15pA=;
 b=gFqMTY83ri1G1Q3a3+d/vgKrQH13AeMQFKA5+3XCUQQ5VxAjg/DDRTj63/JC1oxUmL
 4uQDT9L5LDFglDW/XmySnTbZPbIenfUZeSuWuYPFrKbgXYrLTmz07yXpJ6M2WoS4+rN7
 Tatp7IOPVa/gpWTOfsUsNquL9GOvbj7Z4pLFsEfuR/aUPcOF5xcEdXxVAGn57QsmFgdF
 CFHDapQacOmH2FVH5aD+AK6HgMYYPu3YOBkTJhuf788UfGtQiDFqHrakFGXti/zvMHWu
 ld6WVH/Yp/I0qejzXbHbbVCXef4OY822Z6LC0wOuf0TFCwJ6HmucFyGJqFEfD/DrWzvC
 veMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=Lb2Je/FVvSIp4JAjesvlduQNxjeyTsmsHcBjn2d15pA=;
 b=IacmuHhXjq0Oo/0H3a7ARQpMvvr4Vff5iL6rErhhUFXUhY+WGBxNrTlEfnWBaBE08f
 W/Qx964XGUxk6GpDCR96vlHBfoLLrEgD1yBKobxN9xUTo1DHz9oHhjfZSGuhfV2j4fl1
 NxS/bEUVhFb+RPhw9+z6gnDq5Ci29TB8y7ERu53QKJTQ6bBCmHtHR2dLNaBEd+7thipO
 y3JrermitRByZ1ya9+1tpWq8ubj03jWQTVOdqq+jTTnkx9U200MHKOkwHaG51FVHq2G8
 Kgjg4MU/O3bmKxgXbCjvB54Cd4A+arys43yOmR5Bj/tCRTII0lyi1SMCoakN4UBnNct8
 M6bw==
X-Gm-Message-State: APjAAAXnIm/PpECQvdjx73Qz2Q1BRlhXM2n2t8m8SwXgt86NNX1BXksC
 BKTWoEIcZQyrwS1XRQgw3f0NCmBEGmPDpXOvPV8=
X-Google-Smtp-Source: APXvYqyCME5OyPZ4LEHQGOMvfISR2tdIQhh93r/3wK1dT60Ej4LS72zq2S8E42mYxfOZG12f0ilc0Gnlb3E73t9ysmc=
X-Received: by 2002:a05:620a:15d2:: with SMTP id
 o18mr19079989qkm.341.1570566109995; 
 Tue, 08 Oct 2019 13:21:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191008135843.30640-1-enric.balletbo@collabora.com>
 <3132916.nyj3dfveGU@diego>
In-Reply-To: <3132916.nyj3dfveGU@diego>
From: Enric Balletbo Serra <eballetbo@gmail.com>
Date: Tue, 8 Oct 2019 22:21:39 +0200
Message-ID: <CAFqH_50xbB-+zEffHYPt+NPCVAikQpcWc_uxbkA0a6ppT5OJQA@mail.gmail.com>
Subject: Re: [PATCH] iommu/rockchip: Don't loop until failure to count
 interrupts
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191008_132151_819442_E676A137 
X-CRM114-Status: GOOD (  21.08  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (eballetbo[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Joerg Roedel <joro@8bytes.org>, linux-kernel <linux-kernel@vger.kernel.org>,
 Doug Anderson <dianders@chromium.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 iommu@lists.linux-foundation.org, Matthias Kaehlcke <mka@chromium.org>,
 Enric Balletbo i Serra <enric.balletbo@collabora.com>,
 Guenter Roeck <groeck@chromium.org>,
 Collabora Kernel ML <kernel@collabora.com>, Benson Leung <bleung@chromium.org>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGkgSGVpa28sCgpNaXNzYXRnZSBkZSBIZWlrbyBTdMO8Ym5lciA8aGVpa29Ac250ZWNoLmRlPiBk
ZWwgZGlhIGR0LiwgOCBk4oCZb2N0LiAyMDE5CmEgbGVzIDE5OjU4Ogo+Cj4gSGkgRW5yaWMsCj4K
PiBBbSBEaWVuc3RhZywgOC4gT2t0b2JlciAyMDE5LCAxNTo1ODo0MyBDRVNUIHNjaHJpZWIgRW5y
aWMgQmFsbGV0Ym8gaSBTZXJyYToKPiA+IEFzIHBsYXRmb3JtX2dldF9pcnEoKSBub3cgcHJpbnRz
IGFuIGVycm9yIHdoZW4gdGhlIGludGVycnVwdCBkb2VzIG5vdAo+ID4gZXhpc3QsIGNvdW50aW5n
IGludGVycnVwdHMgYnkgbG9vcGluZyB1bnRpbCBmYWlsdXJlIGNhdXNlcyB0aGUgcHJpbnRpbmcK
PiA+IG9mIHNjYXJ5IG1lc3NhZ2VzIGxpa2U6Cj4gPgo+ID4gIHJrX2lvbW11IGZmOTI0MDAwLmlv
bW11OiBJUlEgaW5kZXggMSBub3QgZm91bmQKPiA+ICBya19pb21tdSBmZjkxNDAwMC5pb21tdTog
SVJRIGluZGV4IDEgbm90IGZvdW5kCj4gPiAgcmtfaW9tbXUgZmY5MDNmMDAuaW9tbXU6IElSUSBp
bmRleCAxIG5vdCBmb3VuZAo+ID4gIHJrX2lvbW11IGZmOGYzZjAwLmlvbW11OiBJUlEgaW5kZXgg
MSBub3QgZm91bmQKPiA+ICBya19pb21tdSBmZjY1MDgwMC5pb21tdTogSVJRIGluZGV4IDEgbm90
IGZvdW5kCj4gPgo+ID4gRml4IHRoaXMgYnkgdXNpbmcgdGhlIHBsYXRmb3JtX2lycV9jb3VudCgp
IGhlbHBlciB0byBhdm9pZCB0b3VjaGluZwo+ID4gbm9uLWV4aXN0ZW50IGludGVycnVwdHMuCj4K
PiBJdCBsb29rcyBsaWtlIHdlIGRpZCB0aGUgc2FtZSBmaXggLi4uIHNlZSBteSBwYXRjaCBmcm9t
IHNlcHRlbWJlciAyNToKPiBodHRwczovL3BhdGNod29yay5rZXJuZWwub3JnL3BhdGNoLzExMTYx
MjIxLwo+CgpIb3cgaW4gdGhlIGhlbGwgSSBkaWRuJ3QgY2F0Y2ggdGhpcyBwYXRjaCEgQW55d2F5
LCBmb3JnZXQgYWJvdXQgdGhpcwpwYXRjaCB0aGVuLCBzb3JyeSBmb3IgdGhlIG5vaXNlLgoKVGhh
bmtzLAogRW5yaWMKCj4KPiA+IEZpeGVzOiA3NzIzZjRjNWVjZGI4ZDgzICgiZHJpdmVyIGNvcmU6
IHBsYXRmb3JtOiBBZGQgYW4gZXJyb3IgbWVzc2FnZSB0byBwbGF0Zm9ybV9nZXRfaXJxKigpIikK
PiA+IFNpZ25lZC1vZmYtYnk6IEVucmljIEJhbGxldGJvIGkgU2VycmEgPGVucmljLmJhbGxldGJv
QGNvbGxhYm9yYS5jb20+Cj4gPiAtLS0KPiA+Cj4gPiAgZHJpdmVycy9pb21tdS9yb2NrY2hpcC1p
b21tdS5jIHwgMzUgKysrKysrKysrKysrKysrKysrKysrKystLS0tLS0tLS0tLQo+ID4gIDEgZmls
ZSBjaGFuZ2VkLCAyNCBpbnNlcnRpb25zKCspLCAxMSBkZWxldGlvbnMoLSkKPiA+Cj4gPiBkaWZm
IC0tZ2l0IGEvZHJpdmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jIGIvZHJpdmVycy9pb21tdS9y
b2NrY2hpcC1pb21tdS5jCj4gPiBpbmRleCAyNjI5MGYzMTBmOTAuLjhjNjMxOGJkMWIzNyAxMDA2
NDQKPiA+IC0tLSBhL2RyaXZlcnMvaW9tbXUvcm9ja2NoaXAtaW9tbXUuYwo+ID4gKysrIGIvZHJp
dmVycy9pb21tdS9yb2NrY2hpcC1pb21tdS5jCj4gPiBAQCAtMTEzNiw3ICsxMTM2LDcgQEAgc3Rh
dGljIGludCBya19pb21tdV9wcm9iZShzdHJ1Y3QgcGxhdGZvcm1fZGV2aWNlICpwZGV2KQo+ID4g
ICAgICAgc3RydWN0IHJrX2lvbW11ICppb21tdTsKPiA+ICAgICAgIHN0cnVjdCByZXNvdXJjZSAq
cmVzOwo+ID4gICAgICAgaW50IG51bV9yZXMgPSBwZGV2LT5udW1fcmVzb3VyY2VzOwo+ID4gLSAg
ICAgaW50IGVyciwgaSwgaXJxOwo+ID4gKyAgICAgaW50IGVyciwgaSwgaXJxLCBudW1faXJxczsK
PiA+Cj4gPiAgICAgICBpb21tdSA9IGRldm1fa3phbGxvYyhkZXYsIHNpemVvZigqaW9tbXUpLCBH
RlBfS0VSTkVMKTsKPiA+ICAgICAgIGlmICghaW9tbXUpCj4gPiBAQCAtMTIxOSwyMCArMTIxOSwy
OCBAQCBzdGF0aWMgaW50IHJrX2lvbW11X3Byb2JlKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBk
ZXYpCj4gPgo+ID4gICAgICAgcG1fcnVudGltZV9lbmFibGUoZGV2KTsKPiA+Cj4gPiAtICAgICBp
ID0gMDsKPiA+IC0gICAgIHdoaWxlICgoaXJxID0gcGxhdGZvcm1fZ2V0X2lycShwZGV2LCBpKysp
KSAhPSAtRU5YSU8pIHsKPiA+IC0gICAgICAgICAgICAgaWYgKGlycSA8IDApCj4gPiAtICAgICAg
ICAgICAgICAgICAgICAgcmV0dXJuIGlycTsKPiA+ICsgICAgIG51bV9pcnFzID0gcGxhdGZvcm1f
aXJxX2NvdW50KHBkZXYpOwo+ID4gKyAgICAgaWYgKG51bV9pcnFzIDwgMCkgewo+ID4gKyAgICAg
ICAgICAgICBlcnIgPSBudW1faXJxczsKPiA+ICsgICAgICAgICAgICAgZ290byBlcnJfZGlzYWJs
ZV9wbV9ydW50aW1lOwo+ID4gKyAgICAgfQo+Cj4gQnkgbW92aW5nIHRoZSBiYXNpYyBpcnEgY291
bnQgYWJvdmUgdGhlIHBtX3J1bnRpbWVfZW5hYmxlCj4geW91IHNhdmUgc29tZSBsaW5lcyBhbmQg
dGhlIHdob2xlIGdvdG8gbG9naWMgLi4uIHNlZSBteSBwYXRjaAo+IGZvciByZWZlcmVuY2UgOi1E
Cj4KPiBIZWlrbwo+Cj4gPiArCj4gPiArICAgICBmb3IgKGkgPSAwOyBpIDwgbnVtX2lycXM7IGkr
Kykgewo+ID4gKyAgICAgICAgICAgICBpcnEgPSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIGkpOwo+
ID4gKyAgICAgICAgICAgICBpZiAoaXJxIDwgMCkgewo+ID4gKyAgICAgICAgICAgICAgICAgICAg
IGVyciA9IGlycTsKPiA+ICsgICAgICAgICAgICAgICAgICAgICBnb3RvIGVycl9kaXNhYmxlX3Bt
X3J1bnRpbWU7Cj4gPiArICAgICAgICAgICAgIH0KPiA+Cj4gPiAgICAgICAgICAgICAgIGVyciA9
IGRldm1fcmVxdWVzdF9pcnEoaW9tbXUtPmRldiwgaXJxLCBya19pb21tdV9pcnEsCj4gPiAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgSVJRRl9TSEFSRUQsIGRldl9uYW1lKGRl
diksIGlvbW11KTsKPiA+IC0gICAgICAgICAgICAgaWYgKGVycikgewo+ID4gLSAgICAgICAgICAg
ICAgICAgICAgIHBtX3J1bnRpbWVfZGlzYWJsZShkZXYpOwo+ID4gLSAgICAgICAgICAgICAgICAg
ICAgIGdvdG8gZXJyX3JlbW92ZV9zeXNmczsKPiA+IC0gICAgICAgICAgICAgfQo+ID4gKyAgICAg
ICAgICAgICBpZiAoZXJyKQo+ID4gKyAgICAgICAgICAgICAgICAgICAgIGdvdG8gZXJyX2Rpc2Fi
bGVfcG1fcnVudGltZTsKPiA+ICAgICAgIH0KPiA+Cj4gPiAgICAgICByZXR1cm4gMDsKPiA+ICtl
cnJfZGlzYWJsZV9wbV9ydW50aW1lOgo+ID4gKyAgICAgcG1fcnVudGltZV9kaXNhYmxlKGRldik7
Cj4gPiAgZXJyX3JlbW92ZV9zeXNmczoKPiA+ICAgICAgIGlvbW11X2RldmljZV9zeXNmc19yZW1v
dmUoJmlvbW11LT5pb21tdSk7Cj4gPiAgZXJyX3B1dF9ncm91cDoKPiA+IEBAIC0xMjQ1LDEwICsx
MjUzLDE1IEBAIHN0YXRpYyBpbnQgcmtfaW9tbXVfcHJvYmUoc3RydWN0IHBsYXRmb3JtX2Rldmlj
ZSAqcGRldikKPiA+ICBzdGF0aWMgdm9pZCBya19pb21tdV9zaHV0ZG93bihzdHJ1Y3QgcGxhdGZv
cm1fZGV2aWNlICpwZGV2KQo+ID4gIHsKPiA+ICAgICAgIHN0cnVjdCBya19pb21tdSAqaW9tbXUg
PSBwbGF0Zm9ybV9nZXRfZHJ2ZGF0YShwZGV2KTsKPiA+IC0gICAgIGludCBpID0gMCwgaXJxOwo+
ID4gKyAgICAgaW50IGksIGlycSwgbnVtX2lycXM7Cj4gPgo+ID4gLSAgICAgd2hpbGUgKChpcnEg
PSBwbGF0Zm9ybV9nZXRfaXJxKHBkZXYsIGkrKykpICE9IC1FTlhJTykKPiA+ICsgICAgIG51bV9p
cnFzID0gcGxhdGZvcm1faXJxX2NvdW50KHBkZXYpOwo+ID4gKyAgICAgZm9yIChpID0gMDsgaSA8
IG51bV9pcnFzOyBpKyspIHsKPiA+ICsgICAgICAgICAgICAgaXJxID0gcGxhdGZvcm1fZ2V0X2ly
cShwZGV2LCBpKTsKPiA+ICsgICAgICAgICAgICAgaWYgKGlycSA8IDApCj4gPiArICAgICAgICAg
ICAgICAgICAgICAgY29udGludWU7Cj4gPiAgICAgICAgICAgICAgIGRldm1fZnJlZV9pcnEoaW9t
bXUtPmRldiwgaXJxLCBpb21tdSk7Cj4gPiArICAgICB9Cj4gPgo+ID4gICAgICAgcG1fcnVudGlt
ZV9mb3JjZV9zdXNwZW5kKCZwZGV2LT5kZXYpOwo+ID4gIH0KPiA+Cj4KPgo+Cj4KPgo+IF9fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCj4gTGludXgtcm9ja2No
aXAgbWFpbGluZyBsaXN0Cj4gTGludXgtcm9ja2NoaXBAbGlzdHMuaW5mcmFkZWFkLm9yZwo+IGh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtcm9ja2NoaXAK
Cl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFy
bS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9y
ZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1r
ZXJuZWwK
