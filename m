Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 087D9AE60F
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 10 Sep 2019 10:51:22 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JgPIWkaMwB1LJg3Xqo3G0f8/ZiR8S44EZb+LfqEk2Rk=; b=N3QKc8mjKDFIy0
	VuJk+R2aI1Udw/77fDUt5wKnqEn/HBcLa9ktbIf+qN2hsg9iLjIfY5CFBpQ3qzopxc67omVVPB1Dr
	2WqarJaJGkfOqa+CLGU0xU3cLKZwVrvwXDhiRzw2dfJfe2EQSs8FpKU6IJYHXzmfYkt2K0wROZ9xI
	U5qh7IOEOb3EL/0oahLEFhYh+Yzoc5Nanu28asUhhLhpXYTwlg2m2ahvVSJRhylgpLHxd7k7fiJWy
	J7huMmXLPBt9lQPFW1CwRMGcCuK9xyExeH3bsrGNtacOnGxRdPwUZE+Nc6NArbQ6SNI6cc1m90fCW
	pdq5FRUjKNU3JOlD305A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i7brs-0007CX-Gl; Tue, 10 Sep 2019 08:51:20 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i7brf-0007Bd-SY
 for linux-arm-kernel@lists.infradead.org; Tue, 10 Sep 2019 08:51:09 +0000
Received: by mail-ot1-x341.google.com with SMTP id g25so16056111otl.0
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Sep 2019 01:51:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc:content-transfer-encoding;
 bh=TORtZiXw+gviBY1uqojNwtzUG5Du45WnPV4wu8nw43A=;
 b=FP63dxnYbqidnXC5M+glimtjNBKD/siLT23X23yuuOER2/9MRjpqdmr17EYxW/s6p0
 E+BlJ699H7VMsfwq2N1wqcggLYV4SabdWzY7R+9yPxtI/5t3nmNf5ca2zAEhu1LnVkuB
 djYTbLY1JIMnBRApHzAxKwnWqjP+nN1qESTU3SbZUvPgE9If19AaeeYRC/e77mGKGlHs
 Z8ZBwXsPYqqQJgcLf6S0grCdZJQsRslVL3vSrRDO2qTE8+rlRH1udar3q0c+ncpOXXIv
 4GVPY8w0RyJ4klXWtdtrKObo3MRhX8E73WYW7kEYXbu2xbXOjxHEltwsAL090sa9hSiJ
 ROuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc:content-transfer-encoding;
 bh=TORtZiXw+gviBY1uqojNwtzUG5Du45WnPV4wu8nw43A=;
 b=tESV+xroMDKKx0nkrIg0Y400JslJSI94trmizePlzyDd6Qh2BjqQNavGAxvjASq/Qa
 1Iu2NhiWXI5htX8KJwGZ6ZRPOU44yS/1Dl6QDgqtojoK7moqbs4N9rjGO2Cn7UbO/SHM
 bLzlPhLlSTxs85k9NpNbmf2+GNVNIuQWnpReTgGuzCIHzsWjXZyVm5fbHXInUSH3x6mP
 iANJWcKu7P8gXbhIeDOjt0ayWC4rrUossMGfZpImlRH4BI0hdhv/gz5SQ7jETr5/0MgZ
 Gtwr44NBoprWzx5S1ewavpBXRZcHocQPgdo5SRA3lLkEjj3BOC5pKl0U2f3FLbt9xkDP
 t4tg==
X-Gm-Message-State: APjAAAUlIgqe5Ygd/0WQySaU2j0ou3WJZ5pBeIWzaUZRAzVx3oFzNiJM
 EIgKMhhEdn87yTlosDqmWVofuVXSce0nMS3yHKlVvQ==
X-Google-Smtp-Source: APXvYqxAsq9CF/Si2rdwo5vSZgIzEMUPMsKHEsRblYndhdS59/hlsoR7x+5MiowCWiAhLmrRORnRA4H2pVT8BZGTtxI=
X-Received: by 2002:a05:6830:1d4e:: with SMTP id
 p14mr1451146oth.292.1568105466197; 
 Tue, 10 Sep 2019 01:51:06 -0700 (PDT)
