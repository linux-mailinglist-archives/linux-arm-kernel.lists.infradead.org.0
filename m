Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 63E0F74E2B
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 25 Jul 2019 14:31:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dzhzrOUeWNqX/q0oZtFO2r9crNParvr75cRHkPpOFU8=; b=WGLresx0kPtKmH
	y0fE+7pP5qkUYE1QvYCq7lPtco948AmHyjQBl3AK45yG/Jqlo/nK16GEiwSUlSGmHc5pScUqUiU5V
	zaOEATBMcL6qghqg6mbeZJDA2PUmFssKFi0v8OiOuLNpvt3+3CPQKOAy6ADzQxsvudrTEvgsXVTbu
	p9qAad7pUt8ouHx/nvMIQeLG7ZvGtyF6FHZZVcmF3sWLkIjGK/XhYjmz1KtN+ZJRxF3+quE2E2m6L
	YlkfkeUwd+uR1AjwfRbVVRcrKU5pR9XzOc3oYS3krMfyo2RyhWzUTskEp5eZhl6bgdM0qBUWZNP1M
	l3ubbVKH8PRytHI+uNmA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hqcuR-0002fT-Ka; Thu, 25 Jul 2019 12:31:47 +0000
Received: from mail-qk1-x741.google.com ([2607:f8b0:4864:20::741])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hqcuG-0002eP-N0
 for linux-arm-kernel@lists.infradead.org; Thu, 25 Jul 2019 12:31:38 +0000
Received: by mail-qk1-x741.google.com with SMTP id m14so10564643qka.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 25 Jul 2019 05:31:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=3vOhJr4R9IHXs2ns1CQPNi9tups8zk+9lQf/RJAnA0w=;
 b=oyGpE2Mdzy7CUufchd8ehSD43VuTFwk8fz2D/ftoUm+otR7MhqugXIeS0KEE3Y2HvZ
 y8Ur6mOC9Ux+nbHqhK5HwulszZ7kC9jZe+6ctmJpl83GjOrr6ngsFAHfCtnmeBr30L9i
 HIbouEFLFnWjGWiYVh6RcUsSKFNhhscC1Wv2Skt+AT2xCaBZvNr2Mc4Xfl3f8FMy+axk
 Ytx39Mgh9a3bzcryxeAEPDFMahDuRnO6Q6lhJFoOVQko81LaCcchwFiwLFJ23i6LJ/7H
 yCrbyaIRSyTEFGh7IY+eROAyPHPH2hjL8Bv2PSRyfDdwYUnlUwqmBnvxtmSclgsHCCd+
 fPig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=3vOhJr4R9IHXs2ns1CQPNi9tups8zk+9lQf/RJAnA0w=;
 b=Y+lrbqQnsjRAWJe/SUTtEMfQmSDG3C7S6iM5/1mxmLucnu3qshxzkcSHm5KtCrnAna
 BGKq16QqlVOSglhh/usuG9tIILZe8tizVthcxxt4KFOf/lbvhmkcGkWZiohNgS/10SnH
 u7RxpCIHVLbI53g2KLIYMqS7+nSFRHCgUjSvLkpyEpaYmZbTILWuGxP/zOCmJ+Hufdsq
 SsOkb6OW+cn8DmMAZhbSw6b2QU7JO2ZmQntdLPCK38IUgfLFZueCIJ4XDclkp+Q5uVkT
 tC18NLE5Xa19uktLQCeBhEZ11q7yQmw7zXF4g9PPCPzW7uHliL8hCK8eT1fXmKuizjm3
 +GfQ==
X-Gm-Message-State: APjAAAX8KAUzBAqcWBw7VamMSULmzMinepoBw/l+FecuSjvM62an6cYT
 HLdqm7CgBGdCHj0p80NiVN3kQyeQJ64aSJSVxmd7Xg==
X-Google-Smtp-Source: APXvYqzw0OOD7qxJ+qp3p00p/2GWwD3VFv4Bn031dtzHiYXsJAGBNbun3scyLD1DLCPkYYTMixPKN3qbD+BIOKe+yV4=
X-Received: by 2002:a05:620a:1286:: with SMTP id
 w6mr56787652qki.219.1564057895419; 
 Thu, 25 Jul 2019 05:31:35 -0700 (PDT)
MIME-Version: 1.0
References: <1562141052-26221-1-git-send-email-olivier.moysan@st.com>
 <129ffc9a-0bfc-354e-c4a1-9043260832c0@ti.com>
