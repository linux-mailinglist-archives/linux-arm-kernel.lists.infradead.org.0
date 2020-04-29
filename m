Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 12A311BE0C7
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 29 Apr 2020 16:23:32 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KOfgBfo4rlLlCeq+LjQgRyggQuQSTkY4nlN/ef+ho84=; b=hMTMpqrYOuyB5a
	CtwN46B6ODFalO4kOVGCjiWmqNh2reoxV1ub6mqIa9GOwSkLaL3OLsVRzQ9a8Y2QAkGx2pNBabz7H
	tpQShQOjmtEAV3KOriSx51tq7XCrmLc9LMVeEMsrCYBJkGCIgPEHZ9AUDnZA1SQREM2TlAbSonEEh
	ESt+v8yVwzKvbD8qg0XvwBvydVBXYBqnhPTTxh5EzMIS/6rii1LH6eJH991RKtOCUd+6jV3PfcCV7
	JIPsQITrY5i5LPMISycuPRpeMcMPgvvUU2ZceLhMMOqBvQbL7borLH6jnfceJg2yj3dMnZ/3VcimW
	KDMrnCpPdkKavqYjdgPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jTncQ-00063D-J1; Wed, 29 Apr 2020 14:23:22 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jTnc9-0005yR-7g; Wed, 29 Apr 2020 14:23:06 +0000
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com
 [209.85.218.48])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 6774F218AC;
 Wed, 29 Apr 2020 14:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1588170184;
 bh=G66dtQxbgcy1h44rcbSXdxCegSH9fBKXU5OqSZIxS8g=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=PetStyHLEV2lrSXAVs6D/TdlIhWhS1z8l9Gl+vM/4MNdlQd4o+6yNZktsNtNHZQU6
 YIHcHaxmLo83AxCXmV1gKViG3iVFBBJBxN8LECtjbSqWDS7oeQIrFEsrWRfIgb3q0s
 Ur2XeOWeKdtohhLwNWX4xkXhaSx8gpjuNR5Cl7aI=
Received: by mail-ej1-f48.google.com with SMTP id pg17so1689318ejb.9;
 Wed, 29 Apr 2020 07:23:04 -0700 (PDT)
X-Gm-Message-State: AGi0PuYphUwM28S8SYj0fZmwe1MiE0C3Dz7vEewgpB/1rUstMPVW/K8p
 RMUqv/aFWT5xwa+M11OzrfkA4KJWdl3DZb3m5g==
X-Google-Smtp-Source: APiQypLbNUZaUbxOeAGl/VOSrDJwW0j3YRXLPpsXVC1sG9OeMKULA8AD+Z6wkppmAOEICwk03bQFeR9oFWYM3/4XLAs=
X-Received: by 2002:a17:906:2ad4:: with SMTP id
 m20mr2875207eje.324.1588170182786; 
 Wed, 29 Apr 2020 07:23:02 -0700 (PDT)