MIME-Version: 1.0
References: <20190906084539.21838-1-geert+renesas@glider.be>
In-Reply-To: <20190906084539.21838-1-geert+renesas@glider.be>
From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date: Tue, 10 Sep 2019 10:50:55 +0200
Message-ID: <CAMpxmJVrQ92+ULRrzyN52LwEcdPTuK7OZssZjUcRPRSTBQ=fwg@mail.gmail.com>
Subject: Re: [PATCH 0/4] gpio: API boundary cleanups
To: Geert Uytterhoeven <geert+renesas@glider.be>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190910_015107_985961_993E91CC 
X-CRM114-Status: GOOD (  15.74  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-devicetree <devicetree@vger.kernel.org>,
 Linus Walleij <linus.walleij@linaro.org>, LKML <linux-kernel@vger.kernel.org>,
 linux-gpio <linux-gpio@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 Frank Rowand <frowand.list@gmail.com>,
 arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

cHQuLCA2IHdyeiAyMDE5IG8gMTA6NDUgR2VlcnQgVXl0dGVyaG9ldmVuIDxnZWVydCtyZW5lc2Fz
QGdsaWRlci5iZT4gbmFwaXNhxYIoYSk6Cj4KPiAgICAgICAgIEhpIExpbnVzLCBCYXJ0b3N6LAo+
Cj4gVGhpcyBwYXRjaCBzZXJpZXMgY29udGFpbnMgdmFyaW91cyBBUEkgYm91bmRhcnkgY2xlYW51
cHMgZm9yIGdwaW9saWI6Cj4gICAtIFRoZSBmaXJzdCB0d28gcGF0Y2hlcyBtYWtlIHR3byBmdW5j
dGlvbnMgcHJpdmF0ZSwKPiAgIC0gVGhlIGxhc3QgdHdvIHBhdGNoZXMgc3dpdGNoIHRoZSByZW1h
aW5pbmcgZ3Bpb2xpYiBleHBvcnRlZCBmdW5jdGlvbnMKPiAgICAgZnJvbSBFWFBPUlRfU1lNQk9M
KCkgdG8gRVhQT1JUX1NZTUJPTF9HUEwoKS4KPgo+IEFmdGVyIHRoaXMgdGhlcmUgaXMgb25seSBh
IHNpbmdsZSBHUElPIGRyaXZlciBmdW5jdGlvbiBleHBvcnRlZCB3aXRoCj4gRVhQT1JUX1NZTUJP
TCgpOwo+Cj4gICAgIGRyaXZlcnMvZ3Bpby9ncGlvLWh0Yy1lZ3Bpby5jOkVYUE9SVF9TWU1CT0wo
aHRjX2VncGlvX2dldF93YWtldXBfaXJxKTsKPgo+IEkgYmVsaWV2ZSB0aGlzIHN5bWJvbCB3YXMg
bmV2ZXIgdXNlZCB1cHN0cmVhbSwgYW5kIG1heSBiZSBhIHJlbGljIG9mIHRoZQo+IG9yaWdpbmFs
IG91dC1vZi10cmVlIGNvZGUgdGhlIGh0Yy1lZ3BpbyB3YXMgYmFzZWQgb24uICBJIGRvbid0IGtu
b3cgaWYKPiB0aGVyZSAoc3RpbGwpIGV4aXN0IG91dC1vZi10cmVlIHVzZXJzIG9mIHRoZSBzeW1i
b2wuCj4KPiBUaGFua3MgZm9yIHlvdXIgY29tbWVudHMhCgpBbGwgbG9va3MgZ29vZCB0byBtZS4g
QXJlIHlvdSBmaW5lIHdpdGggdGhpcyBiZWluZyBwaWNrZWQgdXAgYWZ0ZXIgdGhlCnY1LjQgbWVy
Z2Ugd2luZG93PwoKQmFydAoKPgo+IEdlZXJ0IFV5dHRlcmhvZXZlbiAoNCk6Cj4gICBncGlvOiBv
ZjogTWFrZSBvZl9nZXRfbmFtZWRfZ3Bpb2RfZmxhZ3MoKSBwcml2YXRlCj4gICBncGlvOiBvZjog
TWFrZSBvZl9ncGlvX3NpbXBsZV94bGF0ZSgpIHByaXZhdGUKPiAgIGdwaW86IG9mOiBTd2l0Y2gg
dG8gRVhQT1JUX1NZTUJPTF9HUEwoKQo+ICAgZ3BpbzogZGV2cmVzOiBTd2l0Y2ggdG8gRVhQT1JU
X1NZTUJPTF9HUEwoKQo+Cj4gIGRyaXZlcnMvZ3Bpby9ncGlvbGliLWRldnJlcy5jIHwgMjggKysr
KysrKysrKysrKystLS0tLS0tLS0tLS0tLQo+ICBkcml2ZXJzL2dwaW8vZ3Bpb2xpYi1vZi5jICAg
ICB8IDE2ICsrKysrKysrLS0tLS0tLS0KPiAgZHJpdmVycy9ncGlvL2dwaW9saWItb2YuaCAgICAg
fCAgNyAtLS0tLS0tCj4gIGluY2x1ZGUvbGludXgvb2ZfZ3Bpby5oICAgICAgIHwgMTEgLS0tLS0t
LS0tLS0KPiAgNCBmaWxlcyBjaGFuZ2VkLCAyMiBpbnNlcnRpb25zKCspLCA0MCBkZWxldGlvbnMo
LSkKPgo+IC0tCj4gMi4xNy4xCj4KPiBHcntvZXRqZSxlZXRpbmd9cywKPgo+ICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgIEdlZXJ0Cj4KPiAtLQo+IEdlZXJ0
IFV5dHRlcmhvZXZlbiAtLSBUaGVyZSdzIGxvdHMgb2YgTGludXggYmV5b25kIGlhMzIgLS0gZ2Vl
cnRAbGludXgtbTY4ay5vcmcKPgo+IEluIHBlcnNvbmFsIGNvbnZlcnNhdGlvbnMgd2l0aCB0ZWNo
bmljYWwgcGVvcGxlLCBJIGNhbGwgbXlzZWxmIGEgaGFja2VyLiBCdXQKPiB3aGVuIEknbSB0YWxr
aW5nIHRvIGpvdXJuYWxpc3RzIEkganVzdCBzYXkgInByb2dyYW1tZXIiIG9yIHNvbWV0aGluZyBs
aWtlIHRoYXQuCj4gICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgLS0gTGludXMgVG9ydmFsZHMKCl9fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0Cmxp
bnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFk
Lm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
