Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB81FD280
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 15 Nov 2019 02:35:25 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=E135lltDJLyWdI8HW+SBUMfKeSWFy5FBd4+0ov/kdr0=; b=TAukZEh8gC/M3/
	yt4jDwbT1BeW3jlMn7QBgqQEAouCk2TgaNYlJGtjHKq0taWtQU0J8XDqKNTt3FqubBQaS5mVgxjeV
	8UkLV13ieM/gZe8xsXzeshOROMALcXLmJbQ9YriBQfLUglmVyZP/jim9dsGM+RTfkmsMzUX/5lE1d
	8yAGD7razo1eOQOBOTjeKEvhtMxdFrVD1exyaJ6ZmRMFkJMZAY63tSPgtj4jks7YCWozTlkfib2vU
	mwbEOJIxEpy/5+px5LU8A2V9d0xAaxBpW12bjAUrh9uThAiDzPKWnN6YHd7EXkB4SsFUsNkzMb1c5
	6J0+i08n921b6jZCfdEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVQW4-0008Dp-6S; Fri, 15 Nov 2019 01:35:16 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVQVn-0008Cv-L2; Fri, 15 Nov 2019 01:35:01 +0000
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
 [209.85.222.179])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 3A56E20725;
 Fri, 15 Nov 2019 01:34:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1573781699;
 bh=FM7mYg/6+NiEj2ej8cWPQVFxq0x2k6N9T/icEBkFu64=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=UB35JLpwUaKnERFQx86p21dIIYJB+YknS2gzLIPiUbT/8zQRoZU5VhpBNGJvmnUUA
 FjwYM60dyXKAniIivnhD5Wclp17WYbrNzimtZtYI5N6MXXeU44g2+fzdDt4zNCQH81
 a6PiJZkQKQsplLdttcQYe5Eyv7zbWKKX1HTYpios=
Received: by mail-qk1-f179.google.com with SMTP id h15so6815283qka.13;
 Thu, 14 Nov 2019 17:34:59 -0800 (PST)
X-Gm-Message-State: APjAAAUv2pl8MB6iHk/1dAHL3cyYO1u9TUk+kdZZbGN0Ni6jTc3ZfcUT
 IxLlKRkHv+vt0nE+nW2IVHO+YGv4EMD8T3eSAA==
X-Google-Smtp-Source: APXvYqxz9j05GwmaTCc16w66GIq0s+n5kpdf5ngLzlrlw5UuuM6/wKEBRGfv34b1gB5ITk95f4T0wiJFCdroySKtY6k=
X-Received: by 2002:a37:30b:: with SMTP id 11mr10622838qkd.254.1573781698329; 
 Thu, 14 Nov 2019 17:34:58 -0800 (PST)
MIME-Version: 1.0
References: <20191111030434.29977-1-afaerber@suse.de>
 <20191111030434.29977-6-afaerber@suse.de>