MIME-Version: 1.0
References: <20200427075238.2828-1-bernard@vivo.com>
In-Reply-To: <20200427075238.2828-1-bernard@vivo.com>
From: Chun-Kuang Hu <chunkuang.hu@kernel.org>
Date: Wed, 29 Apr 2020 22:22:50 +0800
X-Gmail-Original-Message-ID: <CAAOTY_86d-UryKQrLy8-zjTbrTRrHL4k3x=bx1KqvWxPL5jj2Q@mail.gmail.com>
Message-ID: <CAAOTY_86d-UryKQrLy8-zjTbrTRrHL4k3x=bx1KqvWxPL5jj2Q@mail.gmail.com>
Subject: Re: [PATCH] drm/mediatek: cleanup coding style in mediatek a bit
To: Bernard Zhao <bernard@vivo.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200429_072305_341303_25147C9B 
X-CRM114-Status: GOOD (  15.20  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Chun-Kuang Hu <chunkuang.hu@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, opensource.kernel@vivo.com,
 David Airlie <airlied@linux.ie>, linux-kernel <linux-kernel@vger.kernel.org>,
 DRI Development <dri-devel@lists.freedesktop.org>,
 "moderated list:ARM/Mediatek SoC support" <linux-mediatek@lists.infradead.org>,
 Daniel Vetter <daniel@ffwll.ch>, Matthias Brugger <matthias.bgg@gmail.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksIEJlcm5hcmQ6CgpCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5jb20+IOaWvCAyMDIw5bm0
NOaciDI35pelIOmAseS4gCDkuIvljYgzOjUz5a+r6YGT77yaCj4KPiBUaGlzIGNvZGUgY2hhbmdl
IGlzIHRvIG1ha2UgY29kZSBiaXQgbW9yZSByZWFkYWJsZS4KPiBPcHRpbWlzZSBhcnJheSBzaXpl
IGFsaWduIHRvIEhETUkgbWFjcm8gZGVmaW5lLgo+IEFkZCBjaGVjayBpZiBsZW4gaXMgb3ZlcmFu
Z2UuCgpPbmUgcGF0Y2ggc2hvdWxkIGp1c3QgZG8gb25lIHRoaW5nLCBidXQgdGhpcyBkbyB0aHJl
ZSB0aGluZ3MuClNvIGJyZWFrIHRoaXMgaW50byB0aHJlZSBwYXRjaGVzLgoKUmVnYXJkcywKQ2h1
bi1LdWFuZy4KCj4KPiBTaWduZWQtb2ZmLWJ5OiBCZXJuYXJkIFpoYW8gPGJlcm5hcmRAdml2by5j
b20+Cj4gLS0tCj4gIGRyaXZlcnMvZ3B1L2RybS9tZWRpYXRlay9tdGtfaGRtaS5jIHwgMjIgKysr
KysrKysrKystLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMTEgaW5zZXJ0aW9ucygrKSwg
MTEgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVr
L210a19oZG1pLmMgYi9kcml2ZXJzL2dwdS9kcm0vbWVkaWF0ZWsvbXRrX2hkbWkuYwo+IGluZGV4
IGZmNDNhM2Q4MDQxMC4uNDBmYjUxNTRlZDVkIDEwMDY0NAo+IC0tLSBhL2RyaXZlcnMvZ3B1L2Ry
bS9tZWRpYXRlay9tdGtfaGRtaS5jCj4gKysrIGIvZHJpdmVycy9ncHUvZHJtL21lZGlhdGVrL210
a19oZG1pLmMKPiBAQCAtMzExLDE1ICszMTEsMTUgQEAgc3RhdGljIHZvaWQgbXRrX2hkbWlfaHdf
c2VuZF9pbmZvX2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAqaGRtaSwgdTggKmJ1ZmZlciwKPiAgICAg
ICAgIHU4IGNoZWNrc3VtOwo+ICAgICAgICAgaW50IGN0cmxfZnJhbWVfZW4gPSAwOwo+Cj4gLSAg
ICAgICBmcmFtZV90eXBlID0gKmJ1ZmZlcjsKPiAtICAgICAgIGJ1ZmZlciArPSAxOwo+IC0gICAg
ICAgZnJhbWVfdmVyID0gKmJ1ZmZlcjsKPiAtICAgICAgIGJ1ZmZlciArPSAxOwo+IC0gICAgICAg
ZnJhbWVfbGVuID0gKmJ1ZmZlcjsKPiAtICAgICAgIGJ1ZmZlciArPSAxOwo+IC0gICAgICAgY2hl
Y2tzdW0gPSAqYnVmZmVyOwo+IC0gICAgICAgYnVmZmVyICs9IDE7Cj4gKyAgICAgICBmcmFtZV90
eXBlID0gKmJ1ZmZlcisrOwo+ICsgICAgICAgZnJhbWVfdmVyID0gKmJ1ZmZlcisrOwo+ICsgICAg
ICAgZnJhbWVfbGVuID0gKmJ1ZmZlcisrOwo+ICsgICAgICAgY2hlY2tzdW0gPSAqYnVmZmVyKys7
Cj4gICAgICAgICBmcmFtZV9kYXRhID0gYnVmZmVyOwo+ICsgICAgICAgaWYgKChmcmFtZV9sZW4g
KyBIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSkgPiBsZW4pIHsKPiArICAgICAgICAgICAgICAg
ZGV2X2VycihoZG1pLT5kZXYsICJXcm9uZyBmcmFtZSBsZW46ICVkXG4iLCBmcmFtZV9sZW47Cj4g
KyAgICAgICAgICAgICAgIHJldHVybjsKPiArICAgICAgIH0KPgo+ICAgICAgICAgZGV2X2RiZyho
ZG1pLT5kZXYsCj4gICAgICAgICAgICAgICAgICJmcmFtZV90eXBlOjB4JXgsZnJhbWVfdmVyOjB4
JXgsZnJhbWVfbGVuOjB4JXgsY2hlY2tzdW06MHgleFxuIiwKPiBAQCAtOTgyLDcgKzk4Miw3IEBA
IHN0YXRpYyBpbnQgbXRrX2hkbWlfc2V0dXBfYXZpX2luZm9mcmFtZShzdHJ1Y3QgbXRrX2hkbWkg
KmhkbWksCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIHN0cnVjdCBk
cm1fZGlzcGxheV9tb2RlICptb2RlKQo+ICB7Cj4gICAgICAgICBzdHJ1Y3QgaGRtaV9hdmlfaW5m
b2ZyYW1lIGZyYW1lOwo+IC0gICAgICAgdTggYnVmZmVyWzE3XTsKPiArICAgICAgIHU4IGJ1ZmZl
cltIRE1JX0lORk9GUkFNRV9IRUFERVJfU0laRSArIEhETUlfQVZJX0lORk9GUkFNRV9TSVpFXTsK
PiAgICAgICAgIHNzaXplX3QgZXJyOwo+Cj4gICAgICAgICBlcnIgPSBkcm1faGRtaV9hdmlfaW5m
b2ZyYW1lX2Zyb21fZGlzcGxheV9tb2RlKCZmcmFtZSwKPiBAQCAtMTAwOCw3ICsxMDA4LDcgQEAg
c3RhdGljIGludCBtdGtfaGRtaV9zZXR1cF9zcGRfaW5mb2ZyYW1lKHN0cnVjdCBtdGtfaGRtaSAq
aGRtaSwKPiAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgY29uc3QgY2hh
ciAqcHJvZHVjdCkKPiAgewo+ICAgICAgICAgc3RydWN0IGhkbWlfc3BkX2luZm9mcmFtZSBmcmFt
ZTsKPiAtICAgICAgIHU4IGJ1ZmZlclsyOV07Cj4gKyAgICAgICB1OCBidWZmZXJbSERNSV9JTkZP
RlJBTUVfSEVBREVSX1NJWkUgKyBIRE1JX1NQRF9JTkZPRlJBTUVfU0laRV07Cj4gICAgICAgICBz
c2l6ZV90IGVycjsKPgo+ICAgICAgICAgZXJyID0gaGRtaV9zcGRfaW5mb2ZyYW1lX2luaXQoJmZy
YW1lLCB2ZW5kb3IsIHByb2R1Y3QpOwo+IEBAIC0xMDMxLDcgKzEwMzEsNyBAQCBzdGF0aWMgaW50
IG10a19oZG1pX3NldHVwX3NwZF9pbmZvZnJhbWUoc3RydWN0IG10a19oZG1pICpoZG1pLAo+ICBz
dGF0aWMgaW50IG10a19oZG1pX3NldHVwX2F1ZGlvX2luZm9mcmFtZShzdHJ1Y3QgbXRrX2hkbWkg
KmhkbWkpCj4gIHsKPiAgICAgICAgIHN0cnVjdCBoZG1pX2F1ZGlvX2luZm9mcmFtZSBmcmFtZTsK
PiAtICAgICAgIHU4IGJ1ZmZlclsxNF07Cj4gKyAgICAgICB1OCBidWZmZXJbSERNSV9JTkZPRlJB
TUVfSEVBREVSX1NJWkUgKyBIRE1JX0FVRElPX0lORk9GUkFNRV9TSVpFXTsKPiAgICAgICAgIHNz
aXplX3QgZXJyOwo+Cj4gICAgICAgICBlcnIgPSBoZG1pX2F1ZGlvX2luZm9mcmFtZV9pbml0KCZm
cmFtZSk7Cj4gLS0KPiAyLjI2LjIKPgo+Cj4gX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX18KPiBMaW51eC1tZWRpYXRlayBtYWlsaW5nIGxpc3QKPiBMaW51eC1t
ZWRpYXRla0BsaXN0cy5pbmZyYWRlYWQub3JnCj4gaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1tZWRpYXRlawoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
