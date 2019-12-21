Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A021F128B5D
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 21 Dec 2019 21:01:27 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S3SPjzSJmvNyJv54z5mNipqTMbIoG9EYhpP9jOR4EFg=; b=t77UJKyVnPAqj/
	AtdjOHvfdwsiHYJNbVflC8cY1KFF6wUH/Z6zRZYiTJpgCXFQCMGGlA11UfK/jNs76pdg5oZrbBBtP
	eqLgyktQAJVmS5WXO649vHmxrWRpkg8qd+qhldPKv6OsSvrxm7zVNADODYy7kDRbqEEOBS1FqUt1j
	MDWeBt+iM/e6P7ZeMrwTmv6j/whennjoUpgsygr414BXm7H0Z2CN38oEZiN3OLlLLs7v5lvWt/o53
	bLddDq6NPOKU7KxXhU36sltpHymygOFltWTLzInPN4tIZWvkmarpqOmMH41NMCFUfYb3zMGrIT32o
	VCzNP+sOZRdMq8gOQPxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iikwC-0001O0-8t; Sat, 21 Dec 2019 20:01:20 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iikw2-0001Nh-Fr
 for linux-arm-kernel@lists.infradead.org; Sat, 21 Dec 2019 20:01:11 +0000
Received: from mail-lj1-f179.google.com (mail-lj1-f179.google.com
 [209.85.208.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id D1EB3206EF
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 20:01:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1576958470;
 bh=cAoG20mOdDaPDzKbP1yFgpmFG1wND9D7fIKzylMTt+Y=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=VfKHDs+UrA0zxIEDZ3/P6uaXOxZ2X+ypWsPWjAajHI0ahhdVjqi2hFHOCL6iNKHf2
 LdKldq/aPkuaE8bGlZqUqSuILfyq7f9TpU/64QWz3CN/81vc2/fVuoRmmBfhxluYq1
 nnHdDzE8BnOWyyR8v8kz/+O9liL1lZ12dD2p+los=
Received: by mail-lj1-f179.google.com with SMTP id y6so5565750lji.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 21 Dec 2019 12:01:09 -0800 (PST)
X-Gm-Message-State: APjAAAWEtvssB+8oPcZr8INPezEDVAw4ossQtWSdKAdNUbqePVGrgcsG
 8DL9Bjr3yL7eolmyXz6ucn6VBxqJWsidu1Q4Zs4=
X-Google-Smtp-Source: APXvYqyoSWFit4YcQSqBr6vLJk2CTqXrA+sNgLRokSVcuTZ0gSZDSqHSBwKiDJtfNlZKwKctroRd0nQzOWJkw4mUiBo=
X-Received: by 2002:a2e:9f52:: with SMTP id v18mr12176163ljk.30.1576958468047; 
 Sat, 21 Dec 2019 12:01:08 -0800 (PST)
MIME-Version: 1.0
References: <CGME20191220120144eucas1p119ececf161a6d45a6a194e432bbbd1f9@eucas1p1.samsung.com>
 <20191220115653.6487-1-a.swigon@samsung.com>
 <20191220115653.6487-5-a.swigon@samsung.com>
In-Reply-To: <20191220115653.6487-5-a.swigon@samsung.com>
From: Chanwoo Choi <chanwoo@kernel.org>
Date: Sun, 22 Dec 2019 05:00:31 +0900
X-Gmail-Original-Message-ID: <CAGTfZH0PBoBe5NUObMdK9ru_=+dV6N8nJk3JzM+FF3y9_y8n1w@mail.gmail.com>
Message-ID: <CAGTfZH0PBoBe5NUObMdK9ru_=+dV6N8nJk3JzM+FF3y9_y8n1w@mail.gmail.com>
Subject: Re: [RFC PATCH v3 4/7] arm: dts: exynos: Add interconnect bindings
 for Exynos4412
To: =?UTF-8?B?QXJ0dXIgxZp3aWdvxYQ=?= <a.swigon@samsung.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191221_120110_573544_C7B93651 
X-CRM114-Status: GOOD (  17.23  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: devicetree <devicetree@vger.kernel.org>,
 linux-samsung-soc <linux-samsung-soc@vger.kernel.org>,
 Linux PM list <linux-pm@vger.kernel.org>,
 Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
 Seung-Woo Kim <sw0312.kim@samsung.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 dri-devel <dri-devel@lists.freedesktop.org>, inki.dae@samsung.com,
 Chanwoo Choi <cw00.choi@samsung.com>, MyungJoo Ham <myungjoo.ham@samsung.com>,
 Krzysztof Kozlowski <krzk@kernel.org>,
 Leonard Crestez <leonard.crestez@nxp.com>,
 Georgi Djakov <georgi.djakov@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 Marek Szyprowski <m.szyprowski@samsung.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpPbiBGcmksIERlYyAyMCwgMjAxOSBhdCA5OjAyIFBNIEFydHVyIMWad2lnb8WEIDxhLnN3
aWdvbkBzYW1zdW5nLmNvbT4gd3JvdGU6Cj4KPiBUaGlzIHBhdGNoIGFkZHMgdGhlIGZvbGxvd2lu
ZyBwcm9wZXJ0aWVzIHRvIHRoZSBFeHlub3M0NDEyIERUOgo+ICAgLSBleHlub3MsaW50ZXJjb25u
ZWN0LXBhcmVudC1ub2RlOiB0byBkZWNsYXJlIGNvbm5lY3Rpb25zIGJldHdlZW4KPiAgICAgbm9k
ZXMgaW4gb3JkZXIgdG8gZ3VhcmFudGVlIFBNIFFvUyByZXF1aXJlbWVudHMgYmV0d2VlbiBub2Rl
czsKPiAgIC0gI2ludGVyY29ubmVjdC1jZWxsczogcmVxdWlyZWQgYnkgdGhlIGludGVyY29ubmVj
dCBmcmFtZXdvcmsuCj4KPiBOb3RlIHRoYXQgI2ludGVyY29ubmVjdC1jZWxscyBpcyBhbHdheXMg
emVybyBhbmQgbm9kZSBJRHMgYXJlIG5vdAo+IGhhcmRjb2RlZCBhbnl3aGVyZS4KPgo+IFNpZ25l
ZC1vZmYtYnk6IEFydHVyIMWad2lnb8WEIDxhLnN3aWdvbkBzYW1zdW5nLmNvbT4KPiAtLS0KPiAg
YXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQxMi1vZHJvaWQtY29tbW9uLmR0c2kgfCA1ICsrKysr
Cj4gIDEgZmlsZSBjaGFuZ2VkLCA1IGluc2VydGlvbnMoKykKPgo+IGRpZmYgLS1naXQgYS9hcmNo
L2FybS9ib290L2R0cy9leHlub3M0NDEyLW9kcm9pZC1jb21tb24uZHRzaSBiL2FyY2gvYXJtL2Jv
b3QvZHRzL2V4eW5vczQ0MTItb2Ryb2lkLWNvbW1vbi5kdHNpCj4gaW5kZXggNGNlM2Q3N2E2NzA0
Li5kOWQ3MGVhY2ZjYWYgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9vdC9kdHMvZXh5bm9zNDQx
Mi1vZHJvaWQtY29tbW9uLmR0c2kKPiArKysgYi9hcmNoL2FybS9ib290L2R0cy9leHlub3M0NDEy
LW9kcm9pZC1jb21tb24uZHRzaQo+IEBAIC05MCw2ICs5MCw3IEBACj4gICZidXNfZG1jIHsKPiAg
ICAgICAgIGV4eW5vcyxwcG11LWRldmljZSA9IDwmcHBtdV9kbWMwXzM+LCA8JnBwbXVfZG1jMV8z
PjsKPiAgICAgICAgIHZkZC1zdXBwbHkgPSA8JmJ1Y2sxX3JlZz47Cj4gKyAgICAgICAjaW50ZXJj
b25uZWN0LWNlbGxzID0gPDA+Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+Cj4g
QEAgLTEwNiw2ICsxMDcsOCBAQAo+ICAmYnVzX2xlZnRidXMgewo+ICAgICAgICAgZXh5bm9zLHBw
bXUtZGV2aWNlID0gPCZwcG11X2xlZnRidXNfMz4sIDwmcHBtdV9yaWdodGJ1c18zPjsKPiAgICAg
ICAgIHZkZC1zdXBwbHkgPSA8JmJ1Y2szX3JlZz47Cj4gKyAgICAgICBleHlub3MsaW50ZXJjb25u
ZWN0LXBhcmVudC1ub2RlID0gPCZidXNfZG1jPjsKPiArICAgICAgICNpbnRlcmNvbm5lY3QtY2Vs
bHMgPSA8MD47Cj4gICAgICAgICBzdGF0dXMgPSAib2theSI7Cj4gIH07Cj4KPiBAQCAtMTE2LDYg
KzExOSw4IEBACj4KPiAgJmJ1c19kaXNwbGF5IHsKPiAgICAgICAgIGV4eW5vcyxwYXJlbnQtYnVz
ID0gPCZidXNfbGVmdGJ1cz47Cj4gKyAgICAgICBleHlub3MsaW50ZXJjb25uZWN0LXBhcmVudC1u
b2RlID0gPCZidXNfbGVmdGJ1cz47Cj4gKyAgICAgICAjaW50ZXJjb25uZWN0LWNlbGxzID0gPDA+
Owo+ICAgICAgICAgc3RhdHVzID0gIm9rYXkiOwo+ICB9Owo+Cj4gLS0KPiAyLjE3LjEKPgoKUmV2
aWV3ZWQtYnk6IENoYW53b28gQ2hvaSA8Y3cwMC5jaG9pQHNhbXN1bmcuY29tPgoKSSBoYXMgbm90
IHlldCB0ZXN0ZWQgb24gdGFyZ2V0LiBJJ2xsIHRlc3QgaXQgb24gbmV4dCB3ZWVrCmFuZCB0aGVu
IHJlcGx5IHRoZSB0ZXN0IHJlc3VsdC4KCi0tIApCZXN0IFJlZ2FyZHMsCkNoYW53b28gQ2hvaQoK
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJt
LWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3Jn
Cmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtl
cm5lbAo=