In-Reply-To: <20191111030434.29977-6-afaerber@suse.de>
From: Rob Herring <robh+dt@kernel.org>
Date: Thu, 14 Nov 2019 19:34:47 -0600
X-Gmail-Original-Message-ID: <CAL_Jsq+fdksCHQ1_NaizkM6dVWT1h2wocJpD4NB8K2dOO-yZ4Q@mail.gmail.com>
Message-ID: <CAL_Jsq+fdksCHQ1_NaizkM6dVWT1h2wocJpD4NB8K2dOO-yZ4Q@mail.gmail.com>
Subject: Re: [PATCH 5/7] ARM: dts: rtd1195: Introduce r-bus
To: =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_173459_731834_8CE63334 
X-CRM114-Status: GOOD (  13.53  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>, linux-realtek-soc@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gU3VuLCBOb3YgMTAsIDIwMTkgYXQgOTowNCBQTSBBbmRyZWFzIEbDpHJiZXIgPGFmYWVyYmVy
QHN1c2UuZGU+IHdyb3RlOgo+Cj4gTW9kZWwgUmVhbHRlaydzIHJlZ2lzdGVyIGJ1cyBpbiBEVC4K
Pgo+IFNpZ25lZC1vZmYtYnk6IEFuZHJlYXMgRsOkcmJlciA8YWZhZXJiZXJAc3VzZS5kZT4KPiAt
LS0KPiAgVGhpcyBjb3VsZCBiZSBzcXVhc2hlZCBpbnRvIHRoZSBvcmlnaW5hbCBSVEQxMTk1IHBh
dGNoLgo+Cj4gIGFyY2gvYXJtL2Jvb3QvZHRzL3J0ZDExOTUuZHRzaSB8IDUyICsrKysrKysrKysr
KysrKysrKysrKysrKy0tLS0tLS0tLS0tLS0tLS0tLQo+ICAxIGZpbGUgY2hhbmdlZCwgMzAgaW5z
ZXJ0aW9ucygrKSwgMjIgZGVsZXRpb25zKC0pCj4KPiBkaWZmIC0tZ2l0IGEvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNpCj4gaW5k
ZXggYThjYzJkMjNlN2VmLi4zNDM5NjQ3ZWNmOTcgMTAwNjQ0Cj4gLS0tIGEvYXJjaC9hcm0vYm9v
dC9kdHMvcnRkMTE5NS5kdHNpCj4gKysrIGIvYXJjaC9hcm0vYm9vdC9kdHMvcnRkMTE5NS5kdHNp
Cj4gQEAgLTkyLDI4ICs5MiwzNiBAQAo+ICAgICAgICAgICAgICAgICAgICAgICAgICA8MHgxODEw
MDAwMCAweDE4MTAwMDAwIDB4MDEwMDAwMDA+LAo+ICAgICAgICAgICAgICAgICAgICAgICAgICA8
MHg0MDAwMDAwMCAweDQwMDAwMDAwIDB4YzAwMDAwMDA+Owo+Cj4gLSAgICAgICAgICAgICAgIHdk
dDogd2F0Y2hkb2dAMTgwMDc2ODAgewo+IC0gICAgICAgICAgICAgICAgICAgICAgIGNvbXBhdGli
bGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIjsKPiAtICAgICAgICAgICAgICAgICAgICAg
ICByZWcgPSA8MHgxODAwNzY4MCAweDEwMD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgY2xv
Y2tzID0gPCZvc2MyN00+Owo+IC0gICAgICAgICAgICAgICB9Owo+IC0KPiAtICAgICAgICAgICAg
ICAgdWFydDA6IHNlcmlhbEAxODAwNzgwMCB7Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgY29t
cGF0aWJsZSA9ICJzbnBzLGR3LWFwYi11YXJ0IjsKPiAtICAgICAgICAgICAgICAgICAgICAgICBy
ZWcgPSA8MHgxODAwNzgwMCAweDQwMD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgcmVnLXNo
aWZ0ID0gPDI+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlZy1pby13aWR0aCA9IDw0PjsK
PiAtICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Owo+
IC0gICAgICAgICAgICAgICAgICAgICAgIHN0YXR1cyA9ICJkaXNhYmxlZCI7Cj4gLSAgICAgICAg
ICAgICAgIH07Cj4gLQo+IC0gICAgICAgICAgICAgICB1YXJ0MTogc2VyaWFsQDE4MDFiMjAwIHsK
PiAtICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNucHMsZHctYXBiLXVhcnQi
Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDE4MDFiMjAwIDB4MTAwPjsKPiAt
ICAgICAgICAgICAgICAgICAgICAgICByZWctc2hpZnQgPSA8Mj47Cj4gLSAgICAgICAgICAgICAg
ICAgICAgICAgcmVnLWlvLXdpZHRoID0gPDQ+Owo+IC0gICAgICAgICAgICAgICAgICAgICAgIGNs
b2NrLWZyZXF1ZW5jeSA9IDwyNzAwMDAwMD47Cj4gLSAgICAgICAgICAgICAgICAgICAgICAgc3Rh
dHVzID0gImRpc2FibGVkIjsKPiArICAgICAgICAgICAgICAgcmJ1czogci1idXNAMTgwMDAwMDAg
ewoKRm9sbG93aW5nIG5vZGUgbmFtZXMgc2hvdWxkIGJlIGdlbmVyaWM6IGJ1c0AuLi4KCj4gKyAg
ICAgICAgICAgICAgICAgICAgICAgY29tcGF0aWJsZSA9ICJzaW1wbGUtYnVzIjsKPiArICAgICAg
ICAgICAgICAgICAgICAgICByZWcgPSA8MHgxODAwMDAwMCAweDEwMDAwMD47Cj4gKyAgICAgICAg
ICAgICAgICAgICAgICAgI2FkZHJlc3MtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgI3NpemUtY2VsbHMgPSA8MT47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgcmFuZ2Vz
ID0gPDB4MCAweDE4MDAwMDAwIDB4MTAwMDAwPjsKPiArCj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgd2R0OiB3YXRjaGRvZ0A3NjgwIHsKPiArICAgICAgICAgICAgICAgICAgICAgICAgICAgICAg
IGNvbXBhdGlibGUgPSAicmVhbHRlayxydGQxMjk1LXdhdGNoZG9nIjsKPiArICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgIHJlZyA9IDwweDc2ODAgMHgxMDA+Owo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgY2xvY2tzID0gPCZvc2MyN00+Owo+ICsgICAgICAgICAgICAgICAg
ICAgICAgIH07Cj4gKwo+ICsgICAgICAgICAgICAgICAgICAgICAgIHVhcnQwOiBzZXJpYWxANzgw
MCB7Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjb21wYXRpYmxlID0gInNucHMs
ZHctYXBiLXVhcnQiOwo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgcmVnID0gPDB4
NzgwMCAweDQwMD47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWctc2hpZnQg
PSA8Mj47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICByZWctaW8td2lkdGggPSA8
ND47Cj4gKyAgICAgICAgICAgICAgICAgICAgICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8
MjcwMDAwMDA+Owo+ICsgICAgICAgICAgICAgICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRp
c2FibGVkIjsKPiArICAgICAgICAgICAgICAgICAgICAgICB9Owo+ICsKPiArICAgICAgICAgICAg
ICAgICAgICAgICB1YXJ0MTogc2VyaWFsQDFiMjAwIHsKPiArICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgIGNvbXBhdGlibGUgPSAic25wcyxkdy1hcGItdWFydCI7Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWcgPSA8MHgxYjIwMCAweDEwMD47Cj4gKyAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICByZWctc2hpZnQgPSA8Mj47Cj4gKyAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICByZWctaW8td2lkdGggPSA8ND47Cj4gKyAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICBjbG9jay1mcmVxdWVuY3kgPSA8MjcwMDAwMDA+Owo+ICsgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgc3RhdHVzID0gImRpc2FibGVkIjsKPiArICAgICAgICAgICAgICAg
ICAgICAgICB9Owo+ICAgICAgICAgICAgICAgICB9Owo+Cj4gICAgICAgICAgICAgICAgIGdpYzog
aW50ZXJydXB0LWNvbnRyb2xsZXJAZmYwMTEwMDAgewo+IC0tCj4gMi4xNi40Cj4KCl9fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwg
bWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8v
bGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