In-Reply-To: <129ffc9a-0bfc-354e-c4a1-9043260832c0@ti.com>
From: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Date: Thu, 25 Jul 2019 14:31:24 +0200
Message-ID: <CA+M3ks6H4OC0SUUj=34OxCq-chA-W_YxO_xs_0hkJAuxQv12JQ@mail.gmail.com>
Subject: Re: [PATCH] drm/bridge: sii902x: add audio graph card support
To: Jyri Sarha <jsarha@ti.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190725_053136_816205_37393320 
X-CRM114-Status: GOOD (  18.05  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:741 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: jernej.skrabec@siol.net, Olivier Moysan <olivier.moysan@st.com>,
 Benjamin GAIGNARD <benjamin.gaignard@st.com>, Jonas Karlman <jonas@kwiboo.se>,
 David Airlie <airlied@linux.ie>, Neil Armstrong <narmstrong@baylibre.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 ML dri-devel <dri-devel@lists.freedesktop.org>,
 Andrzej Hajda <a.hajda@samsung.com>,
 Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
 Daniel Vetter <daniel@ffwll.ch>, linux-stm32@st-md-mailman.stormreply.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Alexandre Torgue <alexandre.torgue@st.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

TGUgamV1LiAxMSBqdWlsLiAyMDE5IMOgIDEzOjA5LCBKeXJpIFNhcmhhIDxqc2FyaGFAdGkuY29t
PiBhIMOpY3JpdCA6Cj4KPiBPbiAwMy8wNy8yMDE5IDExOjA0LCBPbGl2aWVyIE1veXNhbiB3cm90
ZToKPiA+IEltcGxlbWVudCBnZXRfZGFpX2lkIGNhbGxiYWNrIG9mIGF1ZGlvIEhETUkgY29kZWMK
PiA+IHRvIHN1cHBvcnQgQVNvQyBhdWRpbyBncmFwaCBjYXJkLgo+ID4gSERNSSBhdWRpbyBvdXRw
dXQgaGFzIHRvIGJlIGNvbm5lY3RlZCB0byBzaWk5MDJ4IHBvcnQgMy4KPiA+IGdldF9kYWlfaWQg
Y2FsbGJhY2sgbWFwcyB0aGlzIHBvcnQgdG8gQVNvQyBEQUkgaW5kZXggMC4KPiA+Cj4gPiBTaWdu
ZWQtb2ZmLWJ5OiBPbGl2aWVyIE1veXNhbiA8b2xpdmllci5tb3lzYW5Ac3QuY29tPgo+Cj4gSSBo
YXZlIG5vdCB1c2VkIGF1ZGlvIGdyYXBoIGJpbmRpbmcsIGJ1dCBjb21wYXJlZCB0byB0aGUgb3Ro
ZXIKPiBnZXRfZGFpX2lkKCkgaW1wbGVtZW50YXRpb25zLCB0aGlzIGxvb2tzIGlkZW50aWNhbC4g
U286Cj4KPiBSZXZpZXdlZC1ieTogSnlyaSBTYXJoYSA8anNhcmhhQHRpLmNvbT4KCkFwcGxpZWQg
b24gZHJtLW1pc2MtbmV4dCwKVGhhbmtzLApCZW5qYW1pbgoKPgo+ID4gLS0tCj4gPiAgZHJpdmVy
cy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMgfCAyMyArKysrKysrKysrKysrKysrKysrKysrKwo+
ID4gIDEgZmlsZSBjaGFuZ2VkLCAyMyBpbnNlcnRpb25zKCspCj4gPgo+ID4gZGlmZiAtLWdpdCBh
L2RyaXZlcnMvZ3B1L2RybS9icmlkZ2Uvc2lpOTAyeC5jIGIvZHJpdmVycy9ncHUvZHJtL2JyaWRn
ZS9zaWk5MDJ4LmMKPiA+IGluZGV4IGRkN2FhNDY2YjI4MC4uZGFmOWVmM2NkODE3IDEwMDY0NAo+
ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2JyaWRnZS9zaWk5MDJ4LmMKPiA+ICsrKyBiL2RyaXZl
cnMvZ3B1L2RybS9icmlkZ2Uvc2lpOTAyeC5jCj4gPiBAQCAtMTU4LDYgKzE1OCw4IEBACj4gPgo+
ID4gICNkZWZpbmUgU0lJOTAyWF9JMkNfQlVTX0FDUVVJU0lUSU9OX1RJTUVPVVRfTVMgICAgICAg
NTAwCj4gPgo+ID4gKyNkZWZpbmUgU0lJOTAyWF9BVURJT19QT1JUX0lOREVYICAgICAgICAgICAg
IDMKPiA+ICsKPiA+ICBzdHJ1Y3Qgc2lpOTAyeCB7Cj4gPiAgICAgICBzdHJ1Y3QgaTJjX2NsaWVu
dCAqaTJjOwo+ID4gICAgICAgc3RydWN0IHJlZ21hcCAqcmVnbWFwOwo+ID4gQEAgLTY5MCwxMSAr
NjkyLDMyIEBAIHN0YXRpYyBpbnQgc2lpOTAyeF9hdWRpb19nZXRfZWxkKHN0cnVjdCBkZXZpY2Ug
KmRldiwgdm9pZCAqZGF0YSwKPiA+ICAgICAgIHJldHVybiAwOwo+ID4gIH0KPiA+Cj4gPiArc3Rh
dGljIGludCBzaWk5MDJ4X2F1ZGlvX2dldF9kYWlfaWQoc3RydWN0IHNuZF9zb2NfY29tcG9uZW50
ICpjb21wb25lbnQsCj4gPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RydWN0
IGRldmljZV9ub2RlICplbmRwb2ludCkKPiA+ICt7Cj4gPiArICAgICBzdHJ1Y3Qgb2ZfZW5kcG9p
bnQgb2ZfZXA7Cj4gPiArICAgICBpbnQgcmV0Owo+ID4gKwo+ID4gKyAgICAgcmV0ID0gb2ZfZ3Jh
cGhfcGFyc2VfZW5kcG9pbnQoZW5kcG9pbnQsICZvZl9lcCk7Cj4gPiArICAgICBpZiAocmV0IDwg
MCkKPiA+ICsgICAgICAgICAgICAgcmV0dXJuIHJldDsKPiA+ICsKPiA+ICsgICAgIC8qCj4gPiAr
ICAgICAgKiBIRE1JIHNvdW5kIHNob3VsZCBiZSBsb2NhdGVkIGF0IHJlZyA9IDwzPgo+ID4gKyAg
ICAgICogUmV0dXJuIGV4cGVjdGVkIERBSSBpbmRleCAwLgo+ID4gKyAgICAgICovCj4gPiArICAg
ICBpZiAob2ZfZXAucG9ydCA9PSBTSUk5MDJYX0FVRElPX1BPUlRfSU5ERVgpCj4gPiArICAgICAg
ICAgICAgIHJldHVybiAwOwo+ID4gKwo+ID4gKyAgICAgcmV0dXJuIC1FSU5WQUw7Cj4gPiArfQo+
ID4gKwo+ID4gIHN0YXRpYyBjb25zdCBzdHJ1Y3QgaGRtaV9jb2RlY19vcHMgc2lpOTAyeF9hdWRp
b19jb2RlY19vcHMgPSB7Cj4gPiAgICAgICAuaHdfcGFyYW1zID0gc2lpOTAyeF9hdWRpb19od19w
YXJhbXMsCj4gPiAgICAgICAuYXVkaW9fc2h1dGRvd24gPSBzaWk5MDJ4X2F1ZGlvX3NodXRkb3du
LAo+ID4gICAgICAgLmRpZ2l0YWxfbXV0ZSA9IHNpaTkwMnhfYXVkaW9fZGlnaXRhbF9tdXRlLAo+
ID4gICAgICAgLmdldF9lbGQgPSBzaWk5MDJ4X2F1ZGlvX2dldF9lbGQsCj4gPiArICAgICAuZ2V0
X2RhaV9pZCA9IHNpaTkwMnhfYXVkaW9fZ2V0X2RhaV9pZCwKPiA+ICB9Owo+ID4KPiA+ICBzdGF0
aWMgaW50IHNpaTkwMnhfYXVkaW9fY29kZWNfaW5pdChzdHJ1Y3Qgc2lpOTAyeCAqc2lpOTAyeCwK
PiA+Cj4KPgo+IC0tCj4gVGV4YXMgSW5zdHJ1bWVudHMgRmlubGFuZCBPeSwgUG9ya2thbGFua2F0
dSAyMiwgMDAxODAgSGVsc2lua2kuCj4gWS10dW5udXMvQnVzaW5lc3MgSUQ6IDA2MTU1MjEtNC4g
S290aXBhaWtrYS9Eb21pY2lsZTogSGVsc2lua2kKPiBfX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fXwo+IGRyaS1kZXZlbCBtYWlsaW5nIGxpc3QKPiBkcmktZGV2
ZWxAbGlzdHMuZnJlZWRlc2t0b3Aub3JnCj4gaHR0cHM6Ly9saXN0cy5mcmVlZGVza3RvcC5vcmcv
bWFpbG1hbi9saXN0aW5mby9kcmktZGV2ZWwKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFy
bS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9t
YWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
